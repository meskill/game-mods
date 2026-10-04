---@meta

---@class UBTT_Creature_StopMove_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SpeedThreshold float
local UBTT_Creature_StopMove_C = {}

---@param OwnerActor AActor
function UBTT_Creature_StopMove_C:ReceiveExecute(OwnerActor) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_StopMove_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_StopMove_C:ExecuteUbergraph_BTT_Creature_StopMove(EntryPoint) end


