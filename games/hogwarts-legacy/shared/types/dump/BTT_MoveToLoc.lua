---@meta

---@class UBTT_MoveToLoc_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Controller AAIController
---@field LocationKeyName FName
---@field Mobility ENPC_Mobility
---@field FaceDirection boolean
---@field Interpollation float
---@field OverrideMobility boolean
---@field TimeoutMin float
---@field TimeoutMax float
local UBTT_MoveToLoc_C = {}

---@param OwnerActor AActor
function UBTT_MoveToLoc_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_MoveToLoc_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_MoveToLoc_C:ExecuteUbergraph_BTT_MoveToLoc(EntryPoint) end


