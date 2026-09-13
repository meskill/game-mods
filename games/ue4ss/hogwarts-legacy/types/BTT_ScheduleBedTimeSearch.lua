---@meta

---@class UBTT_ScheduleBedTimeSearch_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
local UBTT_ScheduleBedTimeSearch_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleBedTimeSearch_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleBedTimeSearch_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleBedTimeSearch_C:BedTime_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_ScheduleBedTimeSearch_C:ExecuteUbergraph_BTT_ScheduleBedTimeSearch(EntryPoint) end


