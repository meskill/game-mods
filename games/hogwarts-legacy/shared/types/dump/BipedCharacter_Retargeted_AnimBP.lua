---@meta

---@class UBipedCharacter_Retargeted_AnimBP_C : UBiped_AnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_AbilityAnimPlayer FAnimNode_AbilityAnimPlayer
---@field AnimGraphNode_StateResult FAnimNode_StateResult
---@field AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field AnimGraphNode_RequestedLayerBlend FAnimNode_RequestedLayerBlend
---@field AnimGraphNode_SubInstance FAnimNode_LinkedAnimGraph
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field AnimGraphNode_IKMasterNode FAnimNode_IKMasterNode
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_AvaInertialization FAnimNode_AvaInertialization
---@field AnimGraphNode_LinkedAnimGraph FAnimNode_LinkedAnimGraph
---@field __CustomProperty_Alpha_2472CE0342E67777AB312F9301949E2F float
---@field MinHipMultiplier float
---@field MaxHipMultiplier float
---@field ShowIKFloorContact int32
---@field GazeTargetWS FVector
---@field GazeTargetWeight float
---@field AnimComp UAnimationComponent
---@field ShoulderFixupAlpha float
---@field bUsePoseOverride boolean
---@field OverridePose UAnimSequenceBase
local UBipedCharacter_Retargeted_AnimBP_C = {}

---@param AnimGraph FPoseLink
function UBipedCharacter_Retargeted_AnimBP_C:AnimGraph(AnimGraph) end
---@param DeltaTime float
function UBipedCharacter_Retargeted_AnimBP_C:SetHipMultipliers(DeltaTime) end
function UBipedCharacter_Retargeted_AnimBP_C:AnimNotify_PickUpPocket() end
---@param DeltaTimeX float
function UBipedCharacter_Retargeted_AnimBP_C:BlueprintUpdateAnimation(DeltaTimeX) end
---@param InUsePhotoModePose boolean
---@param PoseAnimation UAnimSequenceBase
function UBipedCharacter_Retargeted_AnimBP_C:SetUsePhotoModePose(InUsePhotoModePose, PoseAnimation) end
---@param EntryPoint int32
function UBipedCharacter_Retargeted_AnimBP_C:ExecuteUbergraph_BipedCharacter_Retargeted_AnimBP(EntryPoint) end


