---@meta

---@class AVFX_BP_ScreenFX_LowHealth_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Saturation_PostProcess UPostProcessComponent
---@field Chromatic_PostProcess UPostProcessComponent
---@field RedCreep_PostProcess UPostProcessComponent
---@field Distortion_PostProcess UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field FadeIn_FadeIn_1384DEA44E954807017759AF0C091E0E float
---@field FadeIn__Direction_1384DEA44E954807017759AF0C091E0E ETimelineDirection::Type
---@field FadeIn UTimelineComponent
---@field Timeline_0_Creep_7511BDBF440AFDE0C8B7D9A3235227BA float
---@field Timeline_0__Direction_7511BDBF440AFDE0C8B7D9A3235227BA ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field Timeline_FadeOut_OverallOpacity_E25413C6490F071CB63A2EA794AFAA75 float
---@field Timeline_FadeOut_Creep_E25413C6490F071CB63A2EA794AFAA75 float
---@field Timeline_FadeOut__Direction_E25413C6490F071CB63A2EA794AFAA75 ETimelineDirection::Type
---@field Timeline_FadeOut UTimelineComponent
---@field Timeline_Pulse_OverallOpacity_E33E5EEF457E3762F1A991ACC9272183 float
---@field Timeline_Pulse_Intensity_E33E5EEF457E3762F1A991ACC9272183 float
---@field Timeline_Pulse_Distortion_Power_E33E5EEF457E3762F1A991ACC9272183 float
---@field Timeline_Pulse_Creep_E33E5EEF457E3762F1A991ACC9272183 float
---@field Timeline_Pulse__Direction_E33E5EEF457E3762F1A991ACC9272183 ETimelineDirection::Type
---@field Timeline_Pulse UTimelineComponent
---@field Timeline_Health_CreepWiggle_63ABCC6845319FE5A49B2CA55A5B78DC float
---@field Timeline_Health_Time_63ABCC6845319FE5A49B2CA55A5B78DC float
---@field Timeline_Health_OverallOpacity_63ABCC6845319FE5A49B2CA55A5B78DC float
---@field Timeline_Health_Intensity_63ABCC6845319FE5A49B2CA55A5B78DC float
---@field Timeline_Health_Distortion_Power_63ABCC6845319FE5A49B2CA55A5B78DC float
---@field Timeline_Health_Creep_63ABCC6845319FE5A49B2CA55A5B78DC float
---@field Timeline_Health__Direction_63ABCC6845319FE5A49B2CA55A5B78DC ETimelineDirection::Type
---@field Timeline_Health UTimelineComponent
---@field Flash UVFX_BP_Detected_HUD_FlashColor_C
---@field Flash_UI FVFX_BP_ScreenFX_LowHealth_CFlash_UI
---@field Intensity float
---@field ['Blend Weight'] float
---@field Distortion_Power float
---@field Creep float
---@field OverallOpacity float
---@field Chromatic_Intensity float
---@field Saruration_Intensity float
---@field ObjectStateInfo UObjectStateInfo
---@field DesiredPercent float
---@field Direction ETimelineDirection::Type
---@field TimelineLength float
---@field FirstTime boolean
---@field Pulse_Intensity float
---@field Pulse_Distortion_Power float
---@field Pulse_Creep float
---@field Pulse_OverallOpacity float
---@field Damage_Creep float
---@field ['Creep Wiggle'] float
---@field Fade_CreepPercent float
---@field Fade_OverallOpacityPercent float
local AVFX_BP_ScreenFX_LowHealth_C = {}

AVFX_BP_ScreenFX_LowHealth_C['Apply Effect'] = function(self, ) end
---@param NewParam ETimelineDirection::Type
---@param CurrentPercent float
---@param TargetReached boolean
function AVFX_BP_ScreenFX_LowHealth_C:ReachedTarget(NewParam, CurrentPercent, TargetReached) end
---@param percent float
AVFX_BP_ScreenFX_LowHealth_C['Calculate Desired Percent'] = function(self, percent) end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_Pulse__FinishedFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_Pulse__UpdateFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_Health__FinishedFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_Health__UpdateFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_FadeOut__FinishedFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_FadeOut__UpdateFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_0__FinishedFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:Timeline_0__UpdateFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:FadeIn__FinishedFunc() end
function AVFX_BP_ScreenFX_LowHealth_C:FadeIn__UpdateFunc() end
---@param Target AActor
---@param Instigator AActor
---@param Damage float
---@param Hit FHitResult
function AVFX_BP_ScreenFX_LowHealth_C:OnActorDamaged(Target, Instigator, Damage, Hit) end
---@param Target AActor
---@param InHealthChange float
---@param bIndicateHUD boolean
function AVFX_BP_ScreenFX_LowHealth_C:OnHealthChanged(Target, InHealthChange, bIndicateHUD) end
---@param Caller UObject
function AVFX_BP_ScreenFX_LowHealth_C:CriticalHealthPulse(Caller) end
function AVFX_BP_ScreenFX_LowHealth_C:ReceiveDestroyed() end
function AVFX_BP_ScreenFX_LowHealth_C:ReceiveBeginPlay() end
---@param EndPlayReason EEndPlayReason::Type
function AVFX_BP_ScreenFX_LowHealth_C:ReceiveEndPlay(EndPlayReason) end
function AVFX_BP_ScreenFX_LowHealth_C:Damaged() end
function AVFX_BP_ScreenFX_LowHealth_C:UpdateFadeOut() end
---@param EntryPoint int32
function AVFX_BP_ScreenFX_LowHealth_C:ExecuteUbergraph_VFX_BP_ScreenFX_LowHealth(EntryPoint) end
function AVFX_BP_ScreenFX_LowHealth_C:Flash_UI__DelegateSignature() end


