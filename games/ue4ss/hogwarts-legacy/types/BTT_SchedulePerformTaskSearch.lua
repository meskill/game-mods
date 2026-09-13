---@meta

---@class UBTT_SchedulePerformTaskSearch_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field BB UBlackboardComponent
---@field SideWork boolean
local UBTT_SchedulePerformTaskSearch_C = {}

---@param OwnerActor AActor
function UBTT_SchedulePerformTaskSearch_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_SchedulePerformTaskSearch_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_SchedulePerformTaskSearch_C:PerformTask_Job_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_SchedulePerformTaskSearch_C:ExecuteUbergraph_BTT_SchedulePerformTaskSearch(EntryPoint) end


