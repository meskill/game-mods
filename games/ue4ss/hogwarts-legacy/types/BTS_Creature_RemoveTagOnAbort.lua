---@meta

---@class UBTS_Creature_RemoveTagOnAbort_C : UBTService_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetActor FBlackboardKeySelector
---@field TagID FName
local UBTS_Creature_RemoveTagOnAbort_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTS_Creature_RemoveTagOnAbort_C:ReceiveDeactivationAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTS_Creature_RemoveTagOnAbort_C:ExecuteUbergraph_BTS_Creature_RemoveTagOnAbort(EntryPoint) end


