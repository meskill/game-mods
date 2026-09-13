---@meta

---@class UBTT_ScheduleStationTransit_C : UBTTask_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['Social Reasoning'] ASocialReasoning
---@field ['Min Time Available'] int32
---@field ['Max Time Available'] int32
---@field ['Time Available'] int32
---@field ['StationTransit EQS Acknowledge Friends'] UEnvQueryInstanceBlueprintWrapper
---@field ['Simulated Second Multiplier'] float
local UBTT_ScheduleStationTransit_C = {}

---@param OwnerActor AActor
function UBTT_ScheduleStationTransit_C:ExitTask(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTT_ScheduleStationTransit_C:StationTransit_AcknowledgeFriends_OnQueryFinished(QueryInstance, QueryStatus) end
---@param OwnerActor AActor
function UBTT_ScheduleStationTransit_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_ScheduleStationTransit_C:ExecuteUbergraph_BTT_ScheduleStationTransit(EntryPoint) end


