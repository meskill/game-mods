---@meta

---@class UBTT_MoveToOnFire_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Pawn APawn
---@field Controller AAIController
---@field LocationKeyName FName
---@field Mobility ENPC_Mobility
---@field OverrideMobility boolean
---@field EnemyComp UEnemyAIComponent
---@field BBComp UBlackboardComponent
---@field MoveStarted boolean
---@field MoveLoc FVector
---@field AtTargetDist float
local UBTT_MoveToOnFire_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_MoveToOnFire_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_MoveToOnFire_C:ExecuteUbergraph_BTT_MoveToOnFire(EntryPoint) end


