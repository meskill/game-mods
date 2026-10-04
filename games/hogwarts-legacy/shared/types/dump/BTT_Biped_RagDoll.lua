---@meta

---@class UBTT_Biped_RagDoll_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_Biped_RagDoll_C = {}

function UBTT_Biped_RagDoll_C:DeactivateStates() end
function UBTT_Biped_RagDoll_C:ActivateStates() end
---@param Flag boolean
function UBTT_Biped_RagDoll_C:SetContexts(Flag) end
function UBTT_Biped_RagDoll_C:SetupRagDolling() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_RagDoll_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_RagDoll_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_RagDoll_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_RagDoll_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_RagDoll_C:ExecuteUbergraph_BTT_Biped_RagDoll(EntryPoint) end


