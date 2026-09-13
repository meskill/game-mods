---@meta

---@class UUI_BP_Settings_HDRCalibration_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field outro UWidgetAnimation
---@field ScreenTitle UPhoenixTextBlock
---@field Slider_MaxBrightness UUI_BP_SettingsSliderButton_C
---@field Slider_MidPoint UUI_BP_SettingsSliderButton_C
---@field Slider_MinBrightness UUI_BP_SettingsSliderButton_C
---@field Slider_UIBrightness UUI_BP_SettingsSliderButton_C
---@field Text_Tip1 UPhoenixTextBlock
---@field Text_Tip2 UPhoenixTextBlock
---@field Text_Tip3 UPhoenixTextBlock
---@field Text_Tip4 UPhoenixTextBlock
---@field BlackPointRange FFloatRange
---@field WhitePointRange FFloatRange
---@field MidPointRange FFloatRange
---@field UIBrightnessRange FFloatRange
---@field SliderExponent float
---@field CurrentMaxBrightness float
---@field CurrentMinBrightness float
---@field CurrentUIBrightness float
---@field CurrentMidBrightness float
local UUI_BP_Settings_HDRCalibration_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Settings_HDRCalibration_C:GatherMenuReaderStrings(DepthLevel) end
---@param bEnabled boolean
function UUI_BP_Settings_HDRCalibration_C:SetPostProcessVolume(bEnabled) end
function UUI_BP_Settings_HDRCalibration_C:UpdateUI() end
function UUI_BP_Settings_HDRCalibration_C:UpdateGameSettings() end
---@param InValue float
---@param Range FFloatRange
---@param Exponent float
---@param _Min__Max______0__1_ boolean
---@param Out float
UUI_BP_Settings_HDRCalibration_C['Resolve Slider Value'] = function(self, InValue, Range, Exponent, _Min__Max______0__1_, Out) end
---@param InValue float
---@param Range FFloatRange
---@param Exponent float
---@param Out float
UUI_BP_Settings_HDRCalibration_C['Get Normalized Slider Value'] = function(self, InValue, Range, Exponent, Out) end
---@param Name FString
---@param NewValue float
---@param Set boolean
---@param OutValue float
function UUI_BP_Settings_HDRCalibration_C:SetGetCVAR(Name, NewValue, Set, OutValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param NewValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__BP_UI_HDRCalibration_TestImage_Slider_MaxBrightness_K2Node_ComponentBoundEvent_0_SettingsSliderChanged__DelegateSignature(SliderButton, NewValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param NewValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__BP_UI_HDRCalibration_TestImage_Slider_MinBrightness_K2Node_ComponentBoundEvent_1_SettingsSliderChanged__DelegateSignature(SliderButton, NewValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param NewValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__BP_UI_HDRCalibration_TestImage_Slider_UIBrightness_K2Node_ComponentBoundEvent_2_SettingsSliderChanged__DelegateSignature(SliderButton, NewValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param NewValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__BP_UI_HDRCalibration_TestImage_Slider_OverallBrightness_K2Node_ComponentBoundEvent_4_SettingsSliderChanged__DelegateSignature(SliderButton, NewValue) end
function UUI_BP_Settings_HDRCalibration_C:ShowHDRCalibrationScreen() end
function UUI_BP_Settings_HDRCalibration_C:HideHDRCalibrationScreen() end
function UUI_BP_Settings_HDRCalibration_C:Destruct() end
---@param SliderButton UUI_BP_SettingsSliderButton_C
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_MaxBrightness_K2Node_ComponentBoundEvent_5_SettingsSliderHovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_MinBrightness_K2Node_ComponentBoundEvent_6_SettingsSliderHovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_MidPoint_K2Node_ComponentBoundEvent_7_SettingsSliderHovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_UIBrightness_K2Node_ComponentBoundEvent_8_SettingsSliderHovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param EndValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_MaxBrightness_K2Node_ComponentBoundEvent_10_SettingsSliderFinished__DelegateSignature(SliderButton, EndValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param EndValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_MinBrightness_K2Node_ComponentBoundEvent_11_SettingsSliderFinished__DelegateSignature(SliderButton, EndValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param EndValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_MidPoint_K2Node_ComponentBoundEvent_12_SettingsSliderFinished__DelegateSignature(SliderButton, EndValue) end
---@param SliderButton UUI_BP_SettingsSliderButton_C
---@param EndValue float
function UUI_BP_Settings_HDRCalibration_C:BndEvt__UI_BP_Settings_HDRCalibration_Slider_UIBrightness_K2Node_ComponentBoundEvent_13_SettingsSliderFinished__DelegateSignature(SliderButton, EndValue) end
function UUI_BP_Settings_HDRCalibration_C:OutroHDRAnimEvent() end
function UUI_BP_Settings_HDRCalibration_C:ResetCalibration() end
---@param EntryPoint int32
function UUI_BP_Settings_HDRCalibration_C:ExecuteUbergraph_UI_BP_Settings_HDRCalibration(EntryPoint) end


