---@meta

---@class UBTS_Student_Curriculum_C : UBTService_SocialReasoning
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScheduledEntity UScheduledEntity
---@field FutureGoalStatus EGoalStatusFlags::Type
---@field StationNeedingServiceKey FName
---@field StationActionNameKey FName
---@field StationConnectionIndexKey FName
---@field StationInteractionTypeKey FName
---@field StationUseDurationKey FName
---@field SkipValidationForTeleportToStation FName
local UBTS_Student_Curriculum_C = {}

UBTS_Student_Curriculum_C['Set SubBehavior'] = function(self, ) end
UBTS_Student_Curriculum_C['Set New Behavior'] = function(self, ) end
---@param SocialReasoning ASocialReasoning
function UBTS_Student_Curriculum_C:Chat(SocialReasoning) end
---@param SocialReasoning ASocialReasoning
---@param InStation UStationComponent
function UBTS_Student_Curriculum_C:InteractionCallback(SocialReasoning, InStation) end
---@param SocialReasoning ASocialReasoning
function UBTS_Student_Curriculum_C:Companionship(SocialReasoning) end
---@param SocialReasoning ASocialReasoning
function UBTS_Student_Curriculum_C:Combat(SocialReasoning) end
---@param SocialReasoning ASocialReasoning
function UBTS_Student_Curriculum_C:PlayerSighted(SocialReasoning) end
---@param OwnerActor AActor
function UBTS_Student_Curriculum_C:ServiceBegin(OwnerActor) end
---@param Caller UObject
---@param StationComponent UStationComponent
function UBTS_Student_Curriculum_C:StationNeedsService(Caller, StationComponent) end
---@param SocialReasoning ASocialReasoning
function UBTS_Student_Curriculum_C:PerformTask_WaitForPlayer(SocialReasoning) end
---@param SocialReasoning ASocialReasoning
function UBTS_Student_Curriculum_C:PerformTask_MoveToLocation(SocialReasoning) end
---@param SocialReasoning ASocialReasoning
---@param TimeEvent FTimeEvent
function UBTS_Student_Curriculum_C:Think(SocialReasoning, TimeEvent) end
---@param SocialReasoning ASocialReasoning
---@param InStation UStationComponent
---@param InStationInteractionType EStationInteraction
---@param InActionName FName
---@param InConnectionIndex int32
---@param InStationUseDuration float
---@param InSkipValidationForTeleport boolean
function UBTS_Student_Curriculum_C:PerformTask_MoveToStation(SocialReasoning, InStation, InStationInteractionType, InActionName, InConnectionIndex, InStationUseDuration, InSkipValidationForTeleport) end
---@param SocialReasoning ASocialReasoning
---@param RunMode EEnvQueryRunMode::Type
---@param QueryFinishedDelegate FQueryFinishedData
function UBTS_Student_Curriculum_C:RunEQS_FindStations(SocialReasoning, RunMode, QueryFinishedDelegate) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Student_Curriculum_C:FindStations_QueryFinished(QueryInstance, QueryStatus) end
---@param SocialReasoning ASocialReasoning
---@param RunMode EEnvQueryRunMode::Type
---@param QueryFinishedDelegate FQueryFinishedData
function UBTS_Student_Curriculum_C:RunEQS_FindSocialReasonings(SocialReasoning, RunMode, QueryFinishedDelegate) end
---@param QueryInstance UEnvQueryInstanceBlueprintWrapper
---@param QueryStatus EEnvQueryStatus::Type
function UBTS_Student_Curriculum_C:FindSocialReasonings_QueryFinished(QueryInstance, QueryStatus) end
---@param EntryPoint int32
function UBTS_Student_Curriculum_C:ExecuteUbergraph_BTS_Student_Curriculum(EntryPoint) end


