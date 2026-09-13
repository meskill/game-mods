---@meta

---@class FNiagaraDataInterfaceAkEventInfo
---@field AkAudioEvent UAkAudioEvent
---@field EventName FName
---@field AttachPointName FName
local FNiagaraDataInterfaceAkEventInfo = {}



---@class FNiagaraHelpersEmitterVariableList : FNiagaraHelpersVariableList
---@field EmitterName FName
---@field bDefaultEnabled boolean
local FNiagaraHelpersEmitterVariableList = {}



---@class FNiagaraHelpersFullVariableList
---@field UserVariables FNiagaraHelpersVariableList
---@field SystemVariables FNiagaraHelpersVariableList
---@field EmitterVariables TArray<FNiagaraHelpersEmitterVariableList>
---@field DefaultValues FNiagaraHelpersVariableValueStore
local FNiagaraHelpersFullVariableList = {}



---@class FNiagaraHelpersInitializerBool
---@field Variable FName
---@field Value boolean
local FNiagaraHelpersInitializerBool = {}



---@class FNiagaraHelpersInitializerFloat
---@field Variable FName
---@field Value float
local FNiagaraHelpersInitializerFloat = {}



---@class FNiagaraHelpersInitializerInteger
---@field Variable FName
---@field Value int32
local FNiagaraHelpersInitializerInteger = {}



---@class FNiagaraHelpersInitializerLinearColor
---@field Variable FNiagaraHelpersVarNameLinearColor
---@field Value FLinearColor
local FNiagaraHelpersInitializerLinearColor = {}



---@class FNiagaraHelpersInitializerMaterial
---@field Variable FNiagaraHelpersVarNameMaterial
---@field Value UMaterialInterface
local FNiagaraHelpersInitializerMaterial = {}



---@class FNiagaraHelpersInitializerRaw
---@field Floats TArray<FNiagaraHelpersInitializerRawFloat>
---@field Bools TArray<FNiagaraHelpersInitializerRawBool>
---@field Integers TArray<FNiagaraHelpersInitializerRawInteger>
---@field LinearColors TArray<FNiagaraHelpersInitializerRawLinearColor>
---@field Vectors TArray<FNiagaraHelpersInitializerRawVector>
---@field Rotators TArray<FNiagaraHelpersInitializerRawRotator>
---@field Materials TArray<FNiagaraHelpersInitializerRawMaterial>
local FNiagaraHelpersInitializerRaw = {}



---@class FNiagaraHelpersInitializerRawBool
---@field Variable FName
---@field Value boolean
local FNiagaraHelpersInitializerRawBool = {}



---@class FNiagaraHelpersInitializerRawFloat
---@field Variable FName
---@field Value float
local FNiagaraHelpersInitializerRawFloat = {}



---@class FNiagaraHelpersInitializerRawInteger
---@field Variable FName
---@field Value int32
local FNiagaraHelpersInitializerRawInteger = {}



---@class FNiagaraHelpersInitializerRawLinearColor
---@field Variable FName
---@field Value FLinearColor
local FNiagaraHelpersInitializerRawLinearColor = {}



---@class FNiagaraHelpersInitializerRawMaterial
---@field Variable FName
---@field Value UMaterialInterface
local FNiagaraHelpersInitializerRawMaterial = {}



---@class FNiagaraHelpersInitializerRawRotator
---@field Variable FName
---@field Value FRotator
local FNiagaraHelpersInitializerRawRotator = {}



---@class FNiagaraHelpersInitializerRawVector
---@field Variable FName
---@field Value FVector
local FNiagaraHelpersInitializerRawVector = {}



---@class FNiagaraHelpersInitializerRotator
---@field Variable FNiagaraHelpersVarNameQuat
---@field Value FRotator
local FNiagaraHelpersInitializerRotator = {}



---@class FNiagaraHelpersInitializerVector
---@field Variable FNiagaraHelpersVarNameVector
---@field Value FVector
local FNiagaraHelpersInitializerVector = {}



---@class FNiagaraHelpersInitializers
---@field Floats TArray<FNiagaraHelpersInitializerFloat>
---@field Bools TArray<FNiagaraHelpersInitializerBool>
---@field Integers TArray<FNiagaraHelpersInitializerInteger>
---@field LinearColors TArray<FNiagaraHelpersInitializerLinearColor>
---@field Vectors TArray<FNiagaraHelpersInitializerVector>
---@field Rotators TArray<FNiagaraHelpersInitializerRotator>
---@field Materials TArray<FNiagaraHelpersInitializerMaterial>
local FNiagaraHelpersInitializers = {}



---@class FNiagaraHelpersPrimFilter
---@field Primitives TArray<FName>
---@field Rule ENiagaraHelpersPrimRule
---@field MatchMode ENiagaraHelpersPrimMatchMode
local FNiagaraHelpersPrimFilter = {}



---@class FNiagaraHelpersSystemVariableCache
---@field SystemMap TMap<TWeakObjectPtr<UNiagaraSystem>, UNiagaraHelpersFullVariableListCacheEntry>
local FNiagaraHelpersSystemVariableCache = {}



---@class FNiagaraHelpersVarName
---@field Name FName
local FNiagaraHelpersVarName = {}



---@class FNiagaraHelpersVarNameBool : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameBool = {}


---@class FNiagaraHelpersVarNameFloat : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameFloat = {}


---@class FNiagaraHelpersVarNameInteger : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameInteger = {}


---@class FNiagaraHelpersVarNameLinearColor : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameLinearColor = {}


---@class FNiagaraHelpersVarNameMaterial : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameMaterial = {}


---@class FNiagaraHelpersVarNameQuat : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameQuat = {}


---@class FNiagaraHelpersVarNameVector : FNiagaraHelpersVarName
local FNiagaraHelpersVarNameVector = {}


---@class FNiagaraHelpersVariableList
---@field Variables TArray<FNiagaraVariable>
local FNiagaraHelpersVariableList = {}



---@class FNiagaraHelpersVariableValueStore
---@field Floats TMap<FName, float>
---@field LinearColors TMap<FName, FLinearColor>
---@field Bools TMap<FName, boolean>
---@field Integers TMap<FName, int32>
---@field Vectors TMap<FName, FVector>
---@field Rotators TMap<FName, FRotator>
---@field Materials TMap<FName, UMaterialInterface>
local FNiagaraHelpersVariableValueStore = {}



---@class FNiagaraSystemSpawnAttachedInfo : FNiagaraSystemSpawnInfo
---@field AttachLocation EAttachLocation::Type
---@field BoundsSpawnRateAdjustment FNiagaraSystemSpawnBoundsSpawnRate
local FNiagaraSystemSpawnAttachedInfo = {}



---@class FNiagaraSystemSpawnAttachedInfoOverride : FNiagaraSystemSpawnInfoOverride
---@field bOverride_AttachLocation boolean
---@field AttachLocation EAttachLocation::Type
local FNiagaraSystemSpawnAttachedInfoOverride = {}



---@class FNiagaraSystemSpawnAttachedPointInfo : FNiagaraSystemSpawnAttachedInfo
---@field AttachPoint FName
---@field bFailOnAttachPointMissing boolean
---@field bDeepSearchComponents boolean
local FNiagaraSystemSpawnAttachedPointInfo = {}



---@class FNiagaraSystemSpawnAttachedPointInfoOverride : FNiagaraSystemSpawnAttachedInfoOverride
---@field bOverride_AttachPoint boolean
---@field bOverride_FailOnAttachPointMissing boolean
---@field bOverride_DeepSearchComponents boolean
---@field AttachPoint FName
---@field bFailOnAttachPointMissing boolean
---@field bDeepSearchComponents boolean
local FNiagaraSystemSpawnAttachedPointInfoOverride = {}



---@class FNiagaraSystemSpawnBoundsSpawnRate
---@field SpawnRateVar FName
---@field ReferenceMeasure float
---@field LinearPower float
---@field MinSpawnRate float
---@field MaxSpawnRate float
---@field Method ENiagaraSpawnBoundsMethod
---@field bUseMinSpawnRate boolean
---@field bUseMaxSpawnRate boolean
local FNiagaraSystemSpawnBoundsSpawnRate = {}



---@class FNiagaraSystemSpawnInfo
---@field Transform FTransform
---@field bAutoActivate boolean
---@field bAutoDestroy boolean
---@field bPreCullCheck boolean
---@field bPooled boolean
local FNiagaraSystemSpawnInfo = {}



---@class FNiagaraSystemSpawnInfoOverride
---@field bOverride_LocationOrOffset boolean
---@field bOverride_Rotator boolean
---@field bOverride_Scale boolean
---@field bOverride_bAutoActivate boolean
---@field bOverride_bAutoDestroy boolean
---@field bOverride_bPreCullCheck boolean
---@field bOverride_bPooled boolean
---@field LocationOrOffset FVector
---@field Rotator FRotator
---@field Scale FVector
---@field bAutoActivate boolean
---@field bAutoDestroy boolean
---@field bPreCullCheck boolean
---@field bPooled boolean
local FNiagaraSystemSpawnInfoOverride = {}



---@class FNiagaraSystemSpawnMultiInfo : FNiagaraSystemSpawnAttachedInfo
---@field OverrideMeshVar FName
---@field SpawnRateVar FName
---@field SpawnRateCutoffPercentage float
---@field SpawnRateMethod ENiagaraHelpersMultiSpawnRateType
---@field bCombineBoundsAndMultiSpawnRates boolean
local FNiagaraSystemSpawnMultiInfo = {}



---@class FNiagaraSystemSpawnMultiSkeletalInfo : FNiagaraSystemSpawnMultiInfo
local FNiagaraSystemSpawnMultiSkeletalInfo = {}


---@class FNiagaraSystemSpawnMultiStaticInfo : FNiagaraSystemSpawnMultiInfo
local FNiagaraSystemSpawnMultiStaticInfo = {}


---@class IInterface_NiagaraHelpersInitializer : IInterface
local IInterface_NiagaraHelpersInitializer = {}


---@class UNiagaraDataInterfaceAkEvent : UNiagaraDataInterface
---@field AkAudioEvent UAkAudioEvent
---@field EventName FName
---@field AttachPointName FName
local UNiagaraDataInterfaceAkEvent = {}



---@class UNiagaraDataInterfaceAkEventPerParticle : UNiagaraDataInterface
---@field Events TArray<FNiagaraDataInterfaceAkEventInfo>
local UNiagaraDataInterfaceAkEventPerParticle = {}



---@class UNiagaraDataInterfaceAkRTPC : UNiagaraDataInterface
---@field RTPCs TArray<FName>
local UNiagaraDataInterfaceAkRTPC = {}



---@class UNiagaraDataInterfaceInsideAndWind : UNiagaraDataInterface
local UNiagaraDataInterfaceInsideAndWind = {}


---@class UNiagaraHelpers : UBlueprintFunctionLibrary
local UNiagaraHelpers = {}

---@param Actor AActor
---@param NiagaraSystem UNiagaraSystem
---@param SpawnInfo FNiagaraSystemSpawnMultiStaticInfo
---@param Filter FNiagaraHelpersPrimFilter
---@param NiagaraComponents TArray<UNiagaraComponent>
function UNiagaraHelpers:SpawnSystemOnStaticMeshes(Actor, NiagaraSystem, SpawnInfo, Filter, NiagaraComponents) end
---@param Actor AActor
---@param NiagaraSystem UNiagaraSystem
---@param SpawnInfo FNiagaraSystemSpawnMultiSkeletalInfo
---@param Filter FNiagaraHelpersPrimFilter
---@param NiagaraComponents TArray<UNiagaraComponent>
function UNiagaraHelpers:SpawnSystemOnSkeletalMeshes(Actor, NiagaraSystem, SpawnInfo, Filter, NiagaraComponents) end
---@param Actor AActor
---@param NiagaraSystem UNiagaraSystem
---@param SpawnInfo FNiagaraSystemSpawnAttachedInfo
---@param Filter FNiagaraHelpersPrimFilter
---@param NiagaraComponents TArray<UNiagaraComponent>
function UNiagaraHelpers:SpawnSystemOnPrimitives(Actor, NiagaraSystem, SpawnInfo, Filter, NiagaraComponents) end
---@param WorldContextObject UObject
---@param NiagaraSystem UNiagaraSystem
---@param SpawnInfo FNiagaraSystemSpawnInfo
---@param NiagaraComponent UNiagaraComponent
function UNiagaraHelpers:SpawnInWorld(WorldContextObject, NiagaraSystem, SpawnInfo, NiagaraComponent) end
---@param Actor AActor
---@param NiagaraSystem UNiagaraSystem
---@param SpawnInfo FNiagaraSystemSpawnAttachedPointInfo
---@param NiagaraComponent UNiagaraComponent
function UNiagaraHelpers:SpawnAttachedActor(Actor, NiagaraSystem, SpawnInfo, NiagaraComponent) end
---@param SceneComponent USceneComponent
---@param NiagaraSystem UNiagaraSystem
---@param SpawnInfo FNiagaraSystemSpawnAttachedPointInfo
---@param NiagaraComponent UNiagaraComponent
function UNiagaraHelpers:SpawnAttached(SceneComponent, NiagaraSystem, SpawnInfo, NiagaraComponent) end
---@param npci UNiagaraParameterCollectionInstance
---@param ParamName FString
---@param Value FVector
function UNiagaraHelpers:NPCSetParameterVector(npci, ParamName, Value) end
---@param npci UNiagaraParameterCollectionInstance
---@param ParamName FString
---@param Value float
function UNiagaraHelpers:NPCSetParameterFloat(npci, ParamName, Value) end
---@param npci UNiagaraParameterCollectionInstance
---@param ParamName FString
---@param Value FLinearColor
function UNiagaraHelpers:NPCSetParameterColor(npci, ParamName, Value) end
---@param Rule ENiagaraHelpersPrimRule
---@param Primitives TArray<UPrimitiveComponent>
---@param MatchMode ENiagaraHelpersPrimMatchMode
---@return FNiagaraHelpersPrimFilter
function UNiagaraHelpers:MakePrimFilterPrimitives(Rule, Primitives, MatchMode) end
---@param Rule ENiagaraHelpersPrimRule
---@param Primitive UPrimitiveComponent
---@param MatchMode ENiagaraHelpersPrimMatchMode
---@return FNiagaraHelpersPrimFilter
function UNiagaraHelpers:MakePrimFilterPrimitive(Rule, Primitive, MatchMode) end
---@param Rule ENiagaraHelpersPrimRule
---@param Primitives TArray<FName>
---@param MatchMode ENiagaraHelpersPrimMatchMode
---@return FNiagaraHelpersPrimFilter
function UNiagaraHelpers:MakePrimFilterNames(Rule, Primitives, MatchMode) end
---@param Rule ENiagaraHelpersPrimRule
---@param Primitive FName
---@param MatchMode ENiagaraHelpersPrimMatchMode
---@return FNiagaraHelpersPrimFilter
function UNiagaraHelpers:MakePrimFilterName(Rule, Primitive, MatchMode) end
---@param NiagaraSystem UNiagaraSystem
---@param emitterNames TArray<FName>
---@param includeHidden boolean
function UNiagaraHelpers:GetEmitterNames(NiagaraSystem, emitterNames, includeHidden) end
---@param Components TArray<USceneComponent>
---@param Method ENiagaraSpawnBoundsMethod
---@param Measure float
---@param LinearPower float
function UNiagaraHelpers:ComputeComponentBoundsMeasure(Components, Method, Measure, LinearPower) end
---@param Actor AActor
---@param Method ENiagaraSpawnBoundsMethod
---@param Measure float
---@param LinearPower float
function UNiagaraHelpers:ComputeActorStaticMeshBoundsMeasure(Actor, Method, Measure, LinearPower) end
---@param Actor AActor
---@param Method ENiagaraSpawnBoundsMethod
---@param Measure float
---@param LinearPower float
function UNiagaraHelpers:ComputeActorSkeletalMeshBoundsMeasure(Actor, Method, Measure, LinearPower) end
---@param Actor AActor
---@param Method ENiagaraSpawnBoundsMethod
---@param Measure float
---@param LinearPower float
function UNiagaraHelpers:ComputeActorPrimitiveBoundsMeasure(Actor, Method, Measure, LinearPower) end
---@param Actor AActor
---@param Method ENiagaraSpawnBoundsMethod
---@param Measure float
---@param LinearPower float
function UNiagaraHelpers:ComputeActorMeshBoundsMeasure(Actor, Method, Measure, LinearPower) end
---@param Actor AActor
---@param SocketName FName
---@param ComponentWithSocket USceneComponent
---@param bDeepSearchComponents boolean
function UNiagaraHelpers:ActorFindSocketOnComponent(Actor, SocketName, ComponentWithSocket, bDeepSearchComponents) end
---@param Actor AActor
---@param BoneOrSocketName FName
---@param ComponentWithBoneOrSocket USceneComponent
---@param BoneIndex int32
---@param bDeepSearchComponents boolean
function UNiagaraHelpers:ActorFindBoneOrSocketOnComponent(Actor, BoneOrSocketName, ComponentWithBoneOrSocket, BoneIndex, bDeepSearchComponents) end
---@param Actor AActor
---@param BoneName FName
---@param ComponentWithBone USkinnedMeshComponent
---@param BoneIndex int32
---@param bDeepSearchComponents boolean
function UNiagaraHelpers:ActorFindBoneOnComponent(Actor, BoneName, ComponentWithBone, BoneIndex, bDeepSearchComponents) end
---@param Actor AActor
---@param AttachComponent USceneComponent
function UNiagaraHelpers:ActorBestDefaultAttachComponent(Actor, AttachComponent) end


---@class UNiagaraHelpersFullVariableListCacheEntry : UObject
---@field System UNiagaraSystem
---@field FullVariableList FNiagaraHelpersFullVariableList
---@field CacheTime FDateTime
---@field bHaveSetupVariables boolean
local UNiagaraHelpersFullVariableListCacheEntry = {}



---@class UNiagaraHelpersFullVariableListCacheEntryDynamic : UNiagaraHelpersFullVariableListCacheEntry
---@field ProbeComponent UNiagaraComponent
local UNiagaraHelpersFullVariableListCacheEntryDynamic = {}

function UNiagaraHelpersFullVariableListCacheEntryDynamic:OnFinished() end


---@class UNiagaraHelpersFullVariableListCacheEntryStatic : UNiagaraHelpersFullVariableListCacheEntry
local UNiagaraHelpersFullVariableListCacheEntryStatic = {}


---@class UNiagaraSystemWithVars : UDataAsset
---@field NiagaraSystem UNiagaraSystem
---@field Overrides FNiagaraHelpersInitializers
local UNiagaraSystemWithVars = {}

---@param WorldContextObject UObject
---@param SpawnInfo FNiagaraSystemSpawnInfo
---@param NiagaraComponent UNiagaraComponent
function UNiagaraSystemWithVars:SpawnInWorldWithVars(WorldContextObject, SpawnInfo, NiagaraComponent) end
---@param SceneComponent USceneComponent
---@param SpawnInfo FNiagaraSystemSpawnAttachedPointInfo
---@param NiagaraComponent UNiagaraComponent
function UNiagaraSystemWithVars:SpawnAttachedWithVars(SceneComponent, SpawnInfo, NiagaraComponent) end
---@param Actor AActor
---@param SpawnInfo FNiagaraSystemSpawnAttachedPointInfo
---@param NiagaraComponent UNiagaraComponent
function UNiagaraSystemWithVars:SpawnAttachedActorWithVars(Actor, SpawnInfo, NiagaraComponent) end
function UNiagaraSystemWithVars:RefreshDefaults() end
---@param Actor AActor
---@param SpawnInfo FNiagaraSystemSpawnMultiStaticInfo
---@param Filter FNiagaraHelpersPrimFilter
---@param NiagaraComponents TArray<UNiagaraComponent>
function UNiagaraSystemWithVars:MultiSpawnOnStaticMeshesWithVars(Actor, SpawnInfo, Filter, NiagaraComponents) end
---@param Actor AActor
---@param SpawnInfo FNiagaraSystemSpawnMultiSkeletalInfo
---@param Filter FNiagaraHelpersPrimFilter
---@param NiagaraComponents TArray<UNiagaraComponent>
function UNiagaraSystemWithVars:MultiSpawnOnSkeletalMeshesWithVars(Actor, SpawnInfo, Filter, NiagaraComponents) end
---@param Actor AActor
---@param SpawnInfo FNiagaraSystemSpawnAttachedInfo
---@param Filter FNiagaraHelpersPrimFilter
---@param NiagaraComponents TArray<UNiagaraComponent>
function UNiagaraSystemWithVars:MultiSpawnOnPrimitivesWithVars(Actor, SpawnInfo, Filter, NiagaraComponents) end
function UNiagaraSystemWithVars:ClearOverrides() end


