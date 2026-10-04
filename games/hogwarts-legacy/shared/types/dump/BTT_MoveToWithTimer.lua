---@meta

---@class UBTT_MoveToWithTimer_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Pawn APawn
---@field Controller AAIController
---@field LocationKeyName FName
---@field ElapsedTime float
---@field MaxTime float
---@field Mobility ENPC_Mobility
---@field OverrideMobility boolean
---@field EnemyComp UEnemyAIComponent
---@field BBComp UBlackboardComponent
---@field MoveStarted boolean
---@field MoveLoc FVector
---@field AtTargetDist float
---@field MoveTimeout float
local UBTT_MoveToWithTimer_C = {}

---@param OwnerActor AActor
function UBTT_MoveToWithTimer_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_MoveToWithTimer_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_MoveToWithTimer_C:ExecuteUbergraph_BTT_MoveToWithTimer(EntryPoint) end


