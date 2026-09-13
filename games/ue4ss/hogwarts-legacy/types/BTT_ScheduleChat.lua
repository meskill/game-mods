---@meta

---@class UBTT_ScheduleChat_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field ['EQS Find Stations'] UEnvQueryInstanceBlueprintWrapper
local UBTT_ScheduleChat_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleChat_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleChat_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleChat_C:ExecuteUbergraph_BTT_ScheduleChat(EntryPoint) end


