---@meta

---@class UBTT_ScheduleMissionCriticalLoiter_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_ScheduleMissionCriticalLoiter_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleMissionCriticalLoiter_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleMissionCriticalLoiter_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleMissionCriticalLoiter_C:ExecuteUbergraph_BTT_ScheduleMissionCriticalLoiter(EntryPoint) end


