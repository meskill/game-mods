---@meta

---@class UBTT_EventOccupation_StationNeedsService_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StationNeedingServiceKey FName
local UBTT_EventOccupation_StationNeedsService_C = {}

---@param OwnerActor AActor
function UBTT_EventOccupation_StationNeedsService_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_EventOccupation_StationNeedsService_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_EventOccupation_StationNeedsService_C:ExecuteUbergraph_BTT_EventOccupation_StationNeedsService(EntryPoint) end


