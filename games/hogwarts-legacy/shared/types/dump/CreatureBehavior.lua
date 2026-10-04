---@meta

---@class UAnyPerchAvailableInRangeConsideration : UQualifierConsideration
local UAnyPerchAvailableInRangeConsideration = {}


---@class UBTService_CentaurCombatAdjustSpeed : UBTService
---@field MoveToLocationKey FBlackboardKeySelector
---@field JogSprintDistanceThreshold float
local UBTService_CentaurCombatAdjustSpeed = {}



---@class UBTTask_Centaur_TestTargetLOS : UBTTaskNode
---@field TargetActorKey FBlackboardKeySelector
---@field LineOfSightProbeChannel ECollisionChannel
---@field LineOfSightProbeSize float
---@field bIgnoreEnemyHit boolean
local UBTTask_Centaur_TestTargetLOS = {}



---@class UCentaurCombatTargetsQualifierOptions : UQualifierOptions
local UCentaurCombatTargetsQualifierOptions = {}


---@class UCentaurCopyCombatTargetsQualifierTask : UQualifierTask
---@field WeightThreshold float
local UCentaurCopyCombatTargetsQualifierTask = {}



---@class UGroupCoordinatedActorTagOwnersOptions : UQualifierOptions
---@field TagIDs TArray<FName>
---@field SubjectToCheck FBlackboardKeySelector
local UGroupCoordinatedActorTagOwnersOptions = {}



---@class UGroupCoordinatedTagLocationsQualifierOptions : UQualifierOptions
---@field TagID FName
---@field SearchRadius float
---@field SearchAreaCentreKey FBlackboardKeySelector
local UGroupCoordinatedTagLocationsQualifierOptions = {}



---@class UManageActionEnergyQualifierTask : UQualifierTask
---@field EnergyBurnTime float
---@field EnergyResetTime float
local UManageActionEnergyQualifierTask = {}



---@class UMarkCentaurAttackActiveQualifierTask : UQualifierTask
---@field AttackDescriptorName FName
local UMarkCentaurAttackActiveQualifierTask = {}



---@class UOptionActorBonusForPreferedParentConsideration : UQualifierConsideration
---@field BonusForParent float
---@field BonusForMother float
local UOptionActorBonusForPreferedParentConsideration = {}



---@class UOptionActorCausedReactionOnSelfActorConsideration : UQualifierConsideration
---@field TimeWindowOffset float
---@field TimeWindowSize float
local UOptionActorCausedReactionOnSelfActorConsideration = {}



---@class UOptionActorCentaurAttackTargetConsideration : UQualifierConsideration
---@field AttackDescriptorName FName
local UOptionActorCentaurAttackTargetConsideration = {}



---@class UOptionActorCentaurRepositionTurnTargetConsideration : UQualifierConsideration
local UOptionActorCentaurRepositionTurnTargetConsideration = {}


---@class UOptionActorCheckSpeciesTeamConsideration : UQualifierConsideration
---@field Team FName
local UOptionActorCheckSpeciesTeamConsideration = {}



---@class UOptionActorCombatTetherConsideration : UQualifierConsideration
local UOptionActorCombatTetherConsideration = {}


---@class UOptionActorContextAwareInteractionTypeConsideration : UQualifierConsideration
---@field WantedInteraction FName
---@field bConsiderActorDistance boolean
local UOptionActorContextAwareInteractionTypeConsideration = {}



---@class UOptionActorFeedingStationContentionConsideration : UQualifierConsideration
local UOptionActorFeedingStationContentionConsideration = {}


---@class UOptionActorGreetTimeIntervalConsideration : UQualifierConsideration
local UOptionActorGreetTimeIntervalConsideration = {}


---@class UOptionActorHasTaggedSelfActorConsideration : UQualifierConsideration
---@field TagID FName
local UOptionActorHasTaggedSelfActorConsideration = {}



---@class UOptionActorHasTaggedSelfActorInTimeWindowConsideration : UQualifierConsideration
---@field TagID FName
---@field FalloffStart float
---@field FalloffSize float
local UOptionActorHasTaggedSelfActorInTimeWindowConsideration = {}



---@class UOptionActorInsideCreaturePenConsideration : UQualifierConsideration
local UOptionActorInsideCreaturePenConsideration = {}


---@class UOptionActorInteractionTypeConsideration : UQualifierConsideration
---@field WantedInteraction FName
local UOptionActorInteractionTypeConsideration = {}



---@class UOptionActorIsAliveConsideration : UQualifierConsideration
local UOptionActorIsAliveConsideration = {}


---@class UOptionActorIsAttackAvailableConsideration : UQualifierConsideration
---@field AttackData UCreatureCombatAttackData
local UOptionActorIsAttackAvailableConsideration = {}



---@class UOptionActorIsAttackPatternAvailableConsideration : UQualifierConsideration
---@field AttackData UCreatureCombatAttackData
local UOptionActorIsAttackPatternAvailableConsideration = {}



---@class UOptionActorIsBuffedConsideration : UQualifierConsideration
---@field EffectIDDBValue FName
local UOptionActorIsBuffedConsideration = {}



---@class UOptionActorIsCapturingSelfActorConsideration : UQualifierConsideration
local UOptionActorIsCapturingSelfActorConsideration = {}


---@class UOptionActorIsConflictTargetForSelfActorConsideration : UQualifierConsideration
local UOptionActorIsConflictTargetForSelfActorConsideration = {}


---@class UOptionActorIsDatabaseNameConsideration : UQualifierConsideration
---@field DatabaseName FName
local UOptionActorIsDatabaseNameConsideration = {}



---@class UOptionActorIsFeedingStationWithFeedAvailableConsideration : UQualifierConsideration
local UOptionActorIsFeedingStationWithFeedAvailableConsideration = {}


---@class UOptionActorIsFlyingConsideration : UQualifierConsideration
local UOptionActorIsFlyingConsideration = {}


---@class UOptionActorIsNurtureInteractGiverConsideration : UQualifierConsideration
local UOptionActorIsNurtureInteractGiverConsideration = {}


---@class UOptionActorIsOffspringFollowTargetConsideration : UQualifierConsideration
local UOptionActorIsOffspringFollowTargetConsideration = {}


---@class UOptionActorIsPerchedConsideration : UQualifierConsideration
local UOptionActorIsPerchedConsideration = {}


---@class UOptionActorIsPlayerCharacterConsideration : UQualifierConsideration
local UOptionActorIsPlayerCharacterConsideration = {}


---@class UOptionActorIsPlayerWithActiveInventoryItemConsideration : UQualifierConsideration
---@field ItemName FName
local UOptionActorIsPlayerWithActiveInventoryItemConsideration = {}



---@class UOptionActorIsPlayerWithActiveInventoryItemCountConsideration : UQualifierConsideration
---@field ItemCountMinimumScore int32
---@field ItemCountMaximumScore int32
local UOptionActorIsPlayerWithActiveInventoryItemCountConsideration = {}



---@class UOptionActorIsPlayerWithActiveInventoryToolConsideration : UQualifierConsideration
---@field ToolClass TSubclassOf<ATool>
local UOptionActorIsPlayerWithActiveInventoryToolConsideration = {}



---@class UOptionActorIsPreferredToyConsideration : UQualifierConsideration
---@field BonusForPreferredToy float
local UOptionActorIsPreferredToyConsideration = {}



---@class UOptionActorIsTaggedByGroupCoordinationConsideration : UQualifierConsideration
---@field TagID FName
local UOptionActorIsTaggedByGroupCoordinationConsideration = {}



---@class UOptionActorIsTaggedBySelfActorConsideration : UQualifierConsideration
---@field TagID FName
local UOptionActorIsTaggedBySelfActorConsideration = {}



---@class UOptionActorLastInteractionTimeConsideration : UQualifierConsideration
---@field WindowOffset float
---@field WindowSize float
local UOptionActorLastInteractionTimeConsideration = {}



---@class UOptionActorLocationWithinAreaFlagsConsideration : UQualifierConsideration
---@field AreaFlagSelection EAreaUsageFlagSelection
---@field CustomAreaFlags FOdcFlags
local UOptionActorLocationWithinAreaFlagsConsideration = {}



---@class UOptionActorNumberOfTagsOfTypeGroupCoordinationConsideration : UQualifierConsideration
---@field TagID FName
---@field MaxNumberOfTags int32
---@field bIgnoreSelf boolean
local UOptionActorNumberOfTagsOfTypeGroupCoordinationConsideration = {}



---@class UOptionActorSameSpeciesConsideration : UQualifierConsideration
local UOptionActorSameSpeciesConsideration = {}


---@class UOptionActorWithinNurtureInteractRangeConsideration : UQualifierConsideration
---@field NurtureInteractRange ECreatureNurtureInteractRange
local UOptionActorWithinNurtureInteractRangeConsideration = {}



---@class UOptionCharacterIsOverlappingSelfCreature : UQualifierConsideration
---@field SelfCreatureCapsuleRadiusMultiplier float
---@field OptionCharacterCapsuleRadiusMultiplier float
local UOptionCharacterIsOverlappingSelfCreature = {}



---@class UPlayWithLeapingToadstoolStatQualifierTask : UQualifierTask
local UPlayWithLeapingToadstoolStatQualifierTask = {}


---@class USelfActionEnergyConsideration : UQualifierConsideration
local USelfActionEnergyConsideration = {}


---@class USelfActorAttackPatternWeightConsideration : UQualifierConsideration
---@field AttackData UCreatureCombatAttackData
local USelfActorAttackPatternWeightConsideration = {}



---@class USelfActorCloseToOffspring : UQualifierConsideration
---@field MaximumDistance float
---@field bOnlyCheckOwnOffspring boolean
local USelfActorCloseToOffspring = {}



---@class USelfActorCreatureCombatStage : UQualifierConsideration
---@field Operation EUtilityArithmeticOperation
---@field StageIndex int32
local USelfActorCreatureCombatStage = {}



---@class USelfActorIsDatabaseNameConsideration : UQualifierConsideration
---@field DatabaseName FName
local USelfActorIsDatabaseNameConsideration = {}



---@class USelfActorIsInWaterConsideration : UQualifierConsideration
local USelfActorIsInWaterConsideration = {}


---@class USelfActorIsOverlappingCreaturePenOptionActor : UQualifierConsideration
local USelfActorIsOverlappingCreaturePenOptionActor = {}


---@class USelfActorIsTaggedByBlueprintActorConsideration : UQualifierConsideration
---@field BlueprintActor FBlackboardKeySelector
---@field TagID FName
local USelfActorIsTaggedByBlueprintActorConsideration = {}



---@class USelfActorWaterDepthConsideration : UQualifierConsideration
---@field MinDepth float
---@field MaxDepth float
local USelfActorWaterDepthConsideration = {}



---@class USelfCanBeCapturedConsideration : UQualifierConsideration
local USelfCanBeCapturedConsideration = {}


---@class USelfCanFlyConsideration : UQualifierConsideration
local USelfCanFlyConsideration = {}


---@class USelfCanHerdFleeConsideration : UQualifierConsideration
local USelfCanHerdFleeConsideration = {}


---@class USelfCanHerdSleepConsideration : UQualifierConsideration
local USelfCanHerdSleepConsideration = {}


---@class USelfCanStartByproductProductionConsideration : UQualifierConsideration
local USelfCanStartByproductProductionConsideration = {}


---@class USelfCanUsePerchesConsideration : UQualifierConsideration
local USelfCanUsePerchesConsideration = {}


---@class USelfCentaurShouldRepositionConsideration : UQualifierConsideration
local USelfCentaurShouldRepositionConsideration = {}


---@class USelfCentaurShouldTurnRepositionConsideration : UQualifierConsideration
local USelfCentaurShouldTurnRepositionConsideration = {}


---@class USelfCheckSpeciesTeamConsideration : UQualifierConsideration
---@field Team FName
local USelfCheckSpeciesTeamConsideration = {}



---@class USelfCreatureCanForageConsideration : UQualifierConsideration
local USelfCreatureCanForageConsideration = {}


---@class USelfCreatureCirclingConsideration : UQualifierConsideration
local USelfCreatureCirclingConsideration = {}


---@class USelfCreatureFleeFlyingConsideration : UQualifierConsideration
---@field FleeFlyingOption ECreatureFleeFlyingOption
local USelfCreatureFleeFlyingConsideration = {}



---@class USelfCreatureFlyOutOfWaterConsideration : UQualifierConsideration
local USelfCreatureFlyOutOfWaterConsideration = {}


---@class USelfCreatureGroomOrLookAroundConsideration : UQualifierConsideration
local USelfCreatureGroomOrLookAroundConsideration = {}


---@class USelfCreatureGroomingConsideration : UQualifierConsideration
local USelfCreatureGroomingConsideration = {}


---@class USelfCreatureIsBeingInspectedConsideration : UQualifierConsideration
local USelfCreatureIsBeingInspectedConsideration = {}


---@class USelfCreaturePerchingConsideration : UQualifierConsideration
local USelfCreaturePerchingConsideration = {}


---@class USelfCreatureRelaxStanceConsideration : UQualifierConsideration
---@field Stance ECreatureStance
local USelfCreatureRelaxStanceConsideration = {}



---@class USelfCreatureTypeIsAlbinoConsideration : UQualifierConsideration
local USelfCreatureTypeIsAlbinoConsideration = {}


---@class USelfCreatureWantsNurturingConsideration : UQualifierConsideration
local USelfCreatureWantsNurturingConsideration = {}


---@class USelfGrazingConsideration : UQualifierConsideration
local USelfGrazingConsideration = {}


---@class USelfHappinessIsEnoughToPlayConsideration : UQualifierConsideration
local USelfHappinessIsEnoughToPlayConsideration = {}


---@class USelfHappinessLevel : UQualifierConsideration
---@field HappinessLevel ECreatureHappinessLevel
local USelfHappinessLevel = {}



---@class USelfHappinessPercentageConsideration : UQualifierConsideration
local USelfHappinessPercentageConsideration = {}


---@class USelfHerdingConsideration : UQualifierConsideration
local USelfHerdingConsideration = {}


---@class USelfIsAdultConsideration : UQualifierConsideration
local USelfIsAdultConsideration = {}


---@class USelfIsAwareConsideration : UQualifierConsideration
local USelfIsAwareConsideration = {}


---@class USelfIsByproductReadyConsideration : UQualifierConsideration
local USelfIsByproductReadyConsideration = {}


---@class USelfIsCapturedConsideration : UQualifierConsideration
local USelfIsCapturedConsideration = {}


---@class USelfIsCombatReadyConsideration : UQualifierConsideration
local USelfIsCombatReadyConsideration = {}


---@class USelfIsEggConsideration : UQualifierConsideration
local USelfIsEggConsideration = {}


---@class USelfIsFlyingConsideration : UQualifierConsideration
local USelfIsFlyingConsideration = {}


---@class USelfIsHungryConsideration : UQualifierConsideration
local USelfIsHungryConsideration = {}


---@class USelfIsInConflictConsideration : UQualifierConsideration
local USelfIsInConflictConsideration = {}


---@class USelfIsInteractionNeedMetConsideration : UQualifierConsideration
local USelfIsInteractionNeedMetConsideration = {}


---@class USelfIsOffspringConsideration : UQualifierConsideration
local USelfIsOffspringConsideration = {}


---@class USelfIsPerchedConsideration : UQualifierConsideration
local USelfIsPerchedConsideration = {}


---@class USelfIsPregnantConsideration : UQualifierConsideration
local USelfIsPregnantConsideration = {}


---@class USelfIsTaggedByGroupCoordinationConsideration : UQualifierConsideration
---@field TagID FName
local USelfIsTaggedByGroupCoordinationConsideration = {}



---@class USelfLazinessConsideration : UQualifierConsideration
local USelfLazinessConsideration = {}


---@class USelfNocturnalConsideration : UQualifierConsideration
local USelfNocturnalConsideration = {}


---@class USelfOnGrazingSurfaceConsideration : UQualifierConsideration
local USelfOnGrazingSurfaceConsideration = {}


---@class USelfOnSurfaceConsideration : UQualifierConsideration
---@field DesiredSurface EPhysicalSurface
local USelfOnSurfaceConsideration = {}



---@class USelfPitchAngleConsideration : UQualifierConsideration
---@field MaxAngle float
---@field HeadBone FName
---@field PelvisBone FName
local USelfPitchAngleConsideration = {}



---@class USelfShouldGrowUpConsideration : UQualifierConsideration
local USelfShouldGrowUpConsideration = {}


---@class USelfStationaryForNurtureInteractConsideration : UQualifierConsideration
local USelfStationaryForNurtureInteractConsideration = {}


---@class USelfSurfaceMaxAngleConsideration : UQualifierConsideration
---@field MaxAngle float
local USelfSurfaceMaxAngleConsideration = {}



---@class USelfTeamConsideration : UQualifierConsideration
---@field Team FName
local USelfTeamConsideration = {}



---@class UTransfigurationActorsQualifierOptions : UQualifierOptions
local UTransfigurationActorsQualifierOptions = {}


---@class UWorldMoonPhaseConsideration : UQualifierConsideration
---@field DesiredMoonPhase ESchedulerMoonPhase
local UWorldMoonPhaseConsideration = {}



---@class UWorldNightDayConsideration : UQualifierConsideration
local UWorldNightDayConsideration = {}


