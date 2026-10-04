---@meta

---@class UBTT_ScheduleMissionCriticalSearch_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
local UBTT_ScheduleMissionCriticalSearch_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleMissionCriticalSearch_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleMissionCriticalSearch_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleMissionCriticalSearch_C:MissionCritical_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_ScheduleMissionCriticalSearch_C:ExecuteUbergraph_BTT_ScheduleMissionCriticalSearch(EntryPoint) end


