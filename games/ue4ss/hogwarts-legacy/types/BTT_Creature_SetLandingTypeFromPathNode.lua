---@meta

---@class UBTT_Creature_SetLandingTypeFromPathNode_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InPathNode FBlackboardKeySelector
---@field OutLandingTypeKey FBlackboardKeySelector
local UBTT_Creature_SetLandingTypeFromPathNode_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_SetLandingTypeFromPathNode_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_SetLandingTypeFromPathNode_C:ExecuteUbergraph_BTT_Creature_SetLandingTypeFromPathNode(EntryPoint) end


