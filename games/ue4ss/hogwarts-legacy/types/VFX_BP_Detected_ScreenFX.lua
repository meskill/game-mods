---@meta

---@class AVFX_BP_Detected_ScreenFX_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Radial_Blur_SC_PostProcess UPostProcessComponent
---@field Contrast_PostProcess UPostProcessComponent
---@field DefaultSceneRoot USceneComponent
---@field Camera_Timeline_Blur_Amount_C41BD6754AC3946F7F8B5B883B518082 float
---@field Camera_Timeline_Contrast_C41BD6754AC3946F7F8B5B883B518082 float
---@field Camera_Timeline__Direction_C41BD6754AC3946F7F8B5B883B518082 ETimelineDirection::Type
---@field Camera_Timeline UTimelineComponent
---@field Flash UVFX_BP_Detected_HUD_FlashColor_C
---@field Flash_UI FVFX_BP_Detected_ScreenFX_CFlash_UI
---@field NewVar_0 float
local AVFX_BP_Detected_ScreenFX_C = {}

function AVFX_BP_Detected_ScreenFX_C:Camera_Timeline__FinishedFunc() end
function AVFX_BP_Detected_ScreenFX_C:Camera_Timeline__UpdateFunc() end
function AVFX_BP_Detected_ScreenFX_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function AVFX_BP_Detected_ScreenFX_C:ExecuteUbergraph_VFX_BP_Detected_ScreenFX(EntryPoint) end
function AVFX_BP_Detected_ScreenFX_C:Flash_UI__DelegateSignature() end


