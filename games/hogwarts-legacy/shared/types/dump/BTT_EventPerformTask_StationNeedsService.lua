---@meta

---@class UBTT_EventPerformTask_StationNeedsService_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StationNeedingServiceKey FName
---@field StationActionNameKey FName
---@field StationConnectionIndexKey FName
---@field StationInteractionTypeKey FName
---@field SkipValidationForTeleportToStation FName
---@field StationQueryData FStationQueryData
---@field StationUseDuration FName
local UBTT_EventPerformTask_StationNeedsService_C = {}

---@param OwnerActor AActor
function UBTT_EventPerformTask_StationNeedsService_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_EventPerformTask_StationNeedsService_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_EventPerformTask_StationNeedsService_C:ExecuteUbergraph_BTT_EventPerformTask_StationNeedsService(EntryPoint) end


