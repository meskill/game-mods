---@meta

---@class UUI_BP_NextGenPerf_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field balancedDesc UPhoenixRichTextBlock
---@field btn_Balanced UUI_BP_MenuTextButton_C
---@field btn_Fidelity UUI_BP_MenuTextButton_C
---@field btn_FidelityRT UUI_BP_MenuTextButton_C
---@field btn_HFRPerformance UUI_BP_MenuTextButton_C
---@field btn_Performance UUI_BP_MenuTextButton_C
---@field FidelityDescription UPhoenixRichTextBlock
---@field FidWithRTDescription UPhoenixRichTextBlock
---@field HFRdescription UPhoenixRichTextBlock
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field MainOverlay UOverlay
---@field PerfDescription UPhoenixRichTextBlock
---@field PerfScreenDismissed FUI_BP_NextGenPerf_CPerfScreenDismissed
---@field DefaultLegendData TArray<FLegendItemData>
---@field PerformanceModesArray TArray<FString>
---@field shouldShowRebootPopup boolean
---@field PerformanceButtonsMap TMap<FString, UUI_BP_MenuTextButton_C>
---@field SelectedButton UUI_BP_MenuTextButton_C
---@field hoveredButton UUI_BP_MenuTextButton_C
---@field PerformanceDescriptionsMap TMap<FString, UWidget>
local UUI_BP_NextGenPerf_C = {}

---@param ClickedButton UUI_BP_MenuTextButton_C
UUI_BP_NextGenPerf_C['Performance Button Clicked'] = function(self, ClickedButton) end
function UUI_BP_NextGenPerf_C:InitPerformanceButtons() end
function UUI_BP_NextGenPerf_C:AdjustForViewportWidth() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_NextGenPerf_C:GatherMenuReaderStrings(DepthLevel) end
---@param LegendData TArray<FLegendItemData>
function UUI_BP_NextGenPerf_C:SetMenuLegend(LegendData) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_NextGenPerf_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_NextGenPerf_C:BlueprintFocusAcquired() end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Fidelity_K2Node_ComponentBoundEvent_6_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Performance_K2Node_ComponentBoundEvent_7_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_FidelityRT_K2Node_ComponentBoundEvent_8_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Balanced_K2Node_ComponentBoundEvent_9_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_HFRPerformance_K2Node_ComponentBoundEvent_10_MenuTextButtonClicked__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Balanced_K2Node_ComponentBoundEvent_11_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Fidelity_K2Node_ComponentBoundEvent_12_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Performance_K2Node_ComponentBoundEvent_13_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_FidelityRT_K2Node_ComponentBoundEvent_14_MenuTextButtonHovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_HFRPerformance_K2Node_ComponentBoundEvent_15_MenuTextButtonHovered__DelegateSignature(Button) end
function UUI_BP_NextGenPerf_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_NextGenPerf_C:PreConstruct(IsDesignTime) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Fidelity_K2Node_ComponentBoundEvent_16_MenuTextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Performance_K2Node_ComponentBoundEvent_17_MenuTextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_FidelityRT_K2Node_ComponentBoundEvent_18_MenuTextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_Balanced_K2Node_ComponentBoundEvent_19_MenuTextButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_MenuTextButton_C
function UUI_BP_NextGenPerf_C:BndEvt__UI_BP_NextGenPerf_btn_HFRPerformance_K2Node_ComponentBoundEvent_20_MenuTextButtonUnhovered__DelegateSignature(Button) end
---@param EntryPoint int32
function UUI_BP_NextGenPerf_C:ExecuteUbergraph_UI_BP_NextGenPerf(EntryPoint) end
function UUI_BP_NextGenPerf_C:PerfScreenDismissed__DelegateSignature() end


