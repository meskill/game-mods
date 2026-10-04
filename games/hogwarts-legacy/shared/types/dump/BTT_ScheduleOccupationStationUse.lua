---@meta

---@class UBTT_ScheduleOccupationStationUse_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field ['Time Available'] float
---@field ['Min Time Available'] float
---@field ['Max Time Available'] float
---@field NodeActive boolean
local UBTT_ScheduleOccupationStationUse_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleOccupationStationUse_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_ScheduleOccupationStationUse_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleOccupationStationUse_C:ExecuteUbergraph_BTT_ScheduleOccupationStationUse(EntryPoint) end


