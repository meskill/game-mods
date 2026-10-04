---@meta

---@class UUI_BP_SettingsSliderButton_C : USettingsSliderButtonBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHover UWidgetAnimation
---@field BackGorund UPhoenixImage
---@field Border UImage
---@field BorderMotiveL UImage
---@field BorderMotiveR UImage
---@field Image_Divider UImage
---@field optionSlider USlider
---@field PhoenixTextBlock_SliderNumber UPhoenixTextBlock
---@field selectionText UPhoenixTextBlock
---@field sliderFill UProgressBar
---@field Spacer_number USpacer
---@field TheButton UButton
---@field titleSeparator UPhoenixTextBlock
---@field TitleText UPhoenixTextBlock
---@field SettingsSliderHovered FUI_BP_SettingsSliderButton_CSettingsSliderHovered
---@field SettingsSliderUnhovered FUI_BP_SettingsSliderButton_CSettingsSliderUnhovered
---@field SliderTitle FString
---@field SettingsSliderChanged FUI_BP_SettingsSliderButton_CSettingsSliderChanged
---@field changed boolean
---@field LastValue float
---@field ShowSelectionText boolean
---@field sliderStepSize float
---@field SettingsSliderFinished FUI_BP_SettingsSliderButton_CSettingsSliderFinished
---@field HaveNumberSpace boolean
---@field NumberSpaceSizeX float
---@field DividerLeftPadding float
---@field MouseUsesStep boolean
local UUI_BP_SettingsSliderButton_C = {}

function UUI_BP_SettingsSliderButton_C:StepUp() end
function UUI_BP_SettingsSliderButton_C:StepDown() end
---@param NewVal float
function UUI_BP_SettingsSliderButton_C:OnSliderChanged(NewVal) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_SettingsSliderButton_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param NumberInput FText
function UUI_BP_SettingsSliderButton_C:SetNumberText(NumberInput) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SettingsSliderButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param SliderVal float
---@param percent float
function UUI_BP_SettingsSliderButton_C:SliderValToPercent(SliderVal, percent) end
---@param MinVal float
---@param MaxVal float
---@param StepSize float
---@param CurrentVal float
function UUI_BP_SettingsSliderButton_C:SetSliderVals(MinVal, MaxVal, StepSize, CurrentVal) end
---@param NumSteps float
function UUI_BP_SettingsSliderButton_C:SetSliderSteps(NumSteps) end
---@param newText FText
function UUI_BP_SettingsSliderButton_C:SetSelectedText(newText) end
---@param SliderValue float
function UUI_BP_SettingsSliderButton_C:PopulateSliderOptions(SliderValue) end
function UUI_BP_SettingsSliderButton_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function UUI_BP_SettingsSliderButton_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function UUI_BP_SettingsSliderButton_C:BP_OnItemSelectionChanged(bIsSelected) end
---@param IsDesignTime boolean
function UUI_BP_SettingsSliderButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_SettingsSliderButton_C:Construct() end
function UUI_BP_SettingsSliderButton_C:BndEvt__Button_0_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_SettingsSliderButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_SettingsSliderButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param Value float
function UUI_BP_SettingsSliderButton_C:BndEvt__optionSlider_K2Node_ComponentBoundEvent_3_OnFloatValueChangedEvent__DelegateSignature(Value) end
function UUI_BP_SettingsSliderButton_C:BndEvt__UI_BP_SettingsSliderButton_optionSlider_K2Node_ComponentBoundEvent_2_OnMouseCaptureEndEvent__DelegateSignature() end
function UUI_BP_SettingsSliderButton_C:BndEvt__UI_BP_SettingsSliderButton_optionSlider_K2Node_ComponentBoundEvent_4_OnControllerCaptureEndEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_SettingsSliderButton_C:ExecuteUbergraph_UI_BP_SettingsSliderButton(EntryPoint) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param EndValue float
function UUI_BP_SettingsSliderButton_C:SettingsSliderFinished__DelegateSignature(SliderButton, EndValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param NewValue float
function UUI_BP_SettingsSliderButton_C:SettingsSliderChanged__DelegateSignature(SliderButton, NewValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
function UUI_BP_SettingsSliderButton_C:SettingsSliderUnhovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
function UUI_BP_SettingsSliderButton_C:SettingsSliderHovered__DelegateSignature(SliderButton) end


