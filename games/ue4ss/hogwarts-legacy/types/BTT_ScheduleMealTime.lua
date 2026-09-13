---@meta

---@class UBTT_ScheduleMealTime_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
local UBTT_ScheduleMealTime_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleMealTime_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleMealTime_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleMealTime_C:MealTime_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_ScheduleMealTime_C:ExecuteUbergraph_BTT_ScheduleMealTime(EntryPoint) end


