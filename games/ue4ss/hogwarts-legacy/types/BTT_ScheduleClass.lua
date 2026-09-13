---@meta

---@class UBTT_ScheduleClass_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field NewVar_0 TSubclassOf<UEnvQueryInstanceBlueprintWrapper>
local UBTT_ScheduleClass_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleClass_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleClass_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleClass_C:Class_OnQueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTT_ScheduleClass_C:ExecuteUbergraph_BTT_ScheduleClass(EntryPoint) end


