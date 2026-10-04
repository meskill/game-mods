---@meta

---@class UBTT_Creature_SetSpeedFromPathNode_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PathNode FBlackboardKeySelector
---@field CreatureMovementSpeed ECreatureMovementSpeed
local UBTT_Creature_SetSpeedFromPathNode_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_SetSpeedFromPathNode_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_SetSpeedFromPathNode_C:ExecuteUbergraph_BTT_Creature_SetSpeedFromPathNode(EntryPoint) end


