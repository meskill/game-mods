---@meta

---@class UBTT_Creature_OnInteractedWith_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractionType ECreatureInteraction
---@field InteractedActorKey FBlackboardKeySelector
local UBTT_Creature_OnInteractedWith_C = {}

---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTT_Creature_OnInteractedWith_C:ReceiveExecuteAI(OwnerController, ControlledPawn) end
---@param EntryPoint int32
function UBTT_Creature_OnInteractedWith_C:ExecuteUbergraph_BTT_Creature_OnInteractedWith(EntryPoint) end


