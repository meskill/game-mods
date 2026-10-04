---@meta

---@class UBTT_Creature_SetTagLimitOnActor_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TagID FName
---@field ActorKey FBlackboardKeySelector
---@field Limit int32
local UBTT_Creature_SetTagLimitOnActor_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_SetTagLimitOnActor_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_SetTagLimitOnActor_C:ExecuteUbergraph_BTT_Creature_SetTagLimitOnActor(EntryPoint) end


