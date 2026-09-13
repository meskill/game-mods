---@meta

---@class UBTT_Biped_TeeterOnEdge_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_Biped_TeeterOnEdge_C = {}

function UBTT_Biped_TeeterOnEdge_C:RevertMovementMode() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_TeeterOnEdge_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_TeeterOnEdge_C:ExitTask(OwnerActor) end
---@param Caller UObject
function UBTT_Biped_TeeterOnEdge_C:Teeter2Fall(Caller) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_TeeterOnEdge_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_TeeterOnEdge_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
function UBTT_Biped_TeeterOnEdge_C:Teeter2FallStart(Caller) end
---@param EntryPoint int32
function UBTT_Biped_TeeterOnEdge_C:ExecuteUbergraph_BTT_Biped_TeeterOnEdge(EntryPoint) end


