---@meta

---@class AMaterialPermuterSingleton : AActor
---@field Library UMaterialPermuterLibrary
---@field LiveMaterials UMaterialPermuterLiveMaterials
---@field MIDCache FMaterialPermuterMIDCache
---@field ActiveSwaps FMaterialPermuterSwapTracker
---@field ActiveSwapsUpdateTimerHandle FTimerHandle
---@field ActorFadeStates FMaterialSwapActorFadeStates
local AMaterialPermuterSingleton = {}

---@param TriggerOwner UObject
---@param Trigger FName
function AMaterialPermuterSingleton:SetLoadingTrigger(TriggerOwner, Trigger) end
---@param Actor AActor
---@param bProhibit boolean
function AMaterialPermuterSingleton:ProhibitActorFade(Actor, bProhibit) end
---@param WorldContextObject UObject
---@param bPause boolean
function AMaterialPermuterSingleton:PauseAllActorFading(WorldContextObject, bPause) end
---@param Trigger FName
---@param bSet boolean
function AMaterialPermuterSingleton:LoadingTriggerSet(Trigger, bSet) end
---@param TriggerOwner UObject
---@param Trigger FName
---@param bSet boolean
function AMaterialPermuterSingleton:IsLoadingTriggerSet(TriggerOwner, Trigger, bSet) end
---@param WorldContextObject UObject
---@return boolean
function AMaterialPermuterSingleton:IsAllActorFadingPaused(WorldContextObject) end
---@param Actor AActor
---@return boolean
function AMaterialPermuterSingleton:IsActorFadeProhibited(Actor) end
---@param TriggerProperty FMaterialPermuterLoadTriggerProperty
---@return FName
function AMaterialPermuterSingleton:GetTriggerPropertyName(TriggerProperty) end
---@param TriggerOwner UObject
---@param Trigger FName
function AMaterialPermuterSingleton:ClearLoadingTrigger(TriggerOwner, Trigger) end


---@class AMaterialPreLoadKeysActor : AActor
---@field MaterialPermuterKeys TArray<FMaterialPermuterKeyProperty>
---@field Priority EMaterialPermuterLoadingPriority
---@field bStaticLoad boolean
---@field PreLoadedMaterials TArray<UMaterialInterface>
---@field DynamicallyLoadedMaterials TArray<UMaterialInterface>
---@field LoadingBundle UMaterialPermuterLoadingBundle
local AMaterialPreLoadKeysActor = {}

function AMaterialPreLoadKeysActor:BuildPreLoads() end


---@class AMaterialPreLoadKeysActorListActor : AMaterialPreLoadKeysActor
---@field ForActors TArray<AActor>
---@field bAttachedChildren boolean
---@field bComponentChildren boolean
local AMaterialPreLoadKeysActorListActor = {}



---@class AMaterialPreLoadKeysAllActor : AMaterialPreLoadKeysActor
local AMaterialPreLoadKeysAllActor = {}


---@class FActorToHardSwap
---@field ActorPtr TWeakObjectPtr<AActor>
---@field Meshes TArray<TWeakObjectPtr<UMeshComponent>>
---@field ProcessMesh int32
---@field SwapMesh int32
---@field MaterialsSwapped int32
---@field bMeshesInitialized boolean
---@field bHaveBroadcastSwapped boolean
---@field bChildrenAreReady boolean
local FActorToHardSwap = {}



---@class FActorToHardSwapList
---@field Actors TArray<FActorToHardSwap>
---@field Processed int32
---@field Swapped int32
local FActorToHardSwapList = {}



---@class FBlueprintMaterialSwapMeshStates
---@field MeshStates TArray<UMaterialSwapMeshState>
local FBlueprintMaterialSwapMeshStates = {}



---@class FHardSwapBatchComponentSettings
---@field MIDCreatesAllowedPerFrame int32
---@field MaterialsToSwapPerFrame int32
---@field bDetachAndDestoryWhenDone boolean
local FHardSwapBatchComponentSettings = {}



---@class FLiveMaterialsLoadedObjects
---@field LoadedObjects TSet<UMaterialInterface>
---@field PendingKills TMap<UMaterialInterface, FLiveMaterialsPendingKill>
---@field LockedObjects TSet<UMaterialInterface>
---@field TotalLoadedBytes int64
local FLiveMaterialsLoadedObjects = {}



---@class FLiveMaterialsPendingKill
---@field LastTouched FTimespan
---@field DeathDelay FTimespan
local FLiveMaterialsPendingKill = {}



---@class FLiveMaterialsPendingLoad
local FLiveMaterialsPendingLoad = {}


---@class FLiveMaterialsPendingLoads
---@field PendingLoads TMap<FSoftObjectPath, FLiveMaterialsPendingLoad>
local FLiveMaterialsPendingLoads = {}



---@class FMIDParameters
---@field Scalars TArray<FMIDScalarParameter>
---@field Vectors TArray<FMIDVectorParameter>
---@field Textures TArray<FMIDTextureParameter>
local FMIDParameters = {}



---@class FMIDScalarParameter
---@field Name FName
---@field Value float
local FMIDScalarParameter = {}



---@class FMIDTextureParameter
---@field Name FName
---@field Value UTexture
local FMIDTextureParameter = {}



---@class FMIDVectorParameter
---@field Name FName
---@field Value FLinearColor
local FMIDVectorParameter = {}



---@class FMasterMaterialAssetSet
local FMasterMaterialAssetSet = {}


---@class FMasterMaterialSet
local FMasterMaterialSet = {}


---@class FMaterialPermuterCopyParameterOverride
---@field Key FName
---@field SpecificMaterials TArray<TSoftObjectPtr<UMaterialInterface>>
---@field ParameterCopy EMaterialPermuterParameterCopy
local FMaterialPermuterCopyParameterOverride = {}



---@class FMaterialPermuterCopyParameterOverrideBase
---@field ParameterCopy EMaterialPermuterParameterCopy
---@field SpecificMaterials TArray<TSoftObjectPtr<UMaterialInterface>>
---@field bOnlySpecificMaterials boolean
local FMaterialPermuterCopyParameterOverrideBase = {}



---@class FMaterialPermuterCopyParameterOverrideGroup : FMaterialPermuterCopyParameterOverrideBase
---@field Group FMaterialPermuterGroupProperty
local FMaterialPermuterCopyParameterOverrideGroup = {}



---@class FMaterialPermuterCopyParameterOverridePermutation : FMaterialPermuterCopyParameterOverrideBase
---@field Permutation FMaterialPermuterPermutationProperty
local FMaterialPermuterCopyParameterOverridePermutation = {}



---@class FMaterialPermuterCopyParameterOverrides
---@field Groups TArray<FMaterialPermuterCopyParameterOverride>
---@field Permutations TArray<FMaterialPermuterCopyParameterOverride>
local FMaterialPermuterCopyParameterOverrides = {}



---@class FMaterialPermuterCopyParameterOverridesSetup
---@field GroupOverrides TArray<FMaterialPermuterCopyParameterOverrideGroup>
---@field PermutationOverrides TArray<FMaterialPermuterCopyParameterOverridePermutation>
local FMaterialPermuterCopyParameterOverridesSetup = {}



---@class FMaterialPermuterGroupProperty : FMaterialPermuterNameProperty
local FMaterialPermuterGroupProperty = {}


---@class FMaterialPermuterHardSwapBase
---@field Key FMaterialPermuterKey
---@field Parameters FMaterialSwapParametersSimple
---@field MeshStates TArray<UMaterialSwapMeshState>
---@field ParameterCopy EMaterialPermuterParameterCopy
---@field bDisableMIDSharing boolean
local FMaterialPermuterHardSwapBase = {}



---@class FMaterialPermuterHardSwapRules : FMaterialPermuterHardSwapBase
---@field Rules FMaterialSwapRules
local FMaterialPermuterHardSwapRules = {}



---@class FMaterialPermuterHardSwapSimple : FMaterialPermuterHardSwapBase
---@field bIncludeChildren boolean
local FMaterialPermuterHardSwapSimple = {}



---@class FMaterialPermuterInstanceHandCraftedKeySet
---@field PerKey TMap<FName, TSoftObjectPtr<UMaterialInterface>>
local FMaterialPermuterInstanceHandCraftedKeySet = {}



---@class FMaterialPermuterInstanceHandCraftedKeySetList
---@field PerKey TMap<FName, FMaterialPermuterInstanceHandCraftedList>
local FMaterialPermuterInstanceHandCraftedKeySetList = {}



---@class FMaterialPermuterInstanceHandCraftedList
---@field Materials TArray<TSoftObjectPtr<UMaterialInterface>>
local FMaterialPermuterInstanceHandCraftedList = {}



---@class FMaterialPermuterInstanceHandCraftedUIPair
---@field MaterialInstance TSoftObjectPtr<UMaterialInterface>
---@field HandCrafted TSoftObjectPtr<UMaterialInterface>
local FMaterialPermuterInstanceHandCraftedUIPair = {}



---@class FMaterialPermuterInstanceHandCraftedUISet
---@field Key FMaterialPermuterKeyProperty
---@field Pairs TArray<FMaterialPermuterInstanceHandCraftedUIPair>
local FMaterialPermuterInstanceHandCraftedUISet = {}



---@class FMaterialPermuterKey
---@field Group FName
---@field SubType FName
local FMaterialPermuterKey = {}



---@class FMaterialPermuterKeyCache
---@field Map TMap<FName, FMaterialPermuterKey>
---@field Cache TArray<FMaterialPermuterKeyCached>
---@field bSorted boolean
local FMaterialPermuterKeyCache = {}



---@class FMaterialPermuterKeyCached : FMaterialPermuterKey
---@field CachedHash FName
local FMaterialPermuterKeyCached = {}



---@class FMaterialPermuterKeyMap
---@field SubTypes TArray<FName>
local FMaterialPermuterKeyMap = {}



---@class FMaterialPermuterKeyProperty : FMaterialPermuterNameProperty
local FMaterialPermuterKeyProperty = {}


---@class FMaterialPermuterLoadTriggerProperty : FMaterialPermuterNameProperty
local FMaterialPermuterLoadTriggerProperty = {}


---@class FMaterialPermuterLoadingBundleAndSwapTarget
---@field ActorsToSwap TArray<AActor>
---@field InitialParameters FMaterialSwapParameters
---@field SwapType EMaterialPermuterLoadingBundleAndSwapType
---@field HardSwapBatchSettings FHardSwapBatchComponentSettings
local FMaterialPermuterLoadingBundleAndSwapTarget = {}



---@class FMaterialPermuterLoadingBundleAndSwapWeakTarget
---@field ActorsToSwap TArray<TWeakObjectPtr<AActor>>
---@field InitialParameters FMaterialSwapParameters
---@field SwapType EMaterialPermuterLoadingBundleAndSwapType
---@field HardSwapBatchSettings FHardSwapBatchComponentSettings
local FMaterialPermuterLoadingBundleAndSwapWeakTarget = {}



---@class FMaterialPermuterLoadingBundleList
---@field Bundles TArray<TWeakObjectPtr<UMaterialPermuterLoadingBundle>>
---@field QueuedBundles TArray<TWeakObjectPtr<UMaterialPermuterLoadingBundle>>
---@field RemoveBundles TArray<TWeakObjectPtr<UMaterialPermuterLoadingBundle>>
---@field bProcessing boolean
local FMaterialPermuterLoadingBundleList = {}



---@class FMaterialPermuterLoadingGroupStrategy
---@field Group FMaterialPermuterGroupProperty
---@field Strategy FMaterialPermuterLoadingStrategy
local FMaterialPermuterLoadingGroupStrategy = {}



---@class FMaterialPermuterLoadingPermutationStrategy
---@field Permutation FMaterialPermuterPermutationProperty
---@field Strategy FMaterialPermuterLoadingStrategy
local FMaterialPermuterLoadingPermutationStrategy = {}



---@class FMaterialPermuterLoadingStrategies
---@field Strategies TMap<FName, FMaterialPermuterLoadingStrategy>
---@field DefaultStrategy FMaterialPermuterLoadingStrategy
---@field ManualPreloads TArray<TSoftObjectPtr<UMaterialInterface>>
---@field ManualPreloadPriority EMaterialPermuterLoadingPriority
local FMaterialPermuterLoadingStrategies = {}



---@class FMaterialPermuterLoadingStrategiesSetup
---@field GroupStrategies TArray<FMaterialPermuterLoadingGroupStrategy>
---@field PermutationStrategies TArray<FMaterialPermuterLoadingPermutationStrategy>
---@field DefaultStrategy FMaterialPermuterLoadingStrategy
---@field ManualPreloads TArray<TSoftObjectPtr<UMaterialInterface>>
---@field ManualPreloadPriority EMaterialPermuterLoadingPriority
local FMaterialPermuterLoadingStrategiesSetup = {}



---@class FMaterialPermuterLoadingStrategy
---@field Trigger FMaterialPermuterLoadingStrategyTrigger
---@field Type EMaterialPermuterLoadType
---@field Priority EMaterialPermuterLoadingPriority
---@field PurgeTime float
local FMaterialPermuterLoadingStrategy = {}



---@class FMaterialPermuterLoadingStrategyTrigger
---@field Trigger FName
---@field TriggerPriority EMaterialPermuterLoadingPriority
local FMaterialPermuterLoadingStrategyTrigger = {}



---@class FMaterialPermuterLoadingTriggerSemaphone
---@field Requests TArray<TWeakObjectPtr<UObject>>
---@field LastCount int32
local FMaterialPermuterLoadingTriggerSemaphone = {}



---@class FMaterialPermuterLoadingTriggers
---@field Triggers TMap<FName, FMaterialPermuterLoadingTriggerSemaphone>
local FMaterialPermuterLoadingTriggers = {}



---@class FMaterialPermuterMIDCache
---@field Cache TMap<UMaterialInterface, FMaterialPermuterMIDCacheEntry>
---@field bEnable boolean
---@field TTLSeconds float
local FMaterialPermuterMIDCache = {}



---@class FMaterialPermuterMIDCacheEntry
---@field Templates TMap<UMaterialInterface, FMaterialPermuterMIDCacheTemplate>
---@field Touched FDateTime
local FMaterialPermuterMIDCacheEntry = {}



---@class FMaterialPermuterMIDCacheTemplate
---@field Template UMaterialInstanceDynamic
---@field Touched FDateTime
local FMaterialPermuterMIDCacheTemplate = {}



---@class FMaterialPermuterMaterialAssetIndex
---@field LoadingStrategies UMaterialPermuterLoadingStrategiesAsset
---@field DefaultStrategy FMaterialPermuterLoadingStrategy
---@field assets TArray<FMaterialPermuterMaterialAssetIndexEntry>
---@field OnAsset int32
local FMaterialPermuterMaterialAssetIndex = {}



---@class FMaterialPermuterMaterialAssetIndexEntry
---@field Material TSoftObjectPtr<UMaterial>
---@field Asset TSoftObjectPtr<UMaterialInterface>
---@field Hash FName
local FMaterialPermuterMaterialAssetIndexEntry = {}



---@class FMaterialPermuterMaterialMap
---@field DefaultMaterial TSoftObjectPtr<UMaterialInterface>
---@field MaterialMap TMap<TSoftObjectPtr<UMaterial>, FMaterialPermuterMaterialMapPermutation>
local FMaterialPermuterMaterialMap = {}



---@class FMaterialPermuterMaterialMapPermutation
---@field PermutedMaterial TSoftObjectPtr<UMaterialInterface>
---@field PermutedMasterMaterial TSoftObjectPtr<UMaterial>
local FMaterialPermuterMaterialMapPermutation = {}



---@class FMaterialPermuterNameProperty
---@field Name FName
local FMaterialPermuterNameProperty = {}



---@class FMaterialPermuterParameterSet
---@field Scalars TArray<FName>
---@field Vectors TArray<FName>
---@field Textures TArray<FName>
local FMaterialPermuterParameterSet = {}



---@class FMaterialPermuterParameterSetGroup
---@field ParameterMap TMap<TSoftObjectPtr<UMaterialInterface>, FMaterialPermuterParameterSet>
local FMaterialPermuterParameterSetGroup = {}



---@class FMaterialPermuterPermutationProperty : FMaterialPermuterNameProperty
local FMaterialPermuterPermutationProperty = {}


---@class FMaterialPermuterSwapTracker
---@field ActiveSwaps TMap<TWeakObjectPtr<UMeshComponent>, TWeakObjectPtr<UObject>>
local FMaterialPermuterSwapTracker = {}



---@class FMaterialSwapActorFadeStates
local FMaterialSwapActorFadeStates = {}


---@class FMaterialSwapActorRules
---@field ObjectFilter FMaterialSwapObjectRules
---@field TypeFilter FMaterialSwapActorTypeRules
---@field TagFilter FMaterialSwapActorTagRules
local FMaterialSwapActorRules = {}



---@class FMaterialSwapActorTagRules : FMaterialSwapObjectTagRules
local FMaterialSwapActorTagRules = {}


---@class FMaterialSwapActorTypeRules
---@field Players EMaterialSwapRulesTypeMode
---@field Characters EMaterialSwapRulesTypeMode
---@field Pawns EMaterialSwapRulesTypeMode
---@field Moveable EMaterialSwapRulesTypeMode
---@field Stationary EMaterialSwapRulesTypeMode
local FMaterialSwapActorTypeRules = {}



---@class FMaterialSwapCachedTransformSourceBone
---@field SkinnedMesh TWeakObjectPtr<USkinnedMeshComponent>
---@field BoneIndex int32
local FMaterialSwapCachedTransformSourceBone = {}



---@class FMaterialSwapCachedTransformSourceComponent
---@field Component TWeakObjectPtr<USceneComponent>
local FMaterialSwapCachedTransformSourceComponent = {}



---@class FMaterialSwapComponentHandle
local FMaterialSwapComponentHandle = {}


---@class FMaterialSwapDependentRules
---@field bComponentChildren boolean
---@field bDirectChildren boolean
---@field bAttachedChildren boolean
---@field bLimitDepth boolean
---@field ActorRules FMaterialSwapActorRules
---@field MaxDepth int32
local FMaterialSwapDependentRules = {}



---@class FMaterialSwapFadeSettings
---@field Swap FMaterialSwapKeyUI
---@field OpacityParameter FName
---@field bUseAutoRefreshSwap boolean
local FMaterialSwapFadeSettings = {}



---@class FMaterialSwapInfo : FMaterialSwapInfoBase
---@field Priority EMaterialSwapPriority
---@field SwapType EMaterialSwapInfoTyoe
---@field Group FName
---@field SubType FName
---@field MaterialOverride UMaterialInterface
---@field MaterialOverrides TArray<UMaterialInterface>
---@field ParameterCopy EMaterialPermuterParameterCopy
---@field Rules FMaterialSwapRules
---@field InitialParameters FMaterialSwapParameters
---@field MeshStates TArray<UMaterialSwapMeshState>
local FMaterialSwapInfo = {}



---@class FMaterialSwapInfoBase
local FMaterialSwapInfoBase = {}


---@class FMaterialSwapInfoInPlaceMIDs : FMaterialSwapInfoInPlaceMIDsBase
---@field Priority EMaterialSwapPriority
---@field Rules FMaterialSwapRules
---@field MeshStates TArray<UMaterialSwapMeshState>
local FMaterialSwapInfoInPlaceMIDs = {}



---@class FMaterialSwapInfoInPlaceMIDsBase : FMaterialSwapInfoBase
local FMaterialSwapInfoInPlaceMIDsBase = {}


---@class FMaterialSwapInfoOverrideMaterial : FMaterialSwapInfoOverrideMaterialBase
---@field MaterialOverride UMaterialInterface
---@field Priority EMaterialSwapPriority
---@field Rules FMaterialSwapRules
---@field MeshStates TArray<UMaterialSwapMeshState>
---@field ParameterCopy EMaterialPermuterParameterCopy
local FMaterialSwapInfoOverrideMaterial = {}



---@class FMaterialSwapInfoOverrideMaterialBase : FMaterialSwapInfoBase
local FMaterialSwapInfoOverrideMaterialBase = {}


---@class FMaterialSwapInfoOverrideMaterials : FMaterialSwapInfoBase
---@field MaterialOverrides TArray<UMaterialInterface>
---@field Priority EMaterialSwapPriority
---@field Rules FMaterialSwapRules
---@field MeshStates TArray<UMaterialSwapMeshState>
---@field ParameterCopy EMaterialPermuterParameterCopy
local FMaterialSwapInfoOverrideMaterials = {}



---@class FMaterialSwapKey : FMaterialSwapKeyBase
---@field Key FMaterialPermuterKey
---@field Priority EMaterialSwapPriority
---@field Rules FMaterialSwapRules
---@field MeshStates TArray<UMaterialSwapMeshState>
local FMaterialSwapKey = {}



---@class FMaterialSwapKeyBase : FMaterialSwapInfoBase
local FMaterialSwapKeyBase = {}


---@class FMaterialSwapKeyUI : FMaterialSwapKeyBase
---@field Permutation FMaterialPermuterKeyProperty
---@field Priority EMaterialSwapPriority
---@field Rules FMaterialSwapRules
---@field MeshStates TArray<UMaterialSwapMeshState>
local FMaterialSwapKeyUI = {}



---@class FMaterialSwapMeshRules
---@field ObjectFilter FMaterialSwapObjectRules
---@field TypeFilter FMaterialSwapMeshTypeRules
---@field TagFilter FMaterialSwapMeshTagRules
local FMaterialSwapMeshRules = {}



---@class FMaterialSwapMeshStatesAndData
---@field States TArray<UMaterialSwapMeshState>
---@field Data TArray<UMaterialSwapMeshStateData>
local FMaterialSwapMeshStatesAndData = {}



---@class FMaterialSwapMeshTagRules : FMaterialSwapObjectTagRules
local FMaterialSwapMeshTagRules = {}


---@class FMaterialSwapMeshTypeRules
---@field Static EMaterialSwapRulesTypeMode
---@field Skeletal EMaterialSwapRulesTypeMode
---@field Instanced EMaterialSwapRulesTypeMode
---@field Spline EMaterialSwapRulesTypeMode
---@field Moveable EMaterialSwapRulesTypeMode
---@field Stationary EMaterialSwapRulesTypeMode
---@field ReceivesDecals EMaterialSwapRulesTypeMode
---@field ReceivesWeatherDecals EMaterialSwapRulesTypeMode
---@field RenderCustomDepth EMaterialSwapRulesTypeMode
local FMaterialSwapMeshTypeRules = {}



---@class FMaterialSwapObjectRules
---@field Rule EMaterialSwapRulesObjects
---@field Objects TArray<FName>
---@field MatchMode EMaterialSwapRulesObjectMatchMode
local FMaterialSwapObjectRules = {}



---@class FMaterialSwapObjectTagRules
---@field Tags TArray<FName>
---@field Rule EMaterialSwapRulesObjects
local FMaterialSwapObjectTagRules = {}



---@class FMaterialSwapParameters : FMaterialSwapParametersSimple
---@field TransformedPositions TArray<FMaterialSwapTransformedPosition>
---@field TransformedVectors TArray<FMaterialSwapTransformedVector>
local FMaterialSwapParameters = {}



---@class FMaterialSwapParametersSimple
---@field Scalars TArray<FMaterialSwapScalarParameter>
---@field Vectors TArray<FMaterialSwapVectorParameter>
---@field Textures TArray<FMaterialSwapTextureParameter>
local FMaterialSwapParametersSimple = {}



---@class FMaterialSwapRules
---@field MeshRules FMaterialSwapMeshRules
---@field ActorRules FMaterialSwapActorRules
---@field DependentRules FMaterialSwapDependentRules
---@field bFailOnNoMatches boolean
local FMaterialSwapRules = {}



---@class FMaterialSwapScalarParameter
---@field Name FName
---@field Value float
local FMaterialSwapScalarParameter = {}



---@class FMaterialSwapSharedMIDCache
---@field Map TMap<UMaterialInterface, FMaterialSwapSharedMIDCacheEntry>
local FMaterialSwapSharedMIDCache = {}



---@class FMaterialSwapSharedMIDCacheEntry
---@field Mid UMaterialInstanceDynamic
---@field CachedParameters FCachedMIDParameters
local FMaterialSwapSharedMIDCacheEntry = {}



---@class FMaterialSwapSphereSelectionActor
---@field LastTouched double
local FMaterialSwapSphereSelectionActor = {}



---@class FMaterialSwapSphereSelectionMesh
---@field MaterialSwap UMaterialSwap
---@field LastTouched double
---@field SwapSphereMaterialParameter FVector4
---@field bIsSwappable boolean
local FMaterialSwapSphereSelectionMesh = {}



---@class FMaterialSwapTextureParameter
---@field Name FName
---@field Value UTexture
local FMaterialSwapTextureParameter = {}



---@class FMaterialSwapTransformedParameter
---@field Name FName
---@field Value FVector
---@field TransformSource FName
---@field TransformType ETransformedParameterSource
---@field CachedBone FMaterialSwapCachedTransformSourceBone
---@field CachedComponent FMaterialSwapCachedTransformSourceComponent
local FMaterialSwapTransformedParameter = {}



---@class FMaterialSwapTransformedPosition : FMaterialSwapTransformedParameter
local FMaterialSwapTransformedPosition = {}


---@class FMaterialSwapTransformedVector : FMaterialSwapTransformedParameter
local FMaterialSwapTransformedVector = {}


---@class FMaterialSwapVectorParameter
---@field Name FName
---@field Value FLinearColor
local FMaterialSwapVectorParameter = {}



---@class FMeshMaterialSwap
---@field SwappedMaterials TArray<FMeshSwappedMaterial>
local FMeshMaterialSwap = {}



---@class FMeshSwappedMaterial
---@field CachedParameters FCachedMIDParameters
---@field OriginalMaterial UMaterialInterface
---@field SwapMID UMaterialInstanceDynamic
---@field Index int16
---@field flags int16
local FMeshSwappedMaterial = {}



---@class FSimpleDataSetPendingLoad
---@field UniqueId FSoftObjectPath
---@field Started FDateTime
local FSimpleDataSetPendingLoad = {}



---@class IMaterialParametersInterface : IInterface
local IMaterialParametersInterface = {}

---@param Name FName
---@param Value FVector
function IMaterialParametersInterface:SetVectorParameter(Name, Value) end
---@param Name FName
---@param Value FVector4
function IMaterialParametersInterface:SetVector4Parameter(Name, Value) end
---@param Name FName
---@param Value UTexture
function IMaterialParametersInterface:SetTextureParameter(Name, Value) end
---@param Parameters FMaterialSwapParametersSimple
function IMaterialParametersInterface:SetSimpleParameters(Parameters) end
---@param Name FName
---@param Value float
function IMaterialParametersInterface:SetScalarParameter(Name, Value) end
---@param Name FName
---@param Value FLinearColor
function IMaterialParametersInterface:SetColorParameter(Name, Value) end


---@class IMaterialPermuterUnswapInterface : IInterface
local IMaterialPermuterUnswapInterface = {}


---@class UHardSwapBatchComponent : UActorComponent
---@field OnDoneDelegate FHardSwapBatchComponentOnDoneDelegate
---@field OnActorSwappedDelegate FHardSwapBatchComponentOnActorSwappedDelegate
---@field Library UMaterialPermuterLibrary
---@field HardSwap FMaterialPermuterHardSwapBase
---@field Settings FHardSwapBatchComponentSettings
---@field MIDCache FMaterialSwapSharedMIDCache
---@field State EHardSwapBatchComponentState
---@field ActorsToSwap FActorToHardSwapList
local UHardSwapBatchComponent = {}

---@param Name FName
---@param Value UTexture
function UHardSwapBatchComponent:SetTextureParameter(Name, Value) end
---@param Name FName
---@param Value float
function UHardSwapBatchComponent:SetScalarParameter(Name, Value) end
---@param Name FName
---@param Value FLinearColor
function UHardSwapBatchComponent:SetColorParameter(Name, Value) end
---@param ActorsToSwapList TArray<AActor>
function UHardSwapBatchComponent:GetActorsToSwap(ActorsToSwapList) end


---@class UHardSwapBatchComponentRules : UHardSwapBatchComponent
---@field HardSwapRules FMaterialPermuterHardSwapRules
local UHardSwapBatchComponentRules = {}

---@param Owner AActor
---@param HardSwapSetup FMaterialPermuterHardSwapRules
---@param Actors TArray<AActor>
---@param BatchSettings FHardSwapBatchComponentSettings
---@param HardSwapBatchComponent UHardSwapBatchComponentRules
function UHardSwapBatchComponentRules:CreateHardSwapBatchComponentWithRules(Owner, HardSwapSetup, Actors, BatchSettings, HardSwapBatchComponent) end


---@class UHardSwapBatchComponentSimple : UHardSwapBatchComponent
---@field HardSwapSimple FMaterialPermuterHardSwapSimple
local UHardSwapBatchComponentSimple = {}

---@param Owner AActor
---@param HardSwapSetup FMaterialPermuterHardSwapSimple
---@param Actors TArray<AActor>
---@param BatchSettings FHardSwapBatchComponentSettings
---@param HardSwapBatchComponent UHardSwapBatchComponentSimple
function UHardSwapBatchComponentSimple:CreateHardSwapBatchComponent(Owner, HardSwapSetup, Actors, BatchSettings, HardSwapBatchComponent) end


---@class UMIDBlueprintLibrary : UBlueprintFunctionLibrary
local UMIDBlueprintLibrary = {}

---@param Parameters FMIDParameters
---@param Vector FMIDVectorParameter
function UMIDBlueprintLibrary:SetMIDParametersVector(Parameters, Vector) end
---@param Parameters FMIDParameters
---@param Texture FMIDTextureParameter
function UMIDBlueprintLibrary:SetMIDParametersTexture(Parameters, Texture) end
---@param Parameters FMIDParameters
---@param Scalar FMIDScalarParameter
function UMIDBlueprintLibrary:SetMIDParametersScalar(Parameters, Scalar) end
---@param Component UPrimitiveComponent
function UMIDBlueprintLibrary:PrimitiveCreateMIDs(Component) end
---@param Component UPrimitiveComponent
---@param Parameters FMIDParameters
---@param bAutoCreateMIDs boolean
function UMIDBlueprintLibrary:PrimitiveApplyMIDParameters(Component, Parameters, bAutoCreateMIDs) end
---@param ParameterSet FMIDParameters
---@param bIsEmpty boolean
function UMIDBlueprintLibrary:MIDParametersIsEmpty(ParameterSet, bIsEmpty) end
---@param Name FName
---@param Vector FLinearColor
---@return FMIDVectorParameter
function UMIDBlueprintLibrary:MakeMIDVectorParameter(Name, Vector) end
---@param Name FName
---@param Texture UTexture
---@return FMIDTextureParameter
function UMIDBlueprintLibrary:MakeMIDTextureParameter(Name, Texture) end
---@param Name FName
---@param Scalar float
---@return FMIDScalarParameter
function UMIDBlueprintLibrary:MakeMIDScalarParameter(Name, Scalar) end
---@param Vector FMIDVectorParameter
---@return FMIDParameters
function UMIDBlueprintLibrary:MakeMIDParametersVector(Vector) end
---@param Texture FMIDTextureParameter
---@return FMIDParameters
function UMIDBlueprintLibrary:MakeMIDParametersTexture(Texture) end
---@param Scalar FMIDScalarParameter
---@return FMIDParameters
function UMIDBlueprintLibrary:MakeMIDParametersScalar(Scalar) end
---@param Scalars TArray<FMIDScalarParameter>
---@param Vectors TArray<FMIDVectorParameter>
---@param Textures TArray<FMIDTextureParameter>
---@return FMIDParameters
function UMIDBlueprintLibrary:MakeMIDParameters(Scalars, Vectors, Textures) end
---@param ParameterSet FMIDParameters
---@return FMIDParameters
function UMIDBlueprintLibrary:EmptyMIDParameters(ParameterSet) end
---@param A FMIDParameters
---@param b FMIDParameters
---@return FMIDParameters
function UMIDBlueprintLibrary:CombineMIDParameters(A, b) end
---@param Mid UMaterialInstanceDynamic
---@param Parameters FMIDParameters
function UMIDBlueprintLibrary:ApplyMIDParameters(Mid, Parameters) end
---@param Actor AActor
---@param bIncludeChildActors boolean
function UMIDBlueprintLibrary:ActorCreateMIDs(Actor, bIncludeChildActors) end
---@param Actor AActor
---@param Parameters FMIDParameters
---@param bIncludeChildActors boolean
---@param bAutoCreateMIDs boolean
function UMIDBlueprintLibrary:ActorApplyMIDParameters(Actor, Parameters, bIncludeChildActors, bAutoCreateMIDs) end


---@class UMasterMaterialSetBlueprintLibrary : UBlueprintFunctionLibrary
local UMasterMaterialSetBlueprintLibrary = {}

---@param MaterialMasterSet FMasterMaterialSet
---@param Material UMaterialInterface
function UMasterMaterialSetBlueprintLibrary:RemoveFromMasterMaterialSet(MaterialMasterSet, Material) end
---@param MaterialSet FMasterMaterialSet
---@param MasterMaterialAssets TArray<TSoftObjectPtr<UMaterial>>
function UMasterMaterialSetBlueprintLibrary:MasterMaterialSetToAssets(MaterialSet, MasterMaterialAssets) end
---@param MaterialMasterSet FMasterMaterialSet
---@param NumMaterials int32
function UMasterMaterialSetBlueprintLibrary:MasterMaterialSetNum(MaterialMasterSet, NumMaterials) end
---@param MaterialMasterSet FMasterMaterialSet
---@param bIsEmpty boolean
function UMasterMaterialSetBlueprintLibrary:MasterMaterialSetIsEmpty(MaterialMasterSet, bIsEmpty) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Material UMaterialInterface
function UMasterMaterialSetBlueprintLibrary:MasterMaterialSetContains(MaterialMasterSet, Material) end
---@param PermutationProperty FMaterialPermuterPermutationProperty
---@return FMaterialPermuterKey
function UMasterMaterialSetBlueprintLibrary:MakePermutationPropertyKey(PermutationProperty) end
---@param Mesh UMeshComponent
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeMeshMasterMaterialSet(Mesh) end
---@param Meshes TArray<UMeshComponent>
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeMeshesMasterMaterialSet(Meshes) end
---@param KeyHash FName
---@return FMaterialPermuterKey
function UMasterMaterialSetBlueprintLibrary:MakeMaterialPermuterKey(KeyHash) end
---@param Materials TArray<UMaterialInterface>
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeMasterMaterialSet(Materials) end
---@param MaterialMasterSet FMasterMaterialSet
---@return FMasterMaterialAssetSet
function UMasterMaterialSetBlueprintLibrary:MakeMasterMaterialAssetSet(MaterialMasterSet) end
---@param Key FMaterialPermuterKey
---@param Group FName
---@param SubType FName
function UMasterMaterialSetBlueprintLibrary:MakeKey(Key, Group, SubType) end
---@param GroupProperty FMaterialPermuterGroupProperty
---@return FMaterialPermuterKey
function UMasterMaterialSetBlueprintLibrary:MakeGroupPropertyKey(GroupProperty) end
---@param Actors TArray<AActor>
---@param Rules FMaterialSwapRules
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeActorsRulesMasterMaterialSet(Actors, Rules) end
---@param Actors TArray<AActor>
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeActorsMasterMaterialSet(Actors, bAttachedChildren, bComponentChildren) end
---@param Actor AActor
---@param Rules FMaterialSwapRules
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeActorRulesMasterMaterialSet(Actor, Rules) end
---@param Actor AActor
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
---@return FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:MakeActorMasterMaterialSet(Actor, bAttachedChildren, bComponentChildren) end
---@param Key FMaterialPermuterKey
---@param bIsValid boolean
function UMasterMaterialSetBlueprintLibrary:KeyIsValid(Key, bIsValid) end
---@param Key FMaterialPermuterKey
---@param bHasSubType boolean
function UMasterMaterialSetBlueprintLibrary:KeyHasSubType(Key, bHasSubType) end
---@param Key FMaterialPermuterKey
---@param SubType FName
function UMasterMaterialSetBlueprintLibrary:KeyGetSubType(Key, SubType) end
---@param Key FMaterialPermuterKey
---@param Group FName
function UMasterMaterialSetBlueprintLibrary:KeyGetGroup(Key, Group) end
---@param PermutationProperty FMaterialPermuterPermutationProperty
---@return FName
function UMasterMaterialSetBlueprintLibrary:GetPermutationPropertyName(PermutationProperty) end
---@param Key FMaterialPermuterKey
---@return FName
function UMasterMaterialSetBlueprintLibrary:GetMaterialPermuterKeyName(Key) end
---@param GroupProperty FMaterialPermuterGroupProperty
---@return FName
function UMasterMaterialSetBlueprintLibrary:GetGroupPropertyName(GroupProperty) end
---@param MaterialAssets TArray<TSoftObjectPtr<UMaterial>>
---@return FMasterMaterialAssetSet
function UMasterMaterialSetBlueprintLibrary:CreateMasterMaterialAssetSet(MaterialAssets) end
---@param A FMasterMaterialSet
---@param b FMasterMaterialSet
---@param Combined FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:CombineMasterMaterialSets(A, b, Combined) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Add FMasterMaterialSet
function UMasterMaterialSetBlueprintLibrary:AppendMasterMaterialSet(MaterialMasterSet, Add) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Actor AActor
---@param Rules FMaterialSwapRules
function UMasterMaterialSetBlueprintLibrary:AppendActorToMasterMaterialSetWithRules(MaterialMasterSet, Actor, Rules) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Actor AActor
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
function UMasterMaterialSetBlueprintLibrary:AppendActorToMasterMaterialSet(MaterialMasterSet, Actor, bAttachedChildren, bComponentChildren) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Actors TArray<AActor>
---@param Rules FMaterialSwapRules
function UMasterMaterialSetBlueprintLibrary:AppendActorsToMasterMaterialSetWithRules(MaterialMasterSet, Actors, Rules) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Actors TArray<AActor>
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
function UMasterMaterialSetBlueprintLibrary:AppendActorsToMasterMaterialSet(MaterialMasterSet, Actors, bAttachedChildren, bComponentChildren) end
---@param MaterialMasterSet FMasterMaterialSet
---@param Material UMaterialInterface
function UMasterMaterialSetBlueprintLibrary:AddToMasterMaterialSet(MaterialMasterSet, Material) end


---@class UMaterialPermuter : UBlueprintFunctionLibrary
local UMaterialPermuter = {}

---@param Mesh UMeshComponent
---@param Index int32
---@param Material UMaterialInterface
---@param Success boolean
function UMaterialPermuter:MaterialPermuterSetBaseMaterial(Mesh, Index, Material, Success) end
---@param Mesh UMeshComponent
---@param Success boolean
function UMaterialPermuter:MaterialPermuterPrepareSetBaseMaterials(Mesh, Success) end
---@param Mesh UMeshComponent
---@param bIsSwapped boolean
function UMaterialPermuter:MaterialPermuterIsMeshSwapped(Mesh, bIsSwapped) end
---@param Mesh UMeshComponent
---@param SwapOwner UObject
function UMaterialPermuter:MaterialPermuterGetMeshSwapOwner(Mesh, SwapOwner) end
---@param Mesh UMeshComponent
---@param bSuccess boolean
function UMaterialPermuter:MaterialPermuterClearMeshSwap(Mesh, bSuccess) end
---@param Actor AActor
---@param bSuccess boolean
function UMaterialPermuter:MaterialPermuterClearAllSwaps(Actor, bSuccess) end


---@class UMaterialPermuterBlueprintLibrary : UBlueprintFunctionLibrary
local UMaterialPermuterBlueprintLibrary = {}

---@param ParameterSet FMaterialSwapParametersSimple
---@param bIsEmpty boolean
function UMaterialPermuterBlueprintLibrary:SimpleMaterialSwapParametersIsEmpty(ParameterSet, bIsEmpty) end
---@param ParameterSet FMaterialSwapParametersSimple
---@param Delimiter FString
---@return FString
function UMaterialPermuterBlueprintLibrary:SimpleMaterialSwapParametersDump(ParameterSet, Delimiter) end
---@param A FMaterialSwapParametersSimple
---@param b FMaterialSwapParametersSimple
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:SimpleCombineMaterialSwapParameters(A, b) end
---@param Parameters FMaterialSwapParametersSimple
---@param Vector FMaterialSwapVectorParameter
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:SetSimpleMaterialSwapParametersVector(Parameters, Vector) end
---@param Parameters FMaterialSwapParametersSimple
---@param Texture FMaterialSwapTextureParameter
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:SetSimpleMaterialSwapParametersTexture(Parameters, Texture) end
---@param Parameters FMaterialSwapParametersSimple
---@param Scalar FMaterialSwapScalarParameter
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:SetSimpleMaterialSwapParametersScalar(Parameters, Scalar) end
---@param Parameters FMaterialSwapParameters
---@param Actor AActor
---@param PositionParameterName FName
---@param VectorParameterName FName
---@param WorldPosition FVector
---@param WorldVector FVector
function UMaterialPermuterBlueprintLibrary:SetMaterialSwapTransformedPairClosestBone(Parameters, Actor, PositionParameterName, VectorParameterName, WorldPosition, WorldVector) end
---@param Parameters FMaterialSwapParameters
---@param Vector FMaterialSwapVectorParameter
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:SetMaterialSwapParametersVector(Parameters, Vector) end
---@param Parameters FMaterialSwapParameters
---@param TransformedVector FMaterialSwapTransformedVector
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:SetMaterialSwapParametersTransformedVector(Parameters, TransformedVector) end
---@param Parameters FMaterialSwapParameters
---@param TransformedPosition FMaterialSwapTransformedPosition
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:SetMaterialSwapParametersTransformedPosition(Parameters, TransformedPosition) end
---@param Parameters FMaterialSwapParameters
---@param Texture FMaterialSwapTextureParameter
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:SetMaterialSwapParametersTexture(Parameters, Texture) end
---@param Parameters FMaterialSwapParameters
---@param Scalar FMaterialSwapScalarParameter
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:SetMaterialSwapParametersScalar(Parameters, Scalar) end
---@param ParameterSet FMaterialSwapParameters
---@param bIsEmpty boolean
function UMaterialPermuterBlueprintLibrary:MaterialSwapParametersIsEmpty(ParameterSet, bIsEmpty) end
---@param ParameterSet FMaterialSwapParameters
---@param Delimiter FString
---@return FString
function UMaterialPermuterBlueprintLibrary:MaterialSwapParametersDump(ParameterSet, Delimiter) end
---@param Vector FMaterialSwapVectorParameter
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:MakeSimpleMaterialSwapParametersVector(Vector) end
---@param Texture FMaterialSwapTextureParameter
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:MakeSimpleMaterialSwapParametersTexture(Texture) end
---@param Scalar FMaterialSwapScalarParameter
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:MakeSimpleMaterialSwapParametersScalar(Scalar) end
---@param Scalars TArray<FMaterialSwapScalarParameter>
---@param Vectors TArray<FMaterialSwapVectorParameter>
---@param Textures TArray<FMaterialSwapTextureParameter>
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:MakeSimpleMaterialSwapParameters(Scalars, Vectors, Textures) end
---@param Actor AActor
---@param ParameterName FName
---@param WorldPosition FVector
---@param WorldVector FVector
---@return FMaterialSwapTransformedVector
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapTransformedVectorClosestBone(Actor, ParameterName, WorldPosition, WorldVector) end
---@param Actor AActor
---@param ParameterName FName
---@param Vector FVector
---@param Space ETransformedParameterSpace
---@param TransformSource FName
---@param TransformType ETransformedParameterSource
---@return FMaterialSwapTransformedVector
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapTransformedVector(Actor, ParameterName, Vector, Space, TransformSource, TransformType) end
---@param Actor AActor
---@param ParameterName FName
---@param WorldPosition FVector
---@return FMaterialSwapTransformedPosition
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapTransformedPositionClosestBone(Actor, ParameterName, WorldPosition) end
---@param Actor AActor
---@param ParameterName FName
---@param Position FVector
---@param Space ETransformedParameterSpace
---@param TransformSource FName
---@param TransformType ETransformedParameterSource
---@return FMaterialSwapTransformedPosition
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapTransformedPosition(Actor, ParameterName, Position, Space, TransformSource, TransformType) end
---@param Actor AActor
---@param PositionParameterName FName
---@param VectorParameterName FName
---@param WorldPosition FVector
---@param WorldVector FVector
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapTransformedPairClosestBone(Actor, PositionParameterName, VectorParameterName, WorldPosition, WorldVector) end
---@param Vector FMaterialSwapVectorParameter
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapParametersVector(Vector) end
---@param Texture FMaterialSwapTextureParameter
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapParametersTexture(Texture) end
---@param Scalar FMaterialSwapScalarParameter
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapParametersScalar(Scalar) end
---@param Parameters FMaterialSwapParametersSimple
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapParametersFromSimple(Parameters) end
---@param Parameters FMaterialSwapParameters
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapParametersFromNotSimple(Parameters) end
---@param Scalars TArray<FMaterialSwapScalarParameter>
---@param Vectors TArray<FMaterialSwapVectorParameter>
---@param Textures TArray<FMaterialSwapTextureParameter>
---@param TransformedPositions TArray<FMaterialSwapTransformedPosition>
---@param TransformedVectors TArray<FMaterialSwapTransformedVector>
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:MakeMaterialSwapParameters(Scalars, Vectors, Textures, TransformedPositions, TransformedVectors) end
---@param ParameterSet FMaterialSwapParametersSimple
---@return FMaterialSwapParametersSimple
function UMaterialPermuterBlueprintLibrary:EmptySimpleMaterialSwapParameters(ParameterSet) end
---@param ParameterSet FMaterialSwapParameters
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:EmptyMaterialSwapParameters(ParameterSet) end
---@param A FMaterialSwapParameters
---@param b FMaterialSwapParametersSimple
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:CombineSimpleMaterialSwapParameters(A, b) end
---@param A FMaterialSwapParameters
---@param b FMaterialSwapParameters
---@return FMaterialSwapParameters
function UMaterialPermuterBlueprintLibrary:CombineMaterialSwapParameters(A, b) end


---@class UMaterialPermuterDynamicTrigger : UObject
local UMaterialPermuterDynamicTrigger = {}


---@class UMaterialPermuterDynamicTriggerFall : UMaterialPermuterDynamicTriggerNamed
local UMaterialPermuterDynamicTriggerFall = {}


---@class UMaterialPermuterDynamicTriggerNamed : UMaterialPermuterDynamicTrigger
---@field Trigger FMaterialPermuterLoadTriggerProperty
local UMaterialPermuterDynamicTriggerNamed = {}



---@class UMaterialPermuterDynamicTriggerSpring : UMaterialPermuterDynamicTriggerNamed
local UMaterialPermuterDynamicTriggerSpring = {}


---@class UMaterialPermuterDynamicTriggerSummer : UMaterialPermuterDynamicTriggerNamed
local UMaterialPermuterDynamicTriggerSummer = {}


---@class UMaterialPermuterDynamicTriggerWinter : UMaterialPermuterDynamicTriggerNamed
local UMaterialPermuterDynamicTriggerWinter = {}


---@class UMaterialPermuterHardSwap : UBlueprintFunctionLibrary
local UMaterialPermuterHardSwap = {}

---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapRules
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param MaterialsSwapped int32
function UMaterialPermuterHardSwap:SwapFromdHardSwapCacheWithRules(Actor, Swap, HardSwapCache, MaterialsSwapped) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapSimple
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param MaterialsSwapped int32
function UMaterialPermuterHardSwap:SwapFromdHardSwapCache(Actor, Swap, HardSwapCache, MaterialsSwapped) end
---@param Actors TArray<AActor>
---@param Swap FMaterialPermuterHardSwapRules
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param MaterialsSwapped int32
function UMaterialPermuterHardSwap:SwapActorsFromdHardSwapCacheWithRules(Actors, Swap, HardSwapCache, MaterialsSwapped) end
---@param Actors TArray<AActor>
---@param Swap FMaterialPermuterHardSwapSimple
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param MaterialsSwapped int32
function UMaterialPermuterHardSwap:SwapActorsFromdHardSwapCache(Actors, Swap, HardSwapCache, MaterialsSwapped) end
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
---@param Parameter FName
---@param Value FLinearColor
function UMaterialPermuterHardSwap:SetMIDArrayVectorParameter(MaterialInstanceDynamics, Parameter, Value) end
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
---@param Parameter FName
---@param Value float
function UMaterialPermuterHardSwap:SetMIDArrayScalarParameter(MaterialInstanceDynamics, Parameter, Value) end
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
function UMaterialPermuterHardSwap:HardSwapCacheToMaterials(HardSwapCache, MaterialInstanceDynamics) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapRules
---@param MaterialsSwapped int32
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:HardSwapActorWithRulesNoMIDs(Actor, Swap, MaterialsSwapped, bForceLoadMaterials) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapRules
---@param MaterialsSwapped int32
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:HardSwapActorWithRules(Actor, Swap, MaterialsSwapped, MaterialInstanceDynamics, bForceLoadMaterials) end
---@param Actors TArray<AActor>
---@param Swap FMaterialPermuterHardSwapRules
---@param MaterialsSwapped int32
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:HardSwapActorsWithRules(Actors, Swap, MaterialsSwapped, MaterialInstanceDynamics, bForceLoadMaterials) end
---@param Actors TArray<AActor>
---@param Swap FMaterialPermuterHardSwapSimple
---@param MaterialsSwapped int32
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:HardSwapActors(Actors, Swap, MaterialsSwapped, MaterialInstanceDynamics, bForceLoadMaterials) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapSimple
---@param MaterialsSwapped int32
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:HardSwapActorNoMIDs(Actor, Swap, MaterialsSwapped, bForceLoadMaterials) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapSimple
---@param MaterialsSwapped int32
---@param MaterialInstanceDynamics TArray<UMaterialInstanceDynamic>
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:HardSwapActor(Actor, Swap, MaterialsSwapped, MaterialInstanceDynamics, bForceLoadMaterials) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapRules
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:BuildHardSwapCacheWithRules(Actor, Swap, HardSwapCache, bForceLoadMaterials) end
---@param Actors TArray<AActor>
---@param Swap FMaterialPermuterHardSwapRules
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:BuildHardSwapCacheForActorsWithRules(Actors, Swap, HardSwapCache, bForceLoadMaterials) end
---@param Actors TArray<AActor>
---@param Swap FMaterialPermuterHardSwapSimple
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:BuildHardSwapCacheForActors(Actors, Swap, HardSwapCache, bForceLoadMaterials) end
---@param Actor AActor
---@param Swap FMaterialPermuterHardSwapSimple
---@param HardSwapCache FMaterialSwapSharedMIDCache
---@param bForceLoadMaterials boolean
function UMaterialPermuterHardSwap:BuildHardSwapCache(Actor, Swap, HardSwapCache, bForceLoadMaterials) end


---@class UMaterialPermuterInstanceHandCraftedLibrary : UDataAsset
---@field HandCraftedMap TMap<TSoftObjectPtr<UMaterialInterface>, FMaterialPermuterInstanceHandCraftedKeySet>
---@field HandCraftedMasterMap TMap<TSoftObjectPtr<UMaterial>, FMaterialPermuterInstanceHandCraftedKeySetList>
local UMaterialPermuterInstanceHandCraftedLibrary = {}

function UMaterialPermuterInstanceHandCraftedLibrary:Build() end


---@class UMaterialPermuterKeyBlueprintLibrary : UBlueprintFunctionLibrary
local UMaterialPermuterKeyBlueprintLibrary = {}

---@param Key FMaterialPermuterKey
---@param Group FName
---@param SubType FName
function UMaterialPermuterKeyBlueprintLibrary:MaterialPermuterKeySplit(Key, Group, SubType) end
---@param Key FMaterialPermuterKey
---@param bValid boolean
function UMaterialPermuterKeyBlueprintLibrary:MaterialPermuterKeyIsValid(Key, bValid) end
---@param KeyDropdown FMaterialPermuterKeyProperty
---@param Group FName
---@param SubType FName
function UMaterialPermuterKeyBlueprintLibrary:MaterialPermuterKeyDropdownSplit(KeyDropdown, Group, SubType) end
---@param KeyDropdown FMaterialPermuterKeyProperty
---@param bValid boolean
function UMaterialPermuterKeyBlueprintLibrary:MaterialPermuterKeyDropdownIsValid(KeyDropdown, bValid) end
---@param Key FMaterialPermuterKey
---@return FString
function UMaterialPermuterKeyBlueprintLibrary:MakeMaterialPermuterKeyHashString(Key) end
---@param Key FMaterialPermuterKey
---@return FName
function UMaterialPermuterKeyBlueprintLibrary:MakeMaterialPermuterKeyHash(Key) end
---@param KeyDropdown FMaterialPermuterKeyProperty
---@return FMaterialPermuterKey
function UMaterialPermuterKeyBlueprintLibrary:MakeMaterialPermuterKeyFromKeyDropdown(KeyDropdown) end
---@param Group FName
---@param SubType FName
---@return FMaterialPermuterKey
function UMaterialPermuterKeyBlueprintLibrary:MakeMaterialPermuterKeyFromGroupSubType(Group, SubType) end
---@param KeyDropdown FMaterialPermuterKeyProperty
---@return FString
function UMaterialPermuterKeyBlueprintLibrary:MakeMaterialPermuterKeyDropdownHashString(KeyDropdown) end
---@param KeyDropdown FMaterialPermuterKeyProperty
---@return FName
function UMaterialPermuterKeyBlueprintLibrary:MakeMaterialPermuterKeyDropdownHash(KeyDropdown) end


---@class UMaterialPermuterLibrary : UDataAsset
---@field InstanceHandCraftedLibrary UMaterialPermuterInstanceHandCraftedLibrary
---@field bEnableMIDCache boolean
---@field MIDCacheTimeoutSeconds float
---@field Permutations TMap<FName, FMaterialPermuterMaterialMap>
---@field LoadingStrategiesAsset UMaterialPermuterLoadingStrategiesAsset
---@field CopyParameterOverrides FMaterialPermuterCopyParameterOverrides
---@field ValidPermutations TMap<FName, FMaterialPermuterKeyMap>
---@field KeyCache FMaterialPermuterKeyCache
local UMaterialPermuterLibrary = {}



---@class UMaterialPermuterLiveMaterials : UObject
---@field Triggers FMaterialPermuterLoadingTriggers
---@field Bundles FMaterialPermuterLoadingBundleList
---@field Index FMaterialPermuterMaterialAssetIndex
---@field LoadedObjects FLiveMaterialsLoadedObjects
---@field PendingLoads FLiveMaterialsPendingLoads
---@field Missing TArray<TSoftObjectPtr<UMaterialInterface>>
---@field HasBegunPlayWorlds TArray<TWeakObjectPtr<UWorld>>
local UMaterialPermuterLiveMaterials = {}



---@class UMaterialPermuterLoadingBundle : UActorComponent
---@field assets TSet<TSoftObjectPtr<UMaterialInterface>>
---@field LoadedAssets TArray<UMaterialInterface>
---@field MissingAssets TArray<TSoftObjectPtr<UMaterialInterface>>
---@field OnBundleLoadedDelegate FMaterialPermuterLoadingBundleOnBundleLoadedDelegate
---@field OnBundlePercentLoadedDelegate FMaterialPermuterLoadingBundleOnBundlePercentLoadedDelegate
---@field Priority EMaterialPermuterLoadingPriority
---@field State EMaterialPermuterLoadingBundleState
---@field StartTime FTimespan
---@field TimeWarnings int32
---@field LastPercentageBroadcast float
local UMaterialPermuterLoadingBundle = {}

---@param bValid boolean
function UMaterialPermuterLoadingBundle:ValidBundle(bValid) end
---@param WorldContextObject UObject
---@return AActor
function UMaterialPermuterLoadingBundle:GetWorldBundleOwner(WorldContextObject) end
---@param Loaded float
function UMaterialPermuterLoadingBundle:GetPercentageLoaded(Loaded) end
---@param bIsFullyLoaded boolean
function UMaterialPermuterLoadingBundle:FullyLoaded(bIsFullyLoaded) end
---@param Owner AActor
---@param Priority EMaterialPermuterLoadingPriority
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateMaterialSetBundleForOwnerOnly(Owner, Priority, bAttachedChildren, bComponentChildren) end
---@param Owner AActor
---@param MaterialAssetSet FMasterMaterialAssetSet
---@param Priority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateMaterialSetBundle(Owner, MaterialAssetSet, Priority) end
---@param Owner AActor
---@param Keys TArray<FMaterialPermuterKey>
---@param MaterialAssetSet FMasterMaterialAssetSet
---@param Priority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateKeysMaterialSetBundle(Owner, Keys, MaterialAssetSet, Priority) end
---@param Owner AActor
---@param Keys TArray<FMaterialPermuterKey>
---@param Priority EMaterialPermuterLoadingPriority
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateKeysBundleForOwnerOnly(Owner, Keys, Priority, bAttachedChildren, bComponentChildren) end
---@param Owner AActor
---@param Keys TArray<FMaterialPermuterKey>
---@param Priority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateKeysBundle(Owner, Keys, Priority) end
---@param Owner AActor
---@param Key FMaterialPermuterKey
---@param MaterialAssetSet FMasterMaterialAssetSet
---@param Priority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateKeyMaterialSetBundle(Owner, Key, MaterialAssetSet, Priority) end
---@param Owner AActor
---@param Key FMaterialPermuterKey
---@param Priority EMaterialPermuterLoadingPriority
---@param bAttachedChildren boolean
---@param bComponentChildren boolean
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateKeyBundleForOwnerOnly(Owner, Key, Priority, bAttachedChildren, bComponentChildren) end
---@param Owner AActor
---@param Key FMaterialPermuterKey
---@param Priority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundle
function UMaterialPermuterLoadingBundle:CreateKeyBundle(Owner, Key, Priority) end


---@class UMaterialPermuterLoadingBundleAndSwap : UMaterialPermuterLoadingBundle
---@field OnActorSwapDelegate FMaterialPermuterLoadingBundleAndSwapOnActorSwapDelegate
---@field MaterialSwapInfo FMaterialSwapKeyUI
---@field MaterialSwapState EMaterialPermuterLoadingBundleAndSwapState
---@field RawMaterialSwaps TArray<UMaterialSwap>
---@field MaterialSwapComponents TArray<TWeakObjectPtr<UMaterialSwapComponent>>
---@field HardSwapBatchComponents TArray<TWeakObjectPtr<UHardSwapBatchComponent>>
local UMaterialPermuterLoadingBundleAndSwap = {}

---@param Name FName
---@param Value UTexture
function UMaterialPermuterLoadingBundleAndSwap:SetTextureParameter(Name, Value) end
---@param Name FName
---@param Value float
function UMaterialPermuterLoadingBundleAndSwap:SetScalarParameter(Name, Value) end
---@param Name FName
---@param Value FLinearColor
function UMaterialPermuterLoadingBundleAndSwap:SetColorParameter(Name, Value) end
---@param bUnswap boolean
function UMaterialPermuterLoadingBundleAndSwap:ReleaseRawMaterialSwaps(bUnswap) end
---@param RawMaterialsSwapCount int32
function UMaterialPermuterLoadingBundleAndSwap:HasRawMaterialSwaps(RawMaterialsSwapCount) end
---@param CurrentSwapState EMaterialPermuterLoadingBundleAndSwapState
function UMaterialPermuterLoadingBundleAndSwap:GetMaterialSwapState(CurrentSwapState) end
---@param Key FMaterialPermuterKey
function UMaterialPermuterLoadingBundleAndSwap:GetMaterialSwapKey(Key) end


---@class UMaterialPermuterLoadingBundleAndSwapMulti : UMaterialPermuterLoadingBundleAndSwap
---@field TargetsToSwap TArray<FMaterialPermuterLoadingBundleAndSwapWeakTarget>
local UMaterialPermuterLoadingBundleAndSwapMulti = {}

---@param Owner AActor
---@param SwapInfo FMaterialSwapKeyUI
---@param SwapTargets TArray<FMaterialPermuterLoadingBundleAndSwapTarget>
---@param LoadPriority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundleAndSwapMulti
function UMaterialPermuterLoadingBundleAndSwapMulti:CreateAndSwapMultiTargets(Owner, SwapInfo, SwapTargets, LoadPriority) end
---@param Owner AActor
---@param SwapInfo FMaterialSwapKeyUI
---@param SwapTarget FMaterialPermuterLoadingBundleAndSwapTarget
---@param LoadPriority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundleAndSwapMulti
function UMaterialPermuterLoadingBundleAndSwapMulti:CreateAndSwapMultiTarget(Owner, SwapInfo, SwapTarget, LoadPriority) end


---@class UMaterialPermuterLoadingBundleAndSwapOwner : UMaterialPermuterLoadingBundleAndSwap
---@field InitialSwapParameters FMaterialSwapParameters
---@field SwapType EMaterialPermuterLoadingBundleAndSwapType
---@field HardSwapBatchSettings FHardSwapBatchComponentSettings
local UMaterialPermuterLoadingBundleAndSwapOwner = {}

---@param Owner AActor
---@param SwapInfo FMaterialSwapKeyUI
---@param InitialParameters FMaterialSwapParameters
---@param MaterialSwapType EMaterialPermuterLoadingBundleAndSwapType
---@param LoadPriority EMaterialPermuterLoadingPriority
---@return UMaterialPermuterLoadingBundleAndSwapOwner
function UMaterialPermuterLoadingBundleAndSwapOwner:CreateAndSwapOwner(Owner, SwapInfo, InitialParameters, MaterialSwapType, LoadPriority) end


---@class UMaterialPermuterLoadingStrategiesAsset : UDataAsset
---@field DynamicLoadingTriggers TArray<UMaterialPermuterDynamicTrigger>
---@field Built FMaterialPermuterLoadingStrategies
local UMaterialPermuterLoadingStrategiesAsset = {}

function UMaterialPermuterLoadingStrategiesAsset:BuildLoadingStrategies() end


---@class UMaterialSwap : UObject
---@field Key FMaterialPermuterKey
---@field Priority EMaterialSwapPriority
local UMaterialSwap = {}

---@param Name FName
---@param Value FVector
function UMaterialSwap:SetVectorParameter(Name, Value) end
---@param Name FName
---@param Value FVector4
function UMaterialSwap:SetVector4Parameter(Name, Value) end
---@param Name FName
---@param Value UTexture
function UMaterialSwap:SetTextureParameter(Name, Value) end
---@param Name FName
---@param Value float
function UMaterialSwap:SetScalarParameter(Name, Value) end
---@param Name FName
---@param Value FLinearColor
function UMaterialSwap:SetColorParameter(Name, Value) end


---@class UMaterialSwapActor : UMaterialSwapMeshPoolBase
---@field SwappedActor TWeakObjectPtr<AActor>
---@field DependentSwaps TArray<UMaterialSwapActor>
---@field RootSwap TWeakObjectPtr<UMaterialSwapActor>
---@field RefreshType EMaterialSwapRefreshType
local UMaterialSwapActor = {}



---@class UMaterialSwapComponent : UActorComponent
---@field MaterialSwap UMaterialSwap
---@field SpecificMeshComponent TWeakObjectPtr<UMeshComponent>
local UMaterialSwapComponent = {}

---@return boolean
function UMaterialSwapComponent:ValidSwap() end
---@return boolean
function UMaterialSwapComponent:Swapped() end
---@param Name FName
---@param Value FVector
function UMaterialSwapComponent:SetVectorParameter(Name, Value) end
---@param Name FName
---@param Value FVector4
function UMaterialSwapComponent:SetVector4Parameter(Name, Value) end
---@param Name FName
---@param Value UTexture
function UMaterialSwapComponent:SetTextureParameter(Name, Value) end
---@param Name FName
---@param Value float
function UMaterialSwapComponent:SetScalarParameter(Name, Value) end
---@param Params FMaterialSwapParameters
function UMaterialSwapComponent:SetParameters(Params) end
---@param Name FName
---@param Value FLinearColor
function UMaterialSwapComponent:SetColorParameter(Name, Value) end
---@return boolean
function UMaterialSwapComponent:RestartSwap() end
---@param SwapInfo FMaterialSwapInfo
---@return boolean
function UMaterialSwapComponent:NewSwapAdvanced(SwapInfo) end
---@param Priority EMaterialSwapPriority
---@param Group FName
---@param SubType FName
---@return boolean
function UMaterialSwapComponent:NewSwap(Priority, Group, SubType) end
---@param Actor AActor
---@param bHasMaterialSwap boolean
function UMaterialSwapComponent:HasMaterialSwap(Actor, bHasMaterialSwap) end
---@param Actor AActor
---@param MaterialSwapComponent UMaterialSwapComponent
function UMaterialSwapComponent:GetMaterialSwap(Actor, MaterialSwapComponent) end
---@return FMaterialSwapComponentHandle
function UMaterialSwapComponent:GetCurrentHandle() end
---@param AllowRestart boolean
---@param ReleaseSwap boolean
function UMaterialSwapComponent:EndSwap(AllowRestart, ReleaseSwap) end
---@param MaterialSwapComponent UMaterialSwapComponent
---@param bUnswap boolean
---@return boolean
function UMaterialSwapComponent:DestroySwapComponent(MaterialSwapComponent, bUnswap) end
---@param Actor AActor
---@param unswap boolean
---@return boolean
function UMaterialSwapComponent:DestroySwap(Actor, unswap) end
---@param Actor AActor
---@param MaterialSwapComponent UMaterialSwapComponent
---@param SwapInfo FMaterialSwapInfo
---@param bAlwaysCreateNewComponent boolean
---@return boolean
function UMaterialSwapComponent:CreateSwapAdvanced(Actor, MaterialSwapComponent, SwapInfo, bAlwaysCreateNewComponent) end
---@param Actor AActor
---@param MaterialSwapComponent UMaterialSwapComponent
---@param Priority EMaterialSwapPriority
---@param Group FName
---@param SubType FName
---@return boolean
function UMaterialSwapComponent:CreateSwap(Actor, MaterialSwapComponent, Priority, Group, SubType) end
---@param MeshComponent UMeshComponent
---@param MaterialSwapComponent UMaterialSwapComponent
---@param SwapInfo FMaterialSwapInfo
---@param bAlwaysCreateNewComponent boolean
---@return boolean
function UMaterialSwapComponent:CreateMeshSwap(MeshComponent, MaterialSwapComponent, SwapInfo, bAlwaysCreateNewComponent) end


---@class UMaterialSwapComponentAutoRefresh : UMaterialSwapComponent
---@field Parameters FMaterialSwapParameters
---@field SavedSwapInfo UMaterialSwapInfoObjectBase
local UMaterialSwapComponentAutoRefresh = {}

---@param Actor AActor
---@param bHasMaterialSwap boolean
function UMaterialSwapComponentAutoRefresh:HasAutoRefreshMaterialSwap(Actor, bHasMaterialSwap) end
---@param Actor AActor
---@param MaterialSwapAutoRefreshComponent UMaterialSwapComponentAutoRefresh
function UMaterialSwapComponentAutoRefresh:GetAutoRefreshMaterialSwap(Actor, MaterialSwapAutoRefreshComponent) end
---@param Actor AActor
---@param MaterialSwapComponent UMaterialSwapComponentAutoRefresh
---@param Priority EMaterialSwapPriority
---@param Group FName
---@param SubType FName
---@return boolean
function UMaterialSwapComponentAutoRefresh:CreateSwapAutoRefresh(Actor, MaterialSwapComponent, Priority, Group, SubType) end
---@param Actor AActor
---@param MaterialSwapComponent UMaterialSwapComponentAutoRefresh
---@param SwapInfo FMaterialSwapInfo
---@return boolean
function UMaterialSwapComponentAutoRefresh:CreateSwapAdvancedAutoRefresh(Actor, MaterialSwapComponent, SwapInfo) end


---@class UMaterialSwapInfoInPlaceMIDsObject : UMaterialSwapInfoObject
---@field SwapInfo FMaterialSwapInfoInPlaceMIDs
local UMaterialSwapInfoInPlaceMIDsObject = {}



---@class UMaterialSwapInfoMaterialPermuterKeyObject : UMaterialSwapInfoObjectBase
---@field SwapInfo FMaterialSwapKey
local UMaterialSwapInfoMaterialPermuterKeyObject = {}



---@class UMaterialSwapInfoMaterialPermuterKeyUIObject : UMaterialSwapInfoObject
---@field SwapInfo FMaterialSwapKeyUI
local UMaterialSwapInfoMaterialPermuterKeyUIObject = {}



---@class UMaterialSwapInfoObject : UMaterialSwapInfoObjectBase
local UMaterialSwapInfoObject = {}


---@class UMaterialSwapInfoObjectBase : UObject
local UMaterialSwapInfoObjectBase = {}


---@class UMaterialSwapInfoOverrideMaterialObject : UMaterialSwapInfoObject
---@field SwapInfo FMaterialSwapInfoOverrideMaterial
local UMaterialSwapInfoOverrideMaterialObject = {}



---@class UMaterialSwapInfoOverrideMaterialsObject : UMaterialSwapInfoObject
---@field SwapInfo FMaterialSwapInfoOverrideMaterials
local UMaterialSwapInfoOverrideMaterialsObject = {}



---@class UMaterialSwapMeshPool : UMaterialSwapMeshPoolBase
local UMaterialSwapMeshPool = {}


---@class UMaterialSwapMeshPoolBase : UMaterialSwap
---@field SwappedMeshes TMap<TWeakObjectPtr<UMeshComponent>, FMeshMaterialSwap>
---@field MeshStates FMaterialSwapMeshStatesAndData
local UMaterialSwapMeshPoolBase = {}



---@class UMaterialSwapMeshState : UObject
local UMaterialSwapMeshState = {}


---@class UMaterialSwapMeshStateAddTag : UMaterialSwapMeshStateTag
local UMaterialSwapMeshStateAddTag = {}


---@class UMaterialSwapMeshStateBoolMap : UMaterialSwapMeshState
local UMaterialSwapMeshStateBoolMap = {}


---@class UMaterialSwapMeshStateBoundsScale : UMaterialSwapMeshStateFloatMap
---@field BoundsScale float
local UMaterialSwapMeshStateBoundsScale = {}



---@class UMaterialSwapMeshStateCastShadow : UMaterialSwapMeshStateBoolMap
---@field bCastShadow boolean
local UMaterialSwapMeshStateCastShadow = {}



---@class UMaterialSwapMeshStateContactShadow : UMaterialSwapMeshStateBoolMap
---@field bCastContactShadow boolean
local UMaterialSwapMeshStateContactShadow = {}



---@class UMaterialSwapMeshStateCustomDepthStencilValue : UMaterialSwapMeshStateIntMap
---@field CustomDepthStencilValue int32
local UMaterialSwapMeshStateCustomDepthStencilValue = {}



---@class UMaterialSwapMeshStateData : UObject
local UMaterialSwapMeshStateData = {}


---@class UMaterialSwapMeshStateDataBoolMap : UMaterialSwapMeshStateData
local UMaterialSwapMeshStateDataBoolMap = {}


---@class UMaterialSwapMeshStateDataFloatMap : UMaterialSwapMeshStateData
local UMaterialSwapMeshStateDataFloatMap = {}


---@class UMaterialSwapMeshStateDataIntMap : UMaterialSwapMeshStateData
local UMaterialSwapMeshStateDataIntMap = {}


---@class UMaterialSwapMeshStateDynamicShadow : UMaterialSwapMeshStateBoolMap
---@field bCastDynamicShadow boolean
local UMaterialSwapMeshStateDynamicShadow = {}



---@class UMaterialSwapMeshStateFloatMap : UMaterialSwapMeshState
local UMaterialSwapMeshStateFloatMap = {}


---@class UMaterialSwapMeshStateForcedLodModel : UMaterialSwapMeshStateIntMap
---@field ForcedLodModel int32
local UMaterialSwapMeshStateForcedLodModel = {}



---@class UMaterialSwapMeshStateHiddenShadow : UMaterialSwapMeshStateBoolMap
---@field bCastHiddenShadow boolean
local UMaterialSwapMeshStateHiddenShadow = {}



---@class UMaterialSwapMeshStateIgnoreLightLeakingCorrection : UMaterialSwapMeshStateBoolMap
---@field bIgnoreLightLeakingCorrection boolean
local UMaterialSwapMeshStateIgnoreLightLeakingCorrection = {}



---@class UMaterialSwapMeshStateIntMap : UMaterialSwapMeshState
local UMaterialSwapMeshStateIntMap = {}


---@class UMaterialSwapMeshStateLightingChannels : UMaterialSwapMeshStateIntMap
---@field LightingChannels FLightingChannels
local UMaterialSwapMeshStateLightingChannels = {}



---@class UMaterialSwapMeshStateReceivesDecals : UMaterialSwapMeshStateBoolMap
---@field bReceivesDecals boolean
local UMaterialSwapMeshStateReceivesDecals = {}



---@class UMaterialSwapMeshStateReceivesWeatherDecals : UMaterialSwapMeshStateBoolMap
---@field bReceivesWeatherDecals boolean
local UMaterialSwapMeshStateReceivesWeatherDecals = {}



---@class UMaterialSwapMeshStateRemoveTag : UMaterialSwapMeshStateTag
local UMaterialSwapMeshStateRemoveTag = {}


---@class UMaterialSwapMeshStateRenderCustomDepth : UMaterialSwapMeshStateBoolMap
---@field bRenderCustomDepth boolean
local UMaterialSwapMeshStateRenderCustomDepth = {}



---@class UMaterialSwapMeshStateSelfShadowOnly : UMaterialSwapMeshStateBoolMap
---@field bSelfShadowOnly boolean
local UMaterialSwapMeshStateSelfShadowOnly = {}



---@class UMaterialSwapMeshStateShadowAsTwoSided : UMaterialSwapMeshStateBoolMap
---@field bCastShadowAsTwoSided boolean
local UMaterialSwapMeshStateShadowAsTwoSided = {}



---@class UMaterialSwapMeshStateTag : UMaterialSwapMeshStateBoolMap
---@field Tag FName
local UMaterialSwapMeshStateTag = {}



---@class UMaterialSwapMeshStateTranslucencySortDistanceOffset : UMaterialSwapMeshStateFloatMap
---@field TranslucencySortDistanceOffset float
local UMaterialSwapMeshStateTranslucencySortDistanceOffset = {}



---@class UMaterialSwapMeshStateTranslucencySortPriority : UMaterialSwapMeshStateIntMap
---@field TranslucencySortPriority int32
local UMaterialSwapMeshStateTranslucencySortPriority = {}



---@class UMaterialSwapMeshStateTreatAsBackgroundForOcclusion : UMaterialSwapMeshStateBoolMap
---@field bTreatAsBackgroundForOcclusion boolean
local UMaterialSwapMeshStateTreatAsBackgroundForOcclusion = {}



---@class UMaterialSwapMeshStateUseAsOccluder : UMaterialSwapMeshStateBoolMap
---@field bUseAsOccluder boolean
local UMaterialSwapMeshStateUseAsOccluder = {}



---@class UMaterialSwapMeshStatesBaseComponent : UActorComponent
---@field MeshStatesAndData FMaterialSwapMeshStatesAndData
---@field MeshStatesTag FName
local UMaterialSwapMeshStatesBaseComponent = {}

---@param MaterialSwapMeshStatesComponent UMaterialSwapMeshStatesBaseComponent
---@param bSuccess boolean
function UMaterialSwapMeshStatesBaseComponent:KillMaterialSwapMeshStatesComponent(MaterialSwapMeshStatesComponent, bSuccess) end
---@param Target AActor
---@param Tag FName
---@param CountOfDestroyed int32
function UMaterialSwapMeshStatesBaseComponent:KillAllMaterialSwapMeshStatesComponentsByTag(Target, Tag, CountOfDestroyed) end
---@param Target AActor
---@param Tag FName
---@param ActiveCount int32
function UMaterialSwapMeshStatesBaseComponent:CountAllMaterialSwapMeshStatesComponentsByTag(Target, Tag, ActiveCount) end


---@class UMaterialSwapMeshStatesComponent : UMaterialSwapMeshStatesBaseComponent
---@field MeshStates TArray<UMaterialSwapMeshState>
---@field bIncludeChildren boolean
---@field bUpdateOnTick boolean
local UMaterialSwapMeshStatesComponent = {}



---@class UMaterialSwapMeshStatesFireAndForgetComponent : UMaterialSwapMeshStatesBaseComponent
---@field OwningActor TWeakObjectPtr<AActor>
---@field Rules FMaterialSwapRules
---@field bUseRules boolean
---@field bIncludeChildren boolean
---@field bUpdateOnTick boolean
local UMaterialSwapMeshStatesFireAndForgetComponent = {}

---@param MeshStates TArray<UMaterialSwapMeshState>
function UMaterialSwapMeshStatesFireAndForgetComponent:RestartMeshStates(MeshStates) end
---@param Owner AActor
---@param Target AActor
---@param MeshStates TArray<UMaterialSwapMeshState>
---@param UseRules FMaterialSwapRules
---@param bAutoUpdate boolean
---@param Tag FName
---@return UMaterialSwapMeshStatesFireAndForgetComponent
function UMaterialSwapMeshStatesFireAndForgetComponent:CreateMeshStatesFireAndForgetComponentRules(Owner, Target, MeshStates, UseRules, bAutoUpdate, Tag) end
---@param Owner AActor
---@param Target AActor
---@param MeshStates TArray<UMaterialSwapMeshState>
---@param bShouldIncludeChildren boolean
---@param bAutoUpdate boolean
---@param Tag FName
---@return UMaterialSwapMeshStatesFireAndForgetComponent
function UMaterialSwapMeshStatesFireAndForgetComponent:CreateMeshStatesFireAndForgetComponent(Owner, Target, MeshStates, bShouldIncludeChildren, bAutoUpdate, Tag) end


---@class UMaterialSwapMeshStatesRulesComponent : UMaterialSwapMeshStatesBaseComponent
---@field MeshStates TArray<UMaterialSwapMeshState>
---@field Rules FMaterialSwapRules
---@field bUpdateOnTick boolean
local UMaterialSwapMeshStatesRulesComponent = {}



---@class UMaterialSwapSingleMesh : UMaterialSwap
---@field Mesh TWeakObjectPtr<UMeshComponent>
---@field SwappedMesh FMeshMaterialSwap
---@field MeshStates FMaterialSwapMeshStatesAndData
local UMaterialSwapSingleMesh = {}



---@class UMaterialSwapSphereSelectionComponent : USceneComponent
---@field SphereType EMaterialSwapSphereSelectionType
---@field ManualPosition FVector
---@field SphereRadiusMeters float
---@field UnswapDelaySeconds float
---@field ActorEventRules FMaterialSwapActorRules
---@field ActorEventDelegate FMaterialSwapSphereSelectionComponentActorEventDelegate
---@field SwapSphereMaterialParameter FName
---@field bSwapSphereMaterialParameter boolean
---@field bSwapOwner boolean
---@field SwapInfo FMaterialSwapInfo
---@field MaterialSwaps TMap<TWeakObjectPtr<UMeshComponent>, FMaterialSwapSphereSelectionMesh>
---@field ActorsInside TMap<TWeakObjectPtr<AActor>, FMaterialSwapSphereSelectionActor>
---@field SwapSphereMaterialParameterValue FVector4
---@field bSwapping boolean
local UMaterialSwapSphereSelectionComponent = {}

---@return boolean
function UMaterialSwapSphereSelectionComponent:Swapping() end
---@return int32
function UMaterialSwapSphereSelectionComponent:Swapped() end
---@param NewSwapInfo FMaterialSwapInfo
function UMaterialSwapSphereSelectionComponent:StartSwapping(NewSwapInfo) end
---@param Name FName
---@param Value FVector
function UMaterialSwapSphereSelectionComponent:SetVectorParameter(Name, Value) end
---@param Name FName
---@param Value FVector4
function UMaterialSwapSphereSelectionComponent:SetVector4Parameter(Name, Value) end
---@param Name FName
---@param Value UTexture
function UMaterialSwapSphereSelectionComponent:SetTextureParameter(Name, Value) end
---@param Name FName
---@param Value float
function UMaterialSwapSphereSelectionComponent:SetScalarParameter(Name, Value) end
---@param Params FMaterialSwapParameters
function UMaterialSwapSphereSelectionComponent:SetParameters(Params) end
---@param Name FName
---@param Value FLinearColor
function UMaterialSwapSphereSelectionComponent:SetColorParameter(Name, Value) end
---@param OnlySwappingWeather boolean
function UMaterialSwapSphereSelectionComponent:IsWeatherOnly(OnlySwappingWeather) end
---@param Actor AActor
---@return boolean
function UMaterialSwapSphereSelectionComponent:IsInside(Actor) end
---@param CurrentSwapInfo FMaterialSwapInfo
function UMaterialSwapSphereSelectionComponent:GetCurrentSwapInfo(CurrentSwapInfo) end
function UMaterialSwapSphereSelectionComponent:EndSwapping() end


---@class USimpleDataSet : UObject
---@field LoadedObjects TSet<UObject>
---@field PendingLoads TArray<FSimpleDataSetPendingLoad>
---@field PreloadState ESimpleDataSetPreloadState
local USimpleDataSet = {}



