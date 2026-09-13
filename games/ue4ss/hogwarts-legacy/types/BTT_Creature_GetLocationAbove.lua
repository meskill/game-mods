---@meta

---@class UBTT_Creature_GetLocationAbove_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Height float
---@field TargetLocationKey FBlackboardKeySelector
local UBTT_Creature_GetLocationAbove_C = {}

---@param OwnerActor AActor
function UBTT_Creature_GetLocationAbove_C:ReceiveExecute(OwnerActor) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_GetLocationAbove_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_GetLocationAbove_C:ExecuteUbergraph_BTT_Creature_GetLocationAbove(EntryPoint) end


