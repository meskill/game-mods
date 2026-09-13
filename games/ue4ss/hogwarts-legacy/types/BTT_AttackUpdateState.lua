---@meta

---@class UBTT_AttackUpdateState_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Label FName
---@field AttackUpdateState EEnemy_AttackUpdateState
---@field Return boolean
local UBTT_AttackUpdateState_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_AttackUpdateState_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_AttackUpdateState_C:ExecuteUbergraph_BTT_AttackUpdateState(EntryPoint) end


