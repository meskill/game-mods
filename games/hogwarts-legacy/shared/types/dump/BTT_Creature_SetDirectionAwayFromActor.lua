---@meta

---@class UBTT_Creature_SetDirectionAwayFromActor_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetActor FBlackboardKeySelector
---@field DirectionAwayFromActorOutput FBlackboardKeySelector
local UBTT_Creature_SetDirectionAwayFromActor_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_SetDirectionAwayFromActor_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_SetDirectionAwayFromActor_C:ExecuteUbergraph_BTT_Creature_SetDirectionAwayFromActor(EntryPoint) end


