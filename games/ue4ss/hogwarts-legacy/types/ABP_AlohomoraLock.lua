---@meta

---@class UABP_AlohomoraLock_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_TransitionResult_1 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult FAnimNode_TransitionResult
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_2 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_1 FAnimNode_StateResult
---@field AnimGraphNode_LayeredBoneBlend_1 FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult FAnimNode_StateResult
---@field AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field AnimGraphNode_ModifyBone_1 FAnimNode_ModifyBone
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field RightStick boolean
---@field LeftStick boolean
---@field IsUnlocked boolean
---@field OuterRot float
---@field InnerRot float
---@field BeginZoom boolean
local UABP_AlohomoraLock_C = {}

---@param AnimGraph FPoseLink
function UABP_AlohomoraLock_C:AnimGraph(AnimGraph) end
function UABP_AlohomoraLock_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_AlohomoraLock_AnimGraphNode_ModifyBone_B03B9B5B4FDB25057E709C8AC29152B0() end
function UABP_AlohomoraLock_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_AlohomoraLock_AnimGraphNode_ModifyBone_D383A54C4203D447DBDC4097AE9875A2() end
function UABP_AlohomoraLock_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_AlohomoraLock_AnimGraphNode_SequencePlayer_B25D100D441BD1DFD0A43ABECCF3BB9D() end
function UABP_AlohomoraLock_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_AlohomoraLock_AnimGraphNode_SequencePlayer_8A070E4340E381CBAE00608EAE642B2C() end
function UABP_AlohomoraLock_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_AlohomoraLock_AnimGraphNode_SequencePlayer_8090CB3B4A4F89B751CD3FB32058676B() end
function UABP_AlohomoraLock_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_AlohomoraLock_AnimGraphNode_TransitionResult_5F88EB444F14D974472F82B244A32D52() end
---@param DeltaTimeX float
function UABP_AlohomoraLock_C:BlueprintUpdateAnimation(DeltaTimeX) end
---@param EntryPoint int32
function UABP_AlohomoraLock_C:ExecuteUbergraph_ABP_AlohomoraLock(EntryPoint) end


