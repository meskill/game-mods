---@meta

---@class UBTS_Student_FreeTime_C : UBTService_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DisplayRelationship boolean
---@field DisplaySocialIntention boolean
---@field TimeOfNextActivity FDateTime
---@field DurationOfCurrentActivity float
local UBTS_Student_FreeTime_C = {}

---@param Caller UObject
function UBTS_Student_FreeTime_C:Nevermind(Caller) end
---@param Caller UObject
function UBTS_Student_FreeTime_C:ExcuseMe(Caller) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Student_FreeTime_C:OnQueryFinishedEvent_Event_1(QueryInstance, QueryStatus) end
---@param OwnerActor AActor
function UBTS_Student_FreeTime_C:ServiceEnd(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Student_FreeTime_C:ReceiveSearchStart(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Student_FreeTime_C:ServiceBegin(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Student_FreeTime_C:OnQueryFinishedEvent_Event_0(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTS_Student_FreeTime_C:ExecuteUbergraph_BTS_Student_FreeTime(EntryPoint) end


