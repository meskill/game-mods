---@meta

---@class UBTT_MoveToPathNode_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MaxTime float
---@field ElapsedTime float
---@field PathNodeLocKeyName FName
---@field PathNodeRadiusKeyName FName
local UBTT_MoveToPathNode_C = {}

---@param pPathNode APathNode
---@param pActor AActor
function UBTT_MoveToPathNode_C:Arrived(pPathNode, pActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_MoveToPathNode_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_MoveToPathNode_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_MoveToPathNode_C:ExecuteUbergraph_BTT_MoveToPathNode(EntryPoint) end


