---@meta

---@class AMercunaNavExclusionVolume : AVolume
---@field bApplyToAllNavOctrees boolean
---@field NavOctrees TArray<AMercunaNavOctree>
local AMercunaNavExclusionVolume = {}



---@class AMercunaNavModifierVolume : AVolume
---@field bEnabled boolean
---@field CostMultiplier float
---@field CostMultipler float
---@field UsageTypes FMercunaNavUsageTypes
---@field NavOctree AMercunaNavOctree
local AMercunaNavModifierVolume = {}

---@param NewUsageTypes FMercunaNavUsageTypes
function AMercunaNavModifierVolume:SetUsageTypes(NewUsageTypes) end
---@param size FVector
function AMercunaNavModifierVolume:SetSize(size) end
---@param Location FVector
---@param size FVector
function AMercunaNavModifierVolume:SetLocationAndSize(Location, size) end
---@param Location FVector
function AMercunaNavModifierVolume:SetLocation(Location) end
---@param Enabled boolean
function AMercunaNavModifierVolume:SetEnabled(Enabled) end
---@param NewCostMultiplier float
function AMercunaNavModifierVolume:SetCostMultiplier(NewCostMultiplier) end
---@param NavOctree AMercunaNavOctree
function AMercunaNavModifierVolume:AddToOctree(NavOctree) end


---@class AMercunaNavOctree : AActor
---@field bUseOverride boolean
---@field SettingsOverride UMercunaOctreeSettings
---@field CellSize float
---@field MinPawnRadius int32
---@field MaxPawnRadius int32
---@field bNeverSave boolean
---@field bAllowOctreeMerging boolean
---@field GeometryCollisionChannel ECollisionChannel
---@field bRecordOctreeDeltas boolean
---@field OnBuildComplete FMercunaNavOctreeOnBuildComplete
---@field OnBuildLowResReady FMercunaNavOctreeOnBuildLowResReady
---@field OnRebuildComplete FMercunaNavOctreeOnRebuildComplete
---@field OnRebuildLowResReady FMercunaNavOctreeOnRebuildLowResReady
---@field OnLoadComplete FMercunaNavOctreeOnLoadComplete
---@field OnShortRangeLoadComplete FMercunaNavOctreeOnShortRangeLoadComplete
---@field DebugDrawMode EMerOctreeDebugDrawMode
---@field MerNavOctreeRenderingComponent UMerNavOctreeRenderingComponent
---@field bBuildAsSublevel boolean
---@field bNeedsRebuild boolean
local AMercunaNavOctree = {}

---@param ModifierVolume AMercunaNavModifierVolume
function AMercunaNavOctree:UpdateModifierVolumeParams(ModifierVolume) end
---@param Rotation FRotator
function AMercunaNavOctree:SetNavigationRotation(Rotation) end
---@param ModifierVolume AMercunaNavModifierVolume
function AMercunaNavOctree:RemoveModifierVolume(ModifierVolume) end
---@param Volumes TArray<FBox>
---@param StagedBuild boolean
function AMercunaNavOctree:RebuildVolumes(Volumes, StagedBuild) end
---@param Volume AActor
---@param StagedBuild boolean
function AMercunaNavOctree:RebuildActorVolume(Volume, StagedBuild) end
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@param HitPosition FVector
---@param RayHit boolean
function AMercunaNavOctree:Raycast(Start, End, NavigationRadius, HitPosition, RayHit) end
---@param Volume AActor
function AMercunaNavOctree:MercunaRebuildComplete__DelegateSignature(Volume) end
function AMercunaNavOctree:MercunaLoadComplete__DelegateSignature() end
function AMercunaNavOctree:MercunaBuildComplete__DelegateSignature() end
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@param MaxPathLength float
---@return boolean
function AMercunaNavOctree:IsReachableSingle(Start, End, NavigationRadius, MaxPathLength) end
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@param MaxPathLength float
---@param AccuratePathLength boolean
---@return boolean
function AMercunaNavOctree:IsReachable(Start, End, NavigationRadius, MaxPathLength, AccuratePathLength) end
---@param Positions TArray<FVector>
---@param NavigationRadius float
---@param Results TArray<boolean>
function AMercunaNavOctree:IsNavigableMulti(Positions, NavigationRadius, Results) end
---@param Position FVector
---@param NavigationRadius float
---@param Result boolean
function AMercunaNavOctree:IsNavigable(Position, NavigationRadius, Result) end
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@param MaxSpeed float
---@param MaxAcceleration float
---@param AllowPartial boolean
---@param MaxPathLength float
---@return UMercunaSpline
function AMercunaNavOctree:FindSplineToLocation(Start, End, NavigationRadius, MaxSpeed, MaxAcceleration, AllowPartial, MaxPathLength) end
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@param AllowPartial boolean
---@param MaxPathLength float
---@return UMercunaPath
function AMercunaNavOctree:FindPathToLocation(Start, End, NavigationRadius, AllowPartial, MaxPathLength) end
---@param Start FVector
---@param GoalActor AActor
---@param NavigationRadius float
---@param AllowPartial boolean
---@param MaxPathLength float
---@return UMercunaPath
function AMercunaNavOctree:FindPathToActor(Start, GoalActor, NavigationRadius, AllowPartial, MaxPathLength) end
---@param Position FVector
---@param NavigationRadius float
---@param SearchRadius float
---@param ClampedPosition FVector
---@param Result boolean
function AMercunaNavOctree:ClampToNavigable(Position, NavigationRadius, SearchRadius, ClampedPosition, Result) end
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@param MaxPathLength float
---@param Result boolean
function AMercunaNavOctree:CheckReachable(Start, End, NavigationRadius, MaxPathLength, Result) end
function AMercunaNavOctree:Build() end


---@class AMercunaNavSeed : AActor
local AMercunaNavSeed = {}


---@class AMercunaNavStreamingVolume : AVolume
---@field LevelToStream TSoftObjectPtr<UWorld>
---@field AdditionalLocation FVector
---@field AdditionalRotation FRotator
---@field StreamingLevel TWeakObjectPtr<ULevelStreaming>
local AMercunaNavStreamingVolume = {}



---@class AMercunaNavTestingActor : AActor
---@field Radius float
---@field bSearchStart boolean
---@field OtherActor AMercunaNavTestingActor
---@field UsageFlags FMercunaPawnUsageFlags
---@field HeightChangePenalty float
---@field bContinuouslyRepath boolean
---@field bDrawSpline boolean
---@field bDrawToScale boolean
---@field MaxSpeed float
---@field MaxAcceleration float
---@field bPathExist boolean
---@field bPathIsPartial boolean
---@field bPathIsOutOfNodes boolean
---@field PathLength float
---@field PathSections int32
---@field PathFindTime float
---@field PathNodesUsed int32
---@field SphereComponent USphereComponent
---@field Spline UMercunaSpline
---@field Octree AMercunaNavOctree
local AMercunaNavTestingActor = {}

---@param SplineEvent EMercunaSplineEvent::Type
function AMercunaNavTestingActor:OnSplineUpdate(SplineEvent) end
function AMercunaNavTestingActor:OnOctreeBuildComplete() end


---@class AMercunaNavVolume : AVolume
---@field NavOctree AMercunaNavOctree
---@field PreciseBoundaries boolean
---@field LOD EMercunaLevelOfDetail
---@field FullDetailBuild boolean
---@field PreciseDirections TArray<boolean>
local AMercunaNavVolume = {}

---@param size FVector
function AMercunaNavVolume:SetSize(size) end
---@param Rotation FRotator
function AMercunaNavVolume:SetNavigationRotation(Rotation) end
---@param NavOctree AMercunaNavOctree
function AMercunaNavVolume:AddToOctree(NavOctree) end


---@class FMercunaMoveRequest
---@field GoalActor AActor
local FMercunaMoveRequest = {}



---@class FMercunaNavUsageTypes
---@field bUsageType0 boolean
---@field bUsageType1 boolean
---@field bUsageType2 boolean
---@field bUsageType3 boolean
---@field bUsageType4 boolean
---@field bUsageType5 boolean
---@field bUsageType6 boolean
---@field bUsageType7 boolean
---@field bUsageType8 boolean
---@field bUsageType9 boolean
---@field bUsageType10 boolean
---@field bUsageType11 boolean
---@field bUsageType12 boolean
---@field bUsageType13 boolean
---@field bUsageType14 boolean
---@field bUsageType15 boolean
---@field bUsageType16 boolean
---@field bUsageType17 boolean
---@field bUsageType18 boolean
---@field bUsageType19 boolean
---@field bUsageType20 boolean
---@field bUsageType21 boolean
---@field bUsageType22 boolean
---@field bUsageType23 boolean
---@field bUsageType24 boolean
---@field bUsageType25 boolean
---@field bUsageType26 boolean
---@field bUsageType27 boolean
---@field bUsageType28 boolean
---@field bUsageType29 boolean
---@field bUsageType30 boolean
---@field bUsageType31 boolean
local FMercunaNavUsageTypes = {}



---@class FMercunaNavigationConfiguration
---@field MaxPitch float
---@field MaxRoll float
---@field RollSensitivity float
---@field MoveOnlyInLookDirection boolean
---@field StopAtDestination boolean
---@field HeightChangePenalty float
---@field SmoothPaths boolean
---@field LookAheadTime float
---@field RollAnticipationTime float
local FMercunaNavigationConfiguration = {}



---@class FMercunaOctreeData
---@field Rotation FRotator
---@field CellSize float
---@field MinPawnRadius int32
---@field MaxPawnRadius int32
---@field bAllowOctreeMerging boolean
---@field bRecordOctreeDeltas boolean
local FMercunaOctreeData = {}



---@class FMercunaPawnUsageFlags
---@field RequiredUsageFlags FMercunaNavUsageTypes
---@field AllowedUsageFlags FMercunaNavUsageTypes
local FMercunaPawnUsageFlags = {}



---@class FMercunaWorldData
---@field MapPath FString
---@field Position FVector
---@field Yaw uint16
local FMercunaWorldData = {}



---@class UBTDecorator_Mercuna_Reachable : UBTDecorator
---@field Source FBlackboardKeySelector
---@field Destination FBlackboardKeySelector
---@field MaxPathLength float
local UBTDecorator_Mercuna_Reachable = {}



---@class UBTTask_Mercuna_MoveTo : UBTTask_BlackboardBase
---@field Speed float
---@field EndDistance float
---@field bObserveBlackboardValue boolean
---@field bAllowPartialPath boolean
local UBTTask_Mercuna_MoveTo = {}



---@class UEnvQueryGenerator_Mercuna_3DRing : UEnvQueryGenerator
---@field InnerRadius FAIDataProviderFloatValue
---@field OuterRadius FAIDataProviderFloatValue
---@field NumberOfRings FAIDataProviderIntValue
---@field PointsPerRing FAIDataProviderIntValue
---@field MinHeight FAIDataProviderFloatValue
---@field MaxHeight FAIDataProviderFloatValue
---@field NumberOfLayers FAIDataProviderIntValue
---@field Center TSubclassOf<UEnvQueryContext>
local UEnvQueryGenerator_Mercuna_3DRing = {}



---@class UEnvQueryGenerator_Mercuna_Sphere : UEnvQueryGenerator
---@field InnerRadius FAIDataProviderFloatValue
---@field OuterRadius FAIDataProviderFloatValue
---@field NumberOfShells FAIDataProviderIntValue
---@field PointsPerShell FAIDataProviderIntValue
---@field Distribution EMercunaPointDistribution
---@field Center TSubclassOf<UEnvQueryContext>
local UEnvQueryGenerator_Mercuna_Sphere = {}



---@class UEnvQueryTest_Mercuna_NavRaycast : UMercunaQueryTest
---@field Context TSubclassOf<UEnvQueryContext>
local UEnvQueryTest_Mercuna_NavRaycast = {}



---@class UEnvQueryTest_Mercuna_NavigableVolume : UMercunaQueryTest
local UEnvQueryTest_Mercuna_NavigableVolume = {}


---@class UEnvQueryTest_Mercuna_Project : UMercunaQueryTest
---@field MaxSearchRadius FAIDataProviderFloatValue
local UEnvQueryTest_Mercuna_Project = {}



---@class UEnvQueryTest_Mercuna_Reachable : UMercunaQueryTest
---@field MaxPathLength FAIDataProviderFloatValue
---@field Context TSubclassOf<UEnvQueryContext>
local UEnvQueryTest_Mercuna_Reachable = {}



---@class UMerEditorSettings : UObject
---@field bEnableExtraLogging boolean
---@field NavigableColor FLinearColor
---@field HighCostColor FLinearColor
---@field UnnavigableColor FLinearColor
local UMerEditorSettings = {}



---@class UMerNavOctreeRenderingComponent : UMeshComponent
local UMerNavOctreeRenderingComponent = {}


---@class UMerSettings : UObject
---@field DebugLengthScale float
---@field NumVoxelsPerSide float
---@field NumVoxelsEachSide FVector
---@field bAlwaysShowErrors boolean
---@field CellSize float
---@field MinPawnRadius int32
---@field MaxPawnRadius int32
---@field bAutoLinkNavVolumesWithOctrees boolean
---@field bAllowOctreeMerging boolean
---@field ModifierUsageTypes TArray<FName>
local UMerSettings = {}



---@class UMercunaClampToNavigableProxy : UBlueprintAsyncActionBase
---@field OnSuccess FMercunaClampToNavigableProxyOnSuccess
---@field OnFailure FMercunaClampToNavigableProxyOnFailure
local UMercunaClampToNavigableProxy = {}

---@param WorldContextObject UObject
---@param Position FVector
---@param NavigationRadius float
---@param SearchRadius float
---@return UMercunaClampToNavigableProxy
function UMercunaClampToNavigableProxy:MercunaClampToNavigable(WorldContextObject, Position, NavigationRadius, SearchRadius) end


---@class UMercunaMoveToProxy : UBlueprintAsyncActionBase
---@field OnSuccess FMercunaMoveToProxyOnSuccess
---@field OnFailure FMercunaMoveToProxyOnFailure
local UMercunaMoveToProxy = {}

---@param RequestID FAIRequestID
---@param Result EMercunaMoveResult::Type
function UMercunaMoveToProxy:OnMoveComplete(RequestID, Result) end
---@param WorldContextObject UObject
---@param Pawn APawn
---@param Destinations TArray<FVector>
---@param EndDistance float
---@param Speed float
---@param UsePartialPath boolean
---@return UMercunaMoveToProxy
function UMercunaMoveToProxy:MercunaMoveToLocations(WorldContextObject, Pawn, Destinations, EndDistance, Speed, UsePartialPath) end
---@param WorldContextObject UObject
---@param Pawn APawn
---@param Destination FVector
---@param EndDistance float
---@param Speed float
---@param UsePartialPath boolean
---@return UMercunaMoveToProxy
function UMercunaMoveToProxy:MercunaMoveToLocation(WorldContextObject, Pawn, Destination, EndDistance, Speed, UsePartialPath) end
---@param WorldContextObject UObject
---@param Pawn APawn
---@param Actor AActor
---@param EndDistance float
---@param Speed float
---@param UsePartialPath boolean
---@return UMercunaMoveToProxy
function UMercunaMoveToProxy:MercunaMoveToActor(WorldContextObject, Pawn, Actor, EndDistance, Speed, UsePartialPath) end


---@class UMercunaNavSeedComponent : USceneComponent
local UMercunaNavSeedComponent = {}


---@class UMercunaNavStreamingManager : UObject
local UMercunaNavStreamingManager = {}


---@class UMercunaNavigationComponent : UActorComponent
---@field OnMoveCompleted FMercunaNavigationComponentOnMoveCompleted
---@field Configuration FMercunaNavigationConfiguration
---@field NavOctree AMercunaNavOctree
---@field Pathfinding boolean
---@field DynamicAvoidance boolean
---@field UsageFlags FMercunaPawnUsageFlags
local UMercunaNavigationComponent = {}

---@param Actor AActor
---@param Distance float
---@param Speed float
---@param SkipCheckNav boolean
function UMercunaNavigationComponent:TrackActor(Actor, Distance, Speed, SkipCheckNav) end
function UMercunaNavigationComponent:Stop() end
---@param UsageFlags FMercunaPawnUsageFlags
function UMercunaNavigationComponent:SetUsageFlags(UsageFlags) end
---@param NavOctree AMercunaNavOctree
function UMercunaNavigationComponent:SetNavOctree(NavOctree) end
---@param bEnable boolean
function UMercunaNavigationComponent:SetEnabled(bEnable) end
---@param Actor AActor
---@param Enable boolean
function UMercunaNavigationComponent:SetAvoidanceAgainst(Actor, Enable) end
function UMercunaNavigationComponent:ResumeNavigation() end
function UMercunaNavigationComponent:PauseNavigation() end
---@param Destinations TArray<FVector>
---@param EndDistance float
---@param Speed float
---@param UsePartialPath boolean
---@param SkipCheckNav boolean
function UMercunaNavigationComponent:MoveToLocations(Destinations, EndDistance, Speed, UsePartialPath, SkipCheckNav) end
---@param Destination FVector
---@param EndDistance float
---@param Speed float
---@param UsePartialPath boolean
---@param SkipCheckNav boolean
function UMercunaNavigationComponent:MoveToLocation(Destination, EndDistance, Speed, UsePartialPath, SkipCheckNav) end
---@param Actor AActor
---@param EndDistance float
---@param Speed float
---@param UsePartialPath boolean
---@param SkipCheckNav boolean
function UMercunaNavigationComponent:MoveToActor(Actor, EndDistance, Speed, UsePartialPath, SkipCheckNav) end
---@param RequestID FAIRequestID
---@param Result EMercunaMoveResult::Type
function UMercunaNavigationComponent:MercunaMoveComplete__DelegateSignature(RequestID, Result) end
---@param Direction FVector
---@param MaxPitch float
function UMercunaNavigationComponent:LookInDirection(Direction, MaxPitch) end
---@param Actor AActor
---@param MaxPitch float
function UMercunaNavigationComponent:LookAt(Actor, MaxPitch) end
---@param Point FVector
---@param Success boolean
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UMercunaNavigationComponent:IsReachable(Point, Success, WorldContextObject, LatentInfo) end
---@param Valid boolean
---@param DistanceToEnd float
---@param NextPathPoint FVector
---@param bIsFinalPoint boolean
function UMercunaNavigationComponent:GetPathInfo(Valid, DistanceToEnd, NextPathPoint, bIsFinalPoint) end
---@return AMercunaNavOctree
function UMercunaNavigationComponent:GetNavOctree() end
---@param bUsePathfinding boolean
---@param bUseDynamicAvoidance boolean
function UMercunaNavigationComponent:ConfigureMovement(bUsePathfinding, bUseDynamicAvoidance) end
---@param NewConfiguration FMercunaNavigationConfiguration
function UMercunaNavigationComponent:Configure(NewConfiguration) end
function UMercunaNavigationComponent:ClearAvoidanceExclusions() end
---@param Point FVector
---@param Success boolean
---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
function UMercunaNavigationComponent:CheckReachable(Point, Success, WorldContextObject, LatentInfo) end
function UMercunaNavigationComponent:CancelMovement() end
function UMercunaNavigationComponent:CancelLookAt() end
---@param NextDestination FVector
function UMercunaNavigationComponent:AddDestinationLocation(NextDestination) end


---@class UMercunaObstacleComponent : USceneComponent
---@field bAutomatic boolean
---@field Radius float
local UMercunaObstacleComponent = {}



---@class UMercunaOctreeSettings : UDataAsset
---@field OctreeData FMercunaOctreeData
local UMercunaOctreeSettings = {}



---@class UMercunaPath : UObject
---@field PathUpdated FMercunaPathPathUpdated
local UMercunaPath = {}

---@return boolean
function UMercunaPath:IsValid() end
---@return boolean
function UMercunaPath:IsReady() end
---@return boolean
function UMercunaPath:IsPartial() end
---@param i int32
---@return FVector
function UMercunaPath:GetPoint(i) end
---@return float
function UMercunaPath:GetPathLength() end
---@return int32
function UMercunaPath:GetNumPoints() end
---@param nodesUsed int32
---@param bOutOfNodes boolean
---@param queryTime float
function UMercunaPath:GetDebugInfo(nodesUsed, bOutOfNodes, queryTime) end


---@class UMercunaQueryTest : UEnvQueryTest
local UMercunaQueryTest = {}


---@class UMercunaRaycastProxy : UBlueprintAsyncActionBase
---@field OnHit FMercunaRaycastProxyOnHit
---@field OnNoHit FMercunaRaycastProxyOnNoHit
local UMercunaRaycastProxy = {}

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param NavigationRadius float
---@return UMercunaRaycastProxy
function UMercunaRaycastProxy:MercunaRaycast(WorldContextObject, Start, End, NavigationRadius) end


---@class UMercunaSpline : UObject
---@field SplineUpdated FMercunaSplineSplineUpdated
local UMercunaSpline = {}

---@return boolean
function UMercunaSpline:IsValid() end
---@return boolean
function UMercunaSpline:IsReady() end
---@return boolean
function UMercunaSpline:IsPartial() end
---@return TArray<FSplinePoint>
function UMercunaSpline:GetSplinePoints() end
---@param i int32
---@return FVector
function UMercunaSpline:GetPathPoint(i) end
---@return int32
function UMercunaSpline:GetNumPathPoints() end
---@return float
function UMercunaSpline:GetLength() end


---@class UMercunaTask_MoveTo : UAITask
---@field OnRequestFailed FMercunaTask_MoveToOnRequestFailed
---@field OnMoveFinished FMercunaTask_MoveToOnMoveFinished
local UMercunaTask_MoveTo = {}

---@param RequestID FAIRequestID
---@param Result EMercunaMoveResult::Type
function UMercunaTask_MoveTo:OnMoveComplete(RequestID, Result) end
---@param Controller AAIController
---@param GoalLocation FVector
---@param GoalActor AActor
---@param EndDistance float
---@param AcceptPartialPath boolean
---@param bLockAILogic boolean
---@return UMercunaTask_MoveTo
function UMercunaTask_MoveTo:MercunaMoveTo(Controller, GoalLocation, GoalActor, EndDistance, AcceptPartialPath, bLockAILogic) end


---@class UMercunaTrackActorProxy : UBlueprintAsyncActionBase
---@field OnFailure FMercunaTrackActorProxyOnFailure
local UMercunaTrackActorProxy = {}

---@param RequestID FAIRequestID
---@param Result EMercunaMoveResult::Type
function UMercunaTrackActorProxy:OnMoveComplete(RequestID, Result) end
---@param WorldContextObject UObject
---@param Pawn APawn
---@param Actor AActor
---@param Distance float
---@param Speed float
---@return UMercunaTrackActorProxy
function UMercunaTrackActorProxy:MercunaTrackActor(WorldContextObject, Pawn, Actor, Distance, Speed) end


