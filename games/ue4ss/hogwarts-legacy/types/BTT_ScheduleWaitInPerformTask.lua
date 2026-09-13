---@meta

---@class UBTT_ScheduleWaitInPerformTask_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_ScheduleWaitInPerformTask_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleWaitInPerformTask_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleWaitInPerformTask_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleWaitInPerformTask_C:ExecuteUbergraph_BTT_ScheduleWaitInPerformTask(EntryPoint) end


