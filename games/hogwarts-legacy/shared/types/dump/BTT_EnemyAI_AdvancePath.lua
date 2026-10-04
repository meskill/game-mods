---@meta

---@class UBTT_EnemyAI_AdvancePath_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PathNodeLoc FBlackboardKeySelector
---@field HasPathKey FBlackboardKeySelector
local UBTT_EnemyAI_AdvancePath_C = {}

---@param OwnerActor AActor
function UBTT_EnemyAI_AdvancePath_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_EnemyAI_AdvancePath_C:ExecuteUbergraph_BTT_EnemyAI_AdvancePath(EntryPoint) end


