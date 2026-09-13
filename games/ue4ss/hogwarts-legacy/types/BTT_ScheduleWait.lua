---@meta

---@class UBTT_ScheduleWait_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_ScheduleWait_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleWait_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleWait_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleWait_C:ExecuteUbergraph_BTT_ScheduleWait(EntryPoint) end


