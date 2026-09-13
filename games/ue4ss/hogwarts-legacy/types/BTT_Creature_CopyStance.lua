---@meta

---@class UBTT_Creature_CopyStance_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DesiredStance ECreatureStance
---@field Wait boolean
---@field TargetActor FBlackboardKeySelector
local UBTT_Creature_CopyStance_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_CopyStance_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBTT_Creature_CopyStance_C:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Creature_CopyStance_C:ExecuteUbergraph_BTT_Creature_CopyStance(EntryPoint) end


