---@meta

---@class UBTT_ScheduleRestStationUse_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SocialReasoning ASocialReasoning
local UBTT_ScheduleRestStationUse_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleRestStationUse_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleRestStationUse_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleRestStationUse_C:ExecuteUbergraph_BTT_ScheduleRestStationUse(EntryPoint) end


