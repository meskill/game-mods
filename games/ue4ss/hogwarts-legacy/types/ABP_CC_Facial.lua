---@meta

---@class UABP_CC_Facial_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_CustomizableCharacterFacialPoseBlendNode FAnimNode_CustomizableCharacterFacialPoseBlendNode
---@field AnimGraphNode_SubInput FAnimNode_LinkedInputPose
---@field AnimGraphNode_CustomizableCharacterEyeCap FAnimNode_CustomizableCharacterEyeCap
---@field AnimGraphNode_EyeTarget FAnimNode_EyeTarget
---@field AnimGraphNode_CustomizableCharacterLocalModifyBoneScales FAnimNode_CustomizableCharacterLocalModifyBoneScales
local UABP_CC_Facial_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UABP_CC_Facial_C:AnimGraph(InPose, AnimGraph) end
function UABP_CC_Facial_C:BlueprintInitializeAnimation() end
---@param EntryPoint int32
function UABP_CC_Facial_C:ExecuteUbergraph_ABP_CC_Facial(EntryPoint) end


