-- Requires DSX running with UDP enabled and a connected adaptive-trigger controller.
-- Deploy the backends_dsx Lua modules and transitive dependencies on UE4SS's module paths.
-- DSX effects persist: return to a paused state before disabling/reloading this mod.

-- Object lookups use the shared ue4ss package rather than the installation's
-- UEHelpers, because UEHelpers behaves differently across UE4SS versions.
local Objects = require("ue4ss.objects")
local Lookup = require("ue4ss.lookup")
local Loop = require("ue4ss.loop")
local Log = require("ue4ss.log")
local Server = require("server")
local AdaptiveTrigger = require("adaptive_triggers")
local getTime = require("net.socket").gettime
local SpellCasts = require("hogwarts.spells")
local MountTracking = require("hogwarts.mounts")
local Wand = require("hogwarts.wand")
local Spells = require("spells")
local Mounts = require("mounts")

local RIGHT_TRIGGER = AdaptiveTrigger.Trigger.Right
local LEFT_TRIGGER = AdaptiveTrigger.Trigger.Left
local POLL_INTERVAL_MS = 100

local log = Log.new("[HogwartsDualSense]")

-- Spell hooks register at load, outside ExecuteAsync. The spell tracker
-- reports casts from inside them once the poll below resumes it with the
-- player on foot.
local spells = SpellCasts.tracker(log)

-- The wand arm hook also registers at load; ExecuteAsync sets the handler once
-- it can send effects.
---@type fun(state: HogwartsArmState, last: HogwartsArmState?)?
local armChanged
Wand.subscribe({
	changed = function(state, last)
		if armChanged then
			armChanged(state, last)
		end
	end,
})

-- Wand effects during gameplay; a spell fire effect from spells.lua overrides both.
-- The baseline holds while the wand is down; raising it (right hand up with the
-- wand) switches to the light hold vibration.
---@type HogwartsTriggerEffect
local BASE_EFFECT = { mode = AdaptiveTrigger.Mode.GameCube, args = {} }
---@type HogwartsTriggerEffect
local HOLD_EFFECT = { mode = AdaptiveTrigger.Mode.VIBRATION, args = { 3, 1, 20 } }
-- Seconds after a spell effect ends before a still-raised wand vibrates again;
-- the baseline fills the gap.
local SPELL_END_DELAY = 0.1
---@type HogwartsTriggerEffect
local OFF_EFFECT = { mode = AdaptiveTrigger.Mode.OFF, args = {} }

-- Finding the controller scans every PlayerController. Reuse a live one; while
-- menus or travel have none, search at most once per second.
local controllers = Lookup.new(1, Objects.playerController)

---The player pawn and its controller while gameplay is active: not paused,
---no cinematic, player alive. Uses the dumped Phoenix player type, not menu
---or spectator pawns.
---@return ABiped_Player? pawn
---@return APlayerController? controller
local function activePawn()
	local controller = controllers:get(getTime()) --[[@as APlayerController?]]
	if not controller then
		return nil
	end

	local pawn = controller.Pawn
	-- On a creature the controller may possess the mount; its rider is the player.
	if pawn and pawn:IsValid() then
		pawn = MountTracking.rider(pawn) or pawn
	end
	if not pawn or not pawn:IsValid() or not pawn:IsA("/Script/Phoenix.Biped_Player") then
		return nil
	end
	---@cast pawn ABiped_Player

	local gameplay = Objects.gameplayStatics()
	if not gameplay or gameplay:IsGamePaused(controller) or pawn.InCinematic or pawn:IsDead() then
		return nil
	end
	return pawn, controller
end

-- The broom hooks register and the mount poll starts at load, outside
-- ExecuteAsync; ExecuteAsync sets the listener once it can send effects.
local mounts = MountTracking.tracker(log, activePawn)

-- Flow: find the DSX controller once, then every POLL_INTERVAL_MS on the game
-- thread pick one effect per trigger (see update) and send it only when it changes.
-- Discovery may wait for DSX, so it must never run on the game thread.
ExecuteAsync(function()
	local server, err = Server.connect()
	if not server then
		log("Could not open DSX socket: " .. tostring(err))
		return
	end

	-- Ask DSX for its device list and pick the first adaptive-trigger controller.
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
	local mountEffects = Mounts.effects()
	---@type table<DSXTrigger, table<HogwartsTriggerEffect, DSXInstruction[]>>
	local packets = { [RIGHT_TRIGGER] = {}, [LEFT_TRIGGER] = {} }
	-- L2 stays untouched until the broom first drives it.
	---@type table<DSXTrigger, HogwartsTriggerEffect?>
	local appliedEffects = {}
	local stopped = false
	-- The last poll found the player on foot in gameplay, so R2 follows the wand.
	local onFoot = false
	local spellEndedAt = -math.huge

	-- Sends an effect only when it differs from what the trigger already has; DSX
	-- keeps the last effect, so repeating it is wasted traffic. Packets are cached per
	-- effect. A failed send stops the mod.
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
		return true
	end

	-- R2 shows a cast's fire effect from `fired` until `ended`, or until `impact`
	-- for projectile effects. Spell hooks call these between polls, so they apply
	-- the effect themselves.
	---@type HogwartsTriggerEffect? Fire effect of the latest cast while it lasts.
	local spellEffect

	-- R2 on foot: the fire effect, else the hold vibration while the wand is raised,
	-- else the baseline. After a fire effect, the baseline lasts a moment before the
	-- hold vibration resumes.
	---@param now number
	---@return HogwartsTriggerEffect
	local function wandEffect(now)
		if spellEffect then
			return spellEffect
		end
		return Wand.isRaised() and now >= spellEndedAt + SPELL_END_DELAY and HOLD_EFFECT or BASE_EFFECT
	end

	---@param apply boolean False when a new fire effect follows at once.
	local function endSpellEffect(apply)
		if not spellEffect then
			return
		end
		spellEffect = nil
		local now = getTime()
		spellEndedAt = now
		if apply and onFoot then
			applyEffect(RIGHT_TRIGGER, wandEffect(now))
		end
	end

	spells:listen({
		fired = function(cast)
			local effect = Spells.effect(cast.name)
			if not effect then
				-- A replaced cast already cleared its effect without re-applying R2.
				endSpellEffect(false)
				if onFoot then
					applyEffect(RIGHT_TRIGGER, wandEffect(getTime()))
				end
				return
			end
			spellEffect = effect
			-- A new cast must refresh even an identical effect.
			applyEffect(RIGHT_TRIGGER, effect, true)
		end,
		impact = function()
			if spellEffect and spellEffect.untilImpact then
				endSpellEffect(true)
			end
		end,
		ended = function(_, reason)
			endSpellEffect(reason ~= "replaced")
		end,
	})

	-- The mount tracker polls while the player is in gameplay and drives the
	-- triggers while they ride; update() below leaves them alone then.
	mounts:listen({
		riding = function(mount)
			local right, left = mountEffects:update(mount)
			applyEffect(RIGHT_TRIGGER, right)
			if left then
				applyEffect(LEFT_TRIGGER, left)
			elseif appliedEffects[LEFT_TRIGGER] then
				applyEffect(LEFT_TRIGGER, OFF_EFFECT)
			end
		end,
		dismounted = function()
			mountEffects:reset()
		end,
	})

	-- Arm changes apply at once instead of waiting for the next poll.
	armChanged = function()
		if onFoot then
			applyEffect(RIGHT_TRIGGER, wandEffect(getTime()))
		end
	end

	-- One poll. Priority, first match wins:
	--   1. no active gameplay -> triggers off
	--   2. riding a mount     -> the mount tracker's `riding` drives the triggers
	--   3. otherwise R2       -> spell fire effect, else hold vibration, else baseline
	local function update()
		local pawn, controller = activePawn()
		-- 1. Paused, cinematic, dead, or no player: end any cast and switch off.
		if not pawn or not controller then
			onFoot = false
			spells:pause()
			applyEffect(RIGHT_TRIGGER, OFF_EFFECT)
			if appliedEffects[LEFT_TRIGGER] then
				applyEffect(LEFT_TRIGGER, OFF_EFFECT)
			end
			return
		end
		-- 2. On a mount the wand and spells pause.
		if mounts:current() then
			onFoot = false
			spells:pause()
			return
		end
		-- 3. On foot: L2 is unused, R2 follows the wand; spell hooks report casts.
		onFoot = true
		spells:resume()
		if appliedEffects[LEFT_TRIGGER] then
			applyEffect(LEFT_TRIGGER, OFF_EFFECT)
		end
		applyEffect(RIGHT_TRIGGER, wandEffect(getTime()))
	end

	Loop.gameThread(POLL_INTERVAL_MS, function()
		if not stopped then
			update()
		end
		return stopped
	end, function(message)
		log("Update failed: " .. message)
	end)

	log("Trigger effects ready for controller " .. index)
end)
