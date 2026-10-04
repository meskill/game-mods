---@meta

---@class UBTT_StopAction_C : UBTTask_BlueprintBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Action EEnemyAIAction
local UBTT_StopAction_C = {}

---@param OwnerActor AActor
function UBTT_StopAction_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_StopAction_C:ExecuteUbergraph_BTT_StopAction(EntryPoint) end


