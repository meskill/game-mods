---@meta

---@class UUI_BP_FirstPlayCalibration_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LegendBar UUI_BP_Legend_Horizontal_Screen_C
---@field MainSwitcher UWidgetSwitcher
---@field UI_BP_Settings_Calibration UUI_BP_Settings_Calibration_C
---@field UI_BP_Settings_HDRCalibration UUI_BP_Settings_HDRCalibration_C
---@field BrightnessAccepted FUI_BP_FirstPlayCalibration_CBrightnessAccepted
---@field IsHDRCalibration boolean
---@field HDRBrightnessAccepted FUI_BP_FirstPlayCalibration_CHDRBrightnessAccepted
---@field CachedResetLegendItem ULegendItem
---@field CachedAdjustLegendItem ULegendItem
local UUI_BP_FirstPlayCalibration_C = {}

function UUI_BP_FirstPlayCalibration_C:AdjustForViewportWidth() end
function UUI_BP_FirstPlayCalibration_C:CallBrightnessAccepted() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FirstPlayCalibration_C:GatherMenuReaderStrings(DepthLevel) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FirstPlayCalibration_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_FirstPlayCalibration_C:ShowCalibrationActor() end
function UUI_BP_FirstPlayCalibration_C:HideCalibrationActor() end
function UUI_BP_FirstPlayCalibration_C:InitCalibration() end
function UUI_BP_FirstPlayCalibration_C:BlueprintFocusAcquired() end
function UUI_BP_FirstPlayCalibration_C:BndEvt__UI_BP_FirstPlayCalibration_UI_BP_Settings_Calibration_K2Node_ComponentBoundEvent_0_SliderHovered__DelegateSignature() end
function UUI_BP_FirstPlayCalibration_C:BndEvt__UI_BP_FirstPlayCalibration_UI_BP_Settings_Calibration_K2Node_ComponentBoundEvent_1_SliderUnhovered__DelegateSignature() end
function UUI_BP_FirstPlayCalibration_C:Construct() end
---@param Caller UObject
function UUI_BP_FirstPlayCalibration_C:ResolutionSettingsApplied(Caller) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FirstPlayCalibration_C:OnResetHoldReleased(LegendItem, HoldWasCompleted) end
---@param EntryPoint int32
function UUI_BP_FirstPlayCalibration_C:ExecuteUbergraph_UI_BP_FirstPlayCalibration(EntryPoint) end
function UUI_BP_FirstPlayCalibration_C:HDRBrightnessAccepted__DelegateSignature() end
function UUI_BP_FirstPlayCalibration_C:BrightnessAccepted__DelegateSignature() end


