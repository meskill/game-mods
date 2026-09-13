---@meta

---@class ADEPRECATED_WeatherLocalWindVolume : AVolume
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
local ADEPRECATED_WeatherLocalWindVolume = {}

---@param NewPriority float
function ADEPRECATED_WeatherLocalWindVolume:SetPriority(NewPriority) end


---@class ADEPRECATED_WeatherLocalWindVolumeConstant : ADEPRECATED_WeatherLocalWindVolume
---@field WindParameters FWindParametersInstant
local ADEPRECATED_WeatherLocalWindVolumeConstant = {}



---@class ADEPRECATED_WeatherLocalWindVolumeParameters : ADEPRECATED_WeatherLocalWindVolume
---@field WindParameters FWindParameters
local ADEPRECATED_WeatherLocalWindVolumeParameters = {}



---@class ADEPRECATED_WeatherLocalWindVolumePreset : ADEPRECATED_WeatherLocalWindVolume
---@field Preset FWindDefinitionName
---@field PresetPtr TWeakObjectPtr<UWindParams>
local ADEPRECATED_WeatherLocalWindVolumePreset = {}



---@class AFullScreenWeatherDecalActor : ADecalActor
local AFullScreenWeatherDecalActor = {}


---@class AWeatherAnimationBlueprint : AWeatherSurfaceBlueprintBase
local AWeatherAnimationBlueprint = {}


---@class AWeatherCoverageBlueprint : AWeatherSurfaceBlueprintBase
local AWeatherCoverageBlueprint = {}


---@class AWeatherCustomSequenceVolume : AWeatherVolumeSortablePreload
---@field CustomSequence FWeatherCustomSequenceName
---@field bUseInFall boolean
---@field bUseInWinter boolean
---@field bUseInSpring boolean
---@field bUseInSummer boolean
local AWeatherCustomSequenceVolume = {}



---@class AWeatherDecalPlacementActor : AActor
---@field DecalTags TArray<FName>
---@field bEnabled boolean
local AWeatherDecalPlacementActor = {}



---@class AWeatherDisableVolume : AWeatherVolume
---@field bDisableWeather boolean
local AWeatherDisableVolume = {}



---@class AWeatherExclusionVolume : AVolume
---@field bHideCameraFX boolean
---@field bHideSurfaceFX boolean
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
local AWeatherExclusionVolume = {}

---@param NewPriority float
function AWeatherExclusionVolume:SetPriority(NewPriority) end


---@class AWeatherMaster : AActor
---@field Component UWeatherMasterComponent
---@field DebugWindComponent UWindDirectionalSourceComponent
---@field OvercastVolume URenderSettingsComponent
local AWeatherMaster = {}

function AWeatherMaster:NextSequence() end


---@class AWeatherPhasedPresetVolume : AWeatherPresetVolumeBase
---@field Presets TArray<FWeatherPhasedPresetEntry>
---@field ActivePhase FName
local AWeatherPhasedPresetVolume = {}

---@param PhaseName FName
---@param bSuccess boolean
function AWeatherPhasedPresetVolume:SetActiveWeatherPhase(PhaseName, bSuccess) end
---@param PhaseName FName
---@param bValid boolean
function AWeatherPhasedPresetVolume:IsValidActiveWeatherPhaseCurrentSeason(PhaseName, bValid) end
---@param PhaseName FName
---@param ValidSeasons FWeatherSeasonsFilter
function AWeatherPhasedPresetVolume:IsValidActiveWeatherPhase(PhaseName, ValidSeasons) end


---@class AWeatherPresetVolume : AWeatherPresetVolumeBase
---@field Preset FWeatherDefinitionName
---@field Seasons int32
---@field bInstantChange boolean
local AWeatherPresetVolume = {}



---@class AWeatherPresetVolumeBase : AWeatherVolumeSortablePreload
local AWeatherPresetVolumeBase = {}


---@class AWeatherStormFXBase : AActor
---@field WeatherStorm UWeatherStorm
---@field OverrideActivationDistanceMeters float
---@field bUseOverrideActivationDistanceMeters boolean
local AWeatherStormFXBase = {}

---@param StormState FWeatherStormState
function AWeatherStormFXBase:OnStormStart(StormState) end
function AWeatherStormFXBase:OnStormEnd() end
---@param bStorming boolean
function AWeatherStormFXBase:IsStorming(bStorming) end
---@param StormState FWeatherStormState
---@param bStorming boolean
function AWeatherStormFXBase:GetStormState(StormState, bStorming) end


---@class AWeatherStormFXMulti : AWeatherStormFXBase
---@field Settings TArray<FWeatherStormTypeFXSettings>
---@field States TArray<FWeatherStormTypeFXSettingsState>
local AWeatherStormFXMulti = {}



---@class AWeatherStormFXSimple : AWeatherStormFXBase
---@field Settings FWeatherStormTypeFXSettings
---@field State FWeatherStormTypeFXSettingsState
local AWeatherStormFXSimple = {}



---@class AWeatherSurfaceBlueprintBase : AActor
---@field StormState FWeatherStormState
local AWeatherSurfaceBlueprintBase = {}



---@class AWeatherSurfaceFogBase : AActor
---@field SupportedFogTypes int32
---@field ShowingFogType ESurfaceFogType
local AWeatherSurfaceFogBase = {}

function AWeatherSurfaceFogBase:RecalculateBounds() end
---@param Type ESurfaceFogType
function AWeatherSurfaceFogBase:OnShowSurfaceFog(Type) end
function AWeatherSurfaceFogBase:OnHideSurfaceFog() end


---@class AWeatherSurfaceFogSelective : AWeatherSurfaceFogBase
---@field OnlyShowHide USceneComponent
---@field bOnlyShowHideIncludeChildren boolean
local AWeatherSurfaceFogSelective = {}

---@param SceneComponent USceneComponent
---@param bIncludeChildren boolean
function AWeatherSurfaceFogSelective:SetComponentToShowHide(SceneComponent, bIncludeChildren) end


---@class AWeatherSurfaceFogSimple : AWeatherSurfaceFogBase
local AWeatherSurfaceFogSimple = {}


---@class AWeatherSurfaceWorldFXBlueprint : AWeatherSurfaceBlueprintBase
local AWeatherSurfaceWorldFXBlueprint = {}


---@class AWeatherVolume : AVolume
local AWeatherVolume = {}


---@class AWeatherVolumeSortable : AWeatherVolume
---@field Priority float
---@field bUnbounded boolean
---@field bEnabled boolean
local AWeatherVolumeSortable = {}



---@class AWeatherVolumeSortablePreload : AWeatherVolumeSortable
---@field PreloadedObjects TArray<UObject>
local AWeatherVolumeSortablePreload = {}



---@class FCloudDefinitionName : FWeatherDropdownName
local FCloudDefinitionName = {}


---@class FCloudParameters
---@field Params FVolumetricCloudsPresetParams
---@field WindParams FVolumetricCloudsWeatherWindParams
---@field SunDiskOverrides FSunDiskOverrides
---@field Overcast float
---@field HeightOffset float
---@field bSuperExpensiveCloudsCinematicOnly boolean
local FCloudParameters = {}



---@class FFogDefinitionName : FWeatherDropdownName
local FFogDefinitionName = {}


---@class FFogParameters
---@field Params FExpHeightFogParametersOverride
---@field bFollowCamera boolean
local FFogParameters = {}



---@class FFogParametersFinal
---@field Params FExpHeightFogParameters
---@field bFollowCamera boolean
local FFogParametersFinal = {}



---@class FFullWeatherState
---@field CloudsPreset FVolumetricCloudsPresetParameters
---@field CloudsWind FVolumetricCloudsWindParameters
---@field SunDiskOverrides FSunDiskOverrides
---@field Fog FExpHeightFogParameters
---@field FogNoiseOverride FExpHeightFogVolumetricNoiseParameters
---@field FogNoiseOverrideHistory FExpHeightFogVolumetricNoiseParameters
---@field Overcast float
---@field Cold float
---@field Storm FWeatherStormParams
---@field SurfaceFog FSurfaceFogParameters
---@field bFogFollowCamera boolean
---@field bCloudsPresetValid boolean
---@field bCloudsWindValid boolean
---@field bSunDiskOverridesValid boolean
---@field bFogValid boolean
---@field bFogNoiseOverrideValid boolean
---@field bFogNoiseOverrideHistoryValid boolean
---@field bOvercastValid boolean
---@field bColdValid boolean
---@field bPrecipitationValid boolean
---@field bStormTypeValid boolean
---@field bStormCoverageValid boolean
---@field bStormIntensityValid boolean
---@field bStormHeightValid boolean
---@field bSurfaceFogTypeValid boolean
---@field bSurfaceFogIntensityValid boolean
local FFullWeatherState = {}



---@class FSunDiskOverrides
---@field SizeFactor float
---@field Desaturation float
---@field BrightnessFactor float
---@field CoronaBrightnessFactor float
---@field CoronaAlphaFactor float
local FSunDiskOverrides = {}



---@class FSurfaceFogActorTracker
---@field Actors TArray<AWeatherSurfaceFogBase>
---@field CurrentlyActivated TArray<AWeatherSurfaceFogBase>
local FSurfaceFogActorTracker = {}



---@class FSurfaceFogActorWorldTracker
---@field Trackers TMap<UWorld, FSurfaceFogActorTracker>
local FSurfaceFogActorWorldTracker = {}



---@class FSurfaceFogParameters
---@field Type ESurfaceFogType
---@field Intensity float
local FSurfaceFogParameters = {}



---@class FWeatherActionContext
---@field PriorState FFullWeatherState
---@field CurrentState FFullWeatherState
---@field CurrentTime FWeatherTime
---@field WindSources TArray<UWeatherWindDirectionalSourceComponentBase>
---@field Wind FWindParametersInstant
---@field WindDetails FWindDetails
---@field WindOffset FWorldWindOffset
---@field WeatherIndoors FWeatherIndoors
---@field LightingOrphans TArray<UWeatherOrphanComponent>
---@field LegacyWindSourceStack FWeatherWindDirectionalSourceStack
local FWeatherActionContext = {}



---@class FWeatherCustomSequenceName : FWeatherDropdownName
local FWeatherCustomSequenceName = {}


---@class FWeatherDecalParameters
---@field Scalars TMap<FName, float>
---@field Colors TMap<FName, FLinearColor>
---@field Vectors TMap<FName, FVector>
local FWeatherDecalParameters = {}



---@class FWeatherDecalSetup
---@field DecalMaterial UMaterialInterface
---@field DecalName FName
---@field DecalPlacement UWeatherDecalPlacement
---@field DecalSortOrderOffset int32
local FWeatherDecalSetup = {}



---@class FWeatherDefinition
---@field Name FName
---@field Clouds FCloudDefinitionName
---@field Fog FFogDefinitionName
---@field Wind FWindDefinitionName
local FWeatherDefinition = {}



---@class FWeatherDefinitionName : FWeatherDropdownName
local FWeatherDefinitionName = {}


---@class FWeatherDropdownName
---@field Name FName
local FWeatherDropdownName = {}



---@class FWeatherEnvironmentalGlobalsExtras
---@field StartState FEnvironmentalGlobalsExtraVariables
---@field CurrentState FEnvironmentalGlobalsExtraVariables
---@field UNSET FEnvironmentalGlobalsUnsetExtraVariables
local FWeatherEnvironmentalGlobalsExtras = {}



---@class FWeatherFXBaseActorTracker
---@field Actors TArray<AWeatherStormFXBase>
---@field CurrentlyActivated TArray<AWeatherStormFXBase>
local FWeatherFXBaseActorTracker = {}



---@class FWeatherFXBaseActorWorldTracker
---@field Trackers TMap<UWorld, FWeatherFXBaseActorTracker>
local FWeatherFXBaseActorWorldTracker = {}



---@class FWeatherIndoors
---@field GameIndoors float
---@field ProbeIndoors float
---@field WeatherIndoors float
---@field FullScreenDecalOpacity float
---@field CameraParticlesSpawnRate float
local FWeatherIndoors = {}



---@class FWeatherOverrideStack
---@field Presets TArray<FWeatherOverrideStackEntry>
local FWeatherOverrideStack = {}



---@class FWeatherOverrideStackEntry
---@field Owner TWeakObjectPtr<UObject>
---@field Preset FWeatherSequenceName
---@field PlaybackScale float
---@field bInstantSwitch boolean
---@field bRestorePriorWeather boolean
---@field bRestorePriorWeatherInstant boolean
---@field PriorityBoost int32
---@field UniqueId int32
local FWeatherOverrideStackEntry = {}



---@class FWeatherPhasedPresetEntry
---@field Phase FName
---@field Preset FWeatherDefinitionName
---@field Seasons int32
---@field bInstantChange boolean
local FWeatherPhasedPresetEntry = {}



---@class FWeatherPreload
---@field Preloads TArray<UObject>
local FWeatherPreload = {}



---@class FWeatherSeasonsFilter
---@field Seasons int32
local FWeatherSeasonsFilter = {}



---@class FWeatherSequenceCustom
---@field Name FName
---@field Sequences TArray<FWeatherSequenceInfoWithProbability>
---@field PlaybackScale float
local FWeatherSequenceCustom = {}



---@class FWeatherSequenceInfo
---@field Name FName
---@field Sequence TSoftObjectPtr<UWeatherSequence>
local FWeatherSequenceInfo = {}



---@class FWeatherSequenceInfoWithProbability : FWeatherSequenceInfo
---@field Probability EWeatherSequenceProbability
local FWeatherSequenceInfoWithProbability = {}



---@class FWeatherSequenceName : FWeatherDropdownName
local FWeatherSequenceName = {}


---@class FWeatherSequenceNoRedirectorsName : FWeatherSequenceName
local FWeatherSequenceNoRedirectorsName = {}


---@class FWeatherSequenceOrigin
---@field Sequence FName
---@field PlaybackScale float
---@field StackID int32
---@field Type EWeatherSequenceOriginType
---@field PriorityBoost int32
---@field PlayingID uint32
---@field bInstantChange boolean
---@field bRestorePriorWeather boolean
local FWeatherSequenceOrigin = {}



---@class FWeatherSequenceQueueRequest
---@field Asset TSoftObjectPtr<UWeatherSequence>
---@field Origin FWeatherSequenceOrigin
local FWeatherSequenceQueueRequest = {}



---@class FWeatherSequenceRedirector
---@field OldName FName
---@field RedirectTo FWeatherSequenceNoRedirectorsName
local FWeatherSequenceRedirector = {}



---@class FWeatherSequenceScalarParameterCurve
---@field Parameter FName
---@field Value FRuntimeFloatCurve
---@field bStretchToDuration boolean
local FWeatherSequenceScalarParameterCurve = {}



---@class FWeatherStormParams
---@field Precipitation EWeatherSurfacePrecipitation
---@field Type EWeatherSurfaceStormType
---@field Coverage float
---@field Intensity float
---@field StormHeight float
local FWeatherStormParams = {}



---@class FWeatherStormState : FWeatherStormParams
---@field Age float
local FWeatherStormState = {}



---@class FWeatherStormSurfaceParams
---@field WeatherColorModifier FLinearColor
---@field WeatherRoughness float
---@field WeatherSpecular float
---@field WeatherCoverageMagnitude float
---@field WeatherCoverageThreshold float
---@field WeatherDirection FVector
---@field WeatherEdgeStrength float
---@field WeatherEdgeMinimum float
---@field WeatherAnimationMagnitude float
---@field WeatherAnimationEdgeStrength float
---@field WeatherAnimationEdgeMinimum float
---@field WeatherSurfaceTiling float
---@field WeatherFarCoverage float
---@field WeatherSurfaceFadeStart float
---@field WeatherSurfaceFadeEnd float
---@field MacroNoiseTiling1 float
---@field MacroNoiseTiling2 float
---@field MacroNoiseScale float
---@field MacroNoiseBias float
---@field RippleNormalTiling float
---@field RippleNormalSpeedU float
---@field RippleNormalSpeedV float
---@field RippleNormalAmount float
local FWeatherStormSurfaceParams = {}



---@class FWeatherStormTypeFXSettings
---@field PrecipitationTypes int32
---@field StormTypes int32
---@field NiagaraVFX UNiagaraSystem
---@field StartSoundFX UAkAudioEvent
---@field EndSoundFX UAkAudioEvent
local FWeatherStormTypeFXSettings = {}



---@class FWeatherStormTypeFXSettingsState
---@field NiagaraVFXComponent UNiagaraComponent
---@field SoundFXHandle int32
---@field EndSoundFX UAkAudioEvent
local FWeatherStormTypeFXSettingsState = {}



---@class FWeatherSurfaceCharacterFXParameter
---@field Parameter FName
---@field Red EWeatherSurfaceCharacterFXParameters
---@field Green EWeatherSurfaceCharacterFXParameters
---@field Blue EWeatherSurfaceCharacterFXParameters
---@field Alpha EWeatherSurfaceCharacterFXParameters
---@field bSetParameter boolean
local FWeatherSurfaceCharacterFXParameter = {}



---@class FWeatherSurfaceCharacterFXSettings
---@field SkinFX TSubclassOf<ASkinFXDefinition>
---@field SkinFXStormLocalCoverageParameter FName
---@field SkinFXParameter FWeatherSurfaceCharacterFXParameter
---@field SkinFXParameterExtra FWeatherSurfaceCharacterFXParameter
---@field NiagaraVFX UNiagaraSystem
---@field NiagaraVFXSpawnRateMultiply FName
---@field NiagaraVFXStormLocalCoverageParameter FName
---@field StartSoundFX UAkAudioEvent
---@field EndSoundFX UAkAudioEvent
---@field FullCoverageMinutes float
---@field FullDryMinutes float
---@field ClampCoverage float
---@field LocalCoverateRateFilter float
---@field SwapCharacterClassNames TArray<FName>
---@field NoSwapActorTags TArray<FName>
---@field AlwaysOutdoorsActorTag FName
---@field PreferredInsideComponentName FName
---@field bSetSkinFXStormLocalCoverageParameter boolean
---@field bSetNiagaraVFXSpawnRateMultiply boolean
---@field bSetNiagaraVFXStormLocalCoverageParameter boolean
local FWeatherSurfaceCharacterFXSettings = {}



---@class FWeatherSurfaceCharacterFXState
---@field Settings FWeatherSurfaceCharacterFXSettings
---@field SkinFX USkinFXComponent
---@field SkinFXName FName
---@field NiagaraVFX UNiagaraComponent
---@field WeatherDecalsState USaveReceivesWeatherDecalsStateActor
---@field StartSoundFXHandle int32
---@field EndSoundFXHandle int32
---@field SkinFXParameters FMaterialSwapParameters
---@field LocalCoverage float
---@field LocalCoverageRate float
---@field CachedIndoors float
---@field CachedIndoorsAgeMilliseconds float
---@field ComponentForInsideTest TWeakObjectPtr<USceneComponent>
---@field NextSkinFXParameterUpdate float
---@field SuspendedTimer float
---@field State EWeatherSurfaceCharacterFXWetState
---@field bCheckedIfSwappable boolean
---@field bSuspended boolean
---@field bAlwaysOutdoors boolean
---@field bExactInside boolean
---@field bDryingOut boolean
local FWeatherSurfaceCharacterFXState = {}



---@class FWeatherSurfaceCharacterFXStateReset
---@field IndoorsReset EWeatherSurfaceCharacterFXStateResetType
---@field OutdoorsReset EWeatherSurfaceCharacterFXStateResetType
local FWeatherSurfaceCharacterFXStateReset = {}



---@class FWeatherTime : FWeatherTimeBase
---@field RealDeltaTime float
---@field AccumulationDeltaTime float
---@field GameTime FWeatherWorldTime
---@field SyncTime FWeatherTimeSyncTime
---@field SequenceStart FDateTime
---@field SequenceDuration FTimespan
local FWeatherTime = {}



---@class FWeatherTimeBase
---@field RealElapsedTime FTimespan
---@field GameElapsedTime FTimespan
local FWeatherTimeBase = {}



---@class FWeatherTimeSyncTime
---@field GameSyncBase FTimespan
---@field SequenceSyncBase FTimespan
---@field SyncError FTimespan
local FWeatherTimeSyncTime = {}



---@class FWeatherWindDirectionalSourceStack
---@field Stack TArray<TWeakObjectPtr<UWeatherWindDirectionalSourceComponentBase>>
local FWeatherWindDirectionalSourceStack = {}



---@class FWeatherWorldTime
---@field DateTime FDateTime
---@field DeltaTime float
---@field Rate float
---@field bDeltaTimeValid boolean
---@field bRateValid boolean
local FWeatherWorldTime = {}



---@class FWeatherWorldTimeEditor : FWeatherWorldTime
local FWeatherWorldTimeEditor = {}


---@class FWindDefinitionName : FWeatherDropdownName
local FWindDefinitionName = {}


---@class FWindDetails
---@field Direction FVector
---@field Velocity FVector
---@field Speed float
---@field NormalizedSpeed float
local FWindDetails = {}



---@class FWindParameters : FWindParametersInstant
---@field ModAngle FRuntimeFloatCurve
---@field ModSpeed FRuntimeFloatCurve
---@field bLoopModAngle boolean
---@field bLoopModSpeed boolean
local FWindParameters = {}



---@class FWindParametersInstant
---@field Angle float
---@field SpeedMS float
local FWindParametersInstant = {}



---@class FWindParametersInstantBlend : FWindParametersInstant
---@field Blend float
local FWindParametersInstantBlend = {}



---@class FWindParametersSampleTime
---@field Base EWindParametersTimeBase
---@field Factor float
local FWindParametersSampleTime = {}



---@class FWorldWeatherDecalTrackers
---@field Trackers TMap<TWeakObjectPtr<UWeatherDecal>, UWeatherDecalTracker>
local FWorldWeatherDecalTrackers = {}



---@class FWorldWindOffset
---@field WindOffsetKM FIntPoint
---@field WindOffsetM FVector2D
---@field Age float
local FWorldWindOffset = {}



---@class IWindVolumeInterface : IInterface
local IWindVolumeInterface = {}


---@class UCloudDefinitions : UDataAsset
---@field Definitions TArray<UCloudParams>
local UCloudDefinitions = {}



---@class UCloudParams : UObject
local UCloudParams = {}


---@class UCloudParamsFixed : UCloudParams
---@field Name FName
---@field Parameters FCloudParameters
---@field WindParams FVolumetricCloudsWeatherWindParams
local UCloudParamsFixed = {}



---@class UCloudParamsPreset : UCloudParams
---@field Name FName
---@field Preset FDataTableRowHandle
---@field WindParams FVolumetricCloudsWeatherWindParams
---@field SunDiskOverrides FSunDiskOverrides
---@field Overcast float
---@field HeightOffset float
---@field bSuperExpensiveCloudsCinematicOnly boolean
local UCloudParamsPreset = {}



---@class UDEPRECATED_WeatherDecalDefinitions : UDataAsset
---@field Decals TArray<UWeatherDecal>
local UDEPRECATED_WeatherDecalDefinitions = {}



---@class UDEPRECATED_WeatherLocalWindComponent : USceneComponent
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
local UDEPRECATED_WeatherLocalWindComponent = {}

---@param NewPriority float
function UDEPRECATED_WeatherLocalWindComponent:SetPriority(NewPriority) end


---@class UDEPRECATED_WeatherLocalWindVolumeConstantComponent : UDEPRECATED_WeatherLocalWindComponent
---@field WindParameters FWindParametersInstant
local UDEPRECATED_WeatherLocalWindVolumeConstantComponent = {}



---@class UDEPRECATED_WeatherLocalWindVolumeParametersComponent : UDEPRECATED_WeatherLocalWindComponent
---@field WindParameters FWindParameters
local UDEPRECATED_WeatherLocalWindVolumeParametersComponent = {}



---@class UDEPRECATED_WeatherLocalWindVolumePresetComponent : UDEPRECATED_WeatherLocalWindComponent
---@field Preset FWindDefinitionName
---@field PresetPtr TWeakObjectPtr<UWindParams>
local UDEPRECATED_WeatherLocalWindVolumePresetComponent = {}



---@class UFogDefinitions : UDataAsset
---@field Definitions TArray<UFogParams>
---@field BaseFog FExpHeightFogParameters
---@field SurfaceFogMaterialParameterCollection UMaterialParameterCollection
---@field SurfaceFogNiagaraParameterCollection UNiagaraParameterCollection
local UFogDefinitions = {}



---@class UFogParams : UObject
local UFogParams = {}


---@class UFogParamsFixed : UFogParams
---@field Name FName
---@field Parameters FFogParameters
local UFogParamsFixed = {}



---@class UGlobalLightingBlendableWeatherClouds : UGlobalLightingBlendableBase
---@field PresetParameters FVolumetricCloudsPresetParameters
---@field WindParameters FVolumetricCloudsWindParameters
---@field bPresetValid boolean
---@field bWindValid boolean
local UGlobalLightingBlendableWeatherClouds = {}



---@class UGlobalLightingBlendableWeatherFog : UGlobalLightingBlendableBase
---@field FogParameters FExpHeightFogParameters
---@field bUseEye boolean
---@field bValid boolean
local UGlobalLightingBlendableWeatherFog = {}



---@class ULiveWeatherSequenceInfo : UObject
---@field Sequence UWeatherSequence
---@field Player USceneRigPlayer
---@field Origin FWeatherSequenceOrigin
---@field Next FWeatherSequenceOrigin
---@field GamePlaybackScale float
---@field DynamicPlaybackScale float
---@field bKillASAP boolean
---@field bForceInstantChange boolean
---@field bCalledReadyToPlay boolean
---@field bPaused boolean
---@field bDone boolean
local ULiveWeatherSequenceInfo = {}



---@class USaveReceivesWeatherDecalsStateActor : USaveReceivesWeatherDecalsStateMesh
---@field Owner TWeakObjectPtr<AActor>
local USaveReceivesWeatherDecalsStateActor = {}

---@param markRenderStateDirty boolean
function USaveReceivesWeatherDecalsStateActor:Update(markRenderStateDirty) end
---@param Actor AActor
---@param ReceivesWeatherDecals boolean
---@param markRenderStateDirty boolean
---@return USaveReceivesWeatherDecalsStateActor
function USaveReceivesWeatherDecalsStateActor:CreateActor(Actor, ReceivesWeatherDecals, markRenderStateDirty) end


---@class USaveReceivesWeatherDecalsStateMesh : UObject
---@field SaveMap TMap<TWeakObjectPtr<UMeshComponent>, boolean>
---@field bReceivesWeatherDecals boolean
local USaveReceivesWeatherDecalsStateMesh = {}

---@param ReceivesWeatherDecals boolean
---@param markRenderStateDirty boolean
function USaveReceivesWeatherDecalsStateMesh:SetState(ReceivesWeatherDecals, markRenderStateDirty) end
---@param markRenderStateDirty boolean
function USaveReceivesWeatherDecalsStateMesh:RestoreState(markRenderStateDirty) end
---@param Owner AActor
---@param ReceivesWeatherDecals boolean
---@return USaveReceivesWeatherDecalsStateMesh
function USaveReceivesWeatherDecalsStateMesh:CreateMeshPool(Owner, ReceivesWeatherDecals) end
---@param Mesh UMeshComponent
---@param ReceivesWeatherDecals boolean
---@param markRenderStateDirty boolean
---@return USaveReceivesWeatherDecalsStateMesh
function USaveReceivesWeatherDecalsStateMesh:CreateMeshAutoOwner(Mesh, ReceivesWeatherDecals, markRenderStateDirty) end
---@param Owner AActor
---@param Mesh UMeshComponent
---@param ReceivesWeatherDecals boolean
---@param markRenderStateDirty boolean
---@return USaveReceivesWeatherDecalsStateMesh
function USaveReceivesWeatherDecalsStateMesh:CreateMesh(Owner, Mesh, ReceivesWeatherDecals, markRenderStateDirty) end
---@param Mesh UMeshComponent
---@param markRenderStateDirty boolean
function USaveReceivesWeatherDecalsStateMesh:AddMesh(Mesh, markRenderStateDirty) end


---@class USceneActionState_WeatherGeneric : USceneRigActionState
---@field CachedTime float
---@field CachedDuration float
---@field bCachedEnabled boolean
---@field bCachedInsideInterval boolean
local USceneActionState_WeatherGeneric = {}



---@class USceneActionState_WeatherSequence : USceneRigActionState
local USceneActionState_WeatherSequence = {}


---@class USceneActionState_WeatherSequenceAudioAmbience : USceneActionState_WeatherSequence
---@field SoundHandle int32
local USceneActionState_WeatherSequenceAudioAmbience = {}



---@class USceneActionState_WeatherSequenceAuto : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequenceAuto = {}


---@class USceneActionState_WeatherSequenceCameraMesh : USceneActionState_WeatherSequence
---@field Mesh UObject
---@field MeshComponent UMeshComponent
---@field MIDs TArray<UMaterialInstanceDynamic>
---@field bInInterval boolean
---@field bSpawned boolean
local USceneActionState_WeatherSequenceCameraMesh = {}



---@class USceneActionState_WeatherSequenceCloudsLegacy : USceneActionState_WeatherSequenceAuto
---@field LatchedBlendIn float
local USceneActionState_WeatherSequenceCloudsLegacy = {}



---@class USceneActionState_WeatherSequenceCloudsPreset : USceneActionState_WeatherSequenceAuto
---@field LatchedBlendIn float
local USceneActionState_WeatherSequenceCloudsPreset = {}



---@class USceneActionState_WeatherSequenceCloudsWind : USceneActionState_WeatherSequenceAuto
local USceneActionState_WeatherSequenceCloudsWind = {}


---@class USceneActionState_WeatherSequenceCold : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequenceCold = {}


---@class USceneActionState_WeatherSequenceEnvGlobal : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequenceEnvGlobal = {}


---@class USceneActionState_WeatherSequenceFog : USceneActionState_WeatherSequenceAuto
local USceneActionState_WeatherSequenceFog = {}


---@class USceneActionState_WeatherSequenceFogNoise : USceneActionState_WeatherSequenceAuto
local USceneActionState_WeatherSequenceFogNoise = {}


---@class USceneActionState_WeatherSequenceLightingBase : USceneActionState_WeatherSequence
---@field CurrentTime float
local USceneActionState_WeatherSequenceLightingBase = {}



---@class USceneActionState_WeatherSequenceLightingGlobalLightRigBlendable : USceneActionState_WeatherSequenceLightingBase
local USceneActionState_WeatherSequenceLightingGlobalLightRigBlendable = {}


---@class USceneActionState_WeatherSequenceLightingPostProcessing : USceneActionState_WeatherSequenceLightingBase
---@field CachedPostProcessSettings FPostProcessSettings
local USceneActionState_WeatherSequenceLightingPostProcessing = {}



---@class USceneActionState_WeatherSequenceNiagara : USceneActionState_WeatherSequence
---@field NiagaraSystem UNiagaraSystem
---@field NiagaraComponents TArray<UNiagaraComponent>
---@field bInInterval boolean
---@field bSpawned boolean
local USceneActionState_WeatherSequenceNiagara = {}



---@class USceneActionState_WeatherSequenceOvercast : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequenceOvercast = {}


---@class USceneActionState_WeatherSequencePause : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequencePause = {}


---@class USceneActionState_WeatherSequenceStorm : USceneActionState_WeatherSequence
---@field Precipitation UWeatherSurfaceDataAsset
---@field bKickedOff boolean
local USceneActionState_WeatherSequenceStorm = {}



---@class USceneActionState_WeatherSequenceStormActor : USceneActionState_WeatherSequence
---@field SpawnedActor TWeakObjectPtr<AWeatherSurfaceWorldFXBlueprint>
local USceneActionState_WeatherSequenceStormActor = {}



---@class USceneActionState_WeatherSequenceStormCurve : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequenceStormCurve = {}


---@class USceneActionState_WeatherSequenceSunDisk : USceneActionState_WeatherSequenceAuto
local USceneActionState_WeatherSequenceSunDisk = {}


---@class USceneActionState_WeatherSequenceSurfaceFog : USceneActionState_WeatherSequence
local USceneActionState_WeatherSequenceSurfaceFog = {}


---@class USceneActionState_WeatherSequenceWind : USceneActionState_WeatherSequenceAuto
---@field WindSource TWeakObjectPtr<UWeatherWindDirectionalSourceComponent>
local USceneActionState_WeatherSequenceWind = {}



---@class USceneActionState_WeatherSequenceWindMulti : USceneActionState_WeatherSequence
---@field WindSource TWeakObjectPtr<UWeatherWindDirectionalSourceInstantComponent>
---@field WindParameters FWindParameters
---@field SampleTime FWindParametersSampleTime
---@field WindGustController UWindGustController
---@field StartWeatherTime FWeatherTimeBase
---@field Index int32
---@field bValidParameters boolean
local USceneActionState_WeatherSequenceWindMulti = {}



---@class USceneAction_WeatherAccumulationReset : USceneAction_WeatherGeneric
---@field StateReset FWeatherSurfaceCharacterFXStateReset
---@field PrecipitationPercentage float
---@field PrecipitationFadeTime float
---@field MaxWindSpeed float
---@field bSetMaxWindSpeed boolean
local USceneAction_WeatherAccumulationReset = {}



---@class USceneAction_WeatherGeneric : USceneRigActionBase
local USceneAction_WeatherGeneric = {}


---@class USceneAction_WeatherPrecipitationPercentage : USceneAction_WeatherGeneric
---@field PrecipitationPercentage float
---@field PrecipitationFadeTime float
local USceneAction_WeatherPrecipitationPercentage = {}



---@class USceneAction_WeatherSequence : USceneRigActionBase
local USceneAction_WeatherSequence = {}


---@class USceneAction_WeatherSequenceAudioAmbience : USceneAction_WeatherSequence
---@field StartSoundFX UAkAudioEvent
---@field EndSoundFX UAkAudioEvent
local USceneAction_WeatherSequenceAudioAmbience = {}



---@class USceneAction_WeatherSequenceCameraMesh : USceneAction_WeatherSequence
---@field Offset FVector
---@field Rotation FRotator
---@field Scale FVector
---@field Parameters TArray<FWeatherSequenceScalarParameterCurve>
---@field SetMaterialOutdoors FName
---@field bHideIndoors boolean
---@field bSetOutdoorsValue boolean
local USceneAction_WeatherSequenceCameraMesh = {}



---@class USceneAction_WeatherSequenceCameraNiagara : USceneAction_WeatherSequenceNiagaraAttached
---@field SetOutdoors FName
---@field bSetOutdoorsValue boolean
---@field bHideIndoors boolean
local USceneAction_WeatherSequenceCameraNiagara = {}



---@class USceneAction_WeatherSequenceCameraStaticMesh : USceneAction_WeatherSequenceCameraMesh
---@field Mesh TSoftObjectPtr<UStaticMesh>
local USceneAction_WeatherSequenceCameraStaticMesh = {}



---@class USceneAction_WeatherSequenceCloudsLegacy : USceneAction_WeatherSequence
---@field Definition FCloudDefinitionName
local USceneAction_WeatherSequenceCloudsLegacy = {}



---@class USceneAction_WeatherSequenceCloudsParams : USceneAction_WeatherSequenceCloudsPreset
---@field Params FVolumetricCloudsPresetParams
---@field HeightOffset float
---@field bSuperExpensiveCloudsCinematicOnly boolean
local USceneAction_WeatherSequenceCloudsParams = {}



---@class USceneAction_WeatherSequenceCloudsPreset : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceCloudsPreset = {}


---@class USceneAction_WeatherSequenceCloudsPresetDataTable : USceneAction_WeatherSequenceCloudsPreset
---@field Preset FDataTableRowHandle
---@field HeightOffset float
---@field bSuperExpensiveCloudsCinematicOnly boolean
---@field bOverrideCoverageChance boolean
---@field OverrideCoverageChance float
---@field bOverrideTypeChance boolean
---@field OverrideTypeChance float
---@field bOverridePrecipitationChance boolean
---@field OverridePrecipitationChance float
---@field bOverrideHighAltitudeChance boolean
---@field OverrideHighAltitudeChance float
---@field bOverrideLayerRadius boolean
---@field OverrideLayerRadius float
---@field bOverrideLayerVerticalHeight boolean
---@field OverrideLayerVerticalHeight float
---@field bOverrideCoverageCameraFade boolean
---@field OverrideCoverageCameraFade float
local USceneAction_WeatherSequenceCloudsPresetDataTable = {}



---@class USceneAction_WeatherSequenceCloudsWeatherParams : USceneAction_WeatherSequenceCloudsPreset
---@field WeatherState FVolumetricCloudsWeatherState
---@field HeightOffset float
local USceneAction_WeatherSequenceCloudsWeatherParams = {}



---@class USceneAction_WeatherSequenceCloudsWind : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceCloudsWind = {}


---@class USceneAction_WeatherSequenceCloudsWindParams : USceneAction_WeatherSequenceCloudsWind
---@field WindParams FVolumetricCloudsWeatherWindParams
local USceneAction_WeatherSequenceCloudsWindParams = {}



---@class USceneAction_WeatherSequenceCold : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceCold = {}


---@class USceneAction_WeatherSequenceColdConstant : USceneAction_WeatherSequenceCold
---@field Cold float
local USceneAction_WeatherSequenceColdConstant = {}



---@class USceneAction_WeatherSequenceColdCurve : USceneAction_WeatherSequenceCold
---@field Cold FRuntimeFloatCurve
---@field bStretchToDuration boolean
---@field BlendDuration float
local USceneAction_WeatherSequenceColdCurve = {}



---@class USceneAction_WeatherSequenceEnvGlobal : USceneAction_WeatherSequence
---@field bUnsetAtEndOfSequence boolean
local USceneAction_WeatherSequenceEnvGlobal = {}



---@class USceneAction_WeatherSequenceEnvGlobalColor : USceneAction_WeatherSequenceEnvGlobal
---@field VariableName FEnvironmentalGlobalsVectorOrColorName
---@field bLerpWithHSV boolean
local USceneAction_WeatherSequenceEnvGlobalColor = {}



---@class USceneAction_WeatherSequenceEnvGlobalColorConstant : USceneAction_WeatherSequenceEnvGlobalColor
---@field Value FLinearColor
local USceneAction_WeatherSequenceEnvGlobalColorConstant = {}



---@class USceneAction_WeatherSequenceEnvGlobalColorConstantIn : USceneAction_WeatherSequenceEnvGlobalColorConstant
local USceneAction_WeatherSequenceEnvGlobalColorConstantIn = {}


---@class USceneAction_WeatherSequenceEnvGlobalColorCurve : USceneAction_WeatherSequenceEnvGlobalColor
---@field Value FRuntimeCurveLinearColor
---@field BlendInTime float
---@field bStretchToDuration boolean
local USceneAction_WeatherSequenceEnvGlobalColorCurve = {}



---@class USceneAction_WeatherSequenceEnvGlobalScalar : USceneAction_WeatherSequenceEnvGlobal
---@field VariableName FEnvironmentalGlobalsScalarName
local USceneAction_WeatherSequenceEnvGlobalScalar = {}



---@class USceneAction_WeatherSequenceEnvGlobalScalarConstant : USceneAction_WeatherSequenceEnvGlobalScalar
---@field Value float
local USceneAction_WeatherSequenceEnvGlobalScalarConstant = {}



---@class USceneAction_WeatherSequenceEnvGlobalScalarConstantIn : USceneAction_WeatherSequenceEnvGlobalScalarConstant
local USceneAction_WeatherSequenceEnvGlobalScalarConstantIn = {}


---@class USceneAction_WeatherSequenceEnvGlobalScalarCurve : USceneAction_WeatherSequenceEnvGlobalScalar
---@field Value FRuntimeFloatCurve
---@field ClampMin float
---@field ClampMax float
---@field BlendInTime float
---@field bStretchToDuration boolean
---@field bClampMinValue boolean
---@field bClampMaxValue boolean
local USceneAction_WeatherSequenceEnvGlobalScalarCurve = {}



---@class USceneAction_WeatherSequenceFog : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceFog = {}


---@class USceneAction_WeatherSequenceFogLegacy : USceneAction_WeatherSequenceFog
---@field Definition FFogDefinitionName
local USceneAction_WeatherSequenceFogLegacy = {}



---@class USceneAction_WeatherSequenceFogNoise : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceFogNoise = {}


---@class USceneAction_WeatherSequenceFogNoiseOverride : USceneAction_WeatherSequenceFogNoise
---@field Noise FExpHeightFogVolumetricNoiseParametersOverride
local USceneAction_WeatherSequenceFogNoiseOverride = {}



---@class USceneAction_WeatherSequenceFogNoiseSet : USceneAction_WeatherSequenceFogNoise
---@field Noise FExpHeightFogVolumetricNoiseParameters
local USceneAction_WeatherSequenceFogNoiseSet = {}



---@class USceneAction_WeatherSequenceFogOverrideParams : USceneAction_WeatherSequenceFog
---@field Fog FExpHeightFogParametersOverride
---@field bFollowCamera boolean
local USceneAction_WeatherSequenceFogOverrideParams = {}



---@class USceneAction_WeatherSequenceFogParams : USceneAction_WeatherSequenceFog
---@field Fog FExpHeightFogParameters
---@field bFollowCamera boolean
local USceneAction_WeatherSequenceFogParams = {}



---@class USceneAction_WeatherSequenceLightingBase : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceLightingBase = {}


---@class USceneAction_WeatherSequenceLightingGlobalLightRigBlendable : USceneAction_WeatherSequenceLightingBase
---@field GlobalLightingBlendable UGlobalLightingBlendable
---@field BlendDomain FBlendDomain
---@field Priority float
---@field PostSequenceLifetime float
local USceneAction_WeatherSequenceLightingGlobalLightRigBlendable = {}



---@class USceneAction_WeatherSequenceLightingGlobalLightRigBlendableBlendConstant : USceneAction_WeatherSequenceLightingGlobalLightRigBlendable
---@field BlendWeight float
local USceneAction_WeatherSequenceLightingGlobalLightRigBlendableBlendConstant = {}



---@class USceneAction_WeatherSequenceLightingGlobalLightRigBlendableBlendCurve : USceneAction_WeatherSequenceLightingGlobalLightRigBlendable
---@field BlendWeight FRuntimeFloatCurve
---@field bStretchToDuration boolean
local USceneAction_WeatherSequenceLightingGlobalLightRigBlendableBlendCurve = {}



---@class USceneAction_WeatherSequenceLightingPostProcessing : USceneAction_WeatherSequenceLightingPostProcessingBase
---@field PostProcessSettings FPostProcessSettings
---@field BlendDomain FBlendDomain
---@field Priority float
---@field bEnabled boolean
local USceneAction_WeatherSequenceLightingPostProcessing = {}



---@class USceneAction_WeatherSequenceLightingPostProcessingBase : USceneAction_WeatherSequenceLightingBase
---@field PostSequenceLifetime float
local USceneAction_WeatherSequenceLightingPostProcessingBase = {}



---@class USceneAction_WeatherSequenceLightingPostProcessingBlendConstant : USceneAction_WeatherSequenceLightingPostProcessing
---@field BlendWeight float
local USceneAction_WeatherSequenceLightingPostProcessingBlendConstant = {}



---@class USceneAction_WeatherSequenceLightingPostProcessingBlendCurve : USceneAction_WeatherSequenceLightingPostProcessing
---@field BlendWeight FRuntimeFloatCurve
---@field bStretchToDuration boolean
local USceneAction_WeatherSequenceLightingPostProcessingBlendCurve = {}



---@class USceneAction_WeatherSequenceLightingRenderSettings : USceneAction_WeatherSequenceLightingPostProcessingBase
---@field Settings FRenderSettingsPostProcessing
---@field ExposureTweak float
---@field BlendDomain FBlendDomain
---@field Priority float
---@field bEnabled boolean
---@field bUseExposureTweak boolean
local USceneAction_WeatherSequenceLightingRenderSettings = {}



---@class USceneAction_WeatherSequenceLightingRenderSettingsBlendConstant : USceneAction_WeatherSequenceLightingRenderSettings
---@field BlendWeight float
local USceneAction_WeatherSequenceLightingRenderSettingsBlendConstant = {}



---@class USceneAction_WeatherSequenceLightingRenderSettingsBlendCurve : USceneAction_WeatherSequenceLightingRenderSettings
---@field BlendWeight FRuntimeFloatCurve
---@field bStretchToDuration boolean
local USceneAction_WeatherSequenceLightingRenderSettingsBlendCurve = {}



---@class USceneAction_WeatherSequenceNiagara : USceneAction_WeatherSequence
---@field NiagaraSystemAsset TSoftObjectPtr<UNiagaraSystem>
local USceneAction_WeatherSequenceNiagara = {}



---@class USceneAction_WeatherSequenceNiagaraAttached : USceneAction_WeatherSequenceNiagara
---@field SpawnInfo FNiagaraSystemSpawnAttachedPointInfo
local USceneAction_WeatherSequenceNiagaraAttached = {}



---@class USceneAction_WeatherSequenceNiagaraInWorld : USceneAction_WeatherSequenceNiagara
---@field Transform UTransformProvider
---@field SpawnInfo FNiagaraSystemSpawnInfo
local USceneAction_WeatherSequenceNiagaraInWorld = {}



---@class USceneAction_WeatherSequenceOvercast : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceOvercast = {}


---@class USceneAction_WeatherSequenceOvercastConstant : USceneAction_WeatherSequenceOvercast
---@field Overcast float
local USceneAction_WeatherSequenceOvercastConstant = {}



---@class USceneAction_WeatherSequenceOvercastCurve : USceneAction_WeatherSequenceOvercast
---@field Overcast FRuntimeFloatCurve
---@field bStretchToDuration boolean
---@field BlendDuration float
local USceneAction_WeatherSequenceOvercastCurve = {}



---@class USceneAction_WeatherSequencePause : USceneAction_WeatherSequence
local USceneAction_WeatherSequencePause = {}


---@class USceneAction_WeatherSequenceSkeletalNiagara : USceneAction_WeatherSequenceNiagara
---@field Actor UActorProvider
---@field SpawnInfo FNiagaraSystemSpawnMultiSkeletalInfo
---@field Filter FNiagaraHelpersPrimFilter
local USceneAction_WeatherSequenceSkeletalNiagara = {}



---@class USceneAction_WeatherSequenceStorm : USceneAction_WeatherSequence
---@field PrecipitationType EWeatherSurfacePrecipitation
---@field Type EWeatherSurfaceStormType
---@field Precipitation TSoftObjectPtr<UWeatherSurfaceDataAsset>
---@field PreloadedPrecipitation UWeatherSurfaceDataAsset
local USceneAction_WeatherSequenceStorm = {}



---@class USceneAction_WeatherSequenceStormActor : USceneAction_WeatherSequence
---@field StormActor TSubclassOf<AWeatherSurfaceWorldFXBlueprint>
---@field Transform UTransformProvider
local USceneAction_WeatherSequenceStormActor = {}



---@class USceneAction_WeatherSequenceStormCoverage : USceneAction_WeatherSequenceStormCurve
local USceneAction_WeatherSequenceStormCoverage = {}


---@class USceneAction_WeatherSequenceStormCurve : USceneAction_WeatherSequence
---@field Curve FRuntimeFloatCurve
---@field bStretchToDuration boolean
local USceneAction_WeatherSequenceStormCurve = {}



---@class USceneAction_WeatherSequenceStormIntensity : USceneAction_WeatherSequenceStormCurve
local USceneAction_WeatherSequenceStormIntensity = {}


---@class USceneAction_WeatherSequenceSunDisk : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceSunDisk = {}


---@class USceneAction_WeatherSequenceSunDiskDefaultParams : USceneAction_WeatherSequenceSunDisk
local USceneAction_WeatherSequenceSunDiskDefaultParams = {}


---@class USceneAction_WeatherSequenceSunDiskParams : USceneAction_WeatherSequenceSunDisk
---@field SunDisk FSunDiskOverrides
local USceneAction_WeatherSequenceSunDiskParams = {}



---@class USceneAction_WeatherSequenceSurfaceFog : USceneAction_WeatherSequence
---@field Type ESurfaceFogType
---@field Intensity FRuntimeFloatCurve
---@field bStretchToDuration boolean
local USceneAction_WeatherSequenceSurfaceFog = {}



---@class USceneAction_WeatherSequenceWind : USceneAction_WeatherSequence
local USceneAction_WeatherSequenceWind = {}


---@class USceneAction_WeatherSequenceWindLegacy : USceneAction_WeatherSequenceWind
---@field Definition FWindDefinitionName
local USceneAction_WeatherSequenceWindLegacy = {}



---@class USceneAction_WeatherSequenceWindMulti : USceneAction_WeatherSequence
---@field BlendInTime float
---@field BlendInTimeBase EWindParametersTimeBase
---@field Definitions TArray<FWindDefinitionName>
---@field bRandomizeOrder boolean
local USceneAction_WeatherSequenceWindMulti = {}



---@class USceneAction_WeatherSequenceWindParams : USceneAction_WeatherSequenceWind
---@field Wind FWindParameters
---@field WindGustController UWindGustController
---@field SampleTime FWindParametersSampleTime
local USceneAction_WeatherSequenceWindParams = {}



---@class USceneAction_WeatherSequenceWindRandomParams : USceneAction_WeatherSequenceWind
---@field MinAngle float
---@field MaxAngle float
---@field MinSpeed float
---@field MaxSpeed float
---@field WindGustController UWindGustController
local USceneAction_WeatherSequenceWindRandomParams = {}



---@class USceneAction_WeatherSetMaxWindSpeed : USceneAction_WeatherGeneric
---@field MaxWindSpeed float
local USceneAction_WeatherSetMaxWindSpeed = {}



---@class UStormWeatherDecal : UWeatherDecal
local UStormWeatherDecal = {}


---@class UStormWeatherDecalDefault : UStormWeatherDecal
---@field Setup FWeatherDecalSetup
---@field WeatherAnimationClass TSubclassOf<AWeatherAnimationBlueprint>
---@field WeatherCoverageClass TSubclassOf<AWeatherCoverageBlueprint>
---@field SurfaceParameters FWeatherStormSurfaceParams
---@field ExtraSettings TArray<UWeatherDecalSettings>
---@field Updates TArray<UWeatherDecalUpdate>
local UStormWeatherDecalDefault = {}



---@class UStormWeatherDecalTracker : UWeatherDecalTracker
---@field OwningWorld TWeakObjectPtr<UWorld>
---@field StormState FWeatherStormState
---@field AnimationActor AWeatherAnimationBlueprint
---@field CoverageActor AWeatherCoverageBlueprint
local UStormWeatherDecalTracker = {}



---@class UWeatherCustomBlendDomainBase : URenderSettingsCustomBlendDomainBase
local UWeatherCustomBlendDomainBase = {}


---@class UWeatherCustomBlendDomainOvercast : URenderSettingsCustomBlendDomainNoPreCompute
local UWeatherCustomBlendDomainOvercast = {}


---@class UWeatherCustomBlendDomainStormCoverage : URenderSettingsCustomBlendDomainNoPreCompute
local UWeatherCustomBlendDomainStormCoverage = {}


---@class UWeatherCustomBlendDomainStormIntensity : URenderSettingsCustomBlendDomainNoPreCompute
local UWeatherCustomBlendDomainStormIntensity = {}


---@class UWeatherCustomBlendDomainSurfaceFogIntensity : URenderSettingsCustomBlendDomainNoPreCompute
local UWeatherCustomBlendDomainSurfaceFogIntensity = {}


---@class UWeatherCustomBlendDomainWeatherCameraParticlesSpawnRate : URenderSettingsNamedCustomBlendDomain
local UWeatherCustomBlendDomainWeatherCameraParticlesSpawnRate = {}


---@class UWeatherCustomBlendDomainWeatherCold : URenderSettingsCustomBlendDomain
local UWeatherCustomBlendDomainWeatherCold = {}


---@class UWeatherCustomBlendDomainWeatherDecalOpacity : URenderSettingsNamedCustomBlendDomain
local UWeatherCustomBlendDomainWeatherDecalOpacity = {}


---@class UWeatherCustomBlendDomainWeatherIndoors : URenderSettingsCustomBlendDomainNoPreCompute
local UWeatherCustomBlendDomainWeatherIndoors = {}


---@class UWeatherCustomBlendDomainWeatherIndoorsBase : URenderSettingsNamedCustomBlendDomain
local UWeatherCustomBlendDomainWeatherIndoorsBase = {}


---@class UWeatherCustomBlendDomainWeatherOutdoors : URenderSettingsCustomBlendDomainNoPreCompute
local UWeatherCustomBlendDomainWeatherOutdoors = {}


---@class UWeatherCustomSequences : UDataAsset
---@field CustomSequences TArray<FWeatherSequenceCustom>
local UWeatherCustomSequences = {}



---@class UWeatherDecal : UObject
local UWeatherDecal = {}


---@class UWeatherDecalCondition : UObject
local UWeatherDecalCondition = {}


---@class UWeatherDecalConditionBlendDomain : UWeatherDecalSimpleCondition
---@field BlendDomain FBlendDomain
local UWeatherDecalConditionBlendDomain = {}



---@class UWeatherDecalConditionConsoleVariable : UWeatherDecalSimpleCondition
---@field ConsoleVariableName FName
---@field bCreateIfNotFound boolean
---@field bEditorOnly boolean
local UWeatherDecalConditionConsoleVariable = {}



---@class UWeatherDecalConditionOneMinusConsoleVariable : UWeatherDecalConditionConsoleVariable
local UWeatherDecalConditionOneMinusConsoleVariable = {}


---@class UWeatherDecalConditionSeasons : UWeatherDecalSimpleCondition
---@field Fall float
---@field Winter float
---@field Spring float
---@field Summer float
---@field bUseSeasonOverride boolean
local UWeatherDecalConditionSeasons = {}



---@class UWeatherDecalConditionSeasonsPhases : UWeatherDecalCondition
---@field FallPhases TMap<int32, float>
---@field WinterPhases TMap<int32, float>
---@field SpringPhases TMap<int32, float>
---@field SummerPhases TMap<int32, float>
---@field bOnInFall boolean
---@field bOnInWinter boolean
---@field bOnInSpring boolean
---@field bOnInSummer boolean
---@field bUseSeasonOverride boolean
local UWeatherDecalConditionSeasonsPhases = {}



---@class UWeatherDecalConditionalUpdate : UWeatherDecalUpdate
---@field Conditions TArray<UWeatherDecalSimpleCondition>
---@field Settings TArray<UWeatherDecalSettings>
---@field bIncludeOverallBlend boolean
local UWeatherDecalConditionalUpdate = {}



---@class UWeatherDecalModifier : UObject
local UWeatherDecalModifier = {}


---@class UWeatherDecalPlacement : UObject
local UWeatherDecalPlacement = {}


---@class UWeatherDecalPlacementLegacy : UWeatherDecalPlacement
---@field Position FVector
---@field Scale FVector
local UWeatherDecalPlacementLegacy = {}



---@class UWeatherDecalPlacementTagPlacementActor : UWeatherDecalPlacement
---@field DecalTag FName
---@field bFailOnNotFound boolean
local UWeatherDecalPlacementTagPlacementActor = {}



---@class UWeatherDecalPlacementWorld : UWeatherDecalPlacement
local UWeatherDecalPlacementWorld = {}


---@class UWeatherDecalSettings : UWeatherDecalModifier
local UWeatherDecalSettings = {}


---@class UWeatherDecalSettingsEnvGlobalsParameters : UWeatherDecalSettingsParameters
local UWeatherDecalSettingsEnvGlobalsParameters = {}


---@class UWeatherDecalSettingsFlexParameters : UWeatherDecalSettingsParameters
---@field Types int32
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
local UWeatherDecalSettingsFlexParameters = {}



---@class UWeatherDecalSettingsParameters : UWeatherDecalSettings
---@field Parameters FWeatherDecalParameters
local UWeatherDecalSettingsParameters = {}



---@class UWeatherDecalSimpleCondition : UWeatherDecalCondition
local UWeatherDecalSimpleCondition = {}


---@class UWeatherDecalTracker : UObject
---@field Owner TWeakObjectPtr<UObject>
---@field DecalActor AFullScreenWeatherDecalActor
---@field BasePosition FVector
---@field ZOffset float
---@field SleepUntil float
local UWeatherDecalTracker = {}



---@class UWeatherDecalUpdate : UWeatherDecalModifier
local UWeatherDecalUpdate = {}


---@class UWeatherDecalUpdateDecalFullScreenOpacity : UWeatherDecalUpdateSingleParameterFlex
---@field bIncludeWeatherblendDomainOpacity boolean
---@field bToggleVisibilityBasedOnOpacity boolean
local UWeatherDecalUpdateDecalFullScreenOpacity = {}



---@class UWeatherDecalUpdateFlexBlend : UWeatherDecalUpdateSingleParameterFlex
local UWeatherDecalUpdateFlexBlend = {}


---@class UWeatherDecalUpdateSeasonsPhases : UWeatherDecalUpdate
---@field FallPhases TArray<UWeatherDecalSettings>
---@field WinterPhases TArray<UWeatherDecalSettings>
---@field SpringPhases TArray<UWeatherDecalSettings>
---@field SummerPhases TArray<UWeatherDecalSettings>
---@field bUseSeasonOverride boolean
local UWeatherDecalUpdateSeasonsPhases = {}



---@class UWeatherDecalUpdateSingleParameter : UWeatherDecalUpdate
---@field Parameter FName
local UWeatherDecalUpdateSingleParameter = {}



---@class UWeatherDecalUpdateSingleParameterConsoleVariable : UWeatherDecalUpdateSingleParameterFlex
---@field ConsoleVariableName FName
---@field MinValue float
---@field MaxValue float
---@field DefaultValue float
---@field bCreateIfNotFound boolean
---@field bEditorOnly boolean
---@field bUseMin boolean
---@field bUseMax boolean
local UWeatherDecalUpdateSingleParameterConsoleVariable = {}



---@class UWeatherDecalUpdateSingleParameterFlex : UWeatherDecalUpdateSingleParameter
---@field Types int32
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
local UWeatherDecalUpdateSingleParameterFlex = {}



---@class UWeatherDecalUpdateZOffset : UWeatherDecalUpdate
local UWeatherDecalUpdateZOffset = {}


---@class UWeatherDefinitions : UDataAsset
local UWeatherDefinitions = {}


---@class UWeatherExclusionComponent : USceneComponent
---@field bHideCameraFX boolean
---@field bHideSurfaceFX boolean
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
local UWeatherExclusionComponent = {}

---@param NewPriority float
function UWeatherExclusionComponent:SetPriority(NewPriority) end


---@class UWeatherGlobalLightingBlendableOrphanComponent : UWeatherOrphanComponent
---@field Blendable UGlobalLightingBlendable
---@field Priority float
local UWeatherGlobalLightingBlendableOrphanComponent = {}



---@class UWeatherLibrary : UDataAsset
---@field Sequences UWeatherSequences
---@field FogDefinitions UFogDefinitions
---@field CloudDefinitions UCloudDefinitions
---@field WindDefinitions UWindDefinitions
---@field WeatherSurfaceTypes UWeatherTypesAsset
---@field DefaultOvercastBlendable UGlobalLightingBlendable
---@field ProhibitWeatherBlendDomain URenderSettingsCustomBlendDomain
---@field WeatherPreloadsAsset TSoftObjectPtr<UWeatherPreloads>
local UWeatherLibrary = {}



---@class UWeatherMasterComponent : UActorComponent
---@field CurrentWeatherSequence ULiveWeatherSequenceInfo
---@field ActionContext FWeatherActionContext
---@field EnvironmentalGlobalsExtras FWeatherEnvironmentalGlobalsExtras
---@field CurrentStorm UWeatherStorm
---@field TransitionStorm UWeatherStorm
---@field DefaultWeather FWeatherDefinitionName
---@field OverrideWeather FWeatherSequenceOrigin
---@field ConsoleWeather FWeatherSequenceOrigin
---@field WorldDecals UWorldWeatherDecalDefinitions
---@field WorldDecalTrackers FWorldWeatherDecalTrackers
---@field CloudsBlendablePriority float
---@field FogBlendDomain FBlendDomain
---@field FogBlendablePriority float
---@field OverrideOvercastBlendable UGlobalLightingBlendable
---@field OvercastBlendDomain FBlendDomain
---@field OvercastBlendablePriority float
---@field bDisableCloudsBlendable boolean
---@field bDisableFogBlendable boolean
---@field bDisableOvercastBlendable boolean
---@field WeatherOverrideStack FWeatherOverrideStack
---@field CurrentLocalSequence FName
---@field FXRoot USceneComponent
---@field FogBlendable UGlobalLightingBlendableWeatherFog
---@field CloudsBlendable UGlobalLightingBlendableWeatherClouds
---@field PendingLoadQueue TArray<UWeatherSequencePendingLoad>
---@field CurrentPlayingID uint32
---@field RestoreWeather TMap<uint32, UWeatherSequencePendingLoad>
---@field ExtraWeatherSwaps TMap<TWeakObjectPtr<AActor>, float>
---@field bWeatherIsRunning boolean
---@field CurrentSeason ESeasonEnum
local UWeatherMasterComponent = {}

---@param Actor AActor
function UWeatherMasterComponent:WeatherFXRemoveFromExtraSwaps(Actor) end
---@param Actor AActor
---@param bIsInList boolean
function UWeatherMasterComponent:WeatherFXIsInExtraSwaps(Actor, bIsInList) end
---@param Actor AActor
---@param OverrideSwapDistanceMeters float
---@param bAlwaysSwap boolean
function UWeatherMasterComponent:WeatherFXAddToExtraSwaps(Actor, OverrideSwapDistanceMeters, bAlwaysSwap) end
---@param WorldContextObject UObject
---@param NewOverrideWeather FName
---@param bInstantChange boolean
function UWeatherMasterComponent:SetOverrideWeather(WorldContextObject, NewOverrideWeather, bInstantChange) end
---@param WorldContextObject UObject
---@param NewDefaultWeather FName
function UWeatherMasterComponent:SetDefaultWeather(WorldContextObject, NewDefaultWeather) end
---@param WorldContextObject UObject
---@param Entry FWeatherOverrideStackEntry
---@param bSuccess boolean
function UWeatherMasterComponent:PushWeatherOverride(WorldContextObject, Entry, bSuccess) end
---@param WorldContextObject UObject
---@param Owner UObject
function UWeatherMasterComponent:PopWeatherOverride(WorldContextObject, Owner) end
function UWeatherMasterComponent:NextSequence() end
---@param WorldContextObject UObject
---@param bIsSnowStorm boolean
---@param SnowStormType EWeatherSurfaceStormType
---@param SnowIntensity float
---@param SnowCoverage float
---@param bMaskWithIndoors boolean
function UWeatherMasterComponent:IsSnowing(WorldContextObject, bIsSnowStorm, SnowStormType, SnowIntensity, SnowCoverage, bMaskWithIndoors) end
---@param WorldContextObject UObject
---@param bIsRainStorm boolean
---@param RainStormType EWeatherSurfaceStormType
---@param RainIntensity float
---@param RainCoverage float
---@param bMaskWithIndoors boolean
function UWeatherMasterComponent:IsRaining(WorldContextObject, bIsRainStorm, RainStormType, RainIntensity, RainCoverage, bMaskWithIndoors) end
---@param WorldContextObject UObject
---@param WindParameters FWindParametersInstant
---@param bHaveWeather boolean
function UWeatherMasterComponent:GetWeatherWind(WorldContextObject, WindParameters, bHaveWeather) end
---@param WorldContextObject UObject
---@param WeatherMaster UWeatherMasterComponent
function UWeatherMasterComponent:GetWeatherMaster(WorldContextObject, WeatherMaster) end
---@param WorldContextObject UObject
---@param FXRootComponent USceneComponent
function UWeatherMasterComponent:GetWeatherFXRoot(WorldContextObject, FXRootComponent) end
---@param WorldContextObject UObject
---@param WeatherPresets TArray<FName>
function UWeatherMasterComponent:GetValidWeatherPresets(WorldContextObject, WeatherPresets) end
---@param WorldContextObject UObject
---@param CurrentOverrideWeather FName
function UWeatherMasterComponent:GetOverrideWeather(WorldContextObject, CurrentOverrideWeather) end
---@param WorldContextObject UObject
---@param Overcast float
function UWeatherMasterComponent:GetOvercast(WorldContextObject, Overcast) end
---@param WorldContextObject UObject
---@param CurrentDefaultWeather FName
function UWeatherMasterComponent:GetDefaultWeather(WorldContextObject, CurrentDefaultWeather) end
---@param WorldContextObject UObject
---@param TheCurrentWeather FName
function UWeatherMasterComponent:GetCurrentWeather(WorldContextObject, TheCurrentWeather) end


---@class UWeatherOrphanComponent : UActorComponent
---@field Owner TWeakObjectPtr<UObject>
---@field BlendDomain FBlendDomain
---@field TimeToLive float
---@field Age float
---@field BlendMultiplier float
local UWeatherOrphanComponent = {}



---@class UWeatherPostProcessingOrphanComponent : UWeatherOrphanComponent
---@field PostProcessSettings FPostProcessSettings
local UWeatherPostProcessingOrphanComponent = {}



---@class UWeatherPreloads : UDataAsset
---@field Preloads FWeatherPreload
local UWeatherPreloads = {}

function UWeatherPreloads:RebuildPreloads() end
function UWeatherPreloads:ClearPreloads() end


---@class UWeatherSequence : USceneRig
local UWeatherSequence = {}


---@class UWeatherSequencePendingLoad : ULiveWeatherSequenceInfo
---@field Asset TSoftObjectPtr<UWeatherSequence>
local UWeatherSequencePendingLoad = {}



---@class UWeatherSequences : UDataAsset
---@field GeneralSequences TArray<FWeatherSequenceInfo>
---@field SummerSequences TArray<FWeatherSequenceInfoWithProbability>
---@field FallSequences TArray<FWeatherSequenceInfoWithProbability>
---@field WinterSequences TArray<FWeatherSequenceInfoWithProbability>
---@field SpringSequences TArray<FWeatherSequenceInfoWithProbability>
---@field MissionSequences TArray<FWeatherSequenceInfo>
---@field PrivateSequences TArray<FWeatherSequenceInfo>
---@field EditorOnlySequences TArray<FWeatherSequenceInfo>
---@field CustomSequences UWeatherCustomSequences
---@field Redirectors TArray<FWeatherSequenceRedirector>
---@field HardLoadSequences TArray<UWeatherSequence>
---@field FallDefaultWeather FWeatherDefinitionName
---@field WinterDefaultWeather FWeatherDefinitionName
---@field SpringDefaultWeather FWeatherDefinitionName
---@field SummerDefaultWeather FWeatherDefinitionName
local UWeatherSequences = {}



---@class UWeatherStorm : UObject
---@field ParentActor TWeakObjectPtr<AActor>
---@field StormOwner TWeakObjectPtr<UObject>
---@field SurfaceData UWeatherSurfaceDataAsset
---@field StormState FWeatherStormState
---@field WeatherDecal AFullScreenWeatherDecalActor
---@field WeatherAnimationActor AWeatherAnimationBlueprint
---@field WeatherCoverageActor AWeatherCoverageBlueprint
---@field WeatherSwapper UMaterialSwapSphereSelectionComponent
---@field CharacterFXLoadingBundle UMaterialPermuterLoadingBundle
---@field CharacterFX TMap<TWeakObjectPtr<AActor>, FWeatherSurfaceCharacterFXState>
---@field WeatherGroupKey FMaterialPermuterKey
---@field StormEndTimerHandle FTimerHandle
local UWeatherStorm = {}

function UWeatherStorm:TickStormWeatherLerpOut() end


---@class UWeatherSurfaceDataAsset : UDataAsset
---@field Decal FWeatherDecalSetup
---@field BPWeatherAnimationClass TSubclassOf<AWeatherAnimationBlueprint>
---@field BPWeatherCoverageClass TSubclassOf<AWeatherCoverageBlueprint>
---@field SurfaceParameters FWeatherStormSurfaceParams
---@field PermuterName FName
---@field SwapRadius float
---@field CharacterFX FWeatherSurfaceCharacterFXSettings
---@field bDoWeatherSwap boolean
local UWeatherSurfaceDataAsset = {}



---@class UWeatherTypesAsset : UDataAsset
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
local UWeatherTypesAsset = {}



---@class UWeatherWindDirectionalSourceComponent : UWeatherWindDirectionalSourceInstantComponent
---@field WindParams FWindParameters
---@field SampleTime FWindParametersSampleTime
local UWeatherWindDirectionalSourceComponent = {}



---@class UWeatherWindDirectionalSourceComponentBase : UWindSourceComponentBase
---@field Owner TWeakObjectPtr<UObject>
---@field ExternalBlend float
---@field ForceBlendOut float
---@field OrphanDeathTime float
---@field OrphanDeathCountdown float
---@field bMarkedAsOrphan boolean
local UWeatherWindDirectionalSourceComponentBase = {}



---@class UWeatherWindDirectionalSourceInstantComponent : UWeatherWindDirectionalSourceComponentBase
---@field WindParamsInstant FWindParametersInstant
---@field WindGustController UWindGustController
---@field Strength float
local UWeatherWindDirectionalSourceInstantComponent = {}



---@class UWindDefinitions : UDataAsset
---@field Definitions TArray<UWindParams>
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
---@field NormalizedWindSpeedMetersPerSecond float
local UWindDefinitions = {}



---@class UWindParams : UObject
local UWindParams = {}


---@class UWindParamsFixed : UWindParams
---@field Name FName
---@field Angle float
---@field Speed float
---@field WindGustController UWindGustController
---@field SampleTime FWindParametersSampleTime
---@field ModAngle FRuntimeFloatCurve
---@field ModSpeed FRuntimeFloatCurve
---@field bLoopModAngle boolean
---@field bLoopModSpeed boolean
local UWindParamsFixed = {}



---@class UWorldWeatherDecal : UWeatherDecal
local UWorldWeatherDecal = {}


---@class UWorldWeatherDecalDefault : UWorldWeatherDecal
---@field Setup FWeatherDecalSetup
---@field InitialSettings TArray<UWeatherDecalSettings>
---@field ShowConditions TArray<UWeatherDecalCondition>
---@field Updates TArray<UWeatherDecalUpdate>
---@field BlendThreshold float
---@field bEditorOnly boolean
local UWorldWeatherDecalDefault = {}



---@class UWorldWeatherDecalDefinitions : UDataAsset
---@field Decals TArray<UWorldWeatherDecal>
local UWorldWeatherDecalDefinitions = {}



