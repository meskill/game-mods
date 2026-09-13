---@meta

---@class UBTT_SchedulePatrolSearch_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field BB UBlackboardComponent
---@field SideWork boolean
local UBTT_SchedulePatrolSearch_C = {}

---@param OwnerActor AActor
function UBTT_SchedulePatrolSearch_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_SchedulePatrolSearch_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_SchedulePatrolSearch_C:Patrol_Job_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_SchedulePatrolSearch_C:ExecuteUbergraph_BTT_SchedulePatrolSearch(EntryPoint) end


