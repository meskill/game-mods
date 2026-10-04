---@meta

---@class UBTT_Creature_StoreInteractionTime_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractionTarget FBlackboardKeySelector
local UBTT_Creature_StoreInteractionTime_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_StoreInteractionTime_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_StoreInteractionTime_C:ExecuteUbergraph_BTT_Creature_StoreInteractionTime(EntryPoint) end


