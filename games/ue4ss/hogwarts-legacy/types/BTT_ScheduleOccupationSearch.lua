---@meta

---@class UBTT_ScheduleOccupationSearch_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field BB UBlackboardComponent
---@field SideWork boolean
local UBTT_ScheduleOccupationSearch_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleOccupationSearch_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleOccupationSearch_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleOccupationSearch_C:Occupation_Job_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_ScheduleOccupationSearch_C:ExecuteUbergraph_BTT_ScheduleOccupationSearch(EntryPoint) end


