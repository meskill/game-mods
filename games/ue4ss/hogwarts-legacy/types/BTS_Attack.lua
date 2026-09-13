---@meta

---@class UBTS_Attack_C : UBTService_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTS_Attack_C = {}

---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTS_Attack_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTS_Attack_C:ExecuteUbergraph_BTS_Attack(EntryPoint) end


