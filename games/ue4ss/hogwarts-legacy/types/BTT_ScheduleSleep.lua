---@meta

---@class UBTT_ScheduleSleep_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_ScheduleSleep_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleSleep_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleSleep_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleSleep_C:ExecuteUbergraph_BTT_ScheduleSleep(EntryPoint) end


