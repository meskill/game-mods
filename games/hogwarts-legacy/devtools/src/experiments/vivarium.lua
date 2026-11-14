-- RB (R1) in a vivarium opens the beasts panel, also when quick-cast uses RB
-- as its modifier. Goal: keep the panel shut while RB is held for quick-cast,
-- and open it on a plain RB click.
--
-- Findings, run 1:
-- - Action mappings on `Gamepad_RightShoulder`: `AM_Oppugno`,
--   `Transfig_RotateObject_Right`, `UMGFieldGuideTabRight`,
--   `UMGGadgetWheelConfirm`, `UMGCreatureManagementScreen`,
--   `CM_GamePad_RightShoulder`, `UMGRightShoulder`, `DirectorCam_RollRight`,
--   `WandLinkCharged2`, `UMGEulaPrivacy`, `UMGModMainMenuTabRight`. No
--   mapping is named `CreatureManagementButton`: the tree's input events have
--   their own names (`SwapLoadoutButton_Top` is `AM_Loadout1`'s), so F1
--   removed nothing.
-- - The panel opens at the press, not the release.
-- - Each RB press that opened it ran
--   `BTS_Biped_TopLevel_C:InpActEvt_CreatureManagementButton_K2Node_CustomInputActionEvent_24`;
--   the `SpellModifierButton` and `CM_GamePad_RightShoulder` events never ran.
-- - Calling that event from Lua ran it (hook logged) but opened no panel.
-- - The `rb` poll (`dev.pc():IsInputKeyDown`) never changed: replaced.
--
-- Findings, run 2:
-- - The panel's mapping is `UMGCreatureManagementScreen`, on
--   `Gamepad_RightShoulder` and a keyboard key. Removing it keeps the panel
--   shut on RB, the tree's `CreatureManagementButton` event does not run, and
--   quick-cast's RB + D-pad still casts. Putting it back brings the panel back.
--   So the tree's `CreatureManagementButton` is `UMGCreatureManagementScreen`.
-- - The press does not go through `UMGInputManager:OnInputAction`, and calling
--   it with 44 (Pressed, Released) opens nothing.
--
-- Findings, run 3: the replay works. With the mappings put back,
-- `SimulateInput(controller, RB, Pressed)` ran the tree event at once and
-- opened the panel; the release 100 ms later and removing the mappings again
-- left RB's taps shut afterwards. The simulated press did not show in
-- `IsInputKeyDown`. `UIManager:SetActiveMenu` was never called. RB did not
-- close the panel; Circle did. quick-cast uses this (`passthrough.lua`).
--
-- Run 3: replaying a click. The real press runs the tree event, but the event
-- called from Lua opens nothing (run 1), so the game must see the key itself:
-- `MastermindBPLibrary:SimulateInput(controller, RB, event)`, with the
-- mapping put back for the replay. Also logs `UIManager:SetActiveMenu` (does
-- the panel open through it, and by which name?).
-- Keys, pressed in this order (each screenshots 300 ms later; F1-F4 unbound
-- from the game's sets):
--   F1  remove the `UMGCreatureManagementScreen` mappings
--   F2  replay a click: put the mappings back, `SimulateInput(RB, Pressed)`,
--       100 ms later `(RB, Released)`, 100 ms later remove the mappings again
--   F3  put the mappings back
--
-- Run in a vivarium, quick-cast loaded:
-- 1. Start tracking. Tap RB; mark (panel?). Close it.
-- 2. F1. Tap RB; mark (panel shut?).
-- 3. F2; mark (panel?). Close it. Tap RB; mark (shut again?).
-- 4. F3. Tap RB; mark (panel back?). Close it; stop.

local Player = require("hogwarts.player")
local Input = require("hogwarts.input")

local SETTINGS = "/Script/Engine.Default__InputSettings"
local RB = "Gamepad_RightShoulder"
local ACTION = "UMGCreatureManagementScreen"
-- EInputEvent
local PRESSED, RELEASED = 0, 1
local MASTERMIND = "/Script/Mastermind.Default__MastermindBPLibrary"
local TREE = "/Game/Pawn/Shared/StateTree/BTS_Biped_TopLevel.BTS_Biped_TopLevel_C"

local HOOKS = {
	TREE .. ":InpActEvt_CreatureManagementButton_K2Node_CustomInputActionEvent_24",
	"/Script/Phoenix.UIManager:SetActiveMenu",
}

-- Between the replayed press and release, and the release and removing again.
local REPLAY_STEP_MS = 100

local POLL_MS = 50
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

---@param mapping any FInputActionKeyMapping
---@return table
local function copy(mapping)
	return {
		ActionName = FName(mapping.ActionName:ToString()),
		Key = { KeyName = FName(mapping.Key.KeyName:ToString()) },
		bShift = mapping.bShift,
		bCtrl = mapping.bCtrl,
		bAlt = mapping.bAlt,
		bCmd = mapping.bCmd,
		GroupName = FName(mapping.GroupName:ToString()),
		SortIndex = mapping.SortIndex,
	}
end

---The action mappings of ACTION, copied.
---@return table[]
local function mappings()
	local settings = StaticFindObject(SETTINGS) --[[@as any]]
	local all = settings.ActionMappings
	local found = {}
	for i = 1, all:GetArrayNum() do
		local mapping = all[i]
		if mapping.ActionName:ToString() == ACTION then
			found[#found + 1] = copy(mapping)
		end
	end
	return found
end

---@param list table[]
---@return string
local function describeMappings(list)
	local parts = {}
	for _, mapping in ipairs(list) do
		parts[#parts + 1] = ("%s on %s"):format(mapping.ActionName:ToString(), mapping.Key.KeyName:ToString())
	end
	return table.concat(parts, ", ")
end

---@class VivariumExperimentState
---@field removed? table[] The mappings F1 removed.

---@param state VivariumExperimentState
---@return string
local function remove(state)
	if state.removed then
		error("already removed: F3 first")
	end
	local found = mappings()
	local settings = StaticFindObject(SETTINGS) --[[@as any]]
	for _, mapping in ipairs(found) do
		settings:RemoveActionMapping(mapping, false)
	end
	settings:ForceRebuildKeymaps()
	state.removed = found
	return "removed " .. describeMappings(found)
end

---Puts the removed mappings back and taps RB through Mastermind, then
---removes them again.
---@param dev DebugApi
---@param state VivariumExperimentState
---@return string
local function click(dev, state)
	local removed = state.removed or error("nothing removed: F1 first")
	local player = Player.find() or error("no player")
	local mastermind = StaticFindObject(MASTERMIND) --[[@as any]]
	local settings = StaticFindObject(SETTINGS) --[[@as any]]
	for _, mapping in ipairs(removed) do
		settings:AddActionMapping(mapping, false)
	end
	settings:ForceRebuildKeymaps()
	mastermind:SimulateInput(player.controller, { KeyName = FName(RB) }, PRESSED)
	dev.after(REPLAY_STEP_MS, function()
		dev.track.call("replay release", { result = tostring(try(function()
			mastermind:SimulateInput(player.controller, { KeyName = FName(RB) }, RELEASED)
			return "released"
		end)) })
		dev.after(REPLAY_STEP_MS, function()
			dev.track.call("replay remove", { result = tostring(try(function()
				for _, mapping in ipairs(removed) do
					settings:RemoveActionMapping(mapping, false)
				end
				settings:ForceRebuildKeymaps()
				return "removed again"
			end)) })
		end)
	end)
	return "mappings back, pressed RB"
end

---@param state VivariumExperimentState
---@return string
local function restore(state)
	local removed = state.removed or error("nothing removed: F1 first")
	local settings = StaticFindObject(SETTINGS) --[[@as any]]
	for _, mapping in ipairs(removed) do
		settings:AddActionMapping(mapping, false)
	end
	settings:ForceRebuildKeymaps()
	state.removed = nil
	return "restored " .. describeMappings(removed)
end

---@param dev DebugApi
---@param state VivariumExperimentState
local function bindKeys(dev, state)
	local actions = {
		{ key = Key.F1, name = "remove", run = function() return remove(state) end },
		{ key = Key.F2, name = "click", run = function() return click(dev, state) end },
		{ key = Key.F3, name = "restore", run = function() return restore(state) end },
	}
	for _, action in ipairs(actions) do
		RegisterKeyBind(action.key, function()
			-- Key callbacks run outside the game thread.
			ExecuteInGameThread(function()
				dev.track.call("action " .. action.name, { result = tostring(try(action.run)) })
				dev.after(ACTION_SHOT_MS, function()
					dev.shot({ name = action.name, ui = true })
				end)
			end)
		end)
	end
end

---@param dev DebugApi
return function(dev)
	for _, path in ipairs(HOOKS) do
		local ok, err = pcall(dev.hook, path)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	dev.log(ACTION .. " mappings: " .. tostring(try(function()
		return describeMappings(mappings())
	end)))
	dev.every(POLL_MS, function()
		dev.track.value("rb", try(function()
			local player = Player.find()
			if not player then
				return "no player"
			end
			return Input.isDown(player.controller, RB)
		end))
	end)
	---@type VivariumExperimentState
	local state = {}
	bindKeys(dev, state)
	dev.log("vivarium run 3: F1 remove UMGCreatureManagementScreen mappings; F2 Mastermind RB tap; F3 put back")
end
