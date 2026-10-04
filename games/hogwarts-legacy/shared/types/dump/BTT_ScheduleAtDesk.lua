---@meta

---@class UBTT_ScheduleAtDesk_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_ScheduleAtDesk_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleAtDesk_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleAtDesk_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleAtDesk_C:ExecuteUbergraph_BTT_ScheduleAtDesk(EntryPoint) end


