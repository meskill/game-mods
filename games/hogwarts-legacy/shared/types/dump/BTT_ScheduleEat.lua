---@meta

---@class UBTT_ScheduleEat_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field ['Min Time Available'] int32
---@field ['Max Time Available'] int32
---@field ['Time Available'] int32
local UBTT_ScheduleEat_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleEat_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleEat_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleEat_C:ExecuteUbergraph_BTT_ScheduleEat(EntryPoint) end


