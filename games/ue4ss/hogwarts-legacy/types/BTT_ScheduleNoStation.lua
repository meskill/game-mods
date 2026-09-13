---@meta

---@class UBTT_ScheduleNoStation_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SocialReasoning ASocialReasoning
local UBTT_ScheduleNoStation_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleNoStation_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleNoStation_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleNoStation_C:ExecuteUbergraph_BTT_ScheduleNoStation(EntryPoint) end


