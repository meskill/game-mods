---@meta

---@class UBTT_MoveToFleePoint_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LocKeyName FName
---@field InterpSpeed float
---@field TimeOutKey FBlackboardKeySelector
local UBTT_MoveToFleePoint_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_MoveToFleePoint_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_MoveToFleePoint_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_MoveToFleePoint_C:ExecuteUbergraph_BTT_MoveToFleePoint(EntryPoint) end


