---@meta

---@class AStatsComponentReport : AActor
---@field UpdateComponent UStatsComponentReportComponent
local AStatsComponentReport = {}



---@class AWorldFXActor : AActor
---@field FXComponent UWorldFXComponent
local AWorldFXActor = {}

---@param bNewSpawnAttached boolean
function AWorldFXActor:SetSpawnAttached(bNewSpawnAttached) end
function AWorldFXActor:ResetCascadeParameters() end
function AWorldFXActor:RefreshCascadeParameters() end
---@param bIsSpawnAttached boolean
function AWorldFXActor:GetSpawnAttached(bIsSpawnAttached) end
function AWorldFXActor:ForceRefreshPreview() end


---@class AWorldFXAudioActor : AActor
---@field SFXComponent UWorldFXAudioComponent
local AWorldFXAudioActor = {}

---@param bNewSpawnAttached boolean
function AWorldFXAudioActor:SetSpawnAttached(bNewSpawnAttached) end
---@param bIsSpawnAttached boolean
function AWorldFXAudioActor:GetSpawnAttached(bIsSpawnAttached) end
function AWorldFXAudioActor:ForceRefreshPreview() end


---@class AWorldFXPresetActor : AActor
---@field FXComponent UWorldFXPresetComponent
local AWorldFXPresetActor = {}

---@param bNewSpawnAttached boolean
function AWorldFXPresetActor:SetSpawnAttachedOverride(bNewSpawnAttached) end
function AWorldFXPresetActor:ResetCascadeParameters() end
function AWorldFXPresetActor:RefreshCascadeParameters() end
---@param bIsSpawnAttached boolean
function AWorldFXPresetActor:GetSpawnAttached(bIsSpawnAttached) end
function AWorldFXPresetActor:ForceRefreshPreview() end
---@param bNewSpawnAttached boolean
function AWorldFXPresetActor:ClearSpawnAttachedOverride(bNewSpawnAttached) end


---@class AWorldFXPresetListActor : AActor
---@field Presets TArray<UWorldFXPresetComponent>
local AWorldFXPresetListActor = {}

---@param bNewSpawnAttached boolean
function AWorldFXPresetListActor:SetSpawnAttachedOverride(bNewSpawnAttached) end
function AWorldFXPresetListActor:ResetCascadeParameters() end
function AWorldFXPresetListActor:RefreshCascadeParameters() end
---@param bIsSpawnAttached boolean
function AWorldFXPresetListActor:GetSpawnAttached(bIsSpawnAttached) end
function AWorldFXPresetListActor:ForceRefreshPreviews() end
function AWorldFXPresetListActor:ClearSpawnAttachedOverride() end


---@class AWorldFXSingleton : AActor
---@field Settings FWorldFXPerWorldSettings
---@field CameraFXRoot FCameraFXRoot
---@field Octree FWorldFXOctreeStack
---@field bCullingDisabled boolean
---@field AutoCascadeCullingLevel int32
---@field AutoNiagaraCullingLevel int32
---@field AutoAkAmbientCullingLevel int32
---@field AutoManagedActors TSet<TWeakObjectPtr<AActor>>
---@field AutoManagedComponents TSet<TWeakObjectPtr<UActorComponent>>
---@field ManualManagedComponents TSet<TWeakObjectPtr<UActorComponent>>
---@field WorldFXInterfaces TMap<TWeakObjectPtr<UObject>, TWeakObjectPtr<UWorldFXOctreeFX>>
---@field FXOctreeFXDummy UWorldFXOctreeFXDummy
---@field LastEye FVector
---@field bLastEyeValid boolean
local AWorldFXSingleton = {}

---@param WorldFXInterface TScriptInterface<IWorldFXInterface>
---@return boolean
function AWorldFXSingleton:UnregisterWorldFXInterface(WorldFXInterface) end
---@param WorldFXInterface TScriptInterface<IWorldFXInterface>
---@param Position FVector
---@param CullDistance FWorldFXSimpleCullDistance
---@param Rule UWorldFXRule
---@param ExtraRadius float
---@return boolean
function AWorldFXSingleton:RegisterWorldFXInterface(WorldFXInterface, Position, CullDistance, Rule, ExtraRadius) end
---@param PresetName FWorldFXPresetRuleName
---@param bResult boolean
function AWorldFXSingleton:PresetRuleExists(PresetName, bResult) end
---@param WorldContextObject UObject
---@param PresetName FWorldFXPresetRuleName
---@param FXSpawnPosition FVector
---@param SpawnOverrides FWorldFXSpawnOverrides
---@param bResult boolean
function AWorldFXSingleton:PresetRuleEvaluateWithSpawnParameters(WorldContextObject, PresetName, FXSpawnPosition, SpawnOverrides, bResult) end
---@param WorldContextObject UObject
---@param PresetName FWorldFXPresetRuleName
---@param FXSpawnPosition FVector
---@param bResult boolean
function AWorldFXSingleton:PresetRuleEvaluate(WorldContextObject, PresetName, FXSpawnPosition, bResult) end
---@param WorldFXInterface TScriptInterface<IWorldFXInterface>
---@param bIsRegistered boolean
function AWorldFXSingleton:IsWorldFXInterfaceRegistered(WorldFXInterface, bIsRegistered) end
---@param PresetRuleName FWorldFXPresetRuleName
---@return UWorldFXRule
function AWorldFXSingleton:GetPresetRule(PresetRuleName) end
---@param NiagaraComponent UNiagaraComponent
function AWorldFXSingleton:ForgetManagedNiagaraComponent(NiagaraComponent) end
---@param ActorComponent UActorComponent
function AWorldFXSingleton:ForgetManagedGenericComponent(ActorComponent) end
---@param ParticleSystemComponent UParticleSystemComponent
function AWorldFXSingleton:ForgetManagedCascadeComponent(ParticleSystemComponent) end
---@param AudioComponent UAkComponent
function AWorldFXSingleton:ForgetManagedAudioComponent(AudioComponent) end
---@param NiagaraComponent UNiagaraComponent
---@param CullDistanceMeters float
function AWorldFXSingleton:AutoManageNiagaraComponent(NiagaraComponent, CullDistanceMeters) end
---@param ActorComponent UActorComponent
---@param Manage FWorldFXGenericManageSettings
---@param CullDistanceMeters float
function AWorldFXSingleton:AutoManageGenericComponent(ActorComponent, Manage, CullDistanceMeters) end
---@param ParticleSystemComponent UParticleSystemComponent
---@param CullDistanceMeters float
function AWorldFXSingleton:AutoManageCascadeComponent(ParticleSystemComponent, CullDistanceMeters) end
---@param AudioComponent UAkComponent
---@param CullDistanceMeters float
function AWorldFXSingleton:AutoManageAudioComponent(AudioComponent, CullDistanceMeters) end


---@class FCameraFXRoot
---@field CameraFXRoot USceneComponent
---@field UnattachedFrames int32
---@field MaxUnattachedFrames int32
local FCameraFXRoot = {}



---@class FStatsComponentReportSettings
---@field Args TArray<FString>
---@field TotalReports uint32
---@field FrameDelay uint32
local FStatsComponentReportSettings = {}



---@class FWorldFXAudioEvent
---@field SFXEvent UAkAudioEvent
---@field EventName FName
---@field CullDistance FWorldFXCullDistance
---@field Offset FVector
---@field Scale FVector
---@field Extra FWorldFXAudioEventExtra
---@field bNonSpatialized boolean
local FWorldFXAudioEvent = {}



---@class FWorldFXAudioEventExtra
---@field AttenuationScalingFactor float
---@field NoTickRadius float
---@field OcclusionRefreshInterval float
---@field OcclusionCollisionChannel ECollisionChannel
---@field bUseReverbVolumes boolean
---@field bEnableSpotReflectors boolean
---@field OuterRadius float
---@field InnerRadius float
---@field RTPCs TArray<FWorldFXAudioEventRTPC>
local FWorldFXAudioEventExtra = {}



---@class FWorldFXAudioEventRTPC
---@field Name FName
---@field Value float
---@field InterpolationTime float
local FWorldFXAudioEventRTPC = {}



---@class FWorldFXAudioPreview : FWorldFXPreview
---@field SFXPreview UAkComponent
---@field CurrentFX FWorldFXAudioEvent
local FWorldFXAudioPreview = {}



---@class FWorldFXAudioTracker : FWorldFXTracker
local FWorldFXAudioTracker = {}


---@class FWorldFXCascadePreview : FWorldFXPreview
---@field CascadeFXPreview UParticleSystemComponent
---@field CurrentFX FWorldFXCascadeSystem
local FWorldFXCascadePreview = {}



---@class FWorldFXCascadeSystem
---@field ParticleSystem TSoftObjectPtr<UParticleSystem>
---@field Materials FWorldFXMaterialOverrideList
---@field InstanceParameters TArray<FWorldFXCascadeSystemParam>
---@field NewInstanceParameters UWorldFXCascadeInstanceParametersBase
---@field CullDistance FWorldFXCullDistance
---@field AdvancedOptions FWorldFXCascadeSystemAdvancedOptions
local FWorldFXCascadeSystem = {}



---@class FWorldFXCascadeSystemAdvancedOptions : FWorldFXPrimitiveAdvancedOptions
local FWorldFXCascadeSystemAdvancedOptions = {}


---@class FWorldFXCascadeSystemParam
---@field Name FName
---@field ParamType EParticleSysParamType
---@field Scalar float
---@field Scalar_Low float
---@field Vector FVector
---@field Vector_Low FVector
---@field Color FColor
---@field Material UMaterialInterface
local FWorldFXCascadeSystemParam = {}



---@class FWorldFXCascadeSystemParamBase
local FWorldFXCascadeSystemParamBase = {}


---@class FWorldFXCascadeSystemParamColor : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Color FColor
local FWorldFXCascadeSystemParamColor = {}



---@class FWorldFXCascadeSystemParamMaterial : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Material UMaterialInterface
local FWorldFXCascadeSystemParamMaterial = {}



---@class FWorldFXCascadeSystemParamScalar : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Scalar float
local FWorldFXCascadeSystemParamScalar = {}



---@class FWorldFXCascadeSystemParamScalarRand : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Scalar float
---@field Scalar_Low float
local FWorldFXCascadeSystemParamScalarRand = {}



---@class FWorldFXCascadeSystemParamVector : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Vector FVector
local FWorldFXCascadeSystemParamVector = {}



---@class FWorldFXCascadeSystemParamVectorRand : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Vector FVector
---@field Vector_Low FVector
local FWorldFXCascadeSystemParamVectorRand = {}



---@class FWorldFXCascadeSystemParamVectorUnitRand : FWorldFXCascadeSystemParamBase
---@field Name FName
---@field Vector FVector
---@field Vector_Low FVector
local FWorldFXCascadeSystemParamVectorUnitRand = {}



---@class FWorldFXCascadeSystemParams
---@field Scalars TArray<FWorldFXCascadeSystemParamScalar>
---@field ScalarRands TArray<FWorldFXCascadeSystemParamScalarRand>
---@field Vectors TArray<FWorldFXCascadeSystemParamVector>
---@field VectorRands TArray<FWorldFXCascadeSystemParamVectorRand>
---@field VectorUnitRands TArray<FWorldFXCascadeSystemParamVectorUnitRand>
---@field Colors TArray<FWorldFXCascadeSystemParamColor>
---@field Materials TArray<FWorldFXCascadeSystemParamMaterial>
local FWorldFXCascadeSystemParams = {}



---@class FWorldFXCascadeTracker : FWorldFXTracker
local FWorldFXCascadeTracker = {}


---@class FWorldFXCullDistance
---@field DistanceMeters float
---@field DistanceType EWorldFXDistanceType
local FWorldFXCullDistance = {}



---@class FWorldFXFull
---@field SFX FWorldFXAudioEvent
---@field CascadeFX FWorldFXCascadeSystem
---@field NiagaraFX FWorldFXNiagaraSystem
local FWorldFXFull = {}



---@class FWorldFXFullPreset : FTableRowBase
---@field Rule FWorldFXPresetRuleName
---@field SFXAudioEvent UAkAudioEvent
---@field SFXEventName FName
---@field SFXOffset FVector
---@field SFXScale FVector
---@field SFXCullingDistanceMeters float
---@field SFXCullingDistanceType EWorldFXDistanceType
---@field SFXAttenuationScalingFactor float
---@field SFXNoTickRadius float
---@field SFXOcclusionRefreshInterval float
---@field SFXOcclusionCollisionChannel ECollisionChannel
---@field bSFXUseReverbVolumes boolean
---@field bSFXEnableSpotReflectors boolean
---@field SFXOuterRadius float
---@field SFXInnerRadius float
---@field RTPCs TArray<FWorldFXAudioEventRTPC>
---@field CascadeSystem TSoftObjectPtr<UParticleSystem>
---@field CascadeMaterialOverrides TArray<TSoftObjectPtr<UMaterialInterface>>
---@field CascadeInstanceParameters TArray<FWorldFXCascadeSystemParam>
---@field CascadeCullingDistanceMeters float
---@field CascadeCullingDistanceType EWorldFXDistanceType
---@field NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@field NiagaraMaterialOverrides TArray<TSoftObjectPtr<UMaterialInterface>>
---@field NiagaraInitializers FNiagaraHelpersInitializerRaw
---@field NiagaraCullingDistanceMeters float
---@field NiagaraCullingDistanceType EWorldFXDistanceType
---@field bSpawnAttached boolean
local FWorldFXFullPreset = {}



---@class FWorldFXFullPreview
---@field SFXPreview FWorldFXAudioPreview
---@field CascadeFXPreview FWorldFXCascadePreview
---@field NiagaraFXPreview FWorldFXNiagaraPreview
local FWorldFXFullPreview = {}



---@class FWorldFXFullPreviewSettings
---@field bAudioPreview boolean
---@field bCascadePreview boolean
---@field bNiagaraPreview boolean
local FWorldFXFullPreviewSettings = {}



---@class FWorldFXFullTracker
---@field SFX TWeakObjectPtr<UWorldFXOctreeFX>
---@field CascadeFX TWeakObjectPtr<UWorldFXOctreeFX>
---@field NiagaraFX TWeakObjectPtr<UWorldFXOctreeFX>
local FWorldFXFullTracker = {}



---@class FWorldFXGenericManageSettings
---@field flags int32
local FWorldFXGenericManageSettings = {}



---@class FWorldFXMaterialOverrideList
---@field Elements TArray<TSoftObjectPtr<UMaterialInterface>>
local FWorldFXMaterialOverrideList = {}



---@class FWorldFXNiagaraPreview : FWorldFXPreview
---@field NiagaraFXPreview UNiagaraComponent
---@field CurrentFX FWorldFXNiagaraSystem
local FWorldFXNiagaraPreview = {}



---@class FWorldFXNiagaraSystem
---@field NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@field Initializer UWorldFXNiagaraSystemInitializer
---@field Materials FWorldFXMaterialOverrideList
---@field CullDistance FWorldFXCullDistance
---@field AdvancedOptions FWorldFXNiagaraSystemAdvancedOptions
local FWorldFXNiagaraSystem = {}



---@class FWorldFXNiagaraSystemAdvancedOptions : FWorldFXPrimitiveAdvancedOptions
local FWorldFXNiagaraSystemAdvancedOptions = {}


---@class FWorldFXNiagaraTracker : FWorldFXTracker
local FWorldFXNiagaraTracker = {}


---@class FWorldFXOctreeCreationSettings
---@field ExpandWorldBoundsFactor float
---@field ExpandWorldBoundsRadiusMeters float
local FWorldFXOctreeCreationSettings = {}



---@class FWorldFXOctreeFXList
---@field FXList TArray<UWorldFXOctreeFX>
local FWorldFXOctreeFXList = {}



---@class FWorldFXOctreeStack
---@field OctreeStack TArray<UWorldFXOctree>
---@field CreationSettings FWorldFXOctreeCreationSettings
---@field UnculledFX FWorldFXOctreeUnculledFX
local FWorldFXOctreeStack = {}



---@class FWorldFXOctreeUnculledFX
---@field FXMap TMap<TWeakObjectPtr<UObject>, FWorldFXOctreeFXList>
---@field bNewAdds boolean
local FWorldFXOctreeUnculledFX = {}



---@class FWorldFXPerWorldSettings
---@field DefaultAudioDistanceMeters float
---@field DefaultParticleDistanceMeters float
---@field DefaultGenericDistanceMeters float
---@field MaxAudioDistanceMeters float
---@field MaxParticleDistanceMeters float
---@field MaxGenericDistanceMeters float
---@field OctreeExpandWorldBoundsFactor float
---@field bDisableAllCulling boolean
local FWorldFXPerWorldSettings = {}



---@class FWorldFXPresetRuleDefinition
---@field Name FName
---@field Rule UWorldFXRule
local FWorldFXPresetRuleDefinition = {}



---@class FWorldFXPresetRuleName
---@field Name FName
local FWorldFXPresetRuleName = {}



---@class FWorldFXPresets
---@field Presets TArray<FWorldFXPresetRuleDefinition>
local FWorldFXPresets = {}



---@class FWorldFXPreview
local FWorldFXPreview = {}


---@class FWorldFXPrimitiveAdvancedOptions
---@field TranslucencySortPriority int32
---@field TranslucencySortDistanceOffset float
---@field bReceivesDecals boolean
---@field bReceivesWeatherDecals boolean
local FWorldFXPrimitiveAdvancedOptions = {}



---@class FWorldFXSimpleCullDistance
---@field DistanceMeters float
---@field DistanceType EWorldFXSimpleDistanceType
local FWorldFXSimpleCullDistance = {}



---@class FWorldFXSpawnOverrideTransform
---@field Position FVector
---@field Rotator FRotator
---@field Scale FVector
---@field bOverride_Position boolean
---@field bOverride_Rotator boolean
---@field bOverride_Scale boolean
local FWorldFXSpawnOverrideTransform = {}



---@class FWorldFXSpawnOverrides
---@field WorldTransform FWorldFXSpawnOverrideTransform
---@field AttachTo TWeakObjectPtr<USceneComponent>
---@field LocalTransform FWorldFXSpawnOverrideTransform
---@field AttachName FName
---@field UniqueAttachTag FName
---@field AttachLocation EAttachLocation::Type
---@field bOverride_AttachTo boolean
---@field bOverride_AttachName boolean
---@field bOverride_UniqueAttachTag boolean
---@field bOverride_AttachLocation boolean
local FWorldFXSpawnOverrides = {}



---@class FWorldFXSpawnOverridesFinal
---@field AttachTo TWeakObjectPtr<USceneComponent>
---@field Position FVector
---@field Rotator FRotator
---@field Scale FVector
---@field AttachName FName
---@field UniqueAttachTag FName
---@field AttachLocation EAttachLocation::Type
---@field bIsAttached boolean
local FWorldFXSpawnOverridesFinal = {}



---@class FWorldFXTracker
---@field FX TWeakObjectPtr<UWorldFXOctreeFX>
local FWorldFXTracker = {}



---@class IWorldFXInterface : IInterface
local IWorldFXInterface = {}

---@param bImmediately boolean
function IWorldFXInterface:WorldFXInterfaceStop(bImmediately) end
---@param SpawnOverrides FWorldFXSpawnOverrides
function IWorldFXInterface:WorldFXInterfaceStart(SpawnOverrides) end


---@class UStatsComponentReportComponent : UActorComponent
---@field Report FStatsComponentReportSettings
---@field OnReport uint32
---@field NextReport uint32
local UStatsComponentReportComponent = {}



---@class UWorldFXAudioComponent : USceneComponent
---@field Rule UWorldFXRule
---@field SFX FWorldFXAudioEvent
---@field Tracker FWorldFXAudioTracker
---@field bSpawnAttached boolean
local UWorldFXAudioComponent = {}

---@param bNewSpawnAttached boolean
function UWorldFXAudioComponent:SetSpawnAttached(bNewSpawnAttached) end
---@param bIsSpawnAttached boolean
function UWorldFXAudioComponent:GetSpawnAttached(bIsSpawnAttached) end
function UWorldFXAudioComponent:ForceRefreshPreview() end


---@class UWorldFXCascadeInstanceParametersBase : UObject
local UWorldFXCascadeInstanceParametersBase = {}


---@class UWorldFXCascadeInstanceParametersFlat : UWorldFXCascadeInstanceParametersBase
---@field InstanceParameters TArray<FWorldFXCascadeSystemParam>
local UWorldFXCascadeInstanceParametersFlat = {}



---@class UWorldFXCascadeInstanceParametersGrouped : UWorldFXCascadeInstanceParametersBase
---@field InstanceParameters FWorldFXCascadeSystemParams
local UWorldFXCascadeInstanceParametersGrouped = {}



---@class UWorldFXComponent : UWorldFXComponentBase
---@field Rule UWorldFXRule
---@field WorldFX FWorldFXFull
---@field bSpawnAttached boolean
local UWorldFXComponent = {}

---@param bNewSpawnAttached boolean
function UWorldFXComponent:SetSpawnAttached(bNewSpawnAttached) end
function UWorldFXComponent:ResetCascadeParameters() end
function UWorldFXComponent:RefreshCascadeParameters() end
---@param bIsSpawnAttached boolean
function UWorldFXComponent:GetSpawnAttached(bIsSpawnAttached) end
---@param AttachTo USceneComponent
---@param WorldFXSetup FWorldFXFull
---@param RelativeTransform FTransform
---@return UWorldFXComponent
function UWorldFXComponent:CreateWorldFX(AttachTo, WorldFXSetup, RelativeTransform) end


---@class UWorldFXComponentBase : USceneComponent
---@field Tracker FWorldFXFullTracker
local UWorldFXComponentBase = {}

function UWorldFXComponentBase:ForceRefreshPreview() end


---@class UWorldFXNiagaraSystemInitializer : UObject
local UWorldFXNiagaraSystemInitializer = {}


---@class UWorldFXNiagaraSystemInitializerParameters : UWorldFXNiagaraSystemInitializer
---@field Parameters FNiagaraHelpersInitializers
local UWorldFXNiagaraSystemInitializerParameters = {}



---@class UWorldFXNiagaraSystemInitializerParametersAsset : UWorldFXNiagaraSystemInitializer
---@field Parameters UWorldFXNiagaraSystemParameters
local UWorldFXNiagaraSystemInitializerParametersAsset = {}



---@class UWorldFXNiagaraSystemInitializerRawParameters : UWorldFXNiagaraSystemInitializer
---@field Parameters FNiagaraHelpersInitializerRaw
local UWorldFXNiagaraSystemInitializerRawParameters = {}



---@class UWorldFXNiagaraSystemParameters : UDataAsset
---@field ReferenceNiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@field Overrides FNiagaraHelpersInitializers
local UWorldFXNiagaraSystemParameters = {}

function UWorldFXNiagaraSystemParameters:RefreshDefaults() end
function UWorldFXNiagaraSystemParameters:DefaultsToParameters() end
function UWorldFXNiagaraSystemParameters:ClearParameters() end


---@class UWorldFXOctree : UObject
---@field FXMap TMap<TWeakObjectPtr<UObject>, FWorldFXOctreeFXList>
---@field Bounds FBox
---@field ActiveFX TArray<UWorldFXOctreeFX>
---@field VisibleFX TArray<UWorldFXOctreeFX>
---@field bVisibleFXValid boolean
local UWorldFXOctree = {}



---@class UWorldFXOctreeFX : UObject
---@field OwningOctree UWorldFXOctree
---@field Rule UWorldFXRule
---@field AttachTo TWeakObjectPtr<USceneComponent>
local UWorldFXOctreeFX = {}



---@class UWorldFXOctreeFXAmbientAudioManaged : UWorldFXOctreeFX
---@field AkAmbientSound TWeakObjectPtr<AAkAmbientSound>
local UWorldFXOctreeFXAmbientAudioManaged = {}



---@class UWorldFXOctreeFXAudio : UWorldFXOctreeFX
---@field SFXEvent UAkAudioEvent
---@field EventName FName
---@field AkComponent TWeakObjectPtr<UAkComponent>
---@field Position FVector
---@field Rotator FRotator
---@field Scale FVector
---@field Extra FWorldFXAudioEventExtra
---@field UniqueAttachTag FName
local UWorldFXOctreeFXAudio = {}



---@class UWorldFXOctreeFXAudioManaged : UWorldFXOctreeFX
---@field AkComponent TWeakObjectPtr<UAkComponent>
---@field PlayingID int32
local UWorldFXOctreeFXAudioManaged = {}



---@class UWorldFXOctreeFXCascade : UWorldFXOctreeFX
---@field ParticleSystem TSoftObjectPtr<UParticleSystem>
---@field ParticleComponent UParticleSystemComponent
---@field Materials FWorldFXMaterialOverrideList
---@field InstanceParameters UWorldFXCascadeInstanceParametersBase
---@field Position FVector
---@field Rotator FRotator
---@field Scale FVector
---@field SpawnInfo FWorldFXSpawnOverridesFinal
---@field AdvancedOptions FWorldFXCascadeSystemAdvancedOptions
local UWorldFXOctreeFXCascade = {}



---@class UWorldFXOctreeFXCascadeManaged : UWorldFXOctreeFX
---@field ParticleComponent TWeakObjectPtr<UParticleSystemComponent>
local UWorldFXOctreeFXCascadeManaged = {}



---@class UWorldFXOctreeFXDummy : UWorldFXOctreeFX
---@field Position FVector
---@field ExtraRadius float
local UWorldFXOctreeFXDummy = {}



---@class UWorldFXOctreeFXGenericManaged : UWorldFXOctreeFX
---@field ActorComponent TWeakObjectPtr<UActorComponent>
---@field Manage FWorldFXGenericManageSettings
local UWorldFXOctreeFXGenericManaged = {}



---@class UWorldFXOctreeFXInterface : UWorldFXOctreeFX
---@field InterfaceObject TWeakObjectPtr<UObject>
---@field Position FVector
---@field ExtraRadius float
---@field bActive boolean
local UWorldFXOctreeFXInterface = {}



---@class UWorldFXOctreeFXNiagara : UWorldFXOctreeFX
---@field NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@field NiagaraComponent UNiagaraComponent
---@field Initializer UWorldFXNiagaraSystemInitializer
---@field Materials FWorldFXMaterialOverrideList
---@field Position FVector
---@field Rotator FRotator
---@field Scale FVector
---@field SpawnInfo FWorldFXSpawnOverridesFinal
---@field AdvancedOptions FWorldFXNiagaraSystemAdvancedOptions
local UWorldFXOctreeFXNiagara = {}



---@class UWorldFXOctreeFXNiagaraManaged : UWorldFXOctreeFX
---@field NiagaraComponent TWeakObjectPtr<UNiagaraComponent>
local UWorldFXOctreeFXNiagaraManaged = {}



---@class UWorldFXPresetComponent : UWorldFXComponentBase
---@field Preset FDataTableRowHandle
---@field SFXEventOverride UAkAudioEvent
---@field bOverrideExtraEnabled boolean
---@field OverrideExtra FWorldFXAudioEventExtra
---@field NiagaraLocalInitializer UWorldFXNiagaraSystemInitializer
---@field CascadeLocalInstanceParameters UWorldFXCascadeInstanceParametersBase
---@field Rule UWorldFXRule
---@field WorldFX FWorldFXFull
---@field bPresetSpawnAttached boolean
---@field bSpawnAttached boolean
---@field bOverride_SpawnAttached boolean
local UWorldFXPresetComponent = {}

---@param bNewSpawnAttached boolean
function UWorldFXPresetComponent:SetSpawnAttachedOverride(bNewSpawnAttached) end
function UWorldFXPresetComponent:ResetCascadeParameters() end
function UWorldFXPresetComponent:RefreshCascadeParameters() end
---@param bIsSpawnAttached boolean
function UWorldFXPresetComponent:GetSpawnAttached(bIsSpawnAttached) end
function UWorldFXPresetComponent:ClearSpawnAttachedOverride() end


---@class UWorldFXPresetRule : UWorldFXRule
---@field Preset FWorldFXPresetRuleName
local UWorldFXPresetRule = {}



---@class UWorldFXRule : UObject
local UWorldFXRule = {}


---@class UWorldFXRuleAnd : UWorldFXRuleList
local UWorldFXRuleAnd = {}


---@class UWorldFXRuleFalse : UWorldFXRule
local UWorldFXRuleFalse = {}


---@class UWorldFXRuleList : UWorldFXRule
---@field Rules TArray<UWorldFXRule>
local UWorldFXRuleList = {}



---@class UWorldFXRuleNot : UWorldFXRule
---@field Rule UWorldFXRule
local UWorldFXRuleNot = {}



---@class UWorldFXRuleOr : UWorldFXRuleList
local UWorldFXRuleOr = {}


---@class UWorldFXRuleSeason : UWorldFXRuleSeasonBase
---@field Seasons int32
local UWorldFXRuleSeason = {}



---@class UWorldFXRuleSeasonBase : UWorldFXRule
local UWorldFXRuleSeasonBase = {}


---@class UWorldFXRuleSeasonFall : UWorldFXRuleSeasonBase
local UWorldFXRuleSeasonFall = {}


---@class UWorldFXRuleSeasonSpring : UWorldFXRuleSeasonBase
local UWorldFXRuleSeasonSpring = {}


---@class UWorldFXRuleSeasonSummer : UWorldFXRuleSeasonBase
local UWorldFXRuleSeasonSummer = {}


---@class UWorldFXRuleSeasonWinter : UWorldFXRuleSeasonBase
local UWorldFXRuleSeasonWinter = {}


---@class UWorldFXRuleTrue : UWorldFXRule
local UWorldFXRuleTrue = {}


---@class UWorldFXSettings : UDataAsset
---@field Defaults FWorldFXPerWorldSettings
---@field PerWorldDefaults TMap<FName, FWorldFXPerWorldSettings>
---@field Presets FWorldFXPresets
local UWorldFXSettings = {}



