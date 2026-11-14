-- The Room of Requirement's spells, for quick-cast. Conjuration and Evanesco
-- (`Vanishment`) work cast as quick-cast casts; Altering (`Transformation`)
-- does not, because nothing is in focus. Goal: a trigger for the outlines that
-- needs no spell set kept for room spells.
--
-- Findings so far (runs 1-9):
-- - `WandTool:IsSpellToolAvailable` is no getter: each call switches the
--   wand's active spell tool (`OnActiveSpellToolChanged`). Polling it broke
--   the game's own casts. Never poll it.
-- - The game's Altering opens a selection only with an object in focus (the
--   controller's `GetBestAutoTargetActor()`); quick-cast's cast, with nothing
--   in focus, fires `Start` and stops 0.25 s later.
-- - Objects are outlined, and the auto target finds them, as soon as the
--   chosen set's spells (`WandTool:GetSpellRecordFromSlot(3..6)`, a getter)
--   include a room spell; R2 does not matter. No reflected property changes
--   with it (run 7): the check is native.
-- - A set switch: `spellModifierHeld` context on (R2), the behaviour tree's
--   `InpActEvt_SwapLoadoutButton_<Top|Right|Bottom|Left>` on
--   `BTS_Biped_TopLevel_C_0` (the D-pad; sets 1-4), the slots change in the
--   same frame; otherwise only the arm and the HUD's spell diamond
--   (`CommonActionsBase:SetMainLoadout`). Calling the event from Lua switches
--   the set too (run 8).
-- - Slotting Altering into the chosen set from the spell menu enabled the
--   outlines 0.37 s later with no set switch (`TargetSighted` from the
--   `AISense_CogGroup_AutoTarget`); no hookable call ran for the slotting
--   (not `Biped_Character:SetSpell` nor `SpellManagerBPInterface:SetSpell`),
--   only `Biped_Player:OnAboutToSaveGame` (run 9).
-- - Spell sets are input actions `AM_Loadout1`-`4`: keyboard F1-F4 and 5-8,
--   gamepad D-pad up, right, down, left. F5-F8 and 0 open other mods' UIs.
--
-- Findings, run 10 (two tries):
-- - Neither write changed the bar: after `Biped_Character:SetSpell(0, 0,
--   DA_TransformationSpellRecord)` and the spell manager's `SetSpell(0, 0,
--   "Transformation")`, slot 3 still read Expelliarmus.
-- - The outlines that followed came from the game: 7 and 8 are its keys for
--   sets 3 and 4. Each 7 also chose set 3 (Bottom), which since run 9 holds
--   Transformation; each 8 chose set 4 (Left), beating our re-choose of set
--   3 in the same frame. 9's restore wrote nothing either (slot 3 stayed
--   Transformation, set 3's own spell). Nothing in the sets was changed.
--
-- Findings, run 11 (F1-F4 unbound in game): all four writes ran without an
-- error and changed no wand slot (0-9), also after re-choosing the set:
-- `Biped_Character:SetSpell` and `SpellManagerBPInterface:SetSpell` do not
-- touch the player's sets.
--
-- Findings, run 12: it works. `SlotSpellFromCode("Transformation", 0, 0)`
-- put Altering into set 1's first spell at once (wand slots 0, 2, 3
-- changed), `TargetSighted` followed 7 ms later, and Altering worked on room
-- objects. Writing "Expelliarmus" back the same way restored the set and
-- outlines went (`TargetLost` 2 ms later). `GetActiveGroupIndex()` follows
-- the D-pad set switches (0-3), so the chosen set needs no swap hooks. No
-- other quick action manager or spell menu call and no save followed.
--
-- Run 12: `UQuickActionManager:SlotSpellFromCode(SpellID, Slot, Group)`, the
-- spell menu's slotting "from code", on the transient `QuickActionManager`.
-- `Slot` is tried as the set's spell index (0) and as the wand slot (3); the
-- first that changes a wand slot is kept. Also logs (no player filter) the
-- quick action manager's and the spell menu's (`ActionSelectionScreenBase`)
-- own functions, and polls `QuickActionManager:GetActiveGroupIndex()`.
-- - The chosen set is the last `SwapLoadoutButton_*` event seen (Top 0,
--   Right 1, Bottom 2, Left 3): switch set once with the D-pad after loading.
-- Keys (each screenshots 300 ms later; F1-F4 unbound from the game's sets):
--   F1  write Altering: `SlotSpellFromCode("Transformation", 0, set)`, then
--      `(..., 3, set)`, until a wand slot changes
--   F2  re-choose the chosen set (the tree's swap event), to refresh the bar
--   F3  write back the spell the changed slot held, the same way, re-choose
--
-- Run in the Room of Requirement, near conjured objects, on a set without
-- room spells (not set 3: it holds Altering now):
-- 1. Start tracking. Switch set with the D-pad (away and back); mark.
-- 2. F1; mark (a slot Altering? outlines?).
-- 3. If no outlines: F2; mark (outlines? Altering on the bar?).
-- 4. If outlines: aim at an object; cast Altering; mark (options?).
-- 5. F3; mark (slot back?).
-- 6. Open the spell menu, slot any spell into any set by hand, close; mark;
--    stop (logs the menu's own calls for slotting).

local RECORD = "/Game/Gameplay/ToolSet/Spells/%s/DA_%sSpellRecord.DA_%sSpellRecord"
local TREE = "/Game/Pawn/Shared/StateTree/BTS_Biped_TopLevel.BTS_Biped_TopLevel_C"

-- The tree's swap events, by set (0-3) as the D-pad chooses them.
local SWAPS = {
	[0] = "InpActEvt_SwapLoadoutButton_Top_K2Node_CustomInputActionEvent_79",
	[1] = "InpActEvt_SwapLoadoutButton_Right_K2Node_CustomInputActionEvent_80",
	[2] = "InpActEvt_SwapLoadoutButton_Bottom_K2Node_CustomInputActionEvent_81",
	[3] = "InpActEvt_SwapLoadoutButton_Left_K2Node_CustomInputActionEvent_78",
}

-- The wand slots logged around each write; the face buttons are 3-6.
local FIRST_SLOT = 0
local LAST_SLOT = 9

local POLL_MS = 250
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

---@param object any
---@return string
local function describe(object)
	if type(object) ~= "userdata" then
		return tostring(object)
	end
	if not object:IsValid() then
		return "none"
	end
	return ("%s %X"):format((object:GetFName() --[[@as any]]):ToString(), object:GetAddress())
end

---The spell name of a record, e.g. "Transformation", or nil.
---@param record any
---@return string?
local function spellName(record)
	return describe(record):match("^DA_(%w+)SpellRecord")
end

---The chosen set's spells: the records in slots 3-6.
---@param pawn any
---@return string
local function slots(pawn)
	local wand = pawn:GetWand()
	local names = {}
	for slot = 3, 6 do
		names[#names + 1] = spellName(wand:GetSpellRecordFromSlot(slot)) or "?"
	end
	return table.concat(names, ", ")
end

---Every wand slot's record, FIRST_SLOT to LAST_SLOT.
---@param pawn any
---@return table<integer, any>
local function allSlots(pawn)
	local wand = pawn:GetWand()
	local records = {}
	for slot = FIRST_SLOT, LAST_SLOT do
		records[slot] = try(function()
			return wand:GetSpellRecordFromSlot(slot)
		end)
	end
	return records
end

---The slots whose record differs between two allSlots readings.
---@param before table<integer, any>
---@param after table<integer, any>
---@return integer[]
local function changed(before, after)
	local list = {}
	for slot = FIRST_SLOT, LAST_SLOT do
		if describe(before[slot]) ~= describe(after[slot]) then
			list[#list + 1] = slot
		end
	end
	return list
end

---@class RoomWriteAttempt
---@field label string
---@field run fun(pawn: any, set: integer, record: any)
---@field index integer The index passed.

---@class RoomExperimentState
---@field set? integer The chosen set (0-3), from the last swap event seen.
---@field attempt? RoomWriteAttempt The write that changed a slot.
---@field slot? integer The wand slot it changed.
---@field original? any The record that slot held before.

---Follows the chosen set from the tree's swap events.
---@param dev DebugApi
---@param state RoomExperimentState
local function followSet(dev, state)
	for set, event in pairs(SWAPS) do
		local ok, err = pcall(RegisterHook, TREE .. ":" .. event, function()
			state.set = set
		end)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
end

---@param slot integer
---@return fun(pawn: any, set: integer, record: any)
local function byQuickAction(slot)
	return function(_, set, record)
		local manager = FindFirstOf("QuickActionManager") --[[@as any]]
		if not manager or not manager:IsValid() then
			error("no QuickActionManager")
		end
		manager:SlotSpellFromCode(spellName(record) or error("not a spell record"), slot, set)
	end
end

---@type RoomWriteAttempt[]
local ATTEMPTS = {
	{ label = "QuickActionManager:SlotSpellFromCode(name, 0, set)", run = byQuickAction(0), index = 0 },
	{ label = "QuickActionManager:SlotSpellFromCode(name, 3, set)", run = byQuickAction(3), index = 3 },
}

---Tries each write of Altering until a wand slot changes.
---@param pawn any
---@param state RoomExperimentState
---@param record any
---@return string
local function write(pawn, state, record)
	local set = state.set or error("set unknown: switch set once with the D-pad")
	local log = {}
	for _, attempt in ipairs(ATTEMPTS) do
		local before = allSlots(pawn)
		local ok, err = pcall(attempt.run, pawn, set, record)
		local after = allSlots(pawn)
		local slotsChanged = changed(before, after)
		log[#log + 1] = ("%s: %s, changed slots {%s}"):format(
			attempt.label,
			ok and "ok" or tostring(err),
			table.concat(slotsChanged, ",")
		)
		if #slotsChanged > 0 then
			state.attempt, state.slot, state.original = attempt, slotsChanged[1], before[slotsChanged[1]]
			break
		end
	end
	return table.concat(log, "; ")
end

---Re-chooses the chosen set through the tree's swap event.
---@param state RoomExperimentState
---@return string
local function rechoose(state)
	local set = state.set or error("set unknown: switch set once with the D-pad")
	local tree = FindFirstOf("BTS_Biped_TopLevel_C") --[[@as any]]
	if not tree or not tree:IsValid() then
		error("no behaviour tree")
	end
	tree[SWAPS[set]](tree, { Handle = 0 })
	return "re-chose set " .. set
end

---@param dev DebugApi
---@param state RoomExperimentState
---@return string
local function inject(dev, state)
	local pawn = dev.pawn() --[[@as any]]
	local altering = StaticFindObject(RECORD:format("Transformation", "Transformation", "Transformation"))
	if not altering or not altering:IsValid() then
		error("no Altering record")
	end
	if state.attempt then
		error("a write is pending: press - first")
	end
	return ("%s; slots: %s"):format(write(pawn, state, altering), slots(pawn))
end

---Writes back the record the changed slot held, with the same write.
---@param dev DebugApi
---@param state RoomExperimentState
---@return string
local function restore(dev, state)
	local pawn = dev.pawn() --[[@as any]]
	local attempt = state.attempt or error("no write changed a slot")
	local set = state.set or error("set unknown")
	local before = allSlots(pawn)
	attempt.run(pawn, set, state.original)
	local after = allSlots(pawn)
	local result = ("%s with %s: changed slots {%s}"):format(
		attempt.label,
		describe(state.original),
		table.concat(changed(before, after), ",")
	)
	state.attempt, state.slot, state.original = nil, nil, nil
	return ("%s; %s; slots: %s"):format(result, rechoose(state), slots(pawn))
end

---Polls the auto target and the chosen set's spells.
---@param dev DebugApi
---@param state RoomExperimentState
local function follow(dev, state)
	dev.every(POLL_MS, function()
		local pawn = dev.pawn() --[[@as any]]
		local pc = dev.pc() --[[@as any]]
		if not pawn or not pc then
			dev.track.value("player", "none")
			return
		end
		dev.track.value("autoTarget", try(function()
			return describe(pc:GetBestAutoTargetActor())
		end))
		dev.track.value("set", try(function()
			return ("%s: %s"):format(tostring(state.set), slots(pawn))
		end))
		dev.track.value("activeGroup", try(function()
			return (FindFirstOf("QuickActionManager") --[[@as any]]):GetActiveGroupIndex()
		end))
	end)
end

---@param dev DebugApi
---@param state RoomExperimentState
local function bindKeys(dev, state)
	local actions = {
		{ key = Key.F1, name = "inject", run = function() return inject(dev, state) end },
		{ key = Key.F2, name = "rechoose", run = function() return rechoose(state) end },
		{ key = Key.F3, name = "restore", run = function() return restore(dev, state) end },
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
	local classes = {
		"/Script/Phoenix.QuickActionManager",
		"/Script/Phoenix.ActionSelectionScreenBase",
	}
	for _, class in ipairs(classes) do
		local ok, hooked = pcall(dev.hookClass, class, { skip = { "^Get", "^Is", "^Can", "^Handle", "Tick" } })
		dev.log(ok and ("hooked %d functions of %s"):format(hooked, class) or ("! " .. tostring(hooked)))
	end
	local hooks = {
		"/Script/Phoenix.Biped_PlayerController:TargetSighted",
		"/Script/Phoenix.Biped_PlayerController:TargetLost",
	}
	for _, path in ipairs(hooks) do
		local ok, err = pcall(dev.hook, path)
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	---@type RoomExperimentState
	local state = {}
	followSet(dev, state)
	follow(dev, state)
	bindKeys(dev, state)
	dev.log("room run 12: switch set once; F1 SlotSpellFromCode Altering; F2 re-choose set; F3 restore; then slot by hand")
end
