---@meta

---@class UBTT_DynamicAttackUpdateState_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_DynamicAttackUpdateState_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_DynamicAttackUpdateState_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_DynamicAttackUpdateState_C:ExecuteUbergraph_BTT_DynamicAttackUpdateState(EntryPoint) end


