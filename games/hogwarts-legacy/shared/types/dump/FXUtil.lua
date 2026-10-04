---@meta

---@class AAttachCameraActor : AActor
---@field AttachCamera UAttachCameraComponent
local AAttachCameraActor = {}



---@class AFXAutoTriggerSingleton : AActor
---@field Globals UFXAutoTriggerGlobalDefinitionAsset
---@field FX FFXAutoTriggerRunningFXCollection
---@field KeyMaterialBundles TMap<FName, UMaterialPermuterLoadingBundle>
local AFXAutoTriggerSingleton = {}

---@param WorldContextObject UObject
---@param WorldConditionName FName
---@param bEnabled boolean
function AFXAutoTriggerSingleton:SetWorldCustomCondition(WorldContextObject, WorldConditionName, bEnabled) end
---@param Actor AActor
---@param ActorConditionName FName
---@param bEnabled boolean
function AFXAutoTriggerSingleton:SetActorCustomCondition(Actor, ActorConditionName, bEnabled) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actors TArray<AActor>
---@param bResult boolean
function AFXAutoTriggerSingleton:RemoveManualActors(WorldContextObject, FXName, Actors, bResult) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param bResult boolean
function AFXAutoTriggerSingleton:RemoveManualActor(WorldContextObject, FXName, Actor, bResult) end
---@param Actor AActor
---@param CustomBucket FName
function AFXAutoTriggerSingleton:RemoveCustomBucketActor(Actor, CustomBucket) end
---@param Actor AActor
---@param ActorClass UClass
function AFXAutoTriggerSingleton:RemoveActorByClass(Actor, ActorClass) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param bResult boolean
---@param bTrigger boolean
function AFXAutoTriggerSingleton:ManuallyTriggerPrerequisite(WorldContextObject, FXName, bResult, bTrigger) end
---@param WorldContextObject UObject
---@param FXOwner UObject
---@param FXAutoTriggerDefinition UFXAutoTriggerDefinitionAsset
---@param bResult boolean
function AFXAutoTriggerSingleton:KillAutoTriggerFX(WorldContextObject, FXOwner, FXAutoTriggerDefinition, bResult) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param bResult boolean
function AFXAutoTriggerSingleton:IsManualPrerequisiteTriggered(WorldContextObject, FXName, bResult) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param bResult boolean
function AFXAutoTriggerSingleton:HasManualActor(WorldContextObject, FXName, Actor, bResult) end
---@param WorldContextObject UObject
---@param FXOwner UObject
---@param FXAutoTriggerDefinition UFXAutoTriggerDefinitionAsset
---@param bResult boolean
function AFXAutoTriggerSingleton:HasAutoTriggerFX(WorldContextObject, FXOwner, FXAutoTriggerDefinition, bResult) end
---@param WorldContextObject UObject
---@param WorldConditionName FName
---@param bEnabled boolean
function AFXAutoTriggerSingleton:GetWorldCustomCondition(WorldContextObject, WorldConditionName, bEnabled) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param bIsActive boolean
function AFXAutoTriggerSingleton:GetEffectIsActive(WorldContextObject, FXName, Actor, bIsActive) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param FXHandle FMultiFX2Handle
function AFXAutoTriggerSingleton:GetEffectHandle(WorldContextObject, FXName, Actor, FXHandle) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param bAnyIsActive boolean
function AFXAutoTriggerSingleton:GetAnyEffectIsActive(WorldContextObject, FXName, bAnyIsActive) end
---@param Actor AActor
---@param ActorConditionName FName
---@param bEnabled boolean
function AFXAutoTriggerSingleton:GetActorCustomCondition(Actor, ActorConditionName, bEnabled) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param bIsDisabled boolean
function AFXAutoTriggerSingleton:EffectUpdatesDisabled(WorldContextObject, FXName, Actor, bIsDisabled) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param Parameter FName
---@param bIsDisabled boolean
function AFXAutoTriggerSingleton:EffectParameterUpdatesDisabled(WorldContextObject, FXName, Actor, Parameter, bIsDisabled) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param bDisableUpdates boolean
---@param bResult boolean
function AFXAutoTriggerSingleton:DisableEffectUpdates(WorldContextObject, FXName, Actor, bDisableUpdates, bResult) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param Parameter FName
---@param bDisableUpdates boolean
---@param bResult boolean
function AFXAutoTriggerSingleton:DisableEffectParameterUpdates(WorldContextObject, FXName, Actor, Parameter, bDisableUpdates, bResult) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actors TArray<AActor>
---@param bResult boolean
function AFXAutoTriggerSingleton:AddManualActors(WorldContextObject, FXName, Actors, bResult) end
---@param WorldContextObject UObject
---@param FXName FFXAutoTriggerAnyName
---@param Actor AActor
---@param bResult boolean
function AFXAutoTriggerSingleton:AddManualActor(WorldContextObject, FXName, Actor, bResult) end
---@param Actor AActor
---@param CustomBucket FName
function AFXAutoTriggerSingleton:AddCustomBucketActor(Actor, CustomBucket) end
---@param WorldContextObject UObject
---@param FXOwner UObject
---@param FXAutoTriggerDefinition UFXAutoTriggerDefinitionAsset
---@param bResult boolean
function AFXAutoTriggerSingleton:AddAutoTriggerFX(WorldContextObject, FXOwner, FXAutoTriggerDefinition, bResult) end
---@param Actor AActor
---@param ActorClass UClass
---@param ClassTag FName
function AFXAutoTriggerSingleton:AddActorByClass(Actor, ActorClass, ClassTag) end
---@param Actor AActor
---@param CustomBucket FName
---@param bIsIn boolean
function AFXAutoTriggerSingleton:ActorIsInCustomBucket(Actor, CustomBucket, bIsIn) end


---@class AObjectFadeMaster : AActor
---@field FadeMap TMap<TWeakObjectPtr<UObject>, FObjectfade>
local AObjectFadeMaster = {}

---@param Mesh UMeshComponent
---@param Setup FObjectFadeParamsEaseFunction
---@param FadeCompletedAction EObjectFadeCompletedAction
---@param TimeFactorOverride float
---@return boolean
function AObjectFadeMaster:MeshStartFadeEaseFunction(Mesh, Setup, FadeCompletedAction, TimeFactorOverride) end
---@param Mesh UMeshComponent
---@param Setup FObjectFadeParamsCurve
---@param FadeCompletedAction EObjectFadeCompletedAction
---@param TimeFactorOverride float
---@return boolean
function AObjectFadeMaster:MeshStartFadeDirectCurve(Mesh, Setup, FadeCompletedAction, TimeFactorOverride) end
---@param Mesh UMeshComponent
---@param Setup FObjectFadeParamsSpeedDuration
---@param FadeCompletedAction EObjectFadeCompletedAction
---@param TimeFactorOverride float
---@return boolean
function AObjectFadeMaster:MeshStartFade(Mesh, Setup, FadeCompletedAction, TimeFactorOverride) end
---@param Mesh UMeshComponent
---@param wasFading boolean
function AObjectFadeMaster:MeshRemoveFade(Mesh, wasFading) end
---@param Mesh UMeshComponent
---@param isFading boolean
---@param isDone boolean
function AObjectFadeMaster:MeshIsFadingOut(Mesh, isFading, isDone) end
---@param Mesh UMeshComponent
---@param isFading boolean
---@param isDone boolean
function AObjectFadeMaster:MeshIsFadingIn(Mesh, isFading, isDone) end
---@param Actor AActor
---@param Setup FObjectFadeParamsEaseFunction
---@param FadeCompletedAction EObjectFadeCompletedAction
---@param TimeFactorOverride float
---@return boolean
function AObjectFadeMaster:ActorStartFadeEaseFunction(Actor, Setup, FadeCompletedAction, TimeFactorOverride) end
---@param Actor AActor
---@param Setup FObjectFadeParamsCurve
---@param FadeCompletedAction EObjectFadeCompletedAction
---@param TimeFactorOverride float
---@return boolean
function AObjectFadeMaster:ActorStartFadeDirectCurve(Actor, Setup, FadeCompletedAction, TimeFactorOverride) end
---@param Actor AActor
---@param Setup FObjectFadeParamsSpeedDuration
---@param FadeCompletedAction EObjectFadeCompletedAction
---@param TimeFactorOverride float
---@return boolean
function AObjectFadeMaster:ActorStartFade(Actor, Setup, FadeCompletedAction, TimeFactorOverride) end
---@param Actor AActor
---@param Direction EObjectFadeDirection
---@param FadeState EObjectFadeMasterState
---@param Duration float
---@param FadeInCompletedAction EObjectFadeCompletedAction
---@param FadeOutCompletedAction EObjectFadeCompletedAction
---@param bFadeInIfNotInSystem boolean
function AObjectFadeMaster:ActorSetFadeInOut(Actor, Direction, FadeState, Duration, FadeInCompletedAction, FadeOutCompletedAction, bFadeInIfNotInSystem) end
---@param Actor AActor
---@param wasFading boolean
function AObjectFadeMaster:ActorRemoveFade(Actor, wasFading) end
---@param Actor AActor
---@param Direction EObjectFadeDirection
---@param FadeState EObjectFadeMasterState
---@param Duration float
function AObjectFadeMaster:ActorPingPongFade(Actor, Direction, FadeState, Duration) end
---@param Actor AActor
---@param isFading boolean
---@param isDone boolean
function AObjectFadeMaster:ActorIsFadingOut(Actor, isFading, isDone) end
---@param Actor AActor
---@param isFading boolean
---@param isDone boolean
function AObjectFadeMaster:ActorIsFadingIn(Actor, isFading, isDone) end


---@class FActiveTimeDilationEffect
---@field TimeDilationCurve UCurveFloat
local FActiveTimeDilationEffect = {}



---@class FActiveTimeDilationEffectGroup
---@field ActiveEffects TArray<FActiveTimeDilationEffect>
---@field CounterDilationEnabledCount int32
local FActiveTimeDilationEffectGroup = {}



---@class FAttachCameraEditorPlacement
---@field Position FVector
---@field Rotation FQuat
---@field AttachType EAttachCameraType
---@field bValid boolean
local FAttachCameraEditorPlacement = {}



---@class FCurveBuildingParams
---@field SamplesPerSecond int32
---@field MaxSamples int32
---@field MinValueChange float
---@field KeyOptimizeThreshold int32
---@field RedundantKeyTolerance float
---@field bOptimize boolean
---@field bCubic boolean
local FCurveBuildingParams = {}



---@class FDecalPointLightInfo
---@field IntensityUnits ELightUnits
---@field Intensity float
---@field LightColor FColor
---@field Temperature float
---@field AttenuationRadius float
---@field LightFalloffExponent float
---@field MinDistance float
---@field MaxDrawDistance float
---@field MaxDistanceFadeRange float
---@field bUseTemperature boolean
---@field bUseInverseSquaredFalloff boolean
---@field bVisible boolean
local FDecalPointLightInfo = {}



---@class FEasingFunction
---@field Easing EEasingFunc::Type
---@field BlendExp float
---@field Steps int32
local FEasingFunction = {}



---@class FFXAutoTriggerAnyName : FFXAutoTriggerNameBase
local FFXAutoTriggerAnyName = {}


---@class FFXAutoTriggerFXSpawnInfo
---@field Location FVector
---@field Rotation FRotator
---@field AttachPointName FName
local FFXAutoTriggerFXSpawnInfo = {}



---@class FFXAutoTriggerFXSpawnInfoWithActors : FFXAutoTriggerFXSpawnInfo
---@field Target AActor
---@field Instigator AActor
local FFXAutoTriggerFXSpawnInfoWithActors = {}



---@class FFXAutoTriggerFXTracker
---@field FXMap TMap<TWeakObjectPtr<AActor>, FFXAutoTriggerFXTrackerEntry>
local FFXAutoTriggerFXTracker = {}



---@class FFXAutoTriggerFXTrackerEntry
---@field FXHandle FMultiFX2Handle
---@field DisableParameterUpdates TArray<FName>
---@field SleepFrames int32
---@field Age int32
---@field TouchedFrame uint32
---@field bDisableActorUpdates boolean
local FFXAutoTriggerFXTrackerEntry = {}



---@class FFXAutoTriggerGlobalName : FFXAutoTriggerNameBase
local FFXAutoTriggerGlobalName = {}


---@class FFXAutoTriggerGroupName : FFXAutoTriggerNameBase
local FFXAutoTriggerGroupName = {}


---@class FFXAutoTriggerNameBase
---@field Name FName
local FFXAutoTriggerNameBase = {}



---@class FFXAutoTriggerRequiredActorsIterate
---@field ExternalBuckets TArray<FName>
---@field bMainActorList boolean
local FFXAutoTriggerRequiredActorsIterate = {}



---@class FFXAutoTriggerRunningFX
---@field Asset UFXAutoTriggerDefinitionAsset
---@field Owner TWeakObjectPtr<UObject>
---@field Tracker FFXAutoTriggerFXTracker
---@field bMeetsPrerequisite boolean
local FFXAutoTriggerRunningFX = {}



---@class FFXAutoTriggerRunningFXCollection : FFXAutoTriggerRunningFXList
---@field Globals UFXAutoTriggerGlobalDefinitionAsset
---@field Groups TArray<FFXAutoTriggerRunningFXGroup>
local FFXAutoTriggerRunningFXCollection = {}



---@class FFXAutoTriggerRunningFXGroup : FFXAutoTriggerRunningFXList
---@field Group UFXAutoTriggerGroupDefinitionAsset
local FFXAutoTriggerRunningFXGroup = {}



---@class FFXAutoTriggerRunningFXList
---@field FX TArray<FFXAutoTriggerRunningFX>
local FFXAutoTriggerRunningFXList = {}



---@class FFXNamedHandles
---@field NamedHandles TMap<FName, FMultiFX2Handle>
local FFXNamedHandles = {}



---@class FFXNamedHandlesSingleton
---@field Handles TMap<UWorld, FPerWorldFXNamedHandles>
local FFXNamedHandlesSingleton = {}



---@class FMillisecondUpdateTimer
---@field NextUpdate FDateTime
---@field UpdateRateMS float
---@field bEnabled boolean
local FMillisecondUpdateTimer = {}



---@class FMillisecondUpdateTracker
---@field LastUpdate FDateTime
---@field LastMS float
---@field AverageMS float
---@field AverageSamples int32
---@field AverageMaxSamples int32
---@field bAverageRollover boolean
local FMillisecondUpdateTracker = {}



---@class FObjectFadeParams
---@field Direction EObjectFadeDirection
---@field OpacityCurve FRuntimeFloatCurve
local FObjectFadeParams = {}



---@class FObjectFadeParamsCurve
---@field RuntimeCurve FRuntimeFloatCurve
---@field ExternalCurve UCurveFloat
local FObjectFadeParamsCurve = {}



---@class FObjectFadeParamsEaseFunction
---@field Direction EObjectFadeDirection
---@field Duration float
---@field EaseFunction FEasingFunction
local FObjectFadeParamsEaseFunction = {}



---@class FObjectFadeParamsSpeedDuration
---@field Direction EObjectFadeDirection
---@field Speed EObjectFadeSpeed
---@field Duration float
---@field bUseDuration boolean
local FObjectFadeParamsSpeedDuration = {}



---@class FObjectfade
---@field Params FObjectFadeParams
---@field TimeFactor float
---@field Age float
---@field Opacity float
---@field Delay float
---@field FadeCompletedAction EObjectFadeCompletedAction
---@field bDone boolean
---@field bReverseTime boolean
---@field bHiddenAtEnd boolean
local FObjectfade = {}



---@class FOverlapEffectsHandlerConditions
---@field InstigatorCondition UFXAutoTriggerBool
---@field VictimCondition UFXAutoTriggerBool
---@field Logic EOverlapEffectsHandlerConditionLogic
local FOverlapEffectsHandlerConditions = {}



---@class FOverlapEffectsHandlerInstancedFoliageBVHTestEntry
---@field FoliageTypes TArray<TSoftObjectPtr<UFoliageType>>
---@field Effects TArray<UOverlapEffectsHandlerEffect>
---@field ActorXYBoundsPercent float
---@field NextUpdate float
---@field bReadyToTest boolean
local FOverlapEffectsHandlerInstancedFoliageBVHTestEntry = {}



---@class FOverlapEffectsHandlerWindSpeedEntry
---@field ClothingTypes int32
---@field StartEndSpeed FVector2D
---@field Mode EWindSpeedOverlapEffectsMode
---@field StartEffects TArray<UOverlapEffectsHandlerEffect>
---@field EndEffects TArray<UOverlapEffectsHandlerEffect>
---@field bStopProcessingWithClothingMatch boolean
---@field bUseStartEndSpeedMS boolean
---@field bUseMode boolean
---@field bHasStartedEffects boolean
local FOverlapEffectsHandlerWindSpeedEntry = {}



---@class FOverlapEffectsVelocityTracker
---@field VelocityDirection FVector
---@field Speed float
---@field AngularVelocity float
---@field LastPosition FVector
---@field LastForward FVector
---@field LastDistanceMoved float
---@field bInitialized boolean
local FOverlapEffectsVelocityTracker = {}



---@class FPerWorldFXNamedHandles
---@field Global FFXNamedHandles
---@field Targets TMap<TWeakObjectPtr<UObject>, FFXNamedHandles>
local FPerWorldFXNamedHandles = {}



---@class FXAutoTriggerCustomConditions
---@field Conditions TMap<UWorld, FXAutoTriggerPerWorldCustomConditions>
local FXAutoTriggerCustomConditions = {}



---@class FXAutoTriggerCustomConditionsSet
---@field Bools TArray<FName>
local FXAutoTriggerCustomConditionsSet = {}



---@class FXAutoTriggerPerWorldCustomConditions
---@field Conditions TMap<TWeakObjectPtr<AActor>, FXAutoTriggerCustomConditionsSet>
---@field WorldConditions FXAutoTriggerCustomConditionsSet
local FXAutoTriggerPerWorldCustomConditions = {}



---@class UAttachCameraComponent : USceneComponent
---@field AttachType EAttachCameraType
---@field BillBoardType EAttachCameraBillBoardType
---@field LocalOffset FVector
---@field LocalRotator FRotator
---@field bCopyToRootComponent boolean
---@field bEnable boolean
---@field bEnableInEditor boolean
local UAttachCameraComponent = {}

---@param copyToRootComponent boolean
function UAttachCameraComponent:SetupCopyToRootComponent(copyToRootComponent) end
function UAttachCameraComponent:ResetChildRotations() end
function UAttachCameraComponent:ResetChildLocations() end
function UAttachCameraComponent:ResetAllChildren() end
---@param Rotation FRotator
---@return boolean
function UAttachCameraComponent:GetCameraRotation(Rotation) end
---@param Eye FVector
---@return boolean
function UAttachCameraComponent:GetCameraLocation(Eye) end
---@param Eye FVector
---@param Orientation FRotator
---@return boolean
function UAttachCameraComponent:GetCamera(Eye, Orientation) end


---@class UCurveHelpersEaseUnitTest : UCurveHelpersSimpleUnitTest
---@field Easing FEasingFunction
local UCurveHelpersEaseUnitTest = {}



---@class UCurveHelpersFilterUnitTest : UCurveHelpersUnitTest
---@field TimeConstant float
---@field Speed float
---@field SolveTolerance float
local UCurveHelpersFilterUnitTest = {}



---@class UCurveHelpersSimpleUnitTest : UCurveHelpersUnitTest
---@field Start float
---@field Duration float
local UCurveHelpersSimpleUnitTest = {}



---@class UCurveHelpersUnitTest : UDataAsset
---@field Curve FRuntimeFloatCurve
---@field MinValue float
---@field MaxValue float
---@field Params FCurveBuildingParams
local UCurveHelpersUnitTest = {}

function UCurveHelpersUnitTest:Update() end


---@class UDEPRECATED_FXAutoTriggerDefinitionBatchAsset : UDataAsset
local UDEPRECATED_FXAutoTriggerDefinitionBatchAsset = {}


---@class UDecalPointLightComponent : UDecalPointLightComponentBase
---@field Info FDecalPointLightInfo
local UDecalPointLightComponent = {}

---@param NewInfo FDecalPointLightInfo
function UDecalPointLightComponent:SetDecalPointLightInfo(NewInfo) end


---@class UDecalPointLightComponentBase : UDecalComponent
---@field InverseSquaredDecalMaterial UMaterialInterface
---@field FalloffExponentDecalMaterial UMaterialInterface
---@field DecalMID UMaterialInstanceDynamic
---@field DecalMIDParent UMaterialInterface
local UDecalPointLightComponentBase = {}

function UDecalPointLightComponentBase:UpdateDecal() end
---@param NewInverseSquaredDecalMaterial UMaterialInterface
function UDecalPointLightComponentBase:SetInverseSquaredDecalMaterial(NewInverseSquaredDecalMaterial) end
---@param NewFalloffExponentDecalMaterial UMaterialInterface
function UDecalPointLightComponentBase:SetFalloffExponentDecalMaterial(NewFalloffExponentDecalMaterial) end


---@class UFXAutoTriggerBool : UFXAutoTriggerValue
local UFXAutoTriggerBool = {}


---@class UFXAutoTriggerBoolAnd : UFXAutoTriggerBoolTwoParams
local UFXAutoTriggerBoolAnd = {}


---@class UFXAutoTriggerBoolAndList : UFXAutoTriggerBoolParamList
local UFXAutoTriggerBoolAndList = {}


---@class UFXAutoTriggerBoolConsoleVariable : UFXAutoTriggerBool
---@field ConsoleVariable FName
local UFXAutoTriggerBoolConsoleVariable = {}



---@class UFXAutoTriggerBoolEffectActive : UFXAutoTriggerBool
local UFXAutoTriggerBoolEffectActive = {}


---@class UFXAutoTriggerBoolEqual : UFXAutoTriggerBoolTwoScalarParams
---@field Threshold float
local UFXAutoTriggerBoolEqual = {}



---@class UFXAutoTriggerBoolFloorIsWalkable : UFXAutoTriggerBool
---@field FramesPerUpdate int32
local UFXAutoTriggerBoolFloorIsWalkable = {}



---@class UFXAutoTriggerBoolGreaterThan : UFXAutoTriggerBoolTwoScalarParams
local UFXAutoTriggerBoolGreaterThan = {}


---@class UFXAutoTriggerBoolGreaterThanOrEqualHalf : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolGreaterThanOrEqualHalf = {}


---@class UFXAutoTriggerBoolGreaterThanOrEqualTo : UFXAutoTriggerBoolTwoScalarParams
local UFXAutoTriggerBoolGreaterThanOrEqualTo = {}


---@class UFXAutoTriggerBoolGreaterThanZero : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolGreaterThanZero = {}


---@class UFXAutoTriggerBoolInBetween : UFXAutoTriggerBoolThreeScalarParams
local UFXAutoTriggerBoolInBetween = {}


---@class UFXAutoTriggerBoolInBetweenEqual : UFXAutoTriggerBoolThreeScalarParams
local UFXAutoTriggerBoolInBetweenEqual = {}


---@class UFXAutoTriggerBoolIsDevelopment : UFXAutoTriggerBool
local UFXAutoTriggerBoolIsDevelopment = {}


---@class UFXAutoTriggerBoolIsOne : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolIsOne = {}


---@class UFXAutoTriggerBoolIsZero : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolIsZero = {}


---@class UFXAutoTriggerBoolLessThan : UFXAutoTriggerBoolTwoScalarParams
local UFXAutoTriggerBoolLessThan = {}


---@class UFXAutoTriggerBoolLessThanHalf : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolLessThanHalf = {}


---@class UFXAutoTriggerBoolLessThanOrEqualTo : UFXAutoTriggerBoolTwoScalarParams
local UFXAutoTriggerBoolLessThanOrEqualTo = {}


---@class UFXAutoTriggerBoolLessThanZero : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolLessThanZero = {}


---@class UFXAutoTriggerBoolNot : UFXAutoTriggerBoolSingleParam
local UFXAutoTriggerBoolNot = {}


---@class UFXAutoTriggerBoolNotEqual : UFXAutoTriggerBoolTwoScalarParams
---@field Threshold float
local UFXAutoTriggerBoolNotEqual = {}



---@class UFXAutoTriggerBoolNotOne : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolNotOne = {}


---@class UFXAutoTriggerBoolNotZero : UFXAutoTriggerBoolScalarParam
local UFXAutoTriggerBoolNotZero = {}


---@class UFXAutoTriggerBoolOr : UFXAutoTriggerBoolTwoParams
local UFXAutoTriggerBoolOr = {}


---@class UFXAutoTriggerBoolOrList : UFXAutoTriggerBoolParamList
local UFXAutoTriggerBoolOrList = {}


---@class UFXAutoTriggerBoolPIE : UFXAutoTriggerBool
local UFXAutoTriggerBoolPIE = {}


---@class UFXAutoTriggerBoolParamList : UFXAutoTriggerBool
---@field Conditions TArray<UFXAutoTriggerBool>
local UFXAutoTriggerBoolParamList = {}



---@class UFXAutoTriggerBoolScalarParam : UFXAutoTriggerBool
---@field Scalar UFXAutoTriggerScalar
local UFXAutoTriggerBoolScalarParam = {}



---@class UFXAutoTriggerBoolSingleParam : UFXAutoTriggerBool
---@field Value UFXAutoTriggerBool
local UFXAutoTriggerBoolSingleParam = {}



---@class UFXAutoTriggerBoolThreeScalarParams : UFXAutoTriggerBool
---@field A UFXAutoTriggerScalar
---@field b UFXAutoTriggerScalar
---@field C UFXAutoTriggerScalar
local UFXAutoTriggerBoolThreeScalarParams = {}



---@class UFXAutoTriggerBoolTwoParams : UFXAutoTriggerBool
---@field A UFXAutoTriggerBool
---@field b UFXAutoTriggerBool
local UFXAutoTriggerBoolTwoParams = {}



---@class UFXAutoTriggerBoolTwoScalarParams : UFXAutoTriggerBool
---@field A UFXAutoTriggerScalar
---@field b UFXAutoTriggerScalar
local UFXAutoTriggerBoolTwoScalarParams = {}



---@class UFXAutoTriggerBoolXor : UFXAutoTriggerBoolTwoParams
local UFXAutoTriggerBoolXor = {}


---@class UFXAutoTriggerBoolXorList : UFXAutoTriggerBoolParamList
local UFXAutoTriggerBoolXorList = {}


---@class UFXAutoTriggerCondition : UFXAutoTriggerConditionBase
---@field Type EFXAutoTriggerConditionType
local UFXAutoTriggerCondition = {}



---@class UFXAutoTriggerConditionBase : UObject
local UFXAutoTriggerConditionBase = {}


---@class UFXAutoTriggerConditionBool : UFXAutoTriggerCondition
---@field Condition UFXAutoTriggerBool
---@field SpawnInfo FFXAutoTriggerFXSpawnInfo
---@field bUseSpawnInfo boolean
local UFXAutoTriggerConditionBool = {}



---@class UFXAutoTriggerConditionIsSwappable : UFXAutoTriggerConditionBase
---@field Key FMaterialPermuterKeyProperty
local UFXAutoTriggerConditionIsSwappable = {}



---@class UFXAutoTriggerConditionList : UFXAutoTriggerConditionBase
---@field Conditions TArray<UFXAutoTriggerConditionBase>
local UFXAutoTriggerConditionList = {}



---@class UFXAutoTriggerCustomActorConditionBool : UFXAutoTriggerBool
---@field CustomCondition FName
local UFXAutoTriggerCustomActorConditionBool = {}



---@class UFXAutoTriggerCustomWorldConditionBool : UFXAutoTriggerBool
---@field CustomCondition FName
local UFXAutoTriggerCustomWorldConditionBool = {}



---@class UFXAutoTriggerDefinitionAsset : UDataAsset
---@field Name FName
---@field Prerequisite UFXAutoTriggerPrerequisiteBase
---@field RequiredActors UFXAutoTriggerRequiredActorsBase
---@field TriggerCondition UFXAutoTriggerConditionBase
---@field Updates TArray<UFXAutoTriggerUpdateBase>
---@field FX TArray<FMultiFX2Var>
---@field DefaultSpawnInfo FFXAutoTriggerFXSpawnInfo
---@field SleepWhenFinishingImmediately int32
---@field SleepWhenStartFails int32
local UFXAutoTriggerDefinitionAsset = {}



---@class UFXAutoTriggerGlobalDefinitionAsset : UDataAsset
---@field GlobalDefinitions TArray<UFXAutoTriggerDefinitionAsset>
---@field GroupDefinitions TArray<UFXAutoTriggerGroupDefinitionAsset>
---@field GlobalPrerequisites TArray<UFXAutoTriggerPrerequisiteBase>
---@field GlobalNames TMap<FName, UFXAutoTriggerDefinitionAsset>
local UFXAutoTriggerGlobalDefinitionAsset = {}



---@class UFXAutoTriggerGroupDefinitionAsset : UDataAsset
---@field Group FName
---@field GroupPrerequisites TArray<UFXAutoTriggerPrerequisiteBase>
---@field Definitions TArray<UFXAutoTriggerDefinitionAsset>
---@field bRunWithGlobalActors boolean
---@field GroupNames TMap<FName, UFXAutoTriggerDefinitionAsset>
local UFXAutoTriggerGroupDefinitionAsset = {}



---@class UFXAutoTriggerLinearColor : UFXAutoTriggerValue
local UFXAutoTriggerLinearColor = {}


---@class UFXAutoTriggerLinearColorConstant : UFXAutoTriggerLinearColor
---@field Color FLinearColor
local UFXAutoTriggerLinearColorConstant = {}



---@class UFXAutoTriggerLinearColorCurve : UFXAutoTriggerLinearColor
---@field Curve UCurveLinearColor
---@field XAxis UFXAutoTriggerScalar
local UFXAutoTriggerLinearColorCurve = {}



---@class UFXAutoTriggerLinearScaleColor : UFXAutoTriggerLinearColor
---@field Color UFXAutoTriggerLinearColor
---@field Scale UFXAutoTriggerScalar
local UFXAutoTriggerLinearScaleColor = {}



---@class UFXAutoTriggerLinearSelectColor : UFXAutoTriggerLinearColor
---@field Condition UFXAutoTriggerBool
---@field ColorTrue UFXAutoTriggerLinearColor
---@field ColorFalse UFXAutoTriggerLinearColor
local UFXAutoTriggerLinearSelectColor = {}



---@class UFXAutoTriggerLinearSelectColorConst : UFXAutoTriggerLinearColor
---@field Condition UFXAutoTriggerBool
---@field ColorTrue FLinearColor
---@field ColorFalse FLinearColor
local UFXAutoTriggerLinearSelectColorConst = {}



---@class UFXAutoTriggerPrerequisiteAnd : UFXAutoTriggerPrerequisiteBase
---@field Conditions TArray<UFXAutoTriggerPrerequisiteBase>
local UFXAutoTriggerPrerequisiteAnd = {}



---@class UFXAutoTriggerPrerequisiteBase : UObject
local UFXAutoTriggerPrerequisiteBase = {}


---@class UFXAutoTriggerPrerequisiteBool : UFXAutoTriggerPrerequisiteBase
---@field Condition UFXAutoTriggerBool
local UFXAutoTriggerPrerequisiteBool = {}



---@class UFXAutoTriggerPrerequisiteDevelopmentOnly : UFXAutoTriggerPrerequisiteBase
local UFXAutoTriggerPrerequisiteDevelopmentOnly = {}


---@class UFXAutoTriggerPrerequisiteDisabled : UFXAutoTriggerPrerequisiteBase
local UFXAutoTriggerPrerequisiteDisabled = {}


---@class UFXAutoTriggerPrerequisiteIsBundleLoaded : UFXAutoTriggerPrerequisiteBase
---@field Key FMaterialPermuterKeyProperty
---@field Priority EMaterialPermuterLoadingPriority
local UFXAutoTriggerPrerequisiteIsBundleLoaded = {}



---@class UFXAutoTriggerPrerequisiteNot : UFXAutoTriggerPrerequisiteBase
---@field Condition UFXAutoTriggerPrerequisiteBase
local UFXAutoTriggerPrerequisiteNot = {}



---@class UFXAutoTriggerPrerequisiteOr : UFXAutoTriggerPrerequisiteBase
---@field Conditions TArray<UFXAutoTriggerPrerequisiteBase>
local UFXAutoTriggerPrerequisiteOr = {}



---@class UFXAutoTriggerPrerequisitePIEOnly : UFXAutoTriggerPrerequisiteBase
local UFXAutoTriggerPrerequisitePIEOnly = {}


---@class UFXAutoTriggerRequiredActorMatchCustomBucket : UFXAutoTriggerRequiredActorsMatchBase
---@field CustomBucket FName
local UFXAutoTriggerRequiredActorMatchCustomBucket = {}



---@class UFXAutoTriggerRequiredActorMatchHasComponent : UFXAutoTriggerRequiredActorsMatchBase
---@field HasComponentType TSoftClassPtr<UActorComponent>
local UFXAutoTriggerRequiredActorMatchHasComponent = {}



---@class UFXAutoTriggerRequiredActorMatchHasSocket : UFXAutoTriggerRequiredActorsMatchBase
---@field SocketName FName
---@field bSearchAllChildComponents boolean
local UFXAutoTriggerRequiredActorMatchHasSocket = {}



---@class UFXAutoTriggerRequiredActorMatchIsNotPlayer : UFXAutoTriggerRequiredActorsMatchBase
local UFXAutoTriggerRequiredActorMatchIsNotPlayer = {}


---@class UFXAutoTriggerRequiredActorMatchIsPlayer : UFXAutoTriggerRequiredActorsMatchBase
local UFXAutoTriggerRequiredActorMatchIsPlayer = {}


---@class UFXAutoTriggerRequiredActorsBase : UObject
local UFXAutoTriggerRequiredActorsBase = {}


---@class UFXAutoTriggerRequiredActorsCharacterSubClass : UFXAutoTriggerRequiredActorsCharacters
---@field CharacterType TSoftClassPtr<ACharacter>
local UFXAutoTriggerRequiredActorsCharacterSubClass = {}



---@class UFXAutoTriggerRequiredActorsCharacters : UFXAutoTriggerRequiredActorsBase
local UFXAutoTriggerRequiredActorsCharacters = {}


---@class UFXAutoTriggerRequiredActorsCustomBucket : UFXAutoTriggerRequiredActorsBase
---@field CustomBucket FName
local UFXAutoTriggerRequiredActorsCustomBucket = {}



---@class UFXAutoTriggerRequiredActorsExternalBucket : UFXAutoTriggerRequiredActorsBase
---@field ExternalBucket FName
---@field Condition UFXAutoTriggerRequiredActorsMatchBase
local UFXAutoTriggerRequiredActorsExternalBucket = {}



---@class UFXAutoTriggerRequiredActorsExternalBucketFilter : UObject
local UFXAutoTriggerRequiredActorsExternalBucketFilter = {}


---@class UFXAutoTriggerRequiredActorsList : UFXAutoTriggerRequiredActorsBase
---@field RequiredActors TArray<UFXAutoTriggerRequiredActorsBase>
local UFXAutoTriggerRequiredActorsList = {}



---@class UFXAutoTriggerRequiredActorsMatch : UFXAutoTriggerRequiredActorsBase
---@field ActorType TSoftClassPtr<AActor>
---@field Condition UFXAutoTriggerRequiredActorsMatchBase
local UFXAutoTriggerRequiredActorsMatch = {}



---@class UFXAutoTriggerRequiredActorsMatchAnd : UFXAutoTriggerRequiredActorsMatchBase
---@field Conditions TArray<UFXAutoTriggerRequiredActorsMatchBase>
local UFXAutoTriggerRequiredActorsMatchAnd = {}



---@class UFXAutoTriggerRequiredActorsMatchBase : UObject
local UFXAutoTriggerRequiredActorsMatchBase = {}


---@class UFXAutoTriggerRequiredActorsMatchChildOf : UFXAutoTriggerRequiredActorsMatchBase
---@field ParentActorType TSoftClassPtr<AActor>
local UFXAutoTriggerRequiredActorsMatchChildOf = {}



---@class UFXAutoTriggerRequiredActorsMatchName : UFXAutoTriggerRequiredActorsMatchBase
---@field STARTSWITH FString
---@field bIgnoreCase boolean
local UFXAutoTriggerRequiredActorsMatchName = {}



---@class UFXAutoTriggerRequiredActorsMatchNameContains : UFXAutoTriggerRequiredActorsMatchBase
---@field CONTAINS FString
---@field bIgnoreCase boolean
local UFXAutoTriggerRequiredActorsMatchNameContains = {}



---@class UFXAutoTriggerRequiredActorsMatchNot : UFXAutoTriggerRequiredActorsMatchBase
---@field Condition UFXAutoTriggerRequiredActorsMatchBase
local UFXAutoTriggerRequiredActorsMatchNot = {}



---@class UFXAutoTriggerRequiredActorsMatchNotOfTypes : UFXAutoTriggerRequiredActorsMatchBase
---@field NotOfActorTypes TArray<TSoftClassPtr<AActor>>
local UFXAutoTriggerRequiredActorsMatchNotOfTypes = {}



---@class UFXAutoTriggerRequiredActorsMatchOr : UFXAutoTriggerRequiredActorsMatchBase
---@field Conditions TArray<UFXAutoTriggerRequiredActorsMatchBase>
local UFXAutoTriggerRequiredActorsMatchOr = {}



---@class UFXAutoTriggerRequiredActorsMatchTag : UFXAutoTriggerRequiredActorsMatchBase
---@field ActorTag FName
local UFXAutoTriggerRequiredActorsMatchTag = {}



---@class UFXAutoTriggerRequiredActorsMatchTags : UFXAutoTriggerRequiredActorsMatchBase
---@field ActorTags TArray<FName>
local UFXAutoTriggerRequiredActorsMatchTags = {}



---@class UFXAutoTriggerRequiredActorsMatchTagsAny : UFXAutoTriggerRequiredActorsMatchTags
local UFXAutoTriggerRequiredActorsMatchTagsAny = {}


---@class UFXAutoTriggerRequiredActorsMatchTagsNotAny : UFXAutoTriggerRequiredActorsMatchTags
local UFXAutoTriggerRequiredActorsMatchTagsNotAny = {}


---@class UFXAutoTriggerRequiredActorsMatchTypes : UFXAutoTriggerRequiredActorsMatchBase
---@field ActorTypes TArray<TSoftClassPtr<AActor>>
local UFXAutoTriggerRequiredActorsMatchTypes = {}



---@class UFXAutoTriggerRequiredActorsPlayer : UFXAutoTriggerRequiredActorsBase
local UFXAutoTriggerRequiredActorsPlayer = {}


---@class UFXAutoTriggerRequiredActorsSimple : UFXAutoTriggerRequiredActorsBase
---@field ActorType TSoftClassPtr<AActor>
local UFXAutoTriggerRequiredActorsSimple = {}



---@class UFXAutoTriggerScalar : UFXAutoTriggerValue
local UFXAutoTriggerScalar = {}


---@class UFXAutoTriggerScalarAbs : UFXAutoTriggerScalarSingleParam
local UFXAutoTriggerScalarAbs = {}


---@class UFXAutoTriggerScalarAdd : UFXAutoTriggerScalarTwoParams
local UFXAutoTriggerScalarAdd = {}


---@class UFXAutoTriggerScalarAddThreeParams : UFXAutoTriggerScalarThreeParams
local UFXAutoTriggerScalarAddThreeParams = {}


---@class UFXAutoTriggerScalarClamp : UFXAutoTriggerScalar
---@field Value UFXAutoTriggerScalar
---@field Minimum UFXAutoTriggerScalar
---@field Maximum UFXAutoTriggerScalar
local UFXAutoTriggerScalarClamp = {}



---@class UFXAutoTriggerScalarClampConstant : UFXAutoTriggerScalarSingleParam
---@field Minimum float
---@field Maximum float
local UFXAutoTriggerScalarClampConstant = {}



---@class UFXAutoTriggerScalarConsoleVariable : UFXAutoTriggerScalar
---@field ConsoleVariable FName
local UFXAutoTriggerScalarConsoleVariable = {}



---@class UFXAutoTriggerScalarConstantFalse : UFXAutoTriggerBool
local UFXAutoTriggerScalarConstantFalse = {}


---@class UFXAutoTriggerScalarConstantOne : UFXAutoTriggerScalar
local UFXAutoTriggerScalarConstantOne = {}


---@class UFXAutoTriggerScalarConstantTrue : UFXAutoTriggerBool
local UFXAutoTriggerScalarConstantTrue = {}


---@class UFXAutoTriggerScalarConstantValue : UFXAutoTriggerScalar
---@field Value float
local UFXAutoTriggerScalarConstantValue = {}



---@class UFXAutoTriggerScalarConstantValuePercent : UFXAutoTriggerScalar
---@field Value float
local UFXAutoTriggerScalarConstantValuePercent = {}



---@class UFXAutoTriggerScalarConstantValueSquared : UFXAutoTriggerScalar
---@field Value float
local UFXAutoTriggerScalarConstantValueSquared = {}



---@class UFXAutoTriggerScalarConstantZero : UFXAutoTriggerScalar
local UFXAutoTriggerScalarConstantZero = {}


---@class UFXAutoTriggerScalarCurve : UFXAutoTriggerScalarSingleParam
---@field Curve UCurveFloat
local UFXAutoTriggerScalarCurve = {}



---@class UFXAutoTriggerScalarDivide : UFXAutoTriggerScalarTwoParams
---@field DivideByZero float
local UFXAutoTriggerScalarDivide = {}



---@class UFXAutoTriggerScalarEffectAge : UFXAutoTriggerScalar
local UFXAutoTriggerScalarEffectAge = {}


---@class UFXAutoTriggerScalarFloorDistance : UFXAutoTriggerScalar
---@field NoFloorDistance float
---@field FramesPerUpdate int32
local UFXAutoTriggerScalarFloorDistance = {}



---@class UFXAutoTriggerScalarFromBool : UFXAutoTriggerScalar
---@field Condition UFXAutoTriggerBool
---@field TrueValue float
---@field FalseValue float
local UFXAutoTriggerScalarFromBool = {}



---@class UFXAutoTriggerScalarFromBoolSelect : UFXAutoTriggerScalar
---@field Condition UFXAutoTriggerBool
---@field TrueValue UFXAutoTriggerScalar
---@field FalseValue UFXAutoTriggerScalar
local UFXAutoTriggerScalarFromBoolSelect = {}



---@class UFXAutoTriggerScalarInvert : UFXAutoTriggerScalarSingleParam
---@field DivideByZero float
local UFXAutoTriggerScalarInvert = {}



---@class UFXAutoTriggerScalarLerp : UFXAutoTriggerScalar
---@field A UFXAutoTriggerScalar
---@field b UFXAutoTriggerScalar
---@field Alpha UFXAutoTriggerScalar
local UFXAutoTriggerScalarLerp = {}



---@class UFXAutoTriggerScalarLerpConstant : UFXAutoTriggerScalarSingleParam
---@field A float
---@field b float
local UFXAutoTriggerScalarLerpConstant = {}



---@class UFXAutoTriggerScalarMax : UFXAutoTriggerScalarTwoParams
local UFXAutoTriggerScalarMax = {}


---@class UFXAutoTriggerScalarMaximumConstant : UFXAutoTriggerScalarSingleParam
---@field Maximum float
local UFXAutoTriggerScalarMaximumConstant = {}



---@class UFXAutoTriggerScalarMin : UFXAutoTriggerScalarTwoParams
local UFXAutoTriggerScalarMin = {}


---@class UFXAutoTriggerScalarMinConstant : UFXAutoTriggerScalarSingleParam
---@field Minimum float
local UFXAutoTriggerScalarMinConstant = {}



---@class UFXAutoTriggerScalarMultiply : UFXAutoTriggerScalarTwoParams
local UFXAutoTriggerScalarMultiply = {}


---@class UFXAutoTriggerScalarMultiplyThreeParams : UFXAutoTriggerScalarThreeParams
local UFXAutoTriggerScalarMultiplyThreeParams = {}


---@class UFXAutoTriggerScalarNegate : UFXAutoTriggerScalarSingleParam
local UFXAutoTriggerScalarNegate = {}


---@class UFXAutoTriggerScalarOneMinus : UFXAutoTriggerScalarSingleParam
local UFXAutoTriggerScalarOneMinus = {}


---@class UFXAutoTriggerScalarPower : UFXAutoTriggerScalarSingleParam
---@field Power float
local UFXAutoTriggerScalarPower = {}



---@class UFXAutoTriggerScalarRemapClamped : UFXAutoTriggerScalarSingleParam
---@field InputRange FVector2D
---@field OutputRange FVector2D
local UFXAutoTriggerScalarRemapClamped = {}



---@class UFXAutoTriggerScalarRemapUnclamped : UFXAutoTriggerScalarSingleParam
---@field InputRange FVector2D
---@field OutputRange FVector2D
local UFXAutoTriggerScalarRemapUnclamped = {}



---@class UFXAutoTriggerScalarSaturate : UFXAutoTriggerScalarSingleParam
local UFXAutoTriggerScalarSaturate = {}


---@class UFXAutoTriggerScalarSingleParam : UFXAutoTriggerScalar
---@field Value UFXAutoTriggerScalar
local UFXAutoTriggerScalarSingleParam = {}



---@class UFXAutoTriggerScalarSqrRoot : UFXAutoTriggerScalarSingleParam
local UFXAutoTriggerScalarSqrRoot = {}


---@class UFXAutoTriggerScalarSquare : UFXAutoTriggerScalarSingleParam
local UFXAutoTriggerScalarSquare = {}


---@class UFXAutoTriggerScalarSubract : UFXAutoTriggerScalarTwoParams
local UFXAutoTriggerScalarSubract = {}


---@class UFXAutoTriggerScalarThreeParams : UFXAutoTriggerScalar
---@field A UFXAutoTriggerScalar
---@field b UFXAutoTriggerScalar
---@field C UFXAutoTriggerScalar
local UFXAutoTriggerScalarThreeParams = {}



---@class UFXAutoTriggerScalarTwoParams : UFXAutoTriggerScalar
---@field A UFXAutoTriggerScalar
---@field b UFXAutoTriggerScalar
local UFXAutoTriggerScalarTwoParams = {}



---@class UFXAutoTriggerUpdateBase : UObject
local UFXAutoTriggerUpdateBase = {}


---@class UFXAutoTriggerUpdateLocalSkinFXVar : UFXAutoTriggerUpdateLocalVar
local UFXAutoTriggerUpdateLocalSkinFXVar = {}


---@class UFXAutoTriggerUpdateLocalSkinFXVarFloat : UFXAutoTriggerUpdateLocalSkinFXVar
---@field Var FName
---@field Scalar UFXAutoTriggerScalar
local UFXAutoTriggerUpdateLocalSkinFXVarFloat = {}



---@class UFXAutoTriggerUpdateLocalSkinFXVarLinearColor : UFXAutoTriggerUpdateLocalSkinFXVar
---@field Var FName
---@field Color UFXAutoTriggerLinearColor
local UFXAutoTriggerUpdateLocalSkinFXVarLinearColor = {}



---@class UFXAutoTriggerUpdateLocalVar : UObject
local UFXAutoTriggerUpdateLocalVar = {}


---@class UFXAutoTriggerUpdateNiagaraBatch : UFXAutoTriggerUpdateBase
---@field Vars TArray<UFXAutoTriggerUpdateNiagaraBatchVar>
local UFXAutoTriggerUpdateNiagaraBatch = {}



---@class UFXAutoTriggerUpdateNiagaraBatchBool : UFXAutoTriggerUpdateNiagaraBatchVar
---@field Var FName
---@field Bool UFXAutoTriggerBool
local UFXAutoTriggerUpdateNiagaraBatchBool = {}



---@class UFXAutoTriggerUpdateNiagaraBatchFloat : UFXAutoTriggerUpdateNiagaraBatchVar
---@field Var FName
---@field Scalar UFXAutoTriggerScalar
local UFXAutoTriggerUpdateNiagaraBatchFloat = {}



---@class UFXAutoTriggerUpdateNiagaraBatchLinearColor : UFXAutoTriggerUpdateNiagaraBatchVar
---@field Var FName
---@field Color UFXAutoTriggerLinearColor
local UFXAutoTriggerUpdateNiagaraBatchLinearColor = {}



---@class UFXAutoTriggerUpdateNiagaraBatchVar : UFXAutoTriggerUpdateLocalVar
local UFXAutoTriggerUpdateNiagaraBatchVar = {}


---@class UFXAutoTriggerUpdateNiagaraScalar : UFXAutoTriggerUpdateBase
---@field NiagaraVar FName
---@field Scalar UFXAutoTriggerScalar
local UFXAutoTriggerUpdateNiagaraScalar = {}



---@class UFXAutoTriggerUpdateSkinFXParameters : UFXAutoTriggerUpdateBase
---@field SkinFX TSubclassOf<ASkinFXDefinition>
---@field Vars TArray<UFXAutoTriggerUpdateLocalSkinFXVar>
local UFXAutoTriggerUpdateSkinFXParameters = {}



---@class UFXAutoTriggerValue : UObject
local UFXAutoTriggerValue = {}


---@class UFadeToDecalPointLightComponent : UDecalPointLightComponentBase
---@field bUseLightVisibility boolean
---@field bLightParametersCanChange boolean
local UFadeToDecalPointLightComponent = {}

---@param bNewUseLightVisibility boolean
function UFadeToDecalPointLightComponent:SetUseLightVisibility(bNewUseLightVisibility) end
---@param bNewLightParametersCanChange boolean
function UFadeToDecalPointLightComponent:SetLightParametersCanChange(bNewLightParametersCanChange) end


---@class UFillDecalPointLightComponent : UFadeToDecalPointLightComponent
---@field IntensityMultiplier float
---@field InnerCutoutRadius float
---@field OuterCutoutRadius float
---@field FullRadius float
local UFillDecalPointLightComponent = {}

---@param NewInnerCutoutRadius float
---@param NewOuterCutoutRadius float
---@param NewFullRadius float
function UFillDecalPointLightComponent:SetRadii(NewInnerCutoutRadius, NewOuterCutoutRadius, NewFullRadius) end
---@param NewOuterCutoutRadius float
function UFillDecalPointLightComponent:SetOuterCutoutRadius(NewOuterCutoutRadius) end
---@param NewIntensityMultiplier float
function UFillDecalPointLightComponent:SetIntensityMultiplier(NewIntensityMultiplier) end
---@param NewInnerCutoutRadius float
function UFillDecalPointLightComponent:SetInnerCutoutRadius(NewInnerCutoutRadius) end
---@param NewFullRadius float
function UFillDecalPointLightComponent:SetFullRadius(NewFullRadius) end


---@class UFollowCameraComponent : UActorComponent
---@field FollowType EFollowCameraType
---@field ZValue float
local UFollowCameraComponent = {}



---@class UNiagaraDataInterfaceNonUniformSpline : UNiagaraDataInterface
---@field Source AActor
---@field SplineUserParameter FNiagaraUserParameterBinding
local UNiagaraDataInterfaceNonUniformSpline = {}



---@class UNonUniformSplineComponent : UActorComponent
---@field ParameterizationExponent float
---@field DistanceSamplesPerInterval int32
local UNonUniformSplineComponent = {}

---@param InPoints TArray<FVector>
function UNonUniformSplineComponent:InitializeFromPoints(InPoints) end
---@param Distance float
---@return float
function UNonUniformSplineComponent:GetTimeAtDistance(Distance) end
---@param NormalizedTime float
---@return FVector
function UNonUniformSplineComponent:GetTangent(NormalizedTime) end
---@return float
function UNonUniformSplineComponent:GetSplineLength() end
---@param Distance float
---@return FVector
function UNonUniformSplineComponent:GetPositionAtDistanceAlongSpline(Distance) end
---@param NormalizedTime float
---@return FVector
function UNonUniformSplineComponent:GetPosition(NormalizedTime) end
---@param NormalizedTime float
---@return float
function UNonUniformSplineComponent:GetDistance(NormalizedTime) end
---@param InLocation FVector
---@return float
function UNonUniformSplineComponent:FindNearestTimeOnSpline(InLocation) end
---@param InLocation FVector
---@return FVector
function UNonUniformSplineComponent:FindNearestPointOnSpline(InLocation) end
---@param InLocation FVector
---@return float
function UNonUniformSplineComponent:FindClosestDistanceSqToSpline(InLocation) end
---@param SegmentsPerPoint int32
---@param Duration float
---@param bDrawTangents boolean
---@param bDrawArtificialEndPoints boolean
---@param bDrawDistances boolean
---@param PruneCenterpoint FVector
---@param PruneOutsideCenterpointRadius float
function UNonUniformSplineComponent:DebugDraw(SegmentsPerPoint, Duration, bDrawTangents, bDrawArtificialEndPoints, bDrawDistances, PruneCenterpoint, PruneOutsideCenterpointRadius) end


---@class UOverlapEffectsClothingDataAsset : UDataAsset
---@field TightNames TArray<FString>
---@field LooseNames TArray<FString>
---@field CapeOrRobeNames TArray<FString>
local UOverlapEffectsClothingDataAsset = {}



---@class UOverlapEffectsComponent : UActorComponent
---@field HandlerDefinitions UOverlapEffectsDataAsset
---@field OverlapHandlers TArray<UOverlapEffectsHandler>
---@field CameraCutoffDistance float
---@field TrueSpeedRTPC FName
---@field TeleportThreshold float
---@field TrueSpeedRTPCThreshold float
---@field bUseCameraCutoffDistance boolean
---@field bSetTrueSpeedRTPC boolean
---@field bEnabled boolean
---@field LiveEvents int32
---@field VelocityTracker FOverlapEffectsVelocityTracker
---@field LastTrueSpeed float
---@field bProcessEvents boolean
local UOverlapEffectsComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UOverlapEffectsComponent:ProcessHit(SelfActor, OtherActor, NormalImpulse, Hit) end
---@param OverlappedActor AActor
---@param OtherActor AActor
function UOverlapEffectsComponent:ProcessEndOverlap(OverlappedActor, OtherActor) end
---@param OverlappedActor AActor
---@param OtherActor AActor
function UOverlapEffectsComponent:ProcessBeginOverlap(OverlappedActor, OtherActor) end


---@class UOverlapEffectsDataAsset : UDataAsset
---@field OverlapHandlers TArray<UOverlapEffectsHandler>
local UOverlapEffectsDataAsset = {}



---@class UOverlapEffectsHandler : UObject
---@field ProcessEvents int32
local UOverlapEffectsHandler = {}



---@class UOverlapEffectsHandlerActorClassHit : UOverlapEffectsHandlerMinimumSpeedBase
---@field ActorClass TSoftClassPtr<AActor>
---@field SurfaceType EPhysicalSurface
---@field Effects TArray<UOverlapEffectsHandlerEffect>
---@field bUseSurfaceType boolean
local UOverlapEffectsHandlerActorClassHit = {}



---@class UOverlapEffectsHandlerActorClassOverlap : UOverlapEffectsHandlerMinimumSpeedBase
---@field ActorClass TSoftClassPtr<AActor>
---@field BeginEffects TArray<UOverlapEffectsHandlerEffect>
---@field EndEffects TArray<UOverlapEffectsHandlerEffect>
local UOverlapEffectsHandlerActorClassOverlap = {}



---@class UOverlapEffectsHandlerEffect : UObject
local UOverlapEffectsHandlerEffect = {}


---@class UOverlapEffectsHandlerEffectDebugBox : UOverlapEffectsHandlerEffect
---@field Attachment EOverlapEffectsAttachment
---@field BoxColor FColor
---@field BoxThickness float
---@field DurationSeconds float
---@field bEnabled boolean
local UOverlapEffectsHandlerEffectDebugBox = {}



---@class UOverlapEffectsHandlerEffectDebugHitPoint : UOverlapEffectsHandlerEffect
---@field HitPoint EOverlapEffectsHitPoint
---@field SphereRadius float
---@field SphereColor FColor
---@field SphereSegments int32
---@field SphereThickness float
---@field DurationSeconds float
---@field bEnabled boolean
local UOverlapEffectsHandlerEffectDebugHitPoint = {}



---@class UOverlapEffectsHandlerEffectHermes : UOverlapEffectsHandlerEffect
---@field HermesMessage FName
local UOverlapEffectsHandlerEffectHermes = {}



---@class UOverlapEffectsHandlerEffectHermesVictimActor : UOverlapEffectsHandlerEffectHermes
local UOverlapEffectsHandlerEffectHermesVictimActor = {}


---@class UOverlapEffectsHandlerEffectHermesVictimName : UOverlapEffectsHandlerEffectHermes
local UOverlapEffectsHandlerEffectHermesVictimName = {}


---@class UOverlapEffectsHandlerEffectMultiFX : UOverlapEffectsHandlerEffect
---@field FXAsset UMultiFX2Asset
---@field Attachment EOverlapEffectsAttachment
---@field AttachPointName FName
---@field AttachLocation FVector
---@field AttachRotation FRotator
---@field bOnlyOneEffectAtATime boolean
---@field FXHandle FMultiFX2Handle
local UOverlapEffectsHandlerEffectMultiFX = {}



---@class UOverlapEffectsHandlerEffectNiagara : UOverlapEffectsHandlerEffect
---@field System TSoftObjectPtr<UNiagaraSystem>
---@field Component UNiagaraComponent
local UOverlapEffectsHandlerEffectNiagara = {}



---@class UOverlapEffectsHandlerEffectNiagaraAttached : UOverlapEffectsHandlerEffectNiagara
---@field Attachment EOverlapEffectsAttachment
---@field AttachPointName FName
---@field AttachLocation FVector
---@field AttachRotation FRotator
---@field bOnlyOneEffectActiveAtAnyTime boolean
local UOverlapEffectsHandlerEffectNiagaraAttached = {}



---@class UOverlapEffectsHandlerEffectNiagaraWorld : UOverlapEffectsHandlerEffectNiagara
---@field HitPoint EOverlapEffectsHitPoint
---@field bOnlyOneEffectActiveAtAnyTime boolean
local UOverlapEffectsHandlerEffectNiagaraWorld = {}



---@class UOverlapEffectsHandlerEffectSkinFX : UOverlapEffectsHandlerEffect
---@field SkinFX TSubclassOf<ASkinFXDefinition>
---@field Attachment EOverlapEffectsAttachment
local UOverlapEffectsHandlerEffectSkinFX = {}



---@class UOverlapEffectsHandlerEffectSound : UOverlapEffectsHandlerEffect
---@field Event UAkAudioEvent
---@field LastSoundHandle int32
local UOverlapEffectsHandlerEffectSound = {}



---@class UOverlapEffectsHandlerEffectSoundAttached : UOverlapEffectsHandlerEffectSound
---@field Attachment EOverlapEffectsAttachment
local UOverlapEffectsHandlerEffectSoundAttached = {}



---@class UOverlapEffectsHandlerEffectSoundWorld : UOverlapEffectsHandlerEffectSound
---@field HitPoint EOverlapEffectsHitPoint
local UOverlapEffectsHandlerEffectSoundWorld = {}



---@class UOverlapEffectsHandlerInstancedFoliageBVHTest : UOverlapEffectsHandlerMinimumSpeedBase
---@field TypeEvents TArray<FOverlapEffectsHandlerInstancedFoliageBVHTestEntry>
---@field UpdateRateMS int32
local UOverlapEffectsHandlerInstancedFoliageBVHTest = {}



---@class UOverlapEffectsHandlerInstancedFoliageHit : UOverlapEffectsHandlerMinimumSpeedBase
---@field SurfaceType EPhysicalSurface
---@field Effects TArray<UOverlapEffectsHandlerEffect>
local UOverlapEffectsHandlerInstancedFoliageHit = {}



---@class UOverlapEffectsHandlerInstancedFoliageOverlap : UOverlapEffectsHandlerMinimumSpeedBase
---@field BeginEffects TArray<UOverlapEffectsHandlerEffect>
---@field EndEffects TArray<UOverlapEffectsHandlerEffect>
local UOverlapEffectsHandlerInstancedFoliageOverlap = {}



---@class UOverlapEffectsHandlerMinimumSpeedBase : UOverlapEffectsHandlerWithConditions
---@field MinimumSpeed float
local UOverlapEffectsHandlerMinimumSpeedBase = {}



---@class UOverlapEffectsHandlerWindSpeed : UOverlapEffectsHandler
---@field Events TArray<FOverlapEffectsHandlerWindSpeedEntry>
---@field ClothingTypesDatabase UOverlapEffectsClothingDataAsset
---@field ActorWindSpeedRTPC FName
---@field ActorIndoorsRTPC FName
---@field ActorClothingTypeRTPC FName
---@field UpdateRateMS int32
---@field NextUpdate float
---@field ClothingTypes int32
---@field LastActorWindSpeedRTPC float
---@field LastActorIndoorsRTPC float
---@field LastActorClothingTypeRTPC uint8
---@field bUseRelativeWindVelocity boolean
---@field bUseActorWindSpeedRTPC boolean
---@field bUseActorIndoorsRTPC boolean
---@field bUseActorClothingTypeRTPC boolean
local UOverlapEffectsHandlerWindSpeed = {}



---@class UOverlapEffectsHandlerWithConditions : UOverlapEffectsHandler
---@field Conditions FOverlapEffectsHandlerConditions
local UOverlapEffectsHandlerWithConditions = {}



---@class UPointLightDecalLibrary : UBlueprintFunctionLibrary
local UPointLightDecalLibrary = {}

---@param PointLightComponent UPointLightComponent
---@return FDecalPointLightInfo
function UPointLightDecalLibrary:MakeDecalPointLightInfo(PointLightComponent) end


---@class UTimeDilationManager : UObject
---@field ActiveWorldEffects TMap<TWeakObjectPtr<UWorld>, FActiveTimeDilationEffectGroup>
---@field ActiveActorEffects TMap<TWeakObjectPtr<AActor>, FActiveTimeDilationEffectGroup>
local UTimeDilationManager = {}

---@param WorldContextObject UObject
---@param Dilation float
---@param Provider UObject
---@param EaseInDuration float
function UTimeDilationManager:StartWorldTimeDilation(WorldContextObject, Dilation, Provider, EaseInDuration) end
---@param Actor AActor
---@param Dilation float
---@param Provider UObject
---@param EaseInDuration float
function UTimeDilationManager:StartActorTimeDilation(Actor, Dilation, Provider, EaseInDuration) end
---@param Actor AActor
---@param AccelerationDilation float
---@param AcceleratedDuration float
---@param Provider UObject
function UTimeDilationManager:StartActorTimeAcceleration(Actor, AccelerationDilation, AcceleratedDuration, Provider) end
---@param Actor AActor
function UTimeDilationManager:StartActorCounterDilation(Actor) end
---@param WorldContextObject UObject
---@param TimeDilationCurve UCurveFloat
function UTimeDilationManager:PlayWorldTimeDilationEffect(WorldContextObject, TimeDilationCurve) end
---@param Actor AActor
---@param TimeDilationCurve UCurveFloat
function UTimeDilationManager:PlayActorTimeDilationEffect(Actor, TimeDilationCurve) end
---@param Provider UObject
---@param EaseOutDuration float
function UTimeDilationManager:FinishWorldTimeDilation(Provider, EaseOutDuration) end
---@param Provider UObject
---@param EaseOutDuration float
function UTimeDilationManager:FinishActorTimeDilation(Provider, EaseOutDuration) end
---@param Actor AActor
function UTimeDilationManager:FinishActorCounterDilation(Actor) end


---@class UUpdatePumpComponent : UActorComponent
---@field UpdatePumpMode EUpdatePumpComponentMode
---@field bSuspend boolean
local UUpdatePumpComponent = {}



