---@meta

---@class UBTT_Creature_SetInteractStance_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Wait boolean
local UBTT_Creature_SetInteractStance_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_SetInteractStance_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds float
function UBTT_Creature_SetInteractStance_C:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Creature_SetInteractStance_C:ExecuteUbergraph_BTT_Creature_SetInteractStance(EntryPoint) end


