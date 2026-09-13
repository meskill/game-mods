---@meta

---@class UABP_Default_Camera_C : UAnimInstance_ApplyActorTransform
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_RequestedLayerBlend FAnimNode_RequestedLayerBlend
---@field AnimGraphNode_SceneRigCameraDriver FAnimNode_SceneRigCameraDriver
---@field AnimGraphNode_CameraFixup FAnimNode_CameraFixup
local UABP_Default_Camera_C = {}

---@param AnimGraph FPoseLink
function UABP_Default_Camera_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UABP_Default_Camera_C:ExecuteUbergraph_ABP_Default_Camera(EntryPoint) end


