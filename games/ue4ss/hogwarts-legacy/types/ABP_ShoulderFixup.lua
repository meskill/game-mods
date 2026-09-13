---@meta

---@class UABP_ShoulderFixup_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SubInput FAnimNode_LinkedInputPose
---@field AnimGraphNode_ModifyBone_3 FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_ModifyBone_2 FAnimNode_ModifyBone
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field Alpha float
local UABP_ShoulderFixup_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UABP_ShoulderFixup_C:AnimGraph(InPose, AnimGraph) end
function UABP_ShoulderFixup_C:BlueprintInitializeAnimation() end
---@param EntryPoint int32
function UABP_ShoulderFixup_C:ExecuteUbergraph_ABP_ShoulderFixup(EntryPoint) end


