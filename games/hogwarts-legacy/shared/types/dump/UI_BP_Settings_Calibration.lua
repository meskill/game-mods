---@meta

---@class UUI_BP_Settings_Calibration_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field outro UWidgetAnimation
---@field brightnessSlider UUI_BP_BrightnessSlider_C
---@field calibrationText UPhoenixTextBlock
---@field GammaValueChanged FUI_BP_Settings_Calibration_CGammaValueChanged
---@field CalibrationMin float
---@field CalibrationMax float
---@field changed boolean
---@field finalValue float
---@field SliderHovered FUI_BP_Settings_Calibration_CSliderHovered
---@field SliderUnhovered FUI_BP_Settings_Calibration_CSliderUnhovered
local UUI_BP_Settings_Calibration_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Settings_Calibration_C:GatherMenuReaderStrings(DepthLevel) end
---@param CalibrationPercent float
function UUI_BP_Settings_Calibration_C:SetCalibration(CalibrationPercent) end
function UUI_BP_Settings_Calibration_C:Construct() end
function UUI_BP_Settings_Calibration_C:outroBrightnessAnimEvent() end
function UUI_BP_Settings_Calibration_C:ResetCalibration() end
function UUI_BP_Settings_Calibration_C:InitializeAllSettings() end
---@param SliderButton UUI_BP_BrightnessSlider_C
---@param NewValue float
function UUI_BP_Settings_Calibration_C:BndEvt__UI_BP_Settings_Calibration_brightnessSlider_K2Node_ComponentBoundEvent_4_SettingsSliderChanged__DelegateSignature(SliderButton, NewValue) end
---@param SliderButton UUI_BP_BrightnessSlider_C
function UUI_BP_Settings_Calibration_C:BndEvt__UI_BP_Settings_Calibration_brightnessSlider_K2Node_ComponentBoundEvent_5_SettingsSliderHovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_BrightnessSlider_C
function UUI_BP_Settings_Calibration_C:BndEvt__UI_BP_Settings_Calibration_brightnessSlider_K2Node_ComponentBoundEvent_6_SettingsSliderUnhovered__DelegateSignature(SliderButton) end
---@param SliderButton UUI_BP_BrightnessSlider_C
---@param EndValue float
function UUI_BP_Settings_Calibration_C:BndEvt__UI_BP_Settings_Calibration_brightnessSlider_K2Node_ComponentBoundEvent_7_SettingsSliderFinished__DelegateSignature(SliderButton, EndValue) end
---@param EntryPoint int32
function UUI_BP_Settings_Calibration_C:ExecuteUbergraph_UI_BP_Settings_Calibration(EntryPoint) end
function UUI_BP_Settings_Calibration_C:SliderUnhovered__DelegateSignature() end
function UUI_BP_Settings_Calibration_C:SliderHovered__DelegateSignature() end
---@param NewGamma float
function UUI_BP_Settings_Calibration_C:GammaValueChanged__DelegateSignature(NewGamma) end


