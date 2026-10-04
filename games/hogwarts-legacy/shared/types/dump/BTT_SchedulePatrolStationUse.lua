---@meta

---@class UBTT_SchedulePatrolStationUse_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SocialReasoning ASocialReasoning
local UBTT_SchedulePatrolStationUse_C = {}

---@param OwnerActor AActor
function UBTT_SchedulePatrolStationUse_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_SchedulePatrolStationUse_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_SchedulePatrolStationUse_C:ExecuteUbergraph_BTT_SchedulePatrolStationUse(EntryPoint) end


