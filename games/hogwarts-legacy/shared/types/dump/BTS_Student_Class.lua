---@meta

---@class UBTS_Student_Class_C : UBTService_AvaAITree
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DisplayRelationship boolean
---@field DisplaySocialIntention boolean
---@field TimeOfNextActivity FDateTime
---@field DurationOfCurrentActivity float
local UBTS_Student_Class_C = {}

---@param Caller UObject
function UBTS_Student_Class_C:ExcuseMe(Caller) end
---@param OwnerActor AActor
function UBTS_Student_Class_C:ServiceEnd(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Student_Class_C:ReceiveSearchStart(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Student_Class_C:OnQueryFinishedEvent_Event_1(QueryInstance, QueryStatus) end
---@param Caller UObject
function UBTS_Student_Class_C:Nevermind(Caller) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTS_Student_Class_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTS_Student_Class_C:ServiceBegin(OwnerActor) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Student_Class_C:OnQueryFinishedEvent_Event_0(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTS_Student_Class_C:ExecuteUbergraph_BTS_Student_Class(EntryPoint) end


