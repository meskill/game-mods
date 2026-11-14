---@meta
-- Notes on dumped Phoenix beast-catching types (dump/Phoenix.lua,
-- dump/Toolset.lua), merged into those declarations by LuaLS. Editor-only,
-- never require.
--
-- From the devtools capture experiment (four runs at Giant Purple Toads, one
-- fight) and the UE4SS object dump.

---The Nab-Sack: an inventory item tool, not a spell (no spell record). Its
---record is `DA_CaptureDeviceToolRecord` (`UInventoryItemToolRecord`,
---`/Game/Gameplay/Nurturing/Creatures/Blueprints/CreatureCapture/CaptureDevice/DA_CaptureDeviceToolRecord`),
---the tool `BP_Capture_Device_New_C`, spawned on the first use and replacing
---the player's active inventory item tool (the broom item).
---
---One press ran a whole catch, ~9 s: `OnActivate` and `BeginItemUsage` in the
---press frame, `EndItemUsage` 0.6 s later, `BeginCapturing`; then
---`CurrentCaptureState` 1 PreStart -> 2 Progressing -> three `OnConfirmCapture`
---(the gates, ~1.3 s apart) -> 3 Succeeding -> `PlayCaptureStinger` ->
---`FinishSucceeding`, `UnequipTool` -> 4 Succeeded. A catch can fail: 2 ->
---8 Failing after two gates -> `FinishCancelling`.
---
---The catch runs in the player's behaviour tree task
---`BTT_BipedUpper_UseInventoryItem` (`ReceiveExecute`,
---`CustActionEvt_BeastCapture`, one `InpActEvt_CaptureDevice_ConfirmCapture`
---per gate with no button pressed, `ItemUsageEnded`, `ExitTask`), not in the
---tool alone: `InventoryToolSetComponent:ActivateTool(record)` only equips it
---(nil until the tool was spawned once), and `UseItem()` then starts nothing.
---`ABiped_Player:UseInventoryItemByName("CaptureDevice", "Toolbox_Storage")`
---starts it all, aimed at the auto target. The game's Nab-Sack slot (spell
---button held, then the slot) runs no `WandTool:OnSpell_Pressed`.
---@class ACaptureDeviceItemTool
local ACaptureDeviceItemTool = {}

---The beast being caught: the controller's `GetBestAutoTargetActor()` at the
---press. Nil once the catch is done.
---@return AActor
function ACaptureDeviceItemTool:GetTargetActor() end

---@class ABiped_Player
---@field InventoryToolSetComponent UToolSetComponent The player's inventory item tools: the broom item, the Nab-Sack. `GetActiveTool()` is the one in use.
local ABiped_Player = {}

---True while the player fights: turned true in a fight with spiders and false
---about 5 s after it. Not true near calm beasts.
---@return boolean
function ABiped_Player:InCombatMode() end

---Stayed false through a fight; use `InCombatMode()`.
---@return boolean
function ABiped_Player:InCombatModeDelayed() end

---Starts using an inventory item through the player's behaviour tree, as the
---game's own buttons do. Names seen: the broom ("BroomSkyScythe",
---"BroomDarkWizard2", holder "ActiveBroom"); the Nab-Sack is
---"CaptureDevice" in "Toolbox_Storage" (true, a full catch of the beast in
---focus). Creature tools follow their records: `DA_<Item>ToolRecord`, e.g.
---"CreatureFeed", "CreaturePettingBrush".
---@param InventoryObjectID FName
---@param HolderID FName
---@return boolean
function ABiped_Player:UseInventoryItemByName(InventoryObjectID, HolderID) end

---@class ABiped_PlayerController
local ABiped_PlayerController = {}

---The actor in focus, which spells and the Nab-Sack aim at: a
---`Creature_Character` for beasts; enemies (spiders) and objects (spider
---eggs) are other classes. Changes as the player looks around.
---`GetLockedOnActor()` stayed none and `GetBestLockOnActor()` saw the beast
---only briefly.
---@return AActor
function ABiped_PlayerController:GetBestAutoTargetActor() end
