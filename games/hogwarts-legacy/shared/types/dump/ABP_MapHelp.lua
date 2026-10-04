---@meta

---@class UABP_MapHelp_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_TransitionResult_8 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_7 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_6 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_5 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_4 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_3 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_2 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult_1 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult FAnimNode_TransitionResult
---@field AnimGraphNode_SequencePlayer_4 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_4 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_3 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_2 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_1 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult FAnimNode_StateResult
---@field AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field OpenBook boolean
---@field ReceivePage boolean
---@field CatchPage boolean
---@field CatchPageAgain boolean
---@field InCatch boolean
local UABP_MapHelp_C = {}

---@param AnimGraph FPoseLink
function UABP_MapHelp_C:AnimGraph(AnimGraph) end
function UABP_MapHelp_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_MapHelp_AnimGraphNode_TransitionResult_0743C530449AA96914EF558D57AAC911() end
function UABP_MapHelp_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_MapHelp_AnimGraphNode_TransitionResult_AB6D13DD44D4C0A6E17BD296C87780E0() end
function UABP_MapHelp_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_MapHelp_AnimGraphNode_TransitionResult_1529A0824F81BD24F1BEB7A0EACC8AAF() end
function UABP_MapHelp_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_MapHelp_AnimGraphNode_TransitionResult_B70D79314F1B87A09EA11F86B98175BE() end
function UABP_MapHelp_C:AnimNotify_OpenStarted() end
function UABP_MapHelp_C:AnimNotify_ReceiveStarted() end
function UABP_MapHelp_C:SetCatchPage() end
function UABP_MapHelp_C:AnimNotify_Catch_Entered() end
function UABP_MapHelp_C:AnimNotify_Catch_Left() end
function UABP_MapHelp_C:AnimNotify_CatchAgain_Entered() end
---@param EntryPoint int32
function UABP_MapHelp_C:ExecuteUbergraph_ABP_MapHelp(EntryPoint) end


