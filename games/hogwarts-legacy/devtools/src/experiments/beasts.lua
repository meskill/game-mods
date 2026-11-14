-- Beasts and their tools, for quick-cast: with a beast in focus out of
-- combat, RB + a face button uses the Nab-Sack, the brush and the food.
--
-- These runs can be repeated, chosen in experiment-local.lua:
--   require("experiments.beasts")(dev, { run = "capture" })  -- run 4
--   require("experiments.beasts")(dev, { run = "slots" })    -- run 9
--   require("experiments.beasts")(dev, { run = "interact" }) -- run 10
--   require("experiments.beasts")(dev, { run = "release" })  -- run 11
--   require("experiments.beasts")(dev, { run = "range" })    -- run 12
--   require("experiments.beasts")(dev, { run = "repeat" })   -- run 13
-- All log the Nab-Sack's and the inventory tools' calls and poll combat,
-- the auto target and the catch. "capture" uses the Nab-Sack without the
-- spell set (F1, F2, below the run 4 findings); "slots" writes the set's
-- bottom slot (F1-F4, run 9 below); "interact" compares the mod's use of an
-- item with the game's slot press (F1-F3, run 10 below); "release" ends the
-- mod's use as the button's release does (F1, F2, run 11 below); "range"
-- polls the focused beast's distance (no keys, run 12 below); "repeat"
-- feeds twice in a row, which leaves the player walking (F1, F2, run 13).
--
-- Findings, run 1 (one catch of a Giant Purple Toad, a fight with spiders):
-- - The Nab-Sack is no spell but an inventory item tool: record
--   `DA_CaptureDeviceToolRecord` (`UInventoryItemToolRecord`, under
--   `/Game/Gameplay/Nurturing/Creatures/Blueprints/CreatureCapture/CaptureDevice/`),
--   tool `BP_Capture_Device_New_C` (`ACaptureDeviceItemTool`). It
--   replaces the player's active inventory item tool (the broom item gets
--   `OnDeactivate`) on the player's `InventoryToolSetComponent`.
-- - One press ran the whole catch, ~9 s: `OnActivate` and `BeginItemUsage` in
--   the press frame, `EndItemUsage` 0.3-0.6 s later, `BeginCapturing`;
--   `CurrentCaptureState` 1 PreStart -> 2 Progressing -> three
--   `OnConfirmCapture` (gates, ~1 s apart) -> 3 Succeeding ->
--   `PlayCaptureStinger` -> `FinishSucceeding`, `UnequipTool` -> 4 Succeeded.
-- - The tool's `GetTargetActor()` was the controller's
--   `GetBestAutoTargetActor()` at the press: the beast in focus, a
--   `Creature_Character`; enemies (spiders) and spider eggs are not.
-- - `Biped_Player:InCombatMode()` turned true in the fight and false 5 s
--   after; `InCombatModeDelayed()` stayed false.
-- - `inherited = true` (117 functions, AActor ones at 119 calls/s) and a
--   `FindFirstOf` poll lagged the game.
--
-- Findings, run 2 (two catches with the game's button, F1, F2):
-- - The Nab-Sack press (the spell button held, then the Nab-Sack's slot) ran
--   no `WandTool:OnSpell_Pressed`, no wand tool switch and no spell cast;
--   only the item tool activated.
-- - A catch can fail: 2 Progressing -> 8 Failing after two gates ->
--   `FinishCancelling`.
-- - `InventoryToolSetComponent:ActivateTool(record)` only equips the tool
--   (nil until it was spawned once); `UseItem()` then starts nothing.
-- - The catch runs in the player's behaviour tree task
--   `BTT_BipedUpper_UseInventoryItem` (object dump: `CustActionEvt_BeastCapture`,
--   `CustActionEvt_UseInventoryItem`, `InpActEvt_CaptureDevice_ConfirmCapture`).
--
-- Findings, run 3 (F1 twice, then two catches with the game's button):
-- - The tool's `InventoryResult` is no source for its names: "None" when the
--   mod equips it, the brush's ("CreaturePettingBrush", "Toolbox_Storage")
--   when the game does. F1 sent "None"/"None": `UseInventoryItemByName`
--   returned false.
-- - The game's press runs no `ToolSetComponent:ActivateTool` (only F1's did):
--   the equip is native.
-- - Item names follow the records: `DA_CreaturePettingBrushToolRecord` is
--   "CreaturePettingBrush", `DA_CreatureFeedToolRecord` is "CreatureFeed", in
--   "Toolbox_Storage". So the Nab-Sack is likely "CaptureDevice" there.
-- - The behaviour tree task was never hooked: `dev.after` only runs while
--   tracking, and it ran before tracking started.
--
-- Findings, run 4 (F1 at a focused Giant Purple Toad, out of combat):
-- - `UseInventoryItemByName("CaptureDevice", "Toolbox_Storage")` returned
--   true and caught the toad, as the game's slot does: equip (`OnActivate`,
--   `BeginItemUsage`) and the target at once, then the task
--   `BTT_BipedUpper_UseInventoryItem`: `ReceiveExecute`, `BeginCapturing` with
--   `CustActionEvt_BeastCapture` (0.6 s), one
--   `InpActEvt_CaptureDevice_ConfirmCapture` per gate (~1.1 s apart, no
--   button pressed), `FinishSucceeding`, `ItemUsageEnded`, `ExitTask` (8.8 s).
--   quick-cast uses this call (quick-cast/src/Scripts/beasts.lua).
-- - The auto target turns none while the Nab-Sack is out.
-- - Wand spell button presses were for spells only (slots 1, 3, 6, 99).
--
-- Run 4 (`run = "capture"`): the game's catch and the mod's call.
-- Keys (each screenshots 300 ms later):
--   F1  `UseInventoryItemByName("CaptureDevice", "Toolbox_Storage")`
--   F2  `LoadInventoryItemByName`, then `UseInventoryItemByName`, same names
-- Run out of combat, near beasts; each part works on its own:
-- A. The game's default: start tracking; focus a beast; mark; catch it with
--    the game's own Nab-Sack slot; mark when caught (or failed); stop.
-- B. The mod's call: start tracking; focus a beast; mark; F1; wait until it
--    is caught or 10 s; mark; if nothing happened, F2; wait; mark; stop.
--
-- Findings, run 5: `SlotSpellFromCode("CaptureDevice", 2, 0)` emptied slot 2
-- of set 0 (wand slot 5 read none) and the diamond showed an error icon
-- there: the Nab-Sack is no spell ID. Yet the player slots it into spell sets
-- in the spell menu, where it acts like a spell (run 2: its press ran no
-- wand spell, only the item tool). A set entry has a type
-- (`EUIQActionBarType`: 0 spells, 1 inventory) besides its name, so the
-- Nab-Sack is likely an inventory entry, written another way.
--
-- Findings, run 6:
-- - Slotting the Nab-Sack by hand in the spell menu ran none of the hooked
--   slotting functions (`UpdateSelectedActionItem`, `Slot*FromCode`,
--   `SetInventoryActionItemIntoCurrentSlot`, `ReplaceItemOnDiamond`,
--   `NewMacroSelected`, the menu's `OnRequestedSpellSlotted`,
--   `UpdateMacroCode`, `OnSpellSelectedBP`): the menu writes natively. The
--   diamond then showed the Nab-Sack's icon at the bottom.
-- - `QuickActionManager`: 5 groups, 4 actions in group 0. `GetItemName`'s
--   out parameter comes back in the table passed (`{ ItemName = <FName> }`).
--   (group 0, macro 0, item 0) was type 0 (spell) "Expelliarmus"; (0, 0, 1)
--   type 2 (none) "None". So a macro is likely one diamond slot, with items.
-- - F2 `SlotSpellFromCode("Incendio", 2, 0)` put Incendio back over the
--   Nab-Sack.
-- - track.call cuts long values: the dump goes to the log in full now.
--
-- Findings, run 7 (step 1 skipped: no Nab-Sack slotted by hand):
-- - Each diamond slot of a set is a macro (0-3: top, right, bottom, left)
--   with one item; spells are type 0 with count 0, e.g. (0,2,0) Incendio.
-- - `UpdateSelectedActionItem("CaptureDevice", "", 1, "Toolbox_Storage",
--   0, 1, 2, 0)` changed the data: (0,2,0) read type 1 "CaptureDevice"
--   count 1, and wand slot 5 read none. But the bar kept Incendio's icon and
--   the bottom button did not catch: the HUD and the wand did not follow.
-- - `SlotSpellFromCode("Incendio", 2, 0)` put the spell back, bar included.
--
-- Findings, run 8:
-- - The spell menu's own Nab-Sack entry: (0,2,0) type 1 "CaptureDevice"
--   count -1, wand slot 5 none; the bar showed the Nab-Sack.
-- - `UpdateSelectedActionItem(..., Amount 1, ...)` then the set swap event:
--   (0,2,0) type 1 "CaptureDevice" count 1, wand slot 5 none, but the bar
--   kept Incendio and the button did not catch. Re-choosing the set did not
--   refresh it: `UpdateSelectedActionItem` changes the data without telling
--   the HUD, unlike `SlotSpellFromCode`.
--
-- Findings, run 9:
-- - `SlotInventoryItemFromCode("CaptureDevice", -1, 2)` put the Nab-Sack
--   into the chosen set's bottom: (0,2,0) type 1 count -1, as the spell
--   menu's, the bar showed it, and its button caught a beast (it runs
--   `Biped_Player:QuickActionInteract(2)`, then the item tool). Only the
--   chosen set changed. quick-cast uses this (`loadout.lua`).
-- - `SlotToolFromCode("CaptureDevice", 2)` worked too, but with count 1, and
--   group 2's bottom also read "CaptureDevice" count 1 after it (not known
--   before): it may write into more than the chosen set.
-- - `SlotSpellFromCode("Incendio", 2, 0)` puts the spell back over an item.
--
-- Run 9 (`run = "slots"`): the other "FromCode" writers, the siblings of `SlotSpellFromCode`
-- (which does refresh the bar), with the menu's count -1. Their `Slot` has no
-- group: tried as the diamond slot of the chosen set (2, the bottom); the
-- dump covers every group, to see where the entry lands.
-- Keys, pressed in this order (each screenshots 300 ms later; F1-F4 unbound
-- from the game's sets; each logs a dump of all groups after):
--   F1  `SlotToolFromCode("CaptureDevice", 2)`
--   F2  `SlotSpellFromCode("Incendio", 2, group)`
--   F3  `SlotInventoryItemFromCode("CaptureDevice", -1, 2)`
--   F4  `SlotSpellFromCode("Incendio", 2, group)`
--
-- Run near a beast, out of combat, on set 1, RB up, Incendio at the bottom:
-- 1. Start tracking. F1; mark (Nab-Sack icon anywhere?). If at the bottom:
--    focus the beast, cast it (hold R2, Cross); mark (catch?).
-- 2. F2; mark (Incendio back?).
-- 3. F3; mark (Nab-Sack icon anywhere?). If at the bottom: cast it at the
--    beast; mark (catch?).
-- 4. F4; mark (Incendio back?); stop.
--
-- Run 10 (`run = "interact"`): quick-cast's beast actions
-- (`UseInventoryItemByName`) leave the camera close, as while aiming a
-- spell, much longer than the game's own slot press, which resets almost at
-- once. The game's press runs `Biped_Player:QuickActionInteract(slot)`
-- (run 9). Compares both with the beast food, which can be repeated.
-- Keys, pressed in this order (each screenshots 300 ms later):
--   F1  `UseInventoryItemByName("CreatureFeed", "Toolbox_Storage")`
--   F2  `SlotInventoryItemFromCode("CreatureFeed", -1, 2)`, then
--       `QuickActionInteract(2)`
--   F3  `SlotSpellFromCode("Incendio", 2, group)`
--
-- Run near a beast, out of combat, on set 1, RB up, Incendio at the bottom,
-- quick-cast loaded:
-- 1. Start tracking. Focus the beast. F1; mark when the camera is back (how
--    long?).
-- 2. Focus the beast. F2; mark when the camera is back (how long?).
-- 3. F3; mark (Incendio back?); stop.
--
-- Findings, run 10:
-- - Both ways fed the beast, and both left the player slow and the camera
--   close for the whole use: `ItemUsageEnded`/`ExitTask` came 16 s after
--   F1 and F2. `QuickActionInteract(2)` alone is no better than
--   `UseInventoryItemByName`.
-- - The game's own slot press (the last attempt) ran the same calls plus
--   `InventoryItemTool:EndItemUsage` (twice) 0.26 s after `BeginItemUsage`,
--   then `CustActionEvt_UseInventoryItem` (5, 6): the button's release. Its
--   `ItemUsageEnded` came 2.4 s after the press.
--
-- Findings, run 11: `EndItemUsage()` on the active tool after
-- `UseInventoryItemByName` ends the use as quickly as the game's own press,
-- 250 ms later or at once alike. quick-cast calls it at once
-- (`Beasts.use`).
--
-- Run 11 (`run = "release"`): the release the mod never sends, as
-- `EndItemUsage` on the active inventory tool
-- (`InventoryToolSetComponent:GetActiveTool()`).
-- Keys, pressed in this order (each screenshots 300 ms later):
--   F1  `UseInventoryItemByName("CreatureFeed", "Toolbox_Storage")`, 250 ms
--       later `EndItemUsage()` on the active tool
--   F2  the same, `EndItemUsage()` at once
--
-- Run near a beast, out of combat, quick-cast loaded, RB up:
-- 1. Start tracking. Focus the beast. F1; mark when the camera is back
--    (quick, as the game's?).
-- 2. Focus the beast. F2; mark when the camera is back; stop.
--
-- Findings, run 12: a Jobberknoll and a Niffler both had
-- `NurtureInteractCloseRange` 175, `NurtureInteractRange` 800,
-- `NurtureInteractRangeHighHappinessMultiplier` 3 (cm). The auto target held
-- beasts up to 18 m away. Brushing at 11.5-13 m ran `BeginItemUsage` and
-- nothing more; at ~8.5 m (polled while closing in) it ran the task and
-- petted. quick-cast counts a beast only within its `NurtureInteractRange`
-- (`Beasts.focused`).
--
-- Run 12 (`run = "range"`): how close a beast must be for the tools. The
-- auto target picks beasts far away, where the tools do nothing, and in a
-- vivarium that takes the face buttons from the room's spells. Polls, while
-- the auto target is a creature, its distance (`GetDistanceTo`, cm, in
-- DISTANCE_STEP steps) and its AI component's `NurtureInteractCloseRange`,
-- `NurtureInteractRange`, `NurtureInteractRangeHighHappinessMultiplier`
-- (candidates for the game's own range). No keys.
--
-- Run in a vivarium, out of combat, quick-cast loaded:
-- 1. Start tracking. Focus a beast from far away.
-- 2. Walk closer step by step; at each step feed it (RB + Circle) or brush it
--    (RB + Square), then mark: did it work?
-- 3. Repeat with another beast; stop.
--
-- Findings, run 13 (one feed, then three feeds 1 s apart; stuck walking):
-- - A single feed: `SetContexts(true)` at the press, `ItemUsageEnded`,
--   `SetContexts(false)` and `ExitTask` 2.5 s later; running worked.
-- - A feed during a feed: `BeginItemUsage` and at once `ItemUsageEnded` of
--   the running use, with no `SetContexts(false)` or `ExitTask`; the next
--   feed exited the old task and started a new one. The contexts ended
--   balanced, `MaxWalkSpeed` stayed 600 and the tool's `ContextToSet` is
--   "None", yet the player could only walk. `EndItemUsage()` again (F2)
--   did not help: no tool was active by then.
-- - quick-cast now starts no tool use until the running one's task exits
--   (`Beasts.use`, hooks `ExitTask`).
--
-- Run 13 (`run = "repeat"`): feeding again while a feed runs (the same beast
-- or another) leaves the player stuck: walking only, no running, as if still
-- feeding. Only the food does it, not the brush: perhaps its bowl animation.
-- The use task sets contexts at its start and clears them at its end
-- (`BTT_BipedUpper_UseInventoryItem_C:SetContexts(true/false)`); the tool
-- names a game logic bool it sets (`ContextToSet`). Logs the task (hooked
-- at the first poll) and polls, every 250 ms: the last tool's `ContextToSet`
-- name and its value (`Biped_Player:GetGameLogicBoolVariable`), and the
-- player's `CharacterMovement.MaxWalkSpeed`.
-- Keys, pressed in this order (each screenshots 300 ms later):
--   F1  feed as quick-cast does: `UseInventoryItemByName("CreatureFeed",
--       "Toolbox_Storage")`, then `EndItemUsage()` on the active tool at once
--   F2  `EndItemUsage()` on the active tool again (does it unstick?)
--
-- Run near two beasts, out of combat, quick-cast loaded, RB up:
-- 1. Start tracking. Focus a beast; F1; mark; run around; mark (running?).
-- 2. Focus a beast; F1, and at once F1 again (or at the other beast); mark.
-- 3. Try to run; mark (stuck walking?).
-- 4. If stuck: F2; mark; try to run; mark; stop.

local CAPTURE_CLASS = "/Script/Phoenix.CaptureDeviceItemTool"
local CREATURE_CLASS = "/Script/Phoenix.Creature_Character"
local PLAYER_CLASS = "/Script/Phoenix.Biped_Player"
local TASK_CLASS = "/Game/Pawn/Shared/StateTree/BTT_BipedUpper_UseInventoryItem.BTT_BipedUpper_UseInventoryItem_C"

-- The spell F2 and F4 put back at the bottom of the chosen set.
local SPELL = { name = "Incendio", slot = 2 }
-- The Nab-Sack as the spell menu stores it: its item name and count.
local NAB_SACK = { item = "CaptureDevice", count = -1, holder = "Toolbox_Storage" }
-- The beast food, used by run 10.
local FOOD = { item = "CreatureFeed", count = -1, holder = "Toolbox_Storage" }
-- How long after the use run 11's F1 releases it: the game's was 0.26 s.
local RELEASE_MS = 250
-- Run 12 logs the beast's distance in steps of this many cm.
local DISTANCE_STEP = 50
-- The groups the dump reads: the 4 sets and one more.
local GROUPS = 5

-- Slotting calls, logged for any caller.
local SLOTTING = {
	"/Script/Phoenix.QuickActionManager:UpdateSelectedActionItem",
	"/Script/Phoenix.QuickActionManager:SlotSpellFromCode",
	"/Script/Phoenix.QuickActionManager:SlotToolFromCode",
	"/Script/Phoenix.QuickActionManager:SlotInventoryItemFromCode",
	"/Script/Phoenix.QuickActionManager:SetInventoryActionItemIntoCurrentSlot",
	"/Script/Phoenix.QuickActionManager:ReplaceItemOnDiamond",
	"/Script/Phoenix.QuickActionManager:NewMacroSelected",
	"/Script/Phoenix.ActionSelectionScreenBase:OnRequestedSpellSlotted",
	"/Script/Phoenix.ActionSelectionScreenBase:UpdateMacroCode",
	"/Script/Phoenix.ActionSelectionScreenBase:OnSpellSelectedBP",
}

-- Classes whose own functions are hooked (not inherited ones).
local CLASSES = {
	CAPTURE_CLASS,
	"/Script/Phoenix.InventoryItemTool",
}

local HOOKS = {
	"/Script/Phoenix.WandTool:OnSpell_Pressed",
	"/Script/Phoenix.WandTool:OnSpell_Released",
	"/Script/Phoenix.WandTool:OnActiveSpellToolChanged",
	"/Script/Toolset.ToolSetComponent:ActivateTool",
	"/Script/Toolset.ToolSetComponent:ActivateToolByName",
	"/Script/Toolset.ToolSetComponent:ActivateExistingTool",
	"/Script/Phoenix.Biped_Player:UseInventoryItemByName",
	"/Script/Phoenix.Biped_Player:LoadInventoryItemByName",
	"/Script/Phoenix.Biped_Player:InstaUseInventoryItem",
	"/Script/Phoenix.Biped_Player:QuickActionInteract",
}

-- Getters, polled below instead.
local SKIP = { "^Get", "^Is", "Tick" }

local POLL_MS = 250
local ACTION_SHOT_MS = 300
-- The diamond's slots read by the dump, and the wand slot of slot 0.
local MACROS = 4
local FIRST_WAND_SLOT = 3

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
	local creature = object:IsA(CREATURE_CLASS) and " creature" or ""
	return ("%s %X%s"):format((object:GetFName() --[[@as any]]):ToString(), object:GetAddress(), creature)
end

---Hooks the behaviour tree task once its Blueprint is loaded; true when done.
---@param dev DebugApi
---@return boolean
local function hookTask(dev)
	if not StaticFindObject(TASK_CLASS) then
		return false
	end
	local ok, hooked = pcall(dev.hookClass, TASK_CLASS, { skip = SKIP })
	dev.log(ok and ("hooked %d functions of %s"):format(hooked, TASK_CLASS) or ("! " .. tostring(hooked)))
	return true
end

---Polls combat, the auto target and the active inventory item tool.
---@param dev DebugApi
local function followTargets(dev)
	local taskHooked = false
	dev.every(POLL_MS, function()
		-- Timers run only while tracking: hook the task at the first poll.
		taskHooked = taskHooked or hookTask(dev)
		local pawn = dev.pawn() --[[@as any]]
		local pc = dev.pc() --[[@as any]]
		if not pawn or not pawn:IsA(PLAYER_CLASS) or not pc then
			dev.track.value("player", "none")
			return
		end
		dev.track.value("player", describe(pawn))
		dev.track.value("InCombatMode", try(function()
			return pawn:InCombatMode()
		end))
		dev.track.value("autoTarget", try(function()
			return describe(pc:GetBestAutoTargetActor())
		end))
		local tool = try(function()
			return pawn.InventoryToolSetComponent:GetActiveTool()
		end)
		dev.track.value("itemTool", type(tool) == "string" and tool or describe(tool))
		if type(tool) == "string" or not tool or not tool:IsValid() or not tool:IsA(CAPTURE_CLASS) then
			return
		end
		dev.track.value("nabSack.CurrentCaptureState", try(function()
			return tool.CurrentCaptureState
		end))
		dev.track.value("nabSack.target", try(function()
			return describe(tool:GetTargetActor())
		end))
		dev.track.value("nabSack.gates", try(function()
			return ("%d/%d"):format(tool:GetNumGatesPassed(), tool:GetTotalNumGates())
		end))
	end)
end

---The chosen set's spell slots, as the wand's records.
---@param pawn any
---@return string
local function slots(pawn)
	local wand = pawn:GetWand()
	local names = {}
	for slot = 0, 3 do
		names[#names + 1] = describe(wand:GetSpellRecordFromSlot(FIRST_WAND_SLOT + slot))
	end
	return table.concat(names, ", ")
end

---@return any
local function quickActions()
	local found = FindFirstOf("QuickActionManager") --[[@as any]]
	if not found or not found:IsValid() then
		error("no QuickActionManager")
	end
	return found
end

---One entry as "name(type,count)"; spells as their name.
---@param manager any
---@param group integer
---@param macro integer
---@return string
local function entry(manager, group, macro)
	local out = {}
	local name = tostring(try(function()
		manager:GetItemName(group, macro, 0, out)
		return out.ItemName and out.ItemName:ToString() or "<no out>"
	end))
	local kind = try(function()
		return manager:GetItemType(group, macro, 0)
	end)
	if kind == 0 then
		return name
	end
	return ("%s(type %s, count %s)"):format(
		name,
		tostring(kind),
		tostring(try(function()
			return manager:GetItemCount(group, macro, 0)
		end))
	)
end

---Every group's entries, and the wand's slots.
---@param pawn any
---@return string
local function dump(pawn)
	local manager = quickActions()
	local lines = { ("active group %d; wand: %s"):format(manager:GetActiveGroupIndex(), slots(pawn)) }
	for group = 0, GROUPS - 1 do
		local entries = {}
		for macro = 0, MACROS - 1 do
			entries[#entries + 1] = entry(manager, group, macro)
		end
		lines[#lines + 1] = ("group %d: %s"):format(group, table.concat(entries, ", "))
	end
	return table.concat(lines, "; ")
end

---@param pawn any
---@return string
local function putSpell(pawn)
	local manager = quickActions()
	manager:SlotSpellFromCode(SPELL.name, SPELL.slot, manager:GetActiveGroupIndex())
	return dump(pawn)
end

---@param pawn any
---@return string
local function slotTool(pawn)
	quickActions():SlotToolFromCode(NAB_SACK.item, SPELL.slot)
	return dump(pawn)
end

---@param pawn any
---@return string
local function slotInventoryItem(pawn)
	quickActions():SlotInventoryItemFromCode(NAB_SACK.item, NAB_SACK.count, SPELL.slot)
	return dump(pawn)
end

---Ends the use of the active inventory tool, as the button's release does.
---@param pawn any
---@return string
local function release(pawn)
	local tool = pawn.InventoryToolSetComponent:GetActiveTool()
	if not tool or not tool:IsValid() then
		return "no active tool"
	end
	tool:EndItemUsage()
	return "EndItemUsage on " .. describe(tool)
end

---Polls whether a tool use still holds the player: the last tool's context,
---and the player's walk speed.
---@param dev DebugApi
local function followUse(dev)
	---@type string?
	local context
	dev.every(POLL_MS, function()
		local pawn = dev.pawn() --[[@as any]]
		if not pawn or not pawn:IsA(PLAYER_CLASS) then
			return
		end
		local tool = try(function()
			return pawn.InventoryToolSetComponent:GetActiveTool()
		end)
		if type(tool) ~= "string" and tool and tool:IsValid() then
			local ok, name = pcall(function()
				return tool.ContextToSet.ElementName:ToString()
			end)
			if ok and type(name) == "string" then
				context = name
			end
		end
		dev.track.value("use.context", tostring(context))
		if context then
			dev.track.value("use.contextSet", try(function()
				return pawn:GetGameLogicBoolVariable({ ElementName = FName(context) })
			end))
		end
		dev.track.value("use.maxWalkSpeed", try(function()
			return math.floor(pawn.CharacterMovement.MaxWalkSpeed + 0.5)
		end))
	end)
end

---Polls the focused beast's distance and its AI component's nurture ranges.
---@param dev DebugApi
local function followRange(dev)
	dev.every(POLL_MS, function()
		local pawn = dev.pawn() --[[@as any]]
		local pc = dev.pc() --[[@as any]]
		if not pawn or not pc then
			return
		end
		local target = pc:GetBestAutoTargetActor()
		if not target or not target:IsValid() or not target:IsA(CREATURE_CLASS) then
			dev.track.value("beast.distance", "no beast")
			return
		end
		dev.track.value("beast.distance", try(function()
			return math.floor(pawn:GetDistanceTo(target) / DISTANCE_STEP) * DISTANCE_STEP
		end))
		dev.track.value("beast.nurtureRanges", try(function()
			local ai = target.CreatureAIComponent
			return ("close %s, interact %s, happy x%s"):format(
				tostring(ai.NurtureInteractCloseRange),
				tostring(ai.NurtureInteractRange),
				tostring(ai.NurtureInteractRangeHighHappinessMultiplier)
			)
		end))
	end)
end

---@class BeastsExperimentAction
---@field key Key
---@field name string
---@field run fun(pawn: any, dev: DebugApi): any

---The keys of each run, F1 first.
---@type table<string, BeastsExperimentAction[]>
local RUNS = {
	capture = {
		{
			key = Key.F1,
			name = "use",
			run = function(pawn)
				return pawn:UseInventoryItemByName(FName(NAB_SACK.item), FName(NAB_SACK.holder))
			end,
		},
		{
			key = Key.F2,
			name = "load+use",
			run = function(pawn)
				local loaded = pawn:LoadInventoryItemByName(FName(NAB_SACK.item), FName(NAB_SACK.holder))
				local used = pawn:UseInventoryItemByName(FName(NAB_SACK.item), FName(NAB_SACK.holder))
				return ("load %s, use %s"):format(tostring(loaded), tostring(used))
			end,
		},
	},
	slots = {
		{ key = Key.F1, name = "tool", run = slotTool },
		{ key = Key.F2, name = "spell", run = putSpell },
		{ key = Key.F3, name = "inventory item", run = slotInventoryItem },
		{ key = Key.F4, name = "spell again", run = putSpell },
	},
	interact = {
		{
			key = Key.F1,
			name = "use food",
			run = function(pawn)
				return pawn:UseInventoryItemByName(FName(FOOD.item), FName(FOOD.holder))
			end,
		},
		{
			key = Key.F2,
			name = "food slot",
			run = function(pawn)
				quickActions():SlotInventoryItemFromCode(FOOD.item, FOOD.count, SPELL.slot)
				return pawn:QuickActionInteract(SPELL.slot)
			end,
		},
		{ key = Key.F3, name = "spell", run = putSpell },
	},
	release = {
		{
			key = Key.F1,
			name = "use, release later",
			run = function(pawn, dev)
				local used = pawn:UseInventoryItemByName(FName(FOOD.item), FName(FOOD.holder))
				dev.after(RELEASE_MS, function()
					dev.log("release: " .. tostring(try(function()
						return release(pawn)
					end)))
				end)
				return used
			end,
		},
		{
			key = Key.F2,
			name = "use, release at once",
			run = function(pawn)
				local used = pawn:UseInventoryItemByName(FName(FOOD.item), FName(FOOD.holder))
				return ("use %s, %s"):format(tostring(used), release(pawn))
			end,
		},
	},
	range = {},
	["repeat"] = {
		{
			key = Key.F1,
			name = "feed",
			run = function(pawn)
				local used = pawn:UseInventoryItemByName(FName(FOOD.item), FName(FOOD.holder))
				return ("use %s, %s"):format(tostring(used), release(pawn))
			end,
		},
		{ key = Key.F2, name = "release again", run = release },
	},
}

---Binds a run's keys; each runs on the game thread and logs its result in full.
---@param dev DebugApi
---@param actions BeastsExperimentAction[]
local function bindActions(dev, actions)
	for _, action in ipairs(actions) do
		RegisterKeyBind(action.key, function()
			-- Key callbacks run outside the game thread.
			ExecuteInGameThread(function()
				local pawn = dev.pawn()
				if not pawn then
					dev.log(("! %s: no player"):format(action.name))
					return
				end
				local ok, result = pcall(action.run, pawn, dev)
				dev.track.call("action " .. action.name, { ok = ok })
				dev.log(("action %s: %s"):format(action.name, tostring(result)))
				dev.after(ACTION_SHOT_MS, function()
					dev.shot({ name = action.name, ui = true })
				end)
			end)
		end)
	end
end

---@class BeastsExperimentOptions
---@field run "capture"|"slots"|"interact"|"release"|"range"|"repeat" Which run's keys to bind.

---@param dev DebugApi
---@param options BeastsExperimentOptions
return function(dev, options)
	local actions = RUNS[options.run] or error("beasts: unknown run " .. tostring(options.run))
	for _, class in ipairs(CLASSES) do
		local ok, hooked = pcall(dev.hookClass, class, { skip = SKIP })
		dev.log(ok and ("hooked %d functions of %s"):format(hooked, class) or ("! " .. tostring(hooked)))
	end
	for _, path in ipairs(HOOKS) do
		local ok, err = pcall(dev.hook, path, { player = true })
		if not ok then
			dev.log("! " .. tostring(err))
		end
	end
	if options.run == "slots" then
		for _, path in ipairs(SLOTTING) do
			local ok, err = pcall(dev.hook, path)
			if not ok then
				dev.log("! " .. tostring(err))
			end
		end
	end
	followTargets(dev)
	if options.run == "range" then
		followRange(dev)
	elseif options.run == "repeat" then
		followUse(dev)
	end
	bindActions(dev, actions)
	local keys = {}
	for _, action in ipairs(actions) do
		keys[#keys + 1] = ("F%d %s"):format(#keys + 1, action.name)
	end
	dev.log(("beasts run %s: %s"):format(options.run, table.concat(keys, "; ")))
end
