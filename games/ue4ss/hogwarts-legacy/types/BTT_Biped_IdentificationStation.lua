---@meta

---@class UBTT_Biped_IdentificationStation_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IDStationKey FBlackboardKeySelector
local UBTT_Biped_IdentificationStation_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_IdentificationStation_C:CustActionEvt_AnimCompletePartial_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_IdentificationStation_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_IdentificationStation_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_IdentificationStation_C:ExecuteUbergraph_BTT_Biped_IdentificationStation(EntryPoint) end


