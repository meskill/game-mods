---@meta

---@class UBTT_ScheduleGuardStationUse_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SocialReasoning ASocialReasoning
local UBTT_ScheduleGuardStationUse_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleGuardStationUse_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleGuardStationUse_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleGuardStationUse_C:ExecuteUbergraph_BTT_ScheduleGuardStationUse(EntryPoint) end


