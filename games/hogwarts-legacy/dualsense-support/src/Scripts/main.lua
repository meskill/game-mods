-- Requires DSX running with UDP enabled and a connected adaptive-trigger controller.
-- Deploy the backends_dsx Lua modules and transitive dependencies on UE4SS's module paths.
-- DSX effects persist: return to a paused state before disabling/reloading this mod.
-- Windows does not search package.cpath for a native module's DLL dependencies.
local luaDll = assert(package.searchpath("lua54", package.cpath))
assert(package.loadlib(luaDll, "*"))

local Objects = require("ue4ss.objects")
local Lookup = require("ue4ss.lookup")
local Loop = require("ue4ss.loop")
local Log = require("ue4ss.log")
local Server = require("server")
local AdaptiveTrigger = require("adaptive_triggers")
local getTime = require("socket").gettime
local SpellCasts = require("hogwarts.spells")
local MountTracking = require("hogwarts.mounts")
local Spells = require("spells")
local Mounts = require("mounts")

local RIGHT_TRIGGER = AdaptiveTrigger.Trigger.Right
local LEFT_TRIGGER = AdaptiveTrigger.Trigger.Left
local POLL_INTERVAL_MS = 100
-- Logs gameplay, spell-state, and packet decisions.
---@type boolean
local DEBUG = true

local log = Log.new("[HogwartsDualSense]")
local debugLog = Log.new("[HogwartsDualSense][debug]")

-- Wand effects during gameplay; a spell fire effect from spells.lua overrides both.
-- A click on R2 is the basic wand attack and keeps the baseline; holding R2
-- (spell casting) switches to the light hold vibration.
---@type HogwartsTriggerEffect
local BASE_EFFECT = { mode = AdaptiveTrigger.Mode.GameCube, args = {} }
---@type HogwartsTriggerEffect
local HOLD_EFFECT = { mode = AdaptiveTrigger.Mode.VIBRATION, args = { 3, 1, 20 } }
-- Seconds R2 must stay down before it counts as a hold rather than a click.
local HOLD_DELAY = 0.3
-- Seconds after a spell effect ends before a still-held R2 vibrates again;
-- the baseline fills the gap.
local SPELL_END_DELAY = 0.1
---@type FKey
local R2_KEY = { KeyName = FName("Gamepad_RightTrigger") }
---@type HogwartsTriggerEffect
local OFF_EFFECT = { mode = AdaptiveTrigger.Mode.OFF, args = {} }

-- Finding the controller scans every PlayerController. Reuse a live one; while
-- menus or travel have none, search at most once per second.
local controllers = Lookup.new(1, Objects.playerController)

---Use the dumped Phoenix player type, not menu or spectator pawns.
---@return ABiped_Player? pawn The player pawn while gameplay is active.
---@return string state Why gameplay is inactive, or "active".
---@return APlayerController? controller The pawn's controller while active.
local function activePawn()
	local controller = controllers:get(getTime()) --[[@as APlayerController?]]
	if not controller then
		return nil, "no valid controller"
	end

	local pawn = controller.Pawn
	-- On a mount the controller may possess the mount; its rider is the player.
	if pawn and pawn:IsValid() then
		pawn = MountTracking.rider(pawn) or pawn
	end
	if not pawn or not pawn:IsValid() or not pawn:IsA("/Script/Phoenix.Biped_Player") then
		return nil, "missing, invalid, or non-player pawn"
	end
	---@cast pawn ABiped_Player

	local gameplay = Objects.gameplayStatics()
	if not gameplay then
		return nil, "no gameplay statics"
	end
	if gameplay:IsGamePaused(controller) then
		return nil, "paused"
	end
	if pawn.InCinematic then
		return nil, "cinematic"
	end
	if pawn:IsDead() then
		return nil, "dead"
	end
	return pawn, "active", controller
end

-- Discovery may wait for DSX, so it must never run on the game thread.
ExecuteAsync(function()
	local server, err = Server.connect()
	if not server then
		log("Could not open DSX socket: " .. tostring(err))
		return
	end

	local status
	status, err = server:requestStatus(1)
	local index
	if status then
		index, err = AdaptiveTrigger.findController(status)
	end
	if not index then
		log(
			"DSX discovery failed: "
				.. tostring(err)
				.. ". Enable DSX UDP and connect a DualSense, then restart the mod."
		)
		server:close()
		return
	end

	local triggers = AdaptiveTrigger.new(server, index)
	local mountEffects = Mounts.effects(DEBUG and debugLog or nil)
	local mounts = MountTracking.tracker({
		dismounted = function()
			mountEffects:reset()
		end,
	}, DEBUG and debugLog or nil)
	---@type table<DSXTrigger, table<HogwartsTriggerEffect, DSXInstruction[]>>
	local packets = { [RIGHT_TRIGGER] = {}, [LEFT_TRIGGER] = {} }
	-- L2 stays untouched until the broom first drives it.
	---@type table<DSXTrigger, HogwartsTriggerEffect?>
	local appliedEffects = {}
	local stopped = false
	---@type string?
	local gameplayState
	local triggerHeld, triggerDown = false, false
	---@type HogwartsTriggerEffect?
	local lastSpellEffect
	local spellEndedAt = -math.huge

	---@param trigger DSXTrigger
	---@param effect HogwartsTriggerEffect
	---@param force? boolean A new cast must refresh even an identical effect.
	---@return boolean
	local function applyEffect(trigger, effect, force)
		if stopped then
			return false
		end
		if effect == appliedEffects[trigger] and not force then
			return true
		end
		local packet = packets[trigger][effect]
		if not packet then
			local instruction = triggers:instruction(trigger, effect.mode)
			table.move(effect.args, 1, #effect.args, 4, instruction.parameters)
			packet = { instruction }
			packets[trigger][effect] = packet
		end
		local sent, sendError = server:send(packet)
		if not sent then
			log("DSX send failed: " .. tostring(sendError))
			server:close()
			stopped = true
			return false
		end
		appliedEffects[trigger] = effect
		if DEBUG then
			debugLog(
				"sent "
					.. (trigger == LEFT_TRIGGER and "L2" or "R2")
					.. " mode="
					.. effect.mode
					.. " args={"
					.. table.concat(effect.args, ",")
					.. "} force="
					.. tostring(force == true)
			)
		end
		return true
	end

	---@type HogwartsTriggerEffect? Fire effect of the latest cast while it lasts.
	local spellEffect
	local spells = SpellCasts.tracker({
		fired = function(cast)
			local effect, matched = Spells.effect(cast.name)
			if DEBUG then
				debugLog(("spell effect database=%s %s"):format(cast.name, matched and "matched" or "default"))
			end
			spellEffect = effect
			-- A new cast must refresh even an identical effect.
			if applyEffect(RIGHT_TRIGGER, effect, true) then
				log("Spell effect: " .. cast.name)
			end
		end,
		impact = function()
			if spellEffect and spellEffect.untilImpact then
				spellEffect = nil
			end
		end,
		ended = function()
			spellEffect = nil
		end,
	}, DEBUG and debugLog or nil)

	-- DSX answers every datagram with its status; replies show whether it accepted
	-- our trigger packets and still sees the controller.
	local function logReplies()
		while true do
			local reply, replyError = server:receive()
			if not reply then
				if replyError ~= "timeout" then
					debugLog("DSX reply error: " .. tostring(replyError))
				end
				return
			end
			debugLog(
				"DSX reply Status="
					.. tostring(reply.Status)
					.. " connected="
					.. tostring(reply.isControllerConnected)
					.. " devices="
					.. #(reply.Devices or {})
			)
		end
	end

	local function update()
		if DEBUG then
			logReplies()
		end
		local pawn, state, controller = activePawn()
		if DEBUG and state ~= gameplayState then
			debugLog("gameplay " .. state)
		end
		gameplayState = state
		if not pawn or not controller then
			spells:interrupt()
			applyEffect(RIGHT_TRIGGER, OFF_EFFECT)
			if appliedEffects[LEFT_TRIGGER] then
				applyEffect(LEFT_TRIGGER, OFF_EFFECT)
			end
			return
		end
		local now = getTime()
		-- On a mount the wand and spells pause and the triggers follow the mount.
		local mount = mounts:update(pawn, controller, now)
		if mount then
			spells:interrupt()
			lastSpellEffect = nil
			local right, left = mountEffects:update(mount)
			applyEffect(RIGHT_TRIGGER, right)
			if left then
				applyEffect(LEFT_TRIGGER, left)
			elseif appliedEffects[LEFT_TRIGGER] then
				applyEffect(LEFT_TRIGGER, OFF_EFFECT)
			end
			return
		end
		if appliedEffects[LEFT_TRIGGER] then
			applyEffect(LEFT_TRIGGER, OFF_EFFECT)
		end
		local heldFor = controller:GetInputKeyTimeDown(R2_KEY)
		local held = heldFor >= HOLD_DELAY
		local down = heldFor > 0
		if DEBUG and (held ~= triggerHeld or down ~= triggerDown) then
			debugLog(("R2 %s (down %.2f s)"):format(held and "held" or down and "down" or "up", heldFor))
		end
		triggerHeld, triggerDown = held, down
		spells:update(pawn, now)
		local effect = spellEffect
		if lastSpellEffect and not effect then
			spellEndedAt = now
		end
		lastSpellEffect = effect
		local vibrate = held and now >= spellEndedAt + SPELL_END_DELAY
		applyEffect(RIGHT_TRIGGER, effect or (vibrate and HOLD_EFFECT) or BASE_EFFECT)
	end

	Loop.gameThread(POLL_INTERVAL_MS, function()
		if not stopped then
			update()
		end
		return stopped
	end, function(message)
		log("Update failed: " .. message)
	end)

	log("Local wand spell polling ready for controller " .. index)
end)
