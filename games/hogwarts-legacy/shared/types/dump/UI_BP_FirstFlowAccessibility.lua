---@meta

---@class UUI_BP_FirstFlowAccessibility_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field content UOverlay
---@field HiddenMenuReaderText UPhoenixRichTextBlock
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field ProfileName UPhoenixTextBlock
---@field settingsTitle UPhoenixTextBlock
---@field UI_BP_Settings_Accessibility UUI_BP_Settings_Accessibility_C
---@field ChangesComplete FUI_BP_FirstFlowAccessibility_CChangesComplete
---@field MenuReaderOffLegendData FLegendItemData
---@field MenuReaderOnLegendData FLegendItemData
---@field ContinueLegendData FLegendItemData
---@field SelectLegendData FLegendItemData
---@field ResetLegendData FLegendItemData
---@field EverEnteredSpecialMenuReaderMode boolean
---@field IsInSpecialMenuReaderMode boolean
---@field CurrentMenuReaderSetting boolean
---@field WantsToShowCursor boolean
---@field WaitingForMenuReaderIdle boolean
---@field CursorChangeRequested FUI_BP_FirstFlowAccessibility_CCursorChangeRequested
---@field IsFirstFullRead boolean
---@field selectLegend ULegendItem
---@field CachedResetLegendItem ULegendItem
local UUI_BP_FirstFlowAccessibility_C = {}

---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FirstFlowAccessibility_C:OnResetHoldReleased(LegendItem, HoldWasCompleted) end
function UUI_BP_FirstFlowAccessibility_C:AdjustForViewportWidth() end
function UUI_BP_FirstFlowAccessibility_C:ExitSpecialMode() end
function UUI_BP_FirstFlowAccessibility_C:ToggleMenuReader() end
function UUI_BP_FirstFlowAccessibility_C:RefreshLegend() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FirstFlowAccessibility_C:GatherMenuReaderStrings(DepthLevel) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FirstFlowAccessibility_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_FirstFlowAccessibility_C:Construct() end
function UUI_BP_FirstFlowAccessibility_C:StartSpecialMenuReaderFlow() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_FirstFlowAccessibility_C:Tick(MyGeometry, InDeltaTime) end
---@param InFocusEvent FFocusEvent
function UUI_BP_FirstFlowAccessibility_C:OnFocusLost(InFocusEvent) end
function UUI_BP_FirstFlowAccessibility_C:BlueprintFocusAcquired() end
function UUI_BP_FirstFlowAccessibility_C:BndEvt__UI_BP_FirstFlowAccessibility_UI_BP_Settings_Accessibility_K2Node_ComponentBoundEvent_1_OnMenuReaderSettingToggled__DelegateSignature() end
---@param Caller UObject
function UUI_BP_FirstFlowAccessibility_C:ResolutionSettingsApplied(Caller) end
---@param Caller UObject
---@param String FString
function UUI_BP_FirstFlowAccessibility_C:UserProfileChange(Caller, String) end
---@param EntryPoint int32
function UUI_BP_FirstFlowAccessibility_C:ExecuteUbergraph_UI_BP_FirstFlowAccessibility(EntryPoint) end
---@param WantsToShowCursor boolean
function UUI_BP_FirstFlowAccessibility_C:CursorChangeRequested__DelegateSignature(WantsToShowCursor) end
function UUI_BP_FirstFlowAccessibility_C:ChangesComplete__DelegateSignature() end


