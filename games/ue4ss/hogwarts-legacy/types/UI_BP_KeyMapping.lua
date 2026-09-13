---@meta

---@class UUI_BP_KeyMapping_C : USettingsTabWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideBindingPopup UWidgetAnimation
---@field showBindingPopup UWidgetAnimation
---@field ActionNameBox UPhoenixTextBlock
---@field ActionScroll UUI_BP_SimpleScrollBox_C
---@field ActionScrollContent UVerticalBox
---@field BindingConflictTitle UUI_BP_InputHeader_Row_C
---@field ConflictList UVerticalBox
---@field NoBindingIcon UPhoenixImage
---@field ShowAlternativePrompts UUI_BP_InputHeader_Row_C
---@field ShowAlternatives UUI_BP_SettingsCheckboxButton_C
---@field UI_BP_SimpleScrollBox UUI_BP_SimpleScrollBox_C
---@field UnassignedMessaging UVerticalBox
---@field CurrentActionRow UUI_BP_InputActionAlt_Row_C
---@field CurrentAxisRow UUI_BP_InputAxisAlt_Row_C
---@field ForbiddenKeys TArray<FKey>
---@field OneDirectionalAxes TArray<FName>
---@field HeaderUseTopPadding boolean
---@field RebindIsAxis boolean
---@field InputKey_Presentation UUI_BP_MKBInput_C
---@field NameFromLoop FName
---@field HoveredBindingIsPrimary boolean
---@field CachedConflictItems TArray<UPhoenixUserWidget>
---@field ParentLegend ULegend
---@field UnbindPromptVisible boolean
local UUI_BP_KeyMapping_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_KeyMapping_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_KeyMapping_C:UpdateLegend() end
---@param AxisName FName
---@param PositiveAxis boolean
---@param AxisRow UUI_BP_InputAxisAlt_Row_C
function UUI_BP_KeyMapping_C:GetAxisRow(AxisName, PositiveAxis, AxisRow) end
---@param HasAnyUnbound boolean
function UUI_BP_KeyMapping_C:GetHasAnyUnboundActions(HasAnyUnbound) end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param isUnassigned boolean
function UUI_BP_KeyMapping_C:IsAxisRowUnassigned(Row, isUnassigned) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param isUnassigned boolean
function UUI_BP_KeyMapping_C:IsActionRowUnassigned(Row, isUnassigned) end
function UUI_BP_KeyMapping_C:UpdateConflictMessage() end
---@param Primary FInputAxisKeyMapping
---@param Alternative FInputAxisKeyMapping
---@param Ignore boolean
function UUI_BP_KeyMapping_C:ShouldCancelRowCreation(Primary, Alternative, Ignore) end
---@param Header FString
---@param Large boolean
function UUI_BP_KeyMapping_C:BuldHeaderRow(Header, Large) end
---@param Rebinding boolean
---@param RebindingIsPrimary boolean
function UUI_BP_KeyMapping_C:ToggleRebindingMode(Rebinding, RebindingIsPrimary) end
function UUI_BP_KeyMapping_C:HandleRebuildAllRows() end
function UUI_BP_KeyMapping_C:HandleResetToDefaults() end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_KeyMapping_C:HandleInputAxisUnhovered(Row, IsPrimary) end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_KeyMapping_C:HandleInputAxisHovered(Row, IsPrimary) end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_KeyMapping_C:HandleInputAxisClicked(Row, IsPrimary) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_KeyMapping_C:HandleInputActionUnhovered(Row, IsPrimary) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_KeyMapping_C:HandleInputActionHovered(Row, IsPrimary) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_KeyMapping_C:HandleInputActionClicked(Row, IsPrimary) end
---@param AxisName FName
---@param Primary FInputAxisKeyMapping
---@param FakeLockedPrimary FInputAxisKeyMapping
---@param Alternative FInputAxisKeyMapping
---@param IsBiDirectionalAxis boolean
---@param IsPositiveAxis boolean
---@param GroupName FName
function UUI_BP_KeyMapping_C:BuildAxisRow(AxisName, Primary, FakeLockedPrimary, Alternative, IsBiDirectionalAxis, IsPositiveAxis, GroupName) end
---@param Primary FInputActionKeyMapping
---@param Alternative FInputActionKeyMapping
---@param ActionName FName
---@param GroupName FName
UUI_BP_KeyMapping_C['Build Action Row'] = function(self, Primary, Alternative, ActionName, GroupName) end
---@param GroupName FName
---@param Actions TArray<FName>
function UUI_BP_KeyMapping_C:BuildRowsForGroup(GroupName, Actions) end
function UUI_BP_KeyMapping_C:BuildAllRows() end
---@param IsChecked boolean
---@param Button UUI_BP_SettingsCheckboxButton_C
function UUI_BP_KeyMapping_C:BndEvt__UI_BP_KeyMapping_UI_BP_SettingsCheckboxButton_K2Node_ComponentBoundEvent_1_SettingsCheckmarkPressed__DelegateSignature(IsChecked, Button) end
function UUI_BP_KeyMapping_C:Construct() end
---@param OldLayout EKeyLayout
---@param NewLayout EKeyLayout
function UUI_BP_KeyMapping_C:KeyLayoutChanged(OldLayout, NewLayout) end
---@param Button UUI_BP_SettingsCheckboxButton_C
function UUI_BP_KeyMapping_C:BndEvt__UI_BP_KeyMapping_ShowAlternatives_K2Node_ComponentBoundEvent_0_ToggleHovered__DelegateSignature(Button) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_KeyMapping_C:OnLegendItemHoldEnd(LegendItem, HoldWasCompleted) end
---@param EntryPoint int32
function UUI_BP_KeyMapping_C:ExecuteUbergraph_UI_BP_KeyMapping(EntryPoint) end


