-- Lumos kept on with the wand raised, for games/hogwarts-legacy/lumos-keeper.
-- Logs what the game (and the mod, if loaded) does around a Lumos cast, and
-- binds keys that make the mod's calls by hand:
--   F1  keep:    DeactivateLumos, CancelCurrentSpell, ActivateLumos
--   F2  raise:   SetRightArmState(StartLumos, Lumos priority)
--   F3  clear:   SetRightArmState(None, Lumos priority)
--   F4  restore: DeactivateLumos, ActivateLumos
--   F5  release: DeactivateLumos, CancelCurrentSpell
-- Keys act on the Lumos tool of the last Lumos cast and screenshot 300 ms later.
--
-- Run, out of combat, with lumos-keeper off to see the game alone (on, to see
-- the mod): start tracking; mark before each step.
-- 1. Cast Lumos; wait 2 s; cast Lumos again; wait 2 s.
-- 2. Cast Lumos; wait 1 s; F1; F2; wait 2 s; cast Confringo; wait 2 s.
-- 3. Cast Lumos (light should go); wait 2 s; F3. Stop tracking.
--
-- Findings (4 runs; casts from the spell slot and from QuickUtils, a Blueprint
-- quick-cast mod):
-- - Turning Lumos on: SetRightArmState(StartLumos 14, Lumos 8), SpellTool:Start
--   ~0.18 s later, the light (IsLumosActive, a LumosEmberActor) ~0.05 s after.
--   QuickUtils casts with WandTool:ActivateSpellTool(DA_LumosSpellRecord) and
--   CastActiveSpell and presses no spell button (no OnSpell_Pressed).
-- - Turning the game's own light off (Lumos again, or any other spell) runs no
--   Start: SetRightArmState(None, Lumos) and the light goes out.
-- - F1 keeps the light through other casts but its cancel clears the Lumos arm
--   request, so the wand drops (HoldItem, UnEquipItem, HideItem) with the light
--   at the hip. F2 holds it up through casts (a cast takes the arm at
--   FullBodyUsage 9 and hands it back); F3 lets it drop. State 12 at the Lumos
--   priority also raises it, lower and forward.
-- - The arm takes one request per ERightArmPriority; the highest wins. The idle
--   wand is a LowestPriority request the game keeps setting.
-- - Casting Lumos at a kept light runs only WandTool:OnActiveSpellToolChanged
--   with the Lumos tool as ActivatedSpell; 10-20 ms later GetLumosActor() is nil
--   (the light fades) while IsLumosActive() stays true and the wand stays up.
--   Spell set previews switch to the Lumos tool and back within 1 ms and leave
--   the light on. No hookable function of the Lumos, channeling or spell tool
--   or the wand marks the cast.
-- - F4 brings back a light the game put out (a new LumosEmberActor). F5 only
--   turns IsLumosActive false; the wand stays up until F3.
-- - Loading a save creates a new Biped_Player (NotifyOnNewObject), runs
--   OnCharacterLoadComplete ~1 s later, and brings a new wand and spell tools.

local Spells = require("hogwarts.spells")

local LUMOS_CLASS = "/Script/Phoenix.LumosSpellTool"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"

-- EStandardManagedPriority.AblAbility, the light priority the mod uses.
local LIGHT_PRIORITY = 1
-- ERightArmPriority.Lumos and ERightArmState values.
local ARM_PRIORITY = 8
local ARM_LUMOS = 14
local ARM_NONE = 0

-- Getters, polled below instead.
local SKIP = { "^Get", "^Is" }

-- Hooked with the player filter, besides the Lumos tool's own functions.
local HOOKS = {
	"/Script/Phoenix.WandTool:OnActiveSpellToolChanged",
	"/Script/Phoenix.WandTool:ActivateSpellTool",
	"/Script/Phoenix.WandTool:CastActiveSpell",
	"/Script/Phoenix.WandTool:CancelCurrentSpell",
	"/Script/Phoenix.WandTool:OnRightArmStateChanged",
	"/Script/Phoenix.Biped_Character:SetRightArmState",
	"/Script/Phoenix.Biped_Player:OnCharacterLoadComplete",
}

local ACTION_SHOT_MS = 300

---The value of read(), or its error as text.
---@param read fun(): any
local function try(read)
	local ok, value = pcall(read)
	if ok then
		return value
	end
	return ("<error: %s>"):format(tostring(value))
end

---@param object UObject?
---@return string
local function describe(object)
	if not object or not object:IsValid() then
		return "none"
	end
	return ("%s %X"):format((object:GetFName() --[[@as any]]):ToString(), object:GetAddress())
end

---@class LumosExperimentState
---@field lumos? ALumosSpellTool The Lumos spell tool of the last Lumos cast.

---Remembers the Lumos tool of each Lumos cast and logs every cast's start and end.
---@param dev DebugApi
---@param state LumosExperimentState
local function followCasts(dev, state)
	local tracker = Spells.tracker(function(message)
		dev.log("! " .. message)
	end)
	tracker:listen({
		fired = function(cast)
			if cast.name == "lumos" then
				state.lumos = cast.spell --[[@as ALumosSpellTool]]
			end
			dev.track.call("spells fired", { spell = cast.name })
		end,
		ended = function(cast, reason)
			dev.track.call("spells ended", { spell = cast.name, reason = reason })
		end,
	})
	tracker:resume()
end

---Polls the player, the arm (winning and Lumos requests) and the Lumos light.
---@param dev DebugApi
---@param state LumosExperimentState
local function followPlayer(dev, state)
	dev.every(100, function()
		local pawn = dev.pawn() --[[@as any]]
		if not pawn or not pawn:IsA(PLAYER_CLASS) then
			dev.track.value("player", "none")
			return
		end
		dev.track.value("player", describe(pawn))
		dev.track.value(
			"arm",
			try(function()
				return pawn:GetRightArmState(0)
			end)
		)
		dev.track.value(
			"arm@Lumos",
			try(function()
				return pawn:GetRightArmState(ARM_PRIORITY)
			end)
		)
		local lumos = state.lumos --[[@as any]]
		if not lumos or not lumos:IsValid() then
			dev.track.value("lumos", "none")
			return
		end
		dev.track.value("lumos", describe(lumos))
		dev.track.value(
			"lumos.IsLumosActive",
			try(function()
				return lumos:IsLumosActive()
			end)
		)
		dev.track.value(
			"lumos.actor",
			try(function()
				return describe(lumos:GetLumosActor())
			end)
		)
	end)
end

---@class LumosExperimentAction
---@field key Key
---@field name string
---@field run fun(pawn: ABiped_Player, wand: AWandTool, lumos: ALumosSpellTool)

---@type LumosExperimentAction[]
local ACTIONS = {
	{
		key = Key.F1,
		name = "keep",
		run = function(_, wand, lumos)
			lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
			wand:CancelCurrentSpell()
			lumos:ActivateLumos(LIGHT_PRIORITY, lumos)
		end,
	},
	{
		key = Key.F2,
		name = "raise",
		run = function(pawn)
			pawn:SetRightArmState(ARM_LUMOS, ARM_PRIORITY, true)
		end,
	},
	{
		key = Key.F3,
		name = "clear",
		run = function(pawn)
			pawn:SetRightArmState(ARM_NONE, ARM_PRIORITY, true)
		end,
	},
	{
		key = Key.F4,
		name = "restore",
		run = function(_, _, lumos)
			lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
			lumos:ActivateLumos(LIGHT_PRIORITY, lumos)
		end,
	},
	{
		key = Key.F5,
		name = "release",
		run = function(_, wand, lumos)
			lumos:DeactivateLumos(LIGHT_PRIORITY, lumos)
			wand:CancelCurrentSpell()
		end,
	},
}

---Binds the ACTIONS keys; each runs on the game thread.
---@param dev DebugApi
---@param state LumosExperimentState
local function bindActions(dev, state)
	for _, action in ipairs(ACTIONS) do
		RegisterKeyBind(action.key, function()
			-- Key callbacks run outside the game thread.
			ExecuteInGameThread(function()
				local pawn = dev.pawn() --[[@as ABiped_Player?]]
				local lumos = state.lumos
				if not pawn or not lumos or not lumos:IsValid() then
					dev.log(("! %s: no player or no Lumos cast yet"):format(action.name))
					return
				end
				local ok, err = pcall(action.run, pawn, pawn:GetWand(), lumos)
				dev.track.call("action " .. action.name, { ok = ok, err = err })
				dev.after(ACTION_SHOT_MS, function()
					dev.shot({ name = action.name, ui = true })
				end)
			end)
		end)
	end
end

---@param dev DebugApi
return function(dev)
	local ok, hooked = pcall(dev.hookClass, LUMOS_CLASS, { player = true, skip = SKIP })
	dev.log(ok and ("hooked %d functions of %s"):format(hooked, LUMOS_CLASS) or ("! " .. tostring(hooked)))
	for _, path in ipairs(HOOKS) do
		local hookOk, err = pcall(dev.hook, path, { player = true })
		if not hookOk then
			dev.log("! " .. tostring(err))
		end
	end
	local spawnOk, err = pcall(dev.spawned, PLAYER_CLASS)
	if not spawnOk then
		dev.log("! " .. tostring(err))
	end
	---@type LumosExperimentState
	local state = {}
	followCasts(dev, state)
	followPlayer(dev, state)
	bindActions(dev, state)
	dev.log("lumos: track; Lumos on and off; Lumos, F1 keep, F2 raise, Confringo; Lumos; F3 clear; stop")
end
