---@meta

---@class UBTT_ScheduleLoiter_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field ['Time Available'] float
local UBTT_ScheduleLoiter_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleLoiter_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleLoiter_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleLoiter_C:ExecuteUbergraph_BTT_ScheduleLoiter(EntryPoint) end


