---@meta
-- Notes on dumped input types (dump/Engine.lua, dump/InputCore.lua,
-- dump/Mastermind.lua, dump/UMGFocus.lua, dump/BTS_Biped_TopLevel.lua), merged
-- into those declarations by LuaLS. Editor-only, never require.
--
-- Used by hogwarts.input. Removing and adding mappings and SimulateInput are
-- verified in game (devtools `experiments/vivarium.lua`, runs 1-3); the rest
-- comes from QuickUtils' package and the dump.

---A key by name, e.g. `Gamepad_DPad_Up`, `Gamepad_RightShoulder`,
---`Gamepad_RightTrigger`. UE4SS takes it as a table of its fields:
---`{ KeyName = FName("Gamepad_DPad_Up") }`; build the FName on the game thread.
---@class FKey
local FKey = {}

---@class APlayerController
local APlayerController = {}

---Whether the key is held now. Reads the player input's key states, which
---the game's action mappings do not affect: a key whose mappings were removed
---still reads as held. True only for the frame of a press is
---`WasInputKeyJustPressed`, too short for a poll; hogwarts.input tracks
---presses between polls instead.
---@param Key FKey
---@return boolean
function APlayerController:IsInputKeyDown(Key) end

---The engine's input settings; the default object
---`/Script/Engine.Default__InputSettings` holds the mappings every player
---input is built from.
---@class UInputSettings
---@field ActionMappings TArray<FInputActionKeyMapping> The game's actions by key, e.g. `CM_GamePad_DpadUp`, `AM_Loadout1`, `UMGDPadUp`; RB (`Gamepad_RightShoulder`) holds `AM_Oppugno`, `Transfig_RotateObject_Right`, `UMGFieldGuideTabRight`, `UMGGadgetWheelConfirm`, `UMGCreatureManagementScreen` (the vivarium's beasts panel, also on a keyboard key), `CM_GamePad_RightShoulder`, `UMGRightShoulder`, `DirectorCam_RollRight`, `WandLinkCharged2`, `UMGEulaPrivacy`, `UMGModMainMenuTabRight`. Read by index: `TArray:ForEach` failed in UE4SS 3.0.1.
local UInputSettings = {}

---Removes every equal mapping (action, key, modifiers). With
---`bForceRebuildKeymaps` false, call `ForceRebuildKeymaps()` once after a
---batch. Not saved unless `SaveKeyMappings()` runs, e.g. from the controls
---menu: put mappings back before the player can reach it.
---@param KeyMapping FInputActionKeyMapping
---@param bForceRebuildKeymaps boolean
function UInputSettings:RemoveActionMapping(KeyMapping, bForceRebuildKeymaps) end

---Adds the mapping unless an equal one exists.
---@param KeyMapping FInputActionKeyMapping
---@param bForceRebuildKeymaps boolean
function UInputSettings:AddActionMapping(KeyMapping, bForceRebuildKeymaps) end

---Rebuilds every player input's key maps from these settings: removed
---mappings stop firing their actions, added ones fire again.
function UInputSettings:ForceRebuildKeymaps() end

---One action on one key. Phoenix adds `GroupName` and `SortIndex`; copy every
---field when removing and adding a mapping back.
---@class FInputActionKeyMapping
local FInputActionKeyMapping = {}

---The game's test automation, `/Script/Mastermind.Default__MastermindBPLibrary`.
---@class UMastermindBPLibrary
local UMastermindBPLibrary = {}

---Sends a key event as if the player made it: the action mappings act on
---it as on a real key. With `InWorldContextObject` the player controller,
---RB pressed opened the vivarium's beasts panel at once (it ran the state
---tree's `CreatureManagementButton` event); send the release too
---(`EInputEvent` 0 pressed, 1 released). The simulated press does not show in
---`IsInputKeyDown`.
---@param InWorldContextObject UObject
---@param InInputKey FKey
---@param InInputEvent EInputEvent
function UMastermindBPLibrary:SimulateInput(InWorldContextObject, InInputKey, InInputEvent) end

---Did nothing for the spell set keys (devtools `experiments/room.lua`, run 6).
---@param InWorldContextObject UObject
---@param InInputKey FKey
function UMastermindBPLibrary:SimulateTappedInput(InWorldContextObject, InInputKey) end

---The UI's input dispatcher, one per level (`UMGInputManager_<n>`).
---@class AUMGInputManager
local AUMGInputManager = {}

---Not called when RB opens the beasts panel; called from Lua with 44
---(`UMGCreatureManagementScreen`), pressed then released, it opened nothing.
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:OnInputAction(InputAction, InputEvent) end

---The player's top-level state tree (`BTS_Biped_TopLevel_C_0`). Its
---`InpActEvt_<Name>_K2Node_CustomInputActionEvent_<n>(VariantMapHandle)`
---events run on the game's input actions under their own names:
---`CreatureManagementButton` runs on `UMGCreatureManagementScreen`'s press,
---`SwapLoadoutButton_<Top|Right|Bottom|Left>` on `AM_Loadout1`-`4`.
---@class UBTS_Biped_TopLevel_C
local UBTS_Biped_TopLevel_C = {}

---Runs at each press that opens the vivarium's beasts panel. Called from Lua
---(`{ Handle = 0 }`) it runs but opens nothing.
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_TopLevel_C:InpActEvt_CreatureManagementButton_K2Node_CustomInputActionEvent_24(VariantMapHandle) end
