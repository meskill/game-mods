---@meta

---@class UBTS_AttackUpdateState_C : UBTService_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttackUpdateState EEnemy_AttackUpdateState
local UBTS_AttackUpdateState_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTS_AttackUpdateState_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTS_AttackUpdateState_C:ExecuteUbergraph_BTS_AttackUpdateState(EntryPoint) end


