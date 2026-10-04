---@meta

---@class UBP_SceneAction_GearPreview_Camera_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CameraTransitionController UActorProvider
---@field GearSlotCameras TMap<EGearSlotIDEnum, UActorProvider>
---@field TransitionDuration float
---@field Handle FHermesBPDelegateHandle
local UBP_SceneAction_GearPreview_Camera_C = {}

---@param GearSlot EGearSlotIDEnum
---@param Duration float
---@param Result boolean
function UBP_SceneAction_GearPreview_Camera_C:TransitionToCameraForSlot(GearSlot, Duration, Result) end
---@param Time float
---@param IsScrubbing boolean
function UBP_SceneAction_GearPreview_Camera_C:OnEnterInterval(Time, IsScrubbing) end
---@param Time float
---@param cancelled boolean
---@param IsScrubbing boolean
function UBP_SceneAction_GearPreview_Camera_C:OnExitInterval(Time, cancelled, IsScrubbing) end
---@param Caller UObject
function UBP_SceneAction_GearPreview_Camera_C:UpdateVendorPreviewGearCamera(Caller) end
---@param EntryPoint int32
function UBP_SceneAction_GearPreview_Camera_C:ExecuteUbergraph_BP_SceneAction_GearPreview_Camera(EntryPoint) end


