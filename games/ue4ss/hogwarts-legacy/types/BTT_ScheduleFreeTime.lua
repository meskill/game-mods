---@meta

---@class UBTT_ScheduleFreeTime_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field ['Time Available'] float
---@field EQSQueryInstance UEnvQueryInstanceBlueprintWrapper
local UBTT_ScheduleFreeTime_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleFreeTime_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleFreeTime_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleFreeTime_C:FreeTime_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_ScheduleFreeTime_C:ExecuteUbergraph_BTT_ScheduleFreeTime(EntryPoint) end


