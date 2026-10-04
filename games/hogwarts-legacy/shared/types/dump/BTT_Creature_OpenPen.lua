---@meta

---@class UBTT_Creature_OpenPen_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Total Time'] float
---@field HermesAnimCompleteHandle FHermesBPDelegateHandle
---@field Success boolean
---@field CreatureSpawnSlot UCreatureSpawnSlotComponent
---@field BlackboardKey FName
local UBTT_Creature_OpenPen_C = {}

---@param InPawn APawn
function UBTT_Creature_OpenPen_C:SetMovementModeOnFinishExit(InPawn) end
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_OpenPen_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_OpenPen_C:ExecuteUbergraph_BTT_Creature_OpenPen(EntryPoint) end


