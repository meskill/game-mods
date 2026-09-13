---@meta

---@class FConsiderationWithDisplayName
---@field DisplayName FString
---@field Consideration UQualifierConsideration
local FConsiderationWithDisplayName = {}



---@class FScoreOverrideReturnConfiguration
---@field MultiplierToReturn EScoreOverrideReturnConfigurationType
---@field CustomMultiplier float
---@field RankToReturn EScoreOverrideReturnConfigurationType
---@field CustomRank float
---@field BonusToReturn EScoreOverrideReturnConfigurationType
---@field CustomBonus float
local FScoreOverrideReturnConfiguration = {}



---@class FUtilityPlaceholder
local FUtilityPlaceholder = {}


---@class IUtilityContextProvider : IInterface
local IUtilityContextProvider = {}


---@class IUtilityScoreProvider : IInterface
local IUtilityScoreProvider = {}


---@class UActorsofClassWithinRangeQualifierOptions : UQualifierOptions
---@field Range float
---@field ActorType TSubclassOf<AActor>
local UActorsofClassWithinRangeQualifierOptions = {}



---@class UBTComposite_UtilitySelector : UBTCompositeNode
---@field SelectionMethod EUtilitySelectionMethod
---@field WeightThreshold float
---@field bIgnoreRank boolean
local UBTComposite_UtilitySelector = {}



---@class UBTDecorator_IsTrackedErrorReported : UBTDecorator_IsTrackedErrorReported_Base
---@field bUseName boolean
---@field ErrorName FName
---@field bUseAccessory boolean
---@field AccessoryActorKey FBlackboardKeySelector
---@field bUseType boolean
---@field ErrorType EUtilityTrackedErrorType
local UBTDecorator_IsTrackedErrorReported = {}



---@class UBTDecorator_IsTrackedErrorReported_Base : UBTDecorator
local UBTDecorator_IsTrackedErrorReported_Base = {}


---@class UBTDecorator_UtilityQualifier : UBTDecorator
---@field ActionName FName
---@field Considerations TArray<FConsiderationWithDisplayName>
---@field QualifierOptions UQualifierOptions
---@field OptionConsiderations TArray<FConsiderationWithDisplayName>
---@field QualifierTasks TArray<UQualifierTask>
---@field bRestartTreeOnOptionChange boolean
local UBTDecorator_UtilityQualifier = {}



---@class UBTService_InvalidPathChecker : UBTService
---@field MaxChecksPerTick int32
---@field MaxCacheRefreshTime_Empty float
---@field MaxCacheRefreshTime_Valid float
---@field FilterClass TSubclassOf<UNavigationQueryFilter>
---@field bDisallowPartial boolean
---@field ProjectionRadius float
---@field ProjectionHeight float
local UBTService_InvalidPathChecker = {}

---@param AIOwner AAIController
---@param NavData ANavigationData
---@param From FVector
---@param To FVector
---@param QueryFilter TSubclassOf<UNavigationQueryFilter>
---@param bAllowPartial boolean
---@param ProjRadius float
---@param ProjHeight float
---@return boolean
function UBTService_InvalidPathChecker:CanPath(AIOwner, NavData, From, To, QueryFilter, bAllowPartial, ProjRadius, ProjHeight) end


---@class UBTService_MissingNavmeshChecker : UBTService
---@field ErrorName FName
---@field HorzRadius float
---@field VertRadius float
---@field LastGoodNavLocKey FBlackboardKeySelector
local UBTService_MissingNavmeshChecker = {}

---@param AIOwner AAIController
---@param NavData ANavigationData
---@param Location FVector
---@param Extent FVector
---@param OutLocation FVector
---@return boolean
function UBTService_MissingNavmeshChecker:HasNavmesh(AIOwner, NavData, Location, Extent, OutLocation) end


---@class UBTService_UtilityEvaluate : UBTService
local UBTService_UtilityEvaluate = {}


---@class UBTService_UtilityModify : UBTService
---@field bPauseUtilityEvaulation boolean
local UBTService_UtilityModify = {}



---@class UBTTask_ReportTrackedError : UBTTaskNode
---@field bUseCurrentActionAsError boolean
---@field ErrorName FName
---@field AccessoryKey FBlackboardKeySelector
---@field ErrorType EUtilityTrackedErrorType
---@field bWaitForReset boolean
---@field MinTimeout float
---@field bUseRangeTimeout boolean
---@field MaxTimeout float
---@field ReturnType EBTNodeResult::Type
local UBTTask_ReportTrackedError = {}



---@class UBTTask_ResetTrackedError : UBTTask_ResetTrackedError_Base
---@field bUseName boolean
---@field ErrorName FName
---@field bUseAccessory boolean
---@field AccessoryActorKey FBlackboardKeySelector
---@field bUseType boolean
---@field ErrorType EUtilityTrackedErrorType
local UBTTask_ResetTrackedError = {}



---@class UBTTask_ResetTrackedError_Base : UBTTaskNode
local UBTTask_ResetTrackedError_Base = {}


---@class UBlackboardActorQualifierOptions : UQualifierOptions
---@field ActorKey FBlackboardKeySelector
local UBlackboardActorQualifierOptions = {}



---@class UChainActionActivityBranchConsideration : UQualifierConsideration
---@field WhenActiveDescription FString
---@field ConsiderationWhenActive UQualifierConsideration
---@field WhenInactiveDescription FString
---@field ConsiderationWhenInactive UQualifierConsideration
local UChainActionActivityBranchConsideration = {}



---@class UChainAtMultiplierThresholdConsideration : UQualifierConsideration
---@field MultiplierThreshold float
---@field TestConsideration UQualifierConsideration
---@field ChainConsideration UQualifierConsideration
local UChainAtMultiplierThresholdConsideration = {}



---@class UChainBonusAtMultiplierThresholdConsideration : UQualifierConsideration
---@field Bonus float
---@field MultiplierThreshold float
---@field Consideration UQualifierConsideration
local UChainBonusAtMultiplierThresholdConsideration = {}



---@class UChainBranchOnMaxMultiplierConsideration : UQualifierConsideration
---@field ConsiderationA UQualifierConsideration
---@field ConsiderationB UQualifierConsideration
local UChainBranchOnMaxMultiplierConsideration = {}



---@class UChainCombineConsideration : UQualifierConsideration
---@field Considerations TArray<UQualifierConsideration>
---@field bCounterbalanceScoreDegradation boolean
local UChainCombineConsideration = {}



---@class UChainCurveMapMultiplierConsideration : UQualifierConsideration
---@field Curve FRuntimeFloatCurve
---@field Consideration UQualifierConsideration
local UChainCurveMapMultiplierConsideration = {}



---@class UChainEliminateScoreBelowActiveInactiveThresholdConsideration : UQualifierConsideration
---@field ThesholdWhenActive float
---@field ThesholdWhenInactive float
---@field Consideration UQualifierConsideration
local UChainEliminateScoreBelowActiveInactiveThresholdConsideration = {}



---@class UChainInvertMultiplierConsideration : UQualifierConsideration
---@field Consideration UQualifierConsideration
local UChainInvertMultiplierConsideration = {}



---@class UChainMultiplierCompareScoreOverrideConsideration : UQualifierConsideration
---@field ConsiderationA UQualifierConsideration
---@field ConsiderationB UQualifierConsideration
---@field ALargerThanB FScoreOverrideReturnConfiguration
---@field AEqualToB FScoreOverrideReturnConfiguration
---@field ASmallerThanB FScoreOverrideReturnConfiguration
local UChainMultiplierCompareScoreOverrideConsideration = {}



---@class UChainNamedActionActivityBranchConsideration : UQualifierConsideration
---@field NamedAction FName
---@field WhenActiveDescription FString
---@field ConsiderationWhenActive UQualifierConsideration
---@field WhenInactiveDescription FString
---@field ConsiderationWhenInactive UQualifierConsideration
local UChainNamedActionActivityBranchConsideration = {}



---@class UChainOnlyWhenActiveConsideration : UQualifierConsideration
---@field Consideration UQualifierConsideration
local UChainOnlyWhenActiveConsideration = {}



---@class UChainOnlyWhenInactiveConsideration : UQualifierConsideration
---@field Consideration UQualifierConsideration
local UChainOnlyWhenInactiveConsideration = {}



---@class UChainOnlyWhenNamedActionIsActiveConsideration : UQualifierConsideration
---@field NamedAction FName
---@field Consideration UQualifierConsideration
local UChainOnlyWhenNamedActionIsActiveConsideration = {}



---@class UChainOnlyWhenNamedActionIsInactiveConsideration : UQualifierConsideration
---@field NamedAction FName
---@field Consideration UQualifierConsideration
local UChainOnlyWhenNamedActionIsInactiveConsideration = {}



---@class UChainOverrideMultiplierConsideration : UQualifierConsideration
---@field MultiplierOverride float
---@field Consideration UQualifierConsideration
local UChainOverrideMultiplierConsideration = {}



---@class UChainPickMaxMultiplierConsideration : UQualifierConsideration
---@field Considerations TArray<UQualifierConsideration>
local UChainPickMaxMultiplierConsideration = {}



---@class UCopyBlackboardLocationToLocationQualifierTask : UQualifierTask
---@field FromLocationKey FBlackboardKeySelector
---@field ToLocationKey FBlackboardKeySelector
local UCopyBlackboardLocationToLocationQualifierTask = {}



---@class UCopyOptionActorChildLocationToBlackboardQualifierTask : UQualifierTask
---@field OutputLocationKey FBlackboardKeySelector
---@field ChildName FString
local UCopyOptionActorChildLocationToBlackboardQualifierTask = {}



---@class UCopyOptionActorLocationToBlackboardQualifierTask : UQualifierTask
---@field OutputLocationKey FBlackboardKeySelector
local UCopyOptionActorLocationToBlackboardQualifierTask = {}



---@class UCopyOptionActorToBlackboardQualifierTask : UQualifierTask
---@field OutputActorKey FBlackboardKeySelector
local UCopyOptionActorToBlackboardQualifierTask = {}



---@class UCopyOptionLocationToBlackboardQualifierTask : UQualifierTask
---@field OutputLocationKey FBlackboardKeySelector
local UCopyOptionLocationToBlackboardQualifierTask = {}



---@class UCopySelfActorLocationToBlackboardQualifierTask : UQualifierTask
---@field OutputLocationKey FBlackboardKeySelector
local UCopySelfActorLocationToBlackboardQualifierTask = {}



---@class UOptionActorBlackboardBool : UQualifierConsideration
---@field BlackboardKeyName FName
local UOptionActorBlackboardBool = {}



---@class UOptionActorDistanceToSelfConsideration : UQualifierConsideration
---@field StartRangeOffset float
---@field EndRangeOffset float
local UOptionActorDistanceToSelfConsideration = {}



---@class UOptionActorHasActorTagConsideration : UQualifierConsideration
---@field TagName FName
local UOptionActorHasActorTagConsideration = {}



---@class UOptionActorIsAClassConsideration : UQualifierConsideration
---@field ActorClass TSubclassOf<AActor>
local UOptionActorIsAClassConsideration = {}



---@class UOptionActorIsTrackedErrorReported : UOptionActorIsTrackedErrorReported_Base
---@field bUseName boolean
---@field ErrorName FName
---@field bUseType boolean
---@field ErrorType EUtilityTrackedErrorType
local UOptionActorIsTrackedErrorReported = {}



---@class UOptionActorIsTrackedErrorReported_Base : UQualifierConsideration
---@field bUnreported boolean
local UOptionActorIsTrackedErrorReported_Base = {}



---@class UOptionActorMaxPerceptionDistanceConsideration : UQualifierConsideration
local UOptionActorMaxPerceptionDistanceConsideration = {}


---@class UOptionActorSightDistanceConsideration : UQualifierConsideration
---@field bUseLoseSightDistance boolean
local UOptionActorSightDistanceConsideration = {}



---@class UOptionLocationDistanceToSelfConsideration : UQualifierConsideration
---@field StartRangeOffset float
---@field EndRangeOffset float
local UOptionLocationDistanceToSelfConsideration = {}



---@class UOptionLocationSightDistanceConsideration : UQualifierConsideration
local UOptionLocationSightDistanceConsideration = {}


---@class UPerceivedActorsQualifierOptions : UQualifierOptions
local UPerceivedActorsQualifierOptions = {}


---@class UQualifierConsideration : UObject
local UQualifierConsideration = {}


---@class UQualifierOptions : UObject
local UQualifierOptions = {}


---@class UQualifierTask : UObject
local UQualifierTask = {}


---@class USelfActoIsOverlappingOptionActorTrigger : UQualifierConsideration
---@field TriggerName FString
local USelfActoIsOverlappingOptionActorTrigger = {}



---@class USelfActorHasActorComponent : UQualifierConsideration
---@field ActorComponentClass TSubclassOf<UActorComponent>
---@field bInverseResult boolean
local USelfActorHasActorComponent = {}



---@class USelfActorHasActorTagConsideration : UQualifierConsideration
---@field TagName FName
local USelfActorHasActorTagConsideration = {}



---@class USelfActorIsAClassConsideration : UQualifierConsideration
---@field ActorClass TSubclassOf<AActor>
local USelfActorIsAClassConsideration = {}



---@class USelfActorIsTrackedErrorReported : USelfActorIsTrackedErrorReported_Base
---@field bUseName boolean
---@field ErrorName FName
---@field bUseType boolean
---@field ErrorType EUtilityTrackedErrorType
local USelfActorIsTrackedErrorReported = {}



---@class USelfActorIsTrackedErrorReported_Base : UQualifierConsideration
---@field bUnreported boolean
local USelfActorIsTrackedErrorReported_Base = {}



---@class USelfBlackboardBool : UQualifierConsideration
---@field BlackboardKeyName FName
local USelfBlackboardBool = {}



---@class USelfCharacterMovementModeConsideration : UQualifierConsideration
---@field MovementMode EMovementMode
local USelfCharacterMovementModeConsideration = {}



---@class USelfOnlyAfterNamedActionEndConsideration : UQualifierConsideration
---@field Action FName
---@field WindowSize float
local USelfOnlyAfterNamedActionEndConsideration = {}



---@class USelfTimeSinceActionEndConsideration : UQualifierConsideration
---@field WindowOffset float
---@field WindowSize float
local USelfTimeSinceActionEndConsideration = {}



---@class USelfTimeSinceActionStartConsideration : UQualifierConsideration
---@field WindowOffset float
---@field WindowSize float
local USelfTimeSinceActionStartConsideration = {}



---@class USelfTimeSinceNamedActionEndConsideration : UQualifierConsideration
---@field Action FName
---@field WindowOffset float
---@field WindowSize float
local USelfTimeSinceNamedActionEndConsideration = {}



---@class USelfTimeSinceNamedActionStartConsideration : UQualifierConsideration
---@field Action FName
---@field WindowOffset float
---@field WindowSize float
local USelfTimeSinceNamedActionStartConsideration = {}



---@class UTuningConsideration : UQualifierConsideration
---@field Rank int32
---@field Bonus float
---@field Multiplier float
local UTuningConsideration = {}



---@class UUtilityContext : UObject
---@field SelfActor AActor
---@field SelfBehaviorTree UBehaviorTreeComponent
---@field SelfBlackboard UBlackboardComponent
---@field OptionActor AActor
---@field OptionActors TArray<AActor>
---@field PerceivedActors TArray<AActor>
local UUtilityContext = {}



---@class UUtilityTrackedErrorManager : UObject
local UUtilityTrackedErrorManager = {}

---@param InOwner AActor
---@param InType EUtilityTrackedErrorType
function UUtilityTrackedErrorManager:ResetError_Type(InOwner, InType) end
---@param InOwner AActor
---@param InName FName
---@param InType EUtilityTrackedErrorType
function UUtilityTrackedErrorManager:ResetError_NameType(InOwner, InName, InType) end
---@param InOwner AActor
---@param InName FName
---@param InAccessory AActor
function UUtilityTrackedErrorManager:ResetError_NameAccessory(InOwner, InName, InAccessory) end
---@param InOwner AActor
---@param InName FName
function UUtilityTrackedErrorManager:ResetError_Name(InOwner, InName) end
---@param InOwner AActor
---@param InAccessory AActor
---@param InType EUtilityTrackedErrorType
function UUtilityTrackedErrorManager:ResetError_AccessoryType(InOwner, InAccessory, InType) end
---@param InOwner AActor
---@param InAccessory AActor
function UUtilityTrackedErrorManager:ResetError_Accessory(InOwner, InAccessory) end
---@param InOwner AActor
---@param InName FName
---@param InAccessory AActor
---@param InType EUtilityTrackedErrorType
function UUtilityTrackedErrorManager:ResetError(InOwner, InName, InAccessory, InType) end
---@param InOwner AActor
---@param InName FName
---@param InAccessory AActor
---@param InType EUtilityTrackedErrorType
---@param InTimeToReset float
function UUtilityTrackedErrorManager:ReportError(InOwner, InName, InAccessory, InType, InTimeToReset) end
---@param InOwner AActor
---@param InType EUtilityTrackedErrorType
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError_Type(InOwner, InType) end
---@param InOwner AActor
---@param InName FName
---@param InType EUtilityTrackedErrorType
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError_NameType(InOwner, InName, InType) end
---@param InOwner AActor
---@param InName FName
---@param InAccessory AActor
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError_NameAccessory(InOwner, InName, InAccessory) end
---@param InOwner AActor
---@param InName FName
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError_Name(InOwner, InName) end
---@param InOwner AActor
---@param InAccessory AActor
---@param InType EUtilityTrackedErrorType
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError_AccessoryType(InOwner, InAccessory, InType) end
---@param InOwner AActor
---@param InAccessory AActor
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError_Accessory(InOwner, InAccessory) end
---@param InOwner AActor
---@param InName FName
---@param InAccessory AActor
---@param InType EUtilityTrackedErrorType
---@return boolean
function UUtilityTrackedErrorManager:IsReportedError(InOwner, InName, InAccessory, InType) end
---@param InOwner AActor
---@param InType EUtilityTrackedErrorType
---@param OutAccessories TSet<AActor>
---@return boolean
function UUtilityTrackedErrorManager:GetAccessories_Type(InOwner, InType, OutAccessories) end
---@param InOwner AActor
---@param InName FName
---@param InType EUtilityTrackedErrorType
---@param OutAccessories TSet<AActor>
---@return boolean
function UUtilityTrackedErrorManager:GetAccessories_NameType(InOwner, InName, InType, OutAccessories) end
---@return UUtilityTrackedErrorManager
function UUtilityTrackedErrorManager:Get() end


