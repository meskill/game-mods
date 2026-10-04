---@meta

---@class AAmbientOcclusionVolume : AVolume
---@field GTAO FCustomBlendableGTAO
---@field BlendablePriority float
---@field AmbientOcclusionIntensity float
---@field AmbientOcclusionRadius float
---@field AmbientCubemap UTextureCube
---@field AmbientCubemapTint FLinearColor
---@field AmbientCubemapIntensity float
---@field AmbientOcclusionStaticFraction float
---@field AmbientOcclusionFadeDistance float
---@field AmbientOcclusionFadeRadius float
---@field AmbientOcclusionPower float
---@field AmbientOcclusionBias float
---@field AmbientOcclusionQuality float
---@field AmbientOcclusionMipBlend float
---@field AmbientOcclusionMipScale float
---@field AmbientOcclusionMipThreshold float
---@field Priority float
---@field BlendDomain FBlendDomain
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
---@field AmbientOcclusionRadiusInWS boolean
---@field bOverride_AmbientOcclusionIntensity boolean
---@field bOverride_AmbientOcclusionRadius boolean
---@field bOverride_AmbientCubemapTint boolean
---@field bOverride_AmbientCubemapIntensity boolean
---@field bOverride_AmbientOcclusionStaticFraction boolean
---@field bOverride_AmbientOcclusionFadeDistance boolean
---@field bOverride_AmbientOcclusionFadeRadius boolean
---@field bOverride_AmbientOcclusionRadiusInWS boolean
---@field bOverride_AmbientOcclusionPower boolean
---@field bOverride_AmbientOcclusionBias boolean
---@field bOverride_AmbientOcclusionQuality boolean
---@field bOverride_AmbientOcclusionMipBlend boolean
---@field bOverride_AmbientOcclusionMipScale boolean
---@field bOverride_AmbientOcclusionMipThreshold boolean
---@field PostProcessSettings FPostProcessSettings
---@field GTAOBlendable UGlobalLightingBlendableGTAOFromAOVolume
local AAmbientOcclusionVolume = {}

function AAmbientOcclusionVolume:UpdatePostProcessSettings() end
---@param NewPriority float
function AAmbientOcclusionVolume:SetPriority(NewPriority) end


---@class ABentDirectionalLightVolume : AActor
---@field Params FBentDirectionalLightParams
---@field GlobalLightingBlendable UGlobalLightingBlendableBentDirectionalLight
---@field BoundingBox UBoxComponent
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field PositionalBlendWeight float
local ABentDirectionalLightVolume = {}



---@class ABlendableGlobalLightingVolume : AVolume
---@field GlobalLightingBlendable UGlobalLightingBlendable
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
---@field bCameraExpHeightFogHeight_DEPRICATED boolean
---@field FogZMode EGlobalLightingFogZMode
local ABlendableGlobalLightingVolume = {}



---@class ABlendableGlobalLightingVolumeFog : ABlendableGlobalLightingVolumeFogBase
---@field Basic FExpHeightFogBasicParametersOverride
---@field Second FExpHeightFogSecondParametersOverride
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersOverride
---@field Volumetric FExpHeightFogVolumetricParametersOverride
---@field VolumetricLighting FExpHeightFogVolumetricLightingParametersOverride
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersOverride
---@field VolumetricAdvanced FExpHeightFogVolumetricAdvancedParametersOverride
---@field Defaults UBlendableGlobalLightingVolumeFogDefaults
local ABlendableGlobalLightingVolumeFog = {}

function ABlendableGlobalLightingVolumeFog:ReloadDefaults() end


---@class ABlendableGlobalLightingVolumeFogBase : AVolume
---@field FogZMode EGlobalLightingFogZMode
---@field Transmuter UExpHeightFogTransmuter
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
---@field GlobalLightingBlendable UGlobalLightingBlendableExpHeightFogVolume
local ABlendableGlobalLightingVolumeFogBase = {}



---@class ABlendableGlobalLightingVolumeFogRelative : ABlendableGlobalLightingVolumeFogBase
---@field Basic FExpHeightFogBasicParametersRelative
---@field Second FExpHeightFogSecondParametersRelative
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersRelative
---@field Volumetric FExpHeightFogVolumetricParametersRelative
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersRelative
---@field Defaults UBlendableGlobalLightingVolumeFogRelativeDefaults
local ABlendableGlobalLightingVolumeFogRelative = {}

function ABlendableGlobalLightingVolumeFogRelative:ReloadDefaults() end


---@class AGlobalLightingMaster : AActor
---@field Defaults UGlobalLightingDefaults
---@field OverrideDefaults TArray<UGlobalLightingBlendable>
---@field CurrentDirectionalLight FGlobalLightingDirectionalLightState
---@field CurrentSecondaryDirectionalLight FGlobalLightingDirectionalLightState
---@field CurrentSkyLight FSkyLightLightingParameters
---@field CurrentSkyAtmosphere FSkyAtmosphereParameters
---@field CurrentExpHeightFog FExpHeightFogParameters
---@field CurrentProbeLighting FProbeLightingParameters
---@field CurrentCloudsLighting FVolumetricCloudsLightingParameters
---@field CurrentCloudsPreset FVolumetricCloudsPresetParameters
---@field CurrentCloudsWind FVolumetricCloudsWindParameters
---@field SkyAtmosphereHeightOffsetMeters float
---@field UseExternalLightingComponents int32
---@field ControlLightingComponents int32
---@field HideExtraLightingComponents int32
---@field ControlFeatures int32
---@field SkyLightZOffsetMeters float
---@field SkyLightMoveThresholdMeters float
---@field SkyLightUpdateThresholdSeconds float
---@field SkyLightAge float
---@field Priority float
---@field bBounded boolean
---@field bIsMaster boolean
---@field DirectionalLightComponent UDirectionalLightComponent
---@field SecondaryDirectionalLightComponent UDirectionalLightComponent
---@field SkyLightComponent USkyLightComponent
---@field ExpHeightFogComponent UExponentialHeightFogComponent
---@field SkyAtmosphereComponent USkyAtmosphereComponent
---@field SkyAtmosphereSkyOnlyComponent USkyOnlyComponent
---@field CachedDirectionalLight TWeakObjectPtr<UDirectionalLightComponent>
---@field CachedSecondaryDirectionalLight TWeakObjectPtr<UDirectionalLightComponent>
---@field CachedSkyLight TWeakObjectPtr<USkyLightComponent>
---@field CachedSkyAtmosphere TWeakObjectPtr<USkyAtmosphereComponent>
---@field CachedExpHeightFog TWeakObjectPtr<UExponentialHeightFogComponent>
---@field CachedVolumetricClouds TWeakObjectPtr<UVolumetricCloudsComponent>
---@field PostProcessComponent UPostProcessComponent
local AGlobalLightingMaster = {}

---@param WorldContextObject UObject
---@param CinematicDefaults UGlobalLightingDefaults
function AGlobalLightingMaster:SetCinematicDefaults(WorldContextObject, CinematicDefaults) end
---@param WorldContextObject UObject
---@param GlobalLightingMaster AGlobalLightingMaster
function AGlobalLightingMaster:GetGlobalLightingMaster(WorldContextObject, GlobalLightingMaster) end
---@param WorldContextObject UObject
---@param CinematicDefaults UGlobalLightingDefaults
function AGlobalLightingMaster:GetCinematicDefaults(WorldContextObject, CinematicDefaults) end
---@param WorldContextObject UObject
function AGlobalLightingMaster:ClearCinematicDefaults(WorldContextObject) end
function AGlobalLightingMaster:CheckWorld() end
function AGlobalLightingMaster:CaptureSkyLight() end


---@class AGlobalLightingMasterWithClouds : AGlobalLightingMaster
---@field RelativeHeightMeters float
---@field VisibilityBlendDomain URenderSettingsBlendDomainAsset
---@field VisibilityBlendDomainThreshold float
---@field VolumetricCloudsComponent UVolumetricCloudsComponent
local AGlobalLightingMasterWithClouds = {}



---@class ASkyOnly : AInfo
---@field SkyOnlyComponent USkyOnlyComponent
---@field Parameters FSkyAtmosphereSkyOnlyParameters
---@field bDualDirectionalLights boolean
---@field bEnabled boolean
---@field CachedVisibleSkyAtmosphere TWeakObjectPtr<USkyAtmosphereComponent>
local ASkyOnly = {}



---@class AWorldBaseHeightBase : AActor
---@field Affects int32
---@field Priority float
---@field BlendDomain FBlendDomain
---@field bEnabled boolean
local AWorldBaseHeightBase = {}

---@param NewPriority float
function AWorldBaseHeightBase:SetPriority(NewPriority) end


---@class AWorldBaseHeightDisk : AWorldBaseHeightShape
local AWorldBaseHeightDisk = {}


---@class AWorldBaseHeightInfinitePlane : AWorldBaseHeightBase
local AWorldBaseHeightInfinitePlane = {}


---@class AWorldBaseHeightRect : AWorldBaseHeightShape
local AWorldBaseHeightRect = {}


---@class AWorldBaseHeightShape : AWorldBaseHeightBase
---@field BlendRadiusPercentage float
local AWorldBaseHeightShape = {}



---@class FActiveGlobalLightingBlendOps
---@field BlendOps int32
local FActiveGlobalLightingBlendOps = {}



---@class FAdjustedValueBoolean
---@field Value EAdjustedValueBooleanMode
local FAdjustedValueBoolean = {}



---@class FAdjustedValueFloat
---@field Mode EAdjustedValueMode
---@field Value float
---@field ClampMin float
---@field bClampMin boolean
---@field ClampMax float
---@field bClampMax boolean
---@field ValidateMin float
---@field ValidateMax float
local FAdjustedValueFloat = {}



---@class FAdjustedValueInt
---@field Mode EAdjustedValueMode
---@field Value int32
---@field ClampMin int32
---@field bClampMin boolean
---@field ClampMax int32
---@field bClampMax boolean
---@field ValidateMin int32
---@field ValidateMax int32
local FAdjustedValueInt = {}



---@class FBentDirectionalLightParams
---@field BlendStartAngle float
---@field BlendEndAngle float
---@field SunIntensitFactorEnd float
---@field SkyLightIntensityFactorEnd float
---@field bBlendSunLight boolean
---@field bBlendSkyLight boolean
local FBentDirectionalLightParams = {}



---@class FBentDirectionalLightWindowAssets
---@field PaneMesh UStaticMesh
---@field ArrowMesh UStaticMesh
---@field PaneScalingFactor float
local FBentDirectionalLightWindowAssets = {}



---@class FBentDirectionalLightWindowPreview
---@field PaneComponent UStaticMeshComponent
---@field DirectionComponents TArray<UStaticMeshComponent>
local FBentDirectionalLightWindowPreview = {}



---@class FBentDirectionalLightWindowSolution
---@field SunDirection FVector
---@field DeltaCos float
---@field bValid boolean
local FBentDirectionalLightWindowSolution = {}



---@class FBlendableFogZInfo
---@field BaseZ float
---@field EyeZ float
---@field PlayerZ float
---@field CurrentZ float
---@field bEyeZValid boolean
---@field bPlayerZValid boolean
local FBlendableFogZInfo = {}



---@class FBlueprintGlobalLightingCustomBlendablesLinearColor
---@field ColorName FName
---@field DefaultValue FLinearColor
---@field HermesMessage FName
local FBlueprintGlobalLightingCustomBlendablesLinearColor = {}



---@class FBlueprintGlobalLightingCustomBlendablesScalar
---@field ScalarName FName
---@field DefaultValue float
---@field HermesMessage FName
local FBlueprintGlobalLightingCustomBlendablesScalar = {}



---@class FCustomBlendableGTAO
---@field bOverride_Enabled boolean
---@field bOverride_UseNormals boolean
---@field bOverride_FilterWidth boolean
---@field bOverride_ThicknessBlend boolean
---@field bOverride_FalloffEnd boolean
---@field bOverride_FalloffStartRatio boolean
---@field bOverride_NumAngles boolean
---@field bOverride_PauseJitter boolean
---@field bOverride_UpsampleDepthAware boolean
---@field bOverride_Downsample boolean
---@field bOverride_TemporalFilter boolean
---@field bOverride_SpatialFilter boolean
---@field bOverride_Combined boolean
---@field bEnabled boolean
---@field bUseNormals boolean
---@field FilterWidth int32
---@field ThicknessBlend float
---@field FalloffEnd float
---@field FalloffStartRatio float
---@field NumAngles int32
---@field PauseJitter float
---@field bUpsampleDepthAware boolean
---@field bDownsample boolean
---@field bTemporalFilter boolean
---@field bSpatialFilter boolean
---@field bCombined boolean
local FCustomBlendableGTAO = {}



---@class FCustomBlendableSingleLayerWaterRTR
local FCustomBlendableSingleLayerWaterRTR = {}


---@class FCustomBlendableVDHW
---@field bOverride_bMovingCameraSupport boolean
---@field bOverride_MovingCameraStartSpeed boolean
---@field bOverride_MovingCameraEndSpeed boolean
---@field bOverride_MovingCameraStartRotation boolean
---@field bOverride_MovingCameraEndRotation boolean
---@field bOverride_bExposureShiftSupport boolean
---@field bOverride_ExposureShiftStart boolean
---@field bOverride_ExposureShiftEnd boolean
---@field bMovingCameraSupport boolean
---@field MovingCameraStartSpeed float
---@field MovingCameraEndSpeed float
---@field MovingCameraStartRotation float
---@field MovingCameraEndRotation float
---@field bExposureShiftSupport boolean
---@field ExposureShiftStart float
---@field ExposureShiftEnd float
local FCustomBlendableVDHW = {}



---@class FDirectionalLightAdvancedParameters
---@field ShadowCascadeBiasDistribution float
---@field LightSourceAngle float
---@field LightSourceSoftAngle float
---@field LightingChannels FLightingChannels
---@field CloudShadowStrength float
---@field CloudShadowOnAtmosphereStrength float
---@field CloudShadowOnSurfaceStrength float
---@field CloudShadowMinMax FVector2D
---@field AtmosphereSunLightIndex int32
---@field AtmosphereSunDiskColorScale FLinearColor
---@field bPerPixelAtmosphereTransmittance boolean
---@field bAffectDynamicIndirectLighting boolean
---@field bAffectTranslucentLighting boolean
---@field bTransmission boolean
---@field bUsedAsAtmosphereSunLight boolean
---@field bProbeOnly boolean
local FDirectionalLightAdvancedParameters = {}



---@class FDirectionalLightAdvancedParametersOverride
---@field bOverride_LightSourceAngle boolean
---@field bOverride_LightSourceSoftAngle boolean
---@field bOverride_LightingChannels boolean
---@field bOverride_AffectDynamicIndirectLighting boolean
---@field bOverride_AffectTranslucentLighting boolean
---@field bOverride_Transmission boolean
---@field bOverride_UsedAsAtmosphereSunLight boolean
---@field bOverride_ProbeOnly boolean
---@field bOverride_ShadowCascadeBiasDistribution boolean
---@field bOverride_AtmosphereSunLightIndex boolean
---@field bOverride_CloudShadowStrength boolean
---@field bOverride_CloudShadowOnAtmosphereStrength boolean
---@field bOverride_CloudShadowOnSurfaceStrength boolean
---@field bOverride_CloudShadowMinMax boolean
---@field bOverride_AtmosphereSunDiskColorScale boolean
---@field bOverride_bPerPixelAtmosphereTransmittance boolean
---@field ShadowCascadeBiasDistribution float
---@field LightSourceAngle float
---@field LightSourceSoftAngle float
---@field LightingChannels FLightingChannels
---@field CloudShadowStrength float
---@field CloudShadowOnAtmosphereStrength float
---@field CloudShadowOnSurfaceStrength float
---@field CloudShadowMinMax FVector2D
---@field AtmosphereSunLightIndex int32
---@field AtmosphereSunDiskColorScale FLinearColor
---@field bPerPixelAtmosphereTransmittance boolean
---@field bAffectDynamicIndirectLighting boolean
---@field bAffectTranslucentLighting boolean
---@field bTransmission boolean
---@field bUsedAsAtmosphereSunLight boolean
---@field bProbeOnly boolean
local FDirectionalLightAdvancedParametersOverride = {}



---@class FDirectionalLightAdvancedParametersRelative
---@field bOverride_LightingChannels boolean
---@field LightSourceAngle FAdjustedValueFloat
---@field LightSourceSoftAngle FAdjustedValueFloat
---@field LightingChannels FLightingChannels
---@field bAffectDynamicIndirectLighting FAdjustedValueBoolean
---@field bAffectTranslucentLighting FAdjustedValueBoolean
---@field bTransmission FAdjustedValueBoolean
---@field bUsedAsAtmosphereSunLight FAdjustedValueBoolean
---@field bProbeOnly FAdjustedValueBoolean
local FDirectionalLightAdvancedParametersRelative = {}



---@class FDirectionalLightBasicParameters
---@field Intensity float
---@field LightColor FColor
---@field Temperature float
---@field bUseTemperature boolean
---@field SpecularScale float
---@field IndirectLightingIntensity float
---@field VolumetricScatteringIntensity float
---@field AtmosphereSunLightPriority float
---@field bPseudoLight boolean
---@field bExponentialIntensityBlend boolean
local FDirectionalLightBasicParameters = {}



---@class FDirectionalLightBasicParametersOverride
---@field bOverride_Intensity boolean
---@field bOverride_LightColor boolean
---@field bOverride_Temperature boolean
---@field bOverride_UseTemperature boolean
---@field bOverride_SpecularScale boolean
---@field bOverride_IndirectLightingIntensity boolean
---@field bOverride_VolumetricScatteringIntensity boolean
---@field bOverride_AtmosphereSunLightPriority boolean
---@field bOverride_bPseudoLight boolean
---@field Intensity float
---@field LightColor FColor
---@field Temperature float
---@field bUseTemperature boolean
---@field SpecularScale float
---@field IndirectLightingIntensity float
---@field VolumetricScatteringIntensity float
---@field AtmosphereSunLightPriority float
---@field bPseudoLight boolean
local FDirectionalLightBasicParametersOverride = {}



---@class FDirectionalLightBasicParametersRelative
---@field bOverride_LightColor boolean
---@field Intensity FAdjustedValueFloat
---@field LightColor FColor
---@field Temperature FAdjustedValueFloat
---@field bUseTemperature FAdjustedValueBoolean
---@field SpecularScale FAdjustedValueFloat
---@field IndirectLightingIntensity FAdjustedValueFloat
---@field VolumetricScatteringIntensity FAdjustedValueFloat
---@field AtmosphereSunLightPriority FAdjustedValueFloat
---@field bPseudoLight FAdjustedValueBoolean
local FDirectionalLightBasicParametersRelative = {}



---@class FDirectionalLightCascadedShadowMaps
---@field DynamicShadowDistanceMovableLight float
---@field DynamicShadowCascades int32
---@field CascadeDistributionExponent float
---@field CascadeTransitionFraction float
---@field ShadowDistanceFadeoutFraction float
---@field FarShadowCascadeCount int32
---@field FarShadowDistance float
---@field CachedDirectionalShadowDistance float
---@field bUseCachedDirectionalShadowMaps boolean
local FDirectionalLightCascadedShadowMaps = {}



---@class FDirectionalLightCascadedShadowMapsOverride
---@field bOverride_DynamicShadowDistanceMovableLight boolean
---@field bOverride_DynamicShadowCascades boolean
---@field bOverride_CascadeDistributionExponent boolean
---@field bOverride_CascadeTransitionFraction boolean
---@field bOverride_ShadowDistanceFadeoutFraction boolean
---@field bOverride_FarShadowCascadeCount boolean
---@field bOverride_FarShadowDistance boolean
---@field bOverride_CachedDirectionalShadowDistance boolean
---@field bOverride_bUseCachedDirectionalShadowMaps boolean
---@field DynamicShadowDistanceMovableLight float
---@field DynamicShadowCascades int32
---@field CascadeDistributionExponent float
---@field CascadeTransitionFraction float
---@field ShadowDistanceFadeoutFraction float
---@field FarShadowCascadeCount int32
---@field FarShadowDistance float
---@field CachedDirectionalShadowDistance float
---@field bUseCachedDirectionalShadowMaps boolean
local FDirectionalLightCascadedShadowMapsOverride = {}



---@class FDirectionalLightCascadedShadowMapsRelative
---@field DynamicShadowDistanceMovableLight FAdjustedValueFloat
---@field DynamicShadowCascades FAdjustedValueInt
---@field CascadeDistributionExponent FAdjustedValueFloat
---@field CascadeTransitionFraction FAdjustedValueFloat
---@field ShadowDistanceFadeoutFraction FAdjustedValueFloat
---@field FarShadowCascadeCount FAdjustedValueInt
---@field FarShadowDistance FAdjustedValueFloat
---@field CachedDirectionalShadowDistance FAdjustedValueFloat
---@field bUseCachedDirectionalShadowMaps FAdjustedValueBoolean
local FDirectionalLightCascadedShadowMapsRelative = {}



---@class FDirectionalLightDistanceFieldShadows
---@field bUseRayTracedDistanceFieldShadows boolean
---@field RayStartOffsetDepthScale float
---@field DistanceFieldShadowDistance float
---@field TraceDistance float
local FDirectionalLightDistanceFieldShadows = {}



---@class FDirectionalLightDistanceFieldShadowsOverride
---@field bOverride_UseRayTracedDistanceFieldShadows boolean
---@field bOverride_RayStartOffsetDepthScale boolean
---@field bOverride_DistanceFieldShadowDistance boolean
---@field bOverride_TraceDistance boolean
---@field bUseRayTracedDistanceFieldShadows boolean
---@field RayStartOffsetDepthScale float
---@field DistanceFieldShadowDistance float
---@field TraceDistance float
local FDirectionalLightDistanceFieldShadowsOverride = {}



---@class FDirectionalLightDistanceFieldShadowsRelative
---@field bUseRayTracedDistanceFieldShadows FAdjustedValueBoolean
---@field RayStartOffsetDepthScale FAdjustedValueFloat
---@field DistanceFieldShadowDistance FAdjustedValueFloat
---@field TraceDistance FAdjustedValueFloat
local FDirectionalLightDistanceFieldShadowsRelative = {}



---@class FDirectionalLightParameters
---@field Basic FDirectionalLightBasicParameters
---@field Advanced FDirectionalLightAdvancedParameters
---@field LightShafts FDirectionalLightShafts
---@field Shadows FDirectionalLightShadows
---@field DistanceFieldShadows FDirectionalLightDistanceFieldShadows
---@field CascadedShadowMaps FDirectionalLightCascadedShadowMaps
local FDirectionalLightParameters = {}



---@class FDirectionalLightParametersOverride
---@field Basic FDirectionalLightBasicParametersOverride
---@field Advanced FDirectionalLightAdvancedParametersOverride
---@field LightShafts FDirectionalLightShaftsOverride
---@field Shadows FDirectionalLightShadowsOverride
---@field DistanceFieldShadows FDirectionalLightDistanceFieldShadowsOverride
---@field CascadedShadowMaps FDirectionalLightCascadedShadowMapsOverride
local FDirectionalLightParametersOverride = {}



---@class FDirectionalLightParametersRelative
---@field Basic FDirectionalLightBasicParametersRelative
---@field Advanced FDirectionalLightAdvancedParametersRelative
---@field LightShafts FDirectionalLightShaftsRelative
---@field Shadows FDirectionalLightShadowsRelative
---@field DistanceFieldShadows FDirectionalLightDistanceFieldShadowsRelative
---@field CascadedShadowMaps FDirectionalLightCascadedShadowMapsRelative
local FDirectionalLightParametersRelative = {}



---@class FDirectionalLightShadows
---@field ShadowResolutionScale float
---@field ShadowBias float
---@field ShadowSlopeBias float
---@field ShadowSharpen float
---@field ContactShadowLength float
---@field ContactShadowLengthWorldSpace float
---@field bContactShadowLengthInWS boolean
---@field bCastVolumetricShadow boolean
---@field bCastTranslucentShadows boolean
local FDirectionalLightShadows = {}



---@class FDirectionalLightShadowsOverride
---@field bOverride_ShadowResolutionScale boolean
---@field bOverride_ShadowBias boolean
---@field bOverride_ShadowSlopeBias boolean
---@field bOverride_ShadowSharpen boolean
---@field bOverride_ContactShadowLength boolean
---@field bOverride_ContactShadowLengthWorldSpace boolean
---@field bOverride_ContactShadowLengthInWS boolean
---@field bOverride_CastVolumetricShadow boolean
---@field bOverride_CastTranslucentShadows boolean
---@field ShadowResolutionScale float
---@field ShadowBias float
---@field ShadowSlopeBias float
---@field ShadowSharpen float
---@field ContactShadowLength float
---@field ContactShadowLengthWorldSpace float
---@field bContactShadowLengthInWS boolean
---@field bCastVolumetricShadow boolean
---@field bCastTranslucentShadows boolean
local FDirectionalLightShadowsOverride = {}



---@class FDirectionalLightShadowsRelative
---@field ShadowResolutionScale FAdjustedValueFloat
---@field ShadowBias FAdjustedValueFloat
---@field ShadowSlopeBias FAdjustedValueFloat
---@field ShadowSharpen FAdjustedValueFloat
---@field ContactShadowLength FAdjustedValueFloat
---@field ContactShadowLengthWorldSpace FAdjustedValueFloat
---@field bContactShadowLengthInWS FAdjustedValueBoolean
---@field bCastVolumetricShadow FAdjustedValueBoolean
---@field bCastTranslucentShadows FAdjustedValueBoolean
local FDirectionalLightShadowsRelative = {}



---@class FDirectionalLightShafts
---@field bEnableLightShaftOcclusion boolean
---@field OcclusionMaskDarkness float
---@field OcclusionDepthRange float
---@field bEnableLightShaftBloom boolean
---@field BloomScale float
---@field BloomThreshold float
---@field BloomTint FColor
---@field LightShaftOverrideDirection FVector
local FDirectionalLightShafts = {}



---@class FDirectionalLightShaftsOverride
---@field bOverride_EnableLightShaftOcclusion boolean
---@field bOverride_OcclusionMaskDarkness boolean
---@field bOverride_OcclusionDepthRange boolean
---@field bOverride_EnableLightShaftBloom boolean
---@field bOverride_BloomScale boolean
---@field bOverride_BloomThreshold boolean
---@field bOverride_BloomTint boolean
---@field bOverride_LightShaftOverrideDirection boolean
---@field bEnableLightShaftOcclusion boolean
---@field OcclusionMaskDarkness float
---@field OcclusionDepthRange float
---@field bEnableLightShaftBloom boolean
---@field BloomScale float
---@field BloomThreshold float
---@field BloomTint FColor
---@field LightShaftOverrideDirection FVector
local FDirectionalLightShaftsOverride = {}



---@class FDirectionalLightShaftsRelative
---@field bOverride_BloomTint boolean
---@field bOverride_LightShaftOverrideDirection boolean
---@field bEnableLightShaftOcclusion FAdjustedValueBoolean
---@field OcclusionMaskDarkness FAdjustedValueFloat
---@field OcclusionDepthRange FAdjustedValueFloat
---@field bEnableLightShaftBloom FAdjustedValueBoolean
---@field BloomScale FAdjustedValueFloat
---@field BloomThreshold FAdjustedValueFloat
---@field BloomTint FColor
---@field LightShaftOverrideDirection FVector
local FDirectionalLightShaftsRelative = {}



---@class FExpHeightFogBasicParameters
---@field ZOffset float
---@field FogDensity float
---@field FogHeightFalloff float
---@field FogInscatteringColor FLinearColor
---@field FogInscatteringIntensity float
---@field FogInscatteringSaturation float
---@field FogInscatteringColorDirLightLuminanceModulate float
---@field FogMaxOpacity float
---@field StartDistance float
---@field FogCutoffDistance float
---@field DistantFogCloudShadowsMinimum float
---@field ZBase float
local FExpHeightFogBasicParameters = {}



---@class FExpHeightFogBasicParametersOverride
---@field bOverride_ZOffset boolean
---@field bOverride_FogDensity boolean
---@field bOverride_FogHeightFalloff boolean
---@field bOverride_FogInscatteringColor boolean
---@field bOverride_FogMaxOpacity boolean
---@field bOverride_StartDistance boolean
---@field bOverride_FogCutoffDistance boolean
---@field bOverride_FogInscatteringIntensity boolean
---@field bOverride_FogInscatteringSaturation boolean
---@field bOverride_DistantFogCloudShadowsMinimum boolean
---@field bOverride_FogInscatteringColorDirLightLuminanceModulate boolean
---@field ZOffset float
---@field FogDensity float
---@field FogHeightFalloff float
---@field FogInscatteringColor FLinearColor
---@field FogInscatteringIntensity float
---@field FogInscatteringSaturation float
---@field FogInscatteringColorDirLightLuminanceModulate float
---@field FogMaxOpacity float
---@field StartDistance float
---@field FogCutoffDistance float
---@field DistantFogCloudShadowsMinimum float
local FExpHeightFogBasicParametersOverride = {}



---@class FExpHeightFogBasicParametersRelative
---@field bOverride_FogInscatteringColor boolean
---@field ZOffset FAdjustedValueFloat
---@field FogDensity FAdjustedValueFloat
---@field FogHeightFalloff FAdjustedValueFloat
---@field FogInscatteringColor FLinearColor
---@field FogInscatteringIntensity FAdjustedValueFloat
---@field FogInscatteringSaturation FAdjustedValueFloat
---@field FogInscatteringColorDirLightLuminanceModulate FAdjustedValueFloat
---@field FogMaxOpacity FAdjustedValueFloat
---@field StartDistance FAdjustedValueFloat
---@field FogCutoffDistance FAdjustedValueFloat
---@field DistantFogCloudShadowsMinimum FAdjustedValueFloat
local FExpHeightFogBasicParametersRelative = {}



---@class FExpHeightFogDirectionalInscatteringParameters
---@field DirectionalInscatteringExponent float
---@field DirectionalInscatteringStartDistance float
---@field DirectionalInscatteringColor FLinearColor
---@field DirectionalInscatteringIntensity float
---@field DirectionalInscatteringSaturation float
---@field DirectionalInscatteringColorDirLightLuminanceModulate float
local FExpHeightFogDirectionalInscatteringParameters = {}



---@class FExpHeightFogDirectionalInscatteringParametersOverride
---@field bOverride_DirectionalInscatteringExponent boolean
---@field bOverride_DirectionalInscatteringStartDistance boolean
---@field bOverride_DirectionalInscatteringColor boolean
---@field bOverride_DirectionalInscatteringIntensity boolean
---@field bOverride_DirectionalInscatteringSaturation boolean
---@field bOverride_DirectionalInscatteringColorDirLightLuminanceModulate boolean
---@field DirectionalInscatteringExponent float
---@field DirectionalInscatteringStartDistance float
---@field DirectionalInscatteringColor FLinearColor
---@field DirectionalInscatteringIntensity float
---@field DirectionalInscatteringSaturation float
---@field DirectionalInscatteringColorDirLightLuminanceModulate float
local FExpHeightFogDirectionalInscatteringParametersOverride = {}



---@class FExpHeightFogDirectionalInscatteringParametersRelative
---@field bOverride_DirectionalInscatteringColor boolean
---@field DirectionalInscatteringExponent FAdjustedValueFloat
---@field DirectionalInscatteringStartDistance FAdjustedValueFloat
---@field DirectionalInscatteringColor FLinearColor
---@field DirectionalInscatteringIntensity FAdjustedValueFloat
---@field DirectionalInscatteringSaturation FAdjustedValueFloat
---@field DirectionalInscatteringColorDirLightLuminanceModulate FAdjustedValueFloat
local FExpHeightFogDirectionalInscatteringParametersRelative = {}



---@class FExpHeightFogInscatteringTextureParameters
---@field InscatteringColorCubemap UTextureCube
---@field InscatteringColorCubemapAngle float
---@field InscatteringTextureTint FLinearColor
---@field FullyDirectionalInscatteringColorDistance float
---@field NonDirectionalInscatteringColorDistance float
---@field bUseSkyLight boolean
---@field InscatteringColorCubemapFactor float
local FExpHeightFogInscatteringTextureParameters = {}



---@class FExpHeightFogInscatteringTextureParametersOverride
---@field bOverride_InscatteringColorCubemap boolean
---@field bOverride_InscatteringColorCubemapAngle boolean
---@field bOverride_InscatteringTextureTint boolean
---@field bOverride_FullyDirectionalInscatteringColorDistance boolean
---@field bOverride_NonDirectionalInscatteringColorDistance boolean
---@field bOverride_bUseSkyLight boolean
---@field bOverride_InscatteringColorCubemapFactor boolean
---@field InscatteringColorCubemap UTextureCube
---@field InscatteringColorCubemapAngle float
---@field InscatteringTextureTint FLinearColor
---@field FullyDirectionalInscatteringColorDistance float
---@field NonDirectionalInscatteringColorDistance float
---@field bUseSkyLight boolean
---@field InscatteringColorCubemapFactor float
local FExpHeightFogInscatteringTextureParametersOverride = {}



---@class FExpHeightFogParameters
---@field Basic FExpHeightFogBasicParameters
---@field Second FExpHeightFogSecondParameters
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParameters
---@field Volumetric FExpHeightFogVolumetricParameters
---@field VolumetricLighting FExpHeightFogVolumetricLightingParameters
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParameters
---@field VolumetricAdvanced FExpHeightFogVolumetricAdvancedParameters
---@field InscatteringTexture FExpHeightFogInscatteringTextureParameters
local FExpHeightFogParameters = {}



---@class FExpHeightFogParametersOverride
---@field Basic FExpHeightFogBasicParametersOverride
---@field Second FExpHeightFogSecondParametersOverride
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersOverride
---@field Volumetric FExpHeightFogVolumetricParametersOverride
---@field VolumetricLighting FExpHeightFogVolumetricLightingParametersOverride
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersOverride
---@field VolumetricAdvanced FExpHeightFogVolumetricAdvancedParametersOverride
---@field InscatteringTexture FExpHeightFogInscatteringTextureParametersOverride
local FExpHeightFogParametersOverride = {}



---@class FExpHeightFogParametersRelative
---@field Basic FExpHeightFogBasicParametersRelative
---@field Second FExpHeightFogSecondParametersRelative
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersRelative
---@field Volumetric FExpHeightFogVolumetricParametersRelative
---@field VolumetricLighting FExpHeightFogVolumetricLightingParametersRelative
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersRelative
---@field VolumetricAdvanced FExpHeightFogVolumetricAdvancedParametersRelative
local FExpHeightFogParametersRelative = {}



---@class FExpHeightFogSecondParameters
---@field FogDensity float
---@field FogHeightFalloff float
---@field FogHeightOffset float
local FExpHeightFogSecondParameters = {}



---@class FExpHeightFogSecondParametersOverride
---@field bOverride_FogDensity boolean
---@field bOverride_FogHeightFalloff boolean
---@field bOverride_FogHeightOffset boolean
---@field FogDensity float
---@field FogHeightFalloff float
---@field FogHeightOffset float
local FExpHeightFogSecondParametersOverride = {}



---@class FExpHeightFogSecondParametersRelative
---@field FogDensity FAdjustedValueFloat
---@field FogHeightFalloff FAdjustedValueFloat
---@field FogHeightOffset FAdjustedValueFloat
local FExpHeightFogSecondParametersRelative = {}



---@class FExpHeightFogVolumetricAdvancedParameters
---@field DensityTweakingLightingThreshold float
---@field DensityTweakingMinPercentage float
---@field AliasingReduction float
---@field VolumetricFogHighQualityDistance float
---@field EmptyCellSkyOcclusion float
---@field bEnableVariableScatteringDistribution boolean
---@field MinScatteringDistribution float
---@field MaxScatteringDistribution float
---@field ScatteringDistributionInterpStart float
---@field ScatteringDistributionInterpEnd float
---@field DensityMap FExpHeightFogVolumetricFogDensityMapParameters
---@field FullDensityDistance float
---@field MinDensityFactor float
local FExpHeightFogVolumetricAdvancedParameters = {}



---@class FExpHeightFogVolumetricAdvancedParametersOverride
---@field bOverride_DensityTweakingLightingThreshold boolean
---@field bOverride_DensityTweakingMinPercentage boolean
---@field bOverride_AliasingReduction boolean
---@field bOverride_VolumetricFogHighQualityDistance boolean
---@field bOverride_EmptyCellSkyOcclusion boolean
---@field bOverride_bEnableVariableScatteringDistribution boolean
---@field bOverride_MinScatteringDistribution boolean
---@field bOverride_MaxScatteringDistribution boolean
---@field bOverride_ScatteringDistributionInterpStart boolean
---@field bOverride_ScatteringDistributionInterpEnd boolean
---@field bOverride_FullDensityDistance boolean
---@field bOverride_MinDensityFactor boolean
---@field DensityTweakingLightingThreshold float
---@field DensityTweakingMinPercentage float
---@field AliasingReduction float
---@field VolumetricFogHighQualityDistance float
---@field EmptyCellSkyOcclusion float
---@field bEnableVariableScatteringDistribution boolean
---@field MinScatteringDistribution float
---@field MaxScatteringDistribution float
---@field ScatteringDistributionInterpStart float
---@field ScatteringDistributionInterpEnd float
---@field DensityMap FExpHeightFogVolumetricFogDensityMapParametersOverride
---@field FullDensityDistance float
---@field MinDensityFactor float
local FExpHeightFogVolumetricAdvancedParametersOverride = {}



---@class FExpHeightFogVolumetricAdvancedParametersRelative
---@field DensityTweakingLightingThreshold FAdjustedValueFloat
---@field DensityTweakingMinPercentage FAdjustedValueFloat
---@field AliasingReduction FAdjustedValueFloat
---@field VolumetricFogHighQualityDistance FAdjustedValueFloat
---@field EmptyCellSkyOcclusion FAdjustedValueFloat
---@field bEnableVariableScatteringDistribution FAdjustedValueBoolean
---@field MinScatteringDistribution FAdjustedValueFloat
---@field MaxScatteringDistribution FAdjustedValueFloat
---@field ScatteringDistributionInterpStart FAdjustedValueFloat
---@field ScatteringDistributionInterpEnd FAdjustedValueFloat
---@field FullDensityDistance FAdjustedValueFloat
---@field MinDensityFactor FAdjustedValueFloat
local FExpHeightFogVolumetricAdvancedParametersRelative = {}



---@class FExpHeightFogVolumetricFogDensityMapParameters
---@field FalloffStartMap UTexture
---@field DensityMultiplierMap UTexture
---@field DensityMapOrigin FVector2D
---@field DensityMapSize FVector2D
---@field DensityMapFalloffLength float
---@field DensityMapFalloffStartRange FVector2D
---@field DensityMapDensityRange FVector2D
local FExpHeightFogVolumetricFogDensityMapParameters = {}



---@class FExpHeightFogVolumetricFogDensityMapParametersOverride
---@field bOverride_FalloffStartMap boolean
---@field bOverride_DensityMultiplierMap boolean
---@field bOverride_DensityMapOrigin boolean
---@field bOverride_DensityMapSize boolean
---@field bOverride_DensityMapFalloffLength boolean
---@field bOverride_DensityMapFalloffStartRange boolean
---@field bOverride_DensityMapDensityRange boolean
---@field FalloffStartMap UTexture
---@field DensityMultiplierMap UTexture
---@field DensityMapOrigin FVector2D
---@field DensityMapSize FVector2D
---@field DensityMapFalloffLength float
---@field DensityMapFalloffStartRange FVector2D
---@field DensityMapDensityRange FVector2D
local FExpHeightFogVolumetricFogDensityMapParametersOverride = {}



---@class FExpHeightFogVolumetricLightingParameters
---@field VolumetricLightingDirectionalLightScattering float
---@field VolumetricLightingDirectionalLightDesaturation float
---@field VolumetricLightingShadowsNearMinimum float
---@field VolumetricLightingShadowsFarMinimum float
---@field VolumetricLightingShadowsNearDistance float
---@field VolumetricLightingShadowsFarDistance float
---@field VolumetricLightingCloudShadowsNearMinimum float
---@field VolumetricLightingCloudShadowsFarMinimum float
---@field VolumetricLightingCloudShadowsNearDistance float
---@field VolumetricLightingCloudShadowsFarDistance float
---@field VolumetricLightingHistoryWeight float
---@field VolumetricLightingHistoryWeightStableCell float
---@field VolumetricLightingHistoryWeightMovingLight float
local FExpHeightFogVolumetricLightingParameters = {}



---@class FExpHeightFogVolumetricLightingParametersOverride
---@field bOverride_VolumetricLightingDirectionalLightScattering boolean
---@field bOverride_VolumetricLightingDirectionalLightDesaturation boolean
---@field bOverride_VolumetricLightingShadowsNearMinimum boolean
---@field bOverride_VolumetricLightingShadowsFarMinimum boolean
---@field bOverride_VolumetricLightingShadowsNearDistance boolean
---@field bOverride_VolumetricLightingShadowsFarDistance boolean
---@field bOverride_VolumetricLightingCloudShadowsNearMinimum boolean
---@field bOverride_VolumetricLightingCloudShadowsFarMinimum boolean
---@field bOverride_VolumetricLightingCloudShadowsNearDistance boolean
---@field bOverride_VolumetricLightingCloudShadowsFarDistance boolean
---@field bOverride_VolumetricLightingHistoryWeight boolean
---@field bOverride_VolumetricLightingHistoryWeightStableCell boolean
---@field bOverride_VolumetricLightingHistoryWeightMovingLight boolean
---@field VolumetricLightingDirectionalLightScattering float
---@field VolumetricLightingDirectionalLightDesaturation float
---@field VolumetricLightingShadowsNearMinimum float
---@field VolumetricLightingShadowsFarMinimum float
---@field VolumetricLightingShadowsNearDistance float
---@field VolumetricLightingShadowsFarDistance float
---@field VolumetricLightingCloudShadowsNearMinimum float
---@field VolumetricLightingCloudShadowsFarMinimum float
---@field VolumetricLightingCloudShadowsNearDistance float
---@field VolumetricLightingCloudShadowsFarDistance float
---@field VolumetricLightingHistoryWeight float
---@field VolumetricLightingHistoryWeightStableCell float
---@field VolumetricLightingHistoryWeightMovingLight float
local FExpHeightFogVolumetricLightingParametersOverride = {}



---@class FExpHeightFogVolumetricLightingParametersRelative
---@field VolumetricLightingDirectionalLightScattering FAdjustedValueFloat
---@field VolumetricLightingDirectionalLightDesaturation FAdjustedValueFloat
---@field VolumetricLightingShadowsNearMinimum FAdjustedValueFloat
---@field VolumetricLightingShadowsFarMinimum FAdjustedValueFloat
---@field VolumetricLightingShadowsNearDistance FAdjustedValueFloat
---@field VolumetricLightingShadowsFarDistance FAdjustedValueFloat
---@field VolumetricLightingCloudShadowsNearMinimum FAdjustedValueFloat
---@field VolumetricLightingCloudShadowsFarMinimum FAdjustedValueFloat
---@field VolumetricLightingCloudShadowsNearDistance FAdjustedValueFloat
---@field VolumetricLightingCloudShadowsFarDistance FAdjustedValueFloat
---@field VolumetricLightingHistoryWeight FAdjustedValueFloat
---@field VolumetricLightingHistoryWeightStableCell FAdjustedValueFloat
---@field VolumetricLightingHistoryWeightMovingLight FAdjustedValueFloat
local FExpHeightFogVolumetricLightingParametersRelative = {}



---@class FExpHeightFogVolumetricNoiseParameters
---@field NoiseMinFactor float
---@field NoiseMaxFactor float
---@field NoiseTilingSize float
---@field NoiseSmoothStepMin float
---@field NoiseSmoothStepMax float
---@field WindFactor float
---@field AddWindVelocity FVector
---@field BlueNoiseTexture UTexture
---@field DensityTweakingLightingThreshold float
---@field DensityTweakingMinPercentage float
---@field AliasingReduction float
---@field FullDensityDistance float
---@field MinDensityFactor float
local FExpHeightFogVolumetricNoiseParameters = {}



---@class FExpHeightFogVolumetricNoiseParametersOverride
---@field bOverride_NoiseMinFactor boolean
---@field bOverride_NoiseMaxFactor boolean
---@field bOverride_NoiseTilingSize boolean
---@field bOverride_NoiseSmoothStepMin boolean
---@field bOverride_NoiseSmoothStepMax boolean
---@field bOverride_BlueNoiseTexture boolean
---@field bOverride_WindFactor boolean
---@field bOverride_AddWindVelocity boolean
---@field bOverride_DensityTweakingLightingThreshold boolean
---@field bOverride_DensityTweakingMinPercentage boolean
---@field bOverride_AliasingReduction boolean
---@field bOverride_FullDensityDistance boolean
---@field bOverride_MinDensityFactor boolean
---@field NoiseMinFactor float
---@field NoiseMaxFactor float
---@field NoiseTilingSize float
---@field NoiseSmoothStepMin float
---@field NoiseSmoothStepMax float
---@field WindFactor float
---@field AddWindVelocity FVector
---@field BlueNoiseTexture UTexture
---@field DensityTweakingLightingThreshold float
---@field DensityTweakingMinPercentage float
---@field AliasingReduction float
---@field FullDensityDistance float
---@field MinDensityFactor float
local FExpHeightFogVolumetricNoiseParametersOverride = {}



---@class FExpHeightFogVolumetricNoiseParametersRelative
---@field NoiseMinFactor FAdjustedValueFloat
---@field NoiseMaxFactor FAdjustedValueFloat
---@field NoiseTilingSize FAdjustedValueFloat
---@field NoiseSmoothStepMin FAdjustedValueFloat
---@field NoiseSmoothStepMax FAdjustedValueFloat
---@field WindFactor FAdjustedValueFloat
local FExpHeightFogVolumetricNoiseParametersRelative = {}



---@class FExpHeightFogVolumetricParameters
---@field bVolumetricFog boolean
---@field VolumetricFogScatteringDistribution float
---@field VolumetricFogAlbedo FColor
---@field VolumetricFogEmissive FLinearColor
---@field VolumetricFogExtinctionScale float
---@field VolumetricFogDistance float
---@field OutsideVolumeSunMultiplier float
---@field VolumetricInscatteringContribution float
---@field VolumetricDirectionalInscatteringContribution float
---@field VolumetricFogHeightFogNearStartDistance float
---@field VolumetricFogHeightFogNearFullDistance float
---@field VolumetricFogHeightFogColorationBlendStartDistance float
---@field VolumetricFogHeightFogColorationBlendFullDistance float
---@field VolumetricFogHeightFogColorationBlendStrength float
---@field VolumetricFogDepthDistributionScale float
---@field VolumetricFogHistoryWeight float
---@field VolumetricFogHistoryWeightFarFog float
---@field bOverrideLightColorsWithFogInscatteringColors boolean
local FExpHeightFogVolumetricParameters = {}



---@class FExpHeightFogVolumetricParametersOverride
---@field bOverride_bVolumetricFog boolean
---@field bOverride_VolumetricFogScatteringDistribution boolean
---@field bOverride_VolumetricFogAlbedo boolean
---@field bOverride_VolumetricFogEmissive boolean
---@field bOverride_VolumetricFogExtinctionScale boolean
---@field bOverride_VolumetricFogDistance boolean
---@field bOverride_bOverrideLightColorsWithFogInscatteringColors boolean
---@field bOverride_VolumetricFogStaticLightingScatteringIntensity boolean
---@field bOverride_VolumetricFogDepthDistributionScale boolean
---@field bOverride_VolumetricFogHistoryWeight boolean
---@field bOverride_VolumetricFogHistoryWeightFarFog boolean
---@field bOverride_OutsideVolumeSunMultiplier boolean
---@field bOverride_VolumetricInscatteringContribution boolean
---@field bOverride_VolumetricDirectionalInscatteringContribution boolean
---@field bOverride_VolumetricFogHeightFogNearStartDistance boolean
---@field bOverride_VolumetricFogHeightFogNearFullDistance boolean
---@field bOverride_VolumetricFogHeightFogColorationBlendStartDistance boolean
---@field bOverride_VolumetricFogHeightFogColorationBlendFullDistance boolean
---@field bOverride_VolumetricFogHeightFogColorationBlendStrength boolean
---@field bVolumetricFog boolean
---@field VolumetricFogScatteringDistribution float
---@field VolumetricFogAlbedo FColor
---@field VolumetricFogEmissive FLinearColor
---@field VolumetricFogExtinctionScale float
---@field VolumetricFogDistance float
---@field OutsideVolumeSunMultiplier float
---@field VolumetricInscatteringContribution float
---@field VolumetricDirectionalInscatteringContribution float
---@field VolumetricFogHeightFogNearStartDistance float
---@field VolumetricFogHeightFogNearFullDistance float
---@field VolumetricFogHeightFogColorationBlendStartDistance float
---@field VolumetricFogHeightFogColorationBlendFullDistance float
---@field VolumetricFogHeightFogColorationBlendStrength float
---@field VolumetricFogDepthDistributionScale float
---@field VolumetricFogHistoryWeight float
---@field VolumetricFogHistoryWeightFarFog float
---@field bOverrideLightColorsWithFogInscatteringColors boolean
local FExpHeightFogVolumetricParametersOverride = {}



---@class FExpHeightFogVolumetricParametersRelative
---@field bOverride_VolumetricFogAlbedo boolean
---@field bOverride_VolumetricFogEmissive boolean
---@field bVolumetricFog FAdjustedValueBoolean
---@field VolumetricFogScatteringDistribution FAdjustedValueFloat
---@field VolumetricFogAlbedo FColor
---@field VolumetricFogEmissive FLinearColor
---@field VolumetricFogExtinctionScale FAdjustedValueFloat
---@field VolumetricFogDistance FAdjustedValueFloat
---@field OutsideVolumeSunMultiplier FAdjustedValueFloat
---@field VolumetricInscatteringContribution FAdjustedValueFloat
---@field VolumetricDirectionalInscatteringContribution FAdjustedValueFloat
---@field VolumetricFogHeightFogNearStartDistance FAdjustedValueFloat
---@field VolumetricFogHeightFogNearFullDistance FAdjustedValueFloat
---@field VolumetricFogHeightFogColorationBlendStartDistance FAdjustedValueFloat
---@field VolumetricFogHeightFogColorationBlendFullDistance FAdjustedValueFloat
---@field VolumetricFogHeightFogColorationBlendStrength FAdjustedValueFloat
---@field VolumetricFogHistoryWeight FAdjustedValueFloat
---@field VolumetricFogHistoryWeightFarFog FAdjustedValueFloat
local FExpHeightFogVolumetricParametersRelative = {}



---@class FGlobalLightRigModDrivers
---@field ModDrivers TMap<FName, float>
local FGlobalLightRigModDrivers = {}



---@class FGlobalLightRigWorldModDriverName
---@field Name FName
local FGlobalLightRigWorldModDriverName = {}



---@class FGlobalLightRigWorldModDrivers
---@field Defaults FGlobalLightRigModDrivers
---@field WorldMap TMap<UWorld, FGlobalLightRigModDrivers>
local FGlobalLightRigWorldModDrivers = {}



---@class FGlobalLightingBlendableAction
---@field Owner UObject
---@field Blendable UGlobalLightingBlendableBase
---@field Priority float
---@field weight float
---@field CachedActiveBlendOps FActiveGlobalLightingBlendOps
---@field InputType EGlobalLightingBlendableInputType
local FGlobalLightingBlendableAction = {}



---@class FGlobalLightingBlendableList
---@field Blendables TArray<UObject>
local FGlobalLightingBlendableList = {}



---@class FGlobalLightingCustomBlendableName
---@field Name FName
local FGlobalLightingCustomBlendableName = {}



---@class FGlobalLightingCustomBlendableNameLinearColor : FGlobalLightingCustomBlendableName
local FGlobalLightingCustomBlendableNameLinearColor = {}


---@class FGlobalLightingCustomBlendableNameScalar : FGlobalLightingCustomBlendableName
local FGlobalLightingCustomBlendableNameScalar = {}


---@class FGlobalLightingCustomBlendableNameTime : FGlobalLightingCustomBlendableName
local FGlobalLightingCustomBlendableNameTime = {}


---@class FGlobalLightingDirectionalLightBlendState
---@field Parameters FDirectionalLightParameters
---@field Rotation FQuat
local FGlobalLightingDirectionalLightBlendState = {}



---@class FGlobalLightingDirectionalLightDirection
---@field Rotation FQuat
---@field Rotator FRotator
---@field Direction FVector
local FGlobalLightingDirectionalLightDirection = {}



---@class FGlobalLightingDirectionalLightState : FGlobalLightingDirectionalLightDirection
---@field Parameters FDirectionalLightParameters
local FGlobalLightingDirectionalLightState = {}



---@class FGlobalLightingGenerateSunColorCurve : FGlobalLightingSunColorParams
---@field SunAngleStart float
---@field SunAngleEnd float
---@field SunAngleIncrement float
---@field ErrorTolerance float
---@field bCubic boolean
local FGlobalLightingGenerateSunColorCurve = {}



---@class FGlobalLightingLightDirection
---@field Rotation FQuat
---@field Direction FVector
local FGlobalLightingLightDirection = {}



---@class FGlobalLightingMasterCreateTransient
---@field DefaultsOverride UGlobalLightingDefaults
---@field UseExternalLightingComponents int32
---@field ControlLightingComponents int32
---@field HideExtraLightingComponents int32
---@field ControlFeatures int32
---@field bWantClouds boolean
---@field CloudsRelativeHeightMeters float
---@field bSetCloudsRelativeHeightMeters boolean
local FGlobalLightingMasterCreateTransient = {}



---@class FGlobalLightingMasterStack
---@field CurrentMaster TWeakObjectPtr<AGlobalLightingMaster>
---@field MasterList TArray<TWeakObjectPtr<AGlobalLightingMaster>>
---@field CinematicOverrideDefaults TWeakObjectPtr<UGlobalLightingDefaults>
local FGlobalLightingMasterStack = {}



---@class FGlobalLightingSunColorParams
---@field BaseSunColor FLinearColor
---@field WhiteAngle float
---@field HoldSunsetColorAngle float
---@field AstronomicalTwilight float
---@field Desaturate float
---@field bNormalizeColors boolean
local FGlobalLightingSunColorParams = {}



---@class FLerpParameterAtlas
local FLerpParameterAtlas = {}


---@class FProbeContactShadowsParameters
---@field ProbeContactShadowsMinValue float
---@field ProbeContactShadowsLength float
---@field ProbeContactShadowsConeAngle float
---@field ProbeContactShadowsFalloffExponent float
---@field ProbeContactShadowsDepthTolerance float
local FProbeContactShadowsParameters = {}



---@class FProbeContactShadowsParametersOverride
---@field bOverride_ProbeContactShadowsMinValue boolean
---@field bOverride_ProbeContactShadowsLength boolean
---@field bOverride_ProbeContactShadowsConeAngle boolean
---@field bOverride_ProbeContactShadowsFalloffExponent boolean
---@field bOverride_ProbeContactShadowsDepthTolerance boolean
---@field ProbeContactShadowsMinValue float
---@field ProbeContactShadowsLength float
---@field ProbeContactShadowsConeAngle float
---@field ProbeContactShadowsFalloffExponent float
---@field ProbeContactShadowsDepthTolerance float
local FProbeContactShadowsParametersOverride = {}



---@class FProbeLightingAdjustmentParameters
---@field ProbeOutsideIntensity float
---@field ProbeInsideIntensity float
---@field ProbeOutsideSaturation float
---@field ProbeInsideSaturation float
local FProbeLightingAdjustmentParameters = {}



---@class FProbeLightingAdjustmentParametersOverride
---@field bOverride_ProbeOutsideIntensity boolean
---@field bOverride_ProbeInsideIntensity boolean
---@field bOverride_ProbeOutsideSaturation boolean
---@field bOverride_ProbeInsideSaturation boolean
---@field ProbeOutsideIntensity float
---@field ProbeInsideIntensity float
---@field ProbeOutsideSaturation float
---@field ProbeInsideSaturation float
local FProbeLightingAdjustmentParametersOverride = {}



---@class FProbeLightingParameters
---@field Adjustments FProbeLightingAdjustmentParameters
---@field ToneMap FProbeLightingToneMapParameters
---@field ContactShadows FProbeContactShadowsParameters
local FProbeLightingParameters = {}



---@class FProbeLightingParametersOverride
---@field Adjustments FProbeLightingAdjustmentParametersOverride
---@field ToneMap FProbeLightingToneMapParametersOverride
---@field ContactShadows FProbeContactShadowsParametersOverride
local FProbeLightingParametersOverride = {}



---@class FProbeLightingToneMapParameters
---@field ProbeToneMapAmount float
---@field ProbeToneMapMinIntensity float
---@field ProbeToneMapMaxEV float
local FProbeLightingToneMapParameters = {}



---@class FProbeLightingToneMapParametersOverride
---@field bOverride_ProbeToneMapAmount boolean
---@field bOverride_ProbeToneMapMinIntensity boolean
---@field bOverride_ProbeToneMapMaxEV boolean
---@field ProbeToneMapAmount float
---@field ProbeToneMapMinIntensity float
---@field ProbeToneMapMaxEV float
local FProbeLightingToneMapParametersOverride = {}



---@class FSkyAtmosphereArtDirectionParameters
---@field SkyLuminanceFactor FLinearColor
---@field SkyLuminanceFactorIntensity float
---@field SkyDesaturation float
---@field AerialPespectiveViewDistanceScale float
---@field AerialPerspectiveStartDepth float
---@field HeightFogContribution float
---@field HeightFogContributionInscattering float
---@field HeightFogContributionDirectionalInscaterring float
---@field HeightFogAccurateInscatteringColor float
---@field HeightFogContributionDesaturation float
---@field HeightFogContributionDesaturationInscattering float
---@field HeightFogContributionDesaturationDirectionalInscattering float
---@field TransmittanceMinLightElevationAngle float
---@field HorizonToZenithColorationTexture UTexture2D
---@field HorizonToZenithColorationU float
---@field HorizonToZenithColorationIntensity float
---@field HorizonToZenithColorationDesaturation float
---@field HorizonToZenithFogOpticalDepthScale float
---@field HorizonToZenithFogOpticalDepthPower float
---@field HorizonToZenithFogIntensity float
---@field HorizonToZenithFogDesaturation float
local FSkyAtmosphereArtDirectionParameters = {}



---@class FSkyAtmosphereArtDirectionParametersOverride
---@field bOverride_SkyLuminanceFactor boolean
---@field bOverride_SkyLuminanceFactorIntensity boolean
---@field bOverride_SkyDesaturation boolean
---@field bOverride_AerialPespectiveViewDistanceScale boolean
---@field bOverride_AerialPerspectiveStartDepth boolean
---@field bOverride_HeightFogContribution boolean
---@field bOverride_HeightFogContributionInscattering boolean
---@field bOverride_HeightFogContributionDirectionalInscaterring boolean
---@field bOverride_HeightFogAccurateInscatteringColor boolean
---@field bOverride_HeightFogContributionDesaturation boolean
---@field bOverride_TransmittanceMinLightElevationAngle boolean
---@field bOverride_HorizonToZenithColorationTexture boolean
---@field bOverride_HorizonToZenithColorationU boolean
---@field bOverride_HorizonToZenithColorationIntensity boolean
---@field bOverride_HorizonToZenithColorationDesaturation boolean
---@field bOverride_HeightFogContributionDesaturationInscattering boolean
---@field bOverride_HeightFogContributionDesaturationDirectionalInscattering boolean
---@field bOverride_HorizonToZenithFogOpticalDepthScale boolean
---@field bOverride_HorizonToZenithFogOpticalDepthPower boolean
---@field bOverride_HorizonToZenithFogIntensity boolean
---@field bOverride_HorizonToZenithFogDesaturation boolean
---@field SkyLuminanceFactor FLinearColor
---@field SkyLuminanceFactorIntensity float
---@field SkyDesaturation float
---@field AerialPespectiveViewDistanceScale float
---@field AerialPerspectiveStartDepth float
---@field HeightFogContribution float
---@field HeightFogContributionInscattering float
---@field HeightFogContributionDirectionalInscaterring float
---@field HeightFogAccurateInscatteringColor float
---@field HeightFogContributionDesaturation float
---@field HeightFogContributionDesaturationInscattering float
---@field HeightFogContributionDesaturationDirectionalInscattering float
---@field TransmittanceMinLightElevationAngle float
---@field HorizonToZenithColorationTexture UTexture2D
---@field HorizonToZenithColorationU float
---@field HorizonToZenithColorationIntensity float
---@field HorizonToZenithColorationDesaturation float
---@field HorizonToZenithFogOpticalDepthScale float
---@field HorizonToZenithFogOpticalDepthPower float
---@field HorizonToZenithFogIntensity float
---@field HorizonToZenithFogDesaturation float
local FSkyAtmosphereArtDirectionParametersOverride = {}



---@class FSkyAtmosphereOverrideDirectionParameters
---@field LightDirection0 FVector
---@field LightDirection1 FVector
local FSkyAtmosphereOverrideDirectionParameters = {}



---@class FSkyAtmosphereOverrideDirectionParametersOverride
---@field bOverride_LightDirection0 boolean
---@field bOverride_LightDirection1 boolean
---@field LightDirection0 FVector
---@field LightDirection1 FVector
local FSkyAtmosphereOverrideDirectionParametersOverride = {}



---@class FSkyAtmosphereOzoneParameters
---@field OzoneAbsorptionScale float
---@field OzoneAbsorption FLinearColor
---@field OzoneTentDistributionTipAltitude float
---@field OzoneTentDistributionTipValue float
---@field OzoneTentDistributionWidth float
local FSkyAtmosphereOzoneParameters = {}



---@class FSkyAtmosphereOzoneParametersOverride
---@field bOverride_OzoneAbsorptionScale boolean
---@field bOverride_OzoneAbsorption boolean
---@field bOverride_OzoneTentDistributionTipAltitude boolean
---@field bOverride_OzoneTentDistributionTipValue boolean
---@field bOverride_OzoneTentDistributionWidth boolean
---@field OzoneAbsorptionScale float
---@field OzoneAbsorption FLinearColor
---@field OzoneTentDistributionTipAltitude float
---@field OzoneTentDistributionTipValue float
---@field OzoneTentDistributionWidth float
local FSkyAtmosphereOzoneParametersOverride = {}



---@class FSkyAtmosphereParameters
---@field Planet FSkyAtmospherePlanetParameters
---@field Scattering FSkyAtmosphereScatteringParameters
---@field Ozone FSkyAtmosphereOzoneParameters
---@field ArtDirection FSkyAtmosphereArtDirectionParameters
---@field SkyOnly FSkyAtmosphereSkyOnlyParameters
---@field OverrideDirection FSkyAtmosphereOverrideDirectionParameters
local FSkyAtmosphereParameters = {}



---@class FSkyAtmosphereParametersOverride
---@field Planet FSkyAtmospherePlanetParametersOverride
---@field Scattering FSkyAtmosphereScatteringParametersOverride
---@field Ozone FSkyAtmosphereOzoneParametersOverride
---@field ArtDirection FSkyAtmosphereArtDirectionParametersOverride
---@field SkyOnly FSkyAtmosphereSkyOnlyParametersOverride
---@field OverrideDirection FSkyAtmosphereOverrideDirectionParametersOverride
local FSkyAtmosphereParametersOverride = {}



---@class FSkyAtmospherePlanetParameters
---@field BottomRadius float
---@field AtmosphereHeight float
---@field GroundAlbedo FColor
local FSkyAtmospherePlanetParameters = {}



---@class FSkyAtmospherePlanetParametersOverride
---@field bOverride_BottomRadius boolean
---@field bOverride_AtmosphereHeight boolean
---@field bOverride_GroundAlbedo boolean
---@field BottomRadius float
---@field AtmosphereHeight float
---@field GroundAlbedo FColor
local FSkyAtmospherePlanetParametersOverride = {}



---@class FSkyAtmosphereScatteringParameters
---@field MultiScatteringFactor float
---@field RayleighScatteringScale float
---@field RayleighScattering FLinearColor
---@field RayleighExponentialDistribution float
---@field MieScatteringScale float
---@field MieScattering FLinearColor
---@field MieAbsorptionScale float
---@field MieAbsorption FLinearColor
---@field MieAnisotropy float
---@field MieExponentialDistribution float
local FSkyAtmosphereScatteringParameters = {}



---@class FSkyAtmosphereScatteringParametersOverride
---@field bOverride_MultiScatteringFactor boolean
---@field bOverride_RayleighScatteringScale boolean
---@field bOverride_RayleighScattering boolean
---@field bOverride_RayleighExponentialDistribution boolean
---@field bOverride_MieScatteringScale boolean
---@field bOverride_MieScattering boolean
---@field bOverride_MieAbsorptionScale boolean
---@field bOverride_MieAbsorption boolean
---@field bOverride_MieAnisotropy boolean
---@field bOverride_MieExponentialDistribution boolean
---@field MultiScatteringFactor float
---@field RayleighScatteringScale float
---@field RayleighScattering FLinearColor
---@field RayleighExponentialDistribution float
---@field MieScatteringScale float
---@field MieScattering FLinearColor
---@field MieAbsorptionScale float
---@field MieAbsorption FLinearColor
---@field MieAnisotropy float
---@field MieExponentialDistribution float
local FSkyAtmosphereScatteringParametersOverride = {}



---@class FSkyAtmosphereSkyOnlyColorParameter
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local FSkyAtmosphereSkyOnlyColorParameter = {}



---@class FSkyAtmosphereSkyOnlyColorParameterOverride
---@field bOverride_Color boolean
---@field bOverride_Intensity boolean
---@field bOverride_Saturation boolean
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local FSkyAtmosphereSkyOnlyColorParameterOverride = {}



---@class FSkyAtmosphereSkyOnlyParameters
---@field OverallBrightness float
---@field OverallSaturation float
---@field SkyMod FSkyAtmosphereSkyOnlyColorParameter
---@field SunDiskMod FSkyAtmosphereSkyOnlyColorParameter
---@field MoonDiskMod FSkyAtmosphereSkyOnlyColorParameter
local FSkyAtmosphereSkyOnlyParameters = {}



---@class FSkyAtmosphereSkyOnlyParametersOverride
---@field bOverride_OverallBrightness boolean
---@field bOverride_OverallSaturation boolean
---@field OverallBrightness float
---@field OverallSaturation float
---@field SkyMod FSkyAtmosphereSkyOnlyColorParameterOverride
---@field SunDiskMod FSkyAtmosphereSkyOnlyColorParameterOverride
---@field MoonDiskMod FSkyAtmosphereSkyOnlyColorParameterOverride
local FSkyAtmosphereSkyOnlyParametersOverride = {}



---@class FSkyLightAdvancedParameters
---@field Mobility EComponentMobility::Type
---@field SourceMode ESkyLightSourceMode
---@field CubeMap UTextureCube
---@field SourceCubemapAngle float
---@field CubemapResolution int32
---@field SkyDistanceThreshold float
---@field bCaptureEmissiveOnly boolean
---@field bLowerHemisphereIsBlack boolean
---@field LowerHemisphereColor FLinearColor
---@field bAffectTranslucentLighting boolean
---@field bTransmission boolean
---@field bAffectReflection boolean
---@field bProbeOnly boolean
local FSkyLightAdvancedParameters = {}



---@class FSkyLightAdvancedParametersOverride
---@field bOverride_AffectTranslucentLighting boolean
---@field bOverride_Transmission boolean
---@field bOverride_ProbeOnly boolean
---@field bOverride_bAffectReflection boolean
---@field bOverride_Mobility boolean
---@field bOverride_SourceMode boolean
---@field bOverride_Cubemap boolean
---@field bOverride_SourceCubemapAngle boolean
---@field bOverride_CubemapResolution boolean
---@field bOverride_SkyDistanceThreshold boolean
---@field bOverride_bCaptureEmissiveOnly boolean
---@field bOverride_bLowerHemisphereIsBlack boolean
---@field bOverride_LowerHemisphereColor boolean
---@field Mobility EComponentMobility::Type
---@field SourceMode ESkyLightSourceMode
---@field CubeMap UTextureCube
---@field SourceCubemapAngle float
---@field CubemapResolution int32
---@field SkyDistanceThreshold float
---@field bCaptureEmissiveOnly boolean
---@field bLowerHemisphereIsBlack boolean
---@field LowerHemisphereColor FLinearColor
---@field bAffectTranslucentLighting boolean
---@field bTransmission boolean
---@field bAffectReflection boolean
---@field bProbeOnly boolean
local FSkyLightAdvancedParametersOverride = {}



---@class FSkyLightBasicParameters
---@field Intensity float
---@field LightColor FColor
---@field IndirectLightingIntensity float
---@field VolumetricScatteringIntensity float
local FSkyLightBasicParameters = {}



---@class FSkyLightBasicParametersOverride
---@field bOverride_Intensity boolean
---@field bOverride_LightColor boolean
---@field bOverride_IndirectLightingIntensity boolean
---@field bOverride_VolumetricScatteringIntensity boolean
---@field Intensity float
---@field LightColor FColor
---@field IndirectLightingIntensity float
---@field VolumetricScatteringIntensity float
local FSkyLightBasicParametersOverride = {}



---@class FSkyLightBasicParametersRelative
---@field bOverride_LightColor boolean
---@field Intensity FAdjustedValueFloat
---@field LightColor FColor
---@field IndirectLightingIntensity FAdjustedValueFloat
---@field VolumetricScatteringIntensity FAdjustedValueFloat
local FSkyLightBasicParametersRelative = {}



---@class FSkyLightDFAOParameters
---@field OcclusionMaxDistance float
---@field Contrast float
---@field OcclusionExponent float
---@field MinOcclusion float
---@field OcclusionTint FColor
---@field OcclusionCombineMode EOcclusionCombineMode
local FSkyLightDFAOParameters = {}



---@class FSkyLightDFAOParametersOverride
---@field bOverride_OcclusionMaxDistance boolean
---@field bOverride_Contrast boolean
---@field bOverride_OcclusionExponent boolean
---@field bOverride_MinOcclusion boolean
---@field bOverride_OcclusionTint boolean
---@field bOverride_OcclusionCombineMode boolean
---@field OcclusionMaxDistance float
---@field Contrast float
---@field OcclusionExponent float
---@field MinOcclusion float
---@field OcclusionTint FColor
---@field OcclusionCombineMode EOcclusionCombineMode
local FSkyLightDFAOParametersOverride = {}



---@class FSkyLightHemisphereParameters
---@field bUseHemisphereLight boolean
---@field HemiTopColor FLinearColor
---@field HemiBottomColor FLinearColor
---@field HemiOutsideIntensity float
---@field HemiInsideIntensity float
---@field ProbeOutsideMinimumIntensity float
---@field ProbeInsideMinimumIntensity float
---@field SkyOcclusionContrast float
---@field SkyOcclusionExponent float
local FSkyLightHemisphereParameters = {}



---@class FSkyLightHemisphereParametersOverride
---@field bOverride_bUseHemisphereLight boolean
---@field bOverride_HemiTopColor boolean
---@field bOverride_HemiBottomColor boolean
---@field bOverride_HemiOutsideIntensity boolean
---@field bOverride_HemiInsideIntensity boolean
---@field bOverride_ProbeOutsideMinimumIntensity boolean
---@field bOverride_ProbeInsideMinimumIntensity boolean
---@field bOverride_SkyOcclusionContrast boolean
---@field bOverride_SkyOcclusionExponent boolean
---@field bUseHemisphereLight boolean
---@field HemiTopColor FLinearColor
---@field HemiBottomColor FLinearColor
---@field HemiOutsideIntensity float
---@field HemiInsideIntensity float
---@field ProbeOutsideMinimumIntensity float
---@field ProbeInsideMinimumIntensity float
---@field SkyOcclusionContrast float
---@field SkyOcclusionExponent float
local FSkyLightHemisphereParametersOverride = {}



---@class FSkyLightLightingParameters
---@field Basic FSkyLightBasicParameters
---@field Advanced FSkyLightAdvancedParameters
---@field Shadows FSkyLightShadowParameters
---@field DFAO FSkyLightDFAOParameters
---@field Hemisphere FSkyLightHemisphereParameters
local FSkyLightLightingParameters = {}



---@class FSkyLightLightingParametersOverride
---@field Basic FSkyLightBasicParametersOverride
---@field Advanced FSkyLightAdvancedParametersOverride
---@field Shadows FSkyLightShadowParametersOverride
---@field DFAO FSkyLightDFAOParametersOverride
---@field Hemisphere FSkyLightHemisphereParametersOverride
local FSkyLightLightingParametersOverride = {}



---@class FSkyLightShadowParameters
---@field bCastShadows boolean
---@field bCastStaticShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastVolumetricShadow boolean
---@field bCastRaytracedShadow boolean
local FSkyLightShadowParameters = {}



---@class FSkyLightShadowParametersOverride
---@field bOverride_CastShadows boolean
---@field bOverride_CastVolumetricShadow boolean
---@field bOverride_CastStaticShadow boolean
---@field bOverride_CastDynamicShadow boolean
---@field bOverride_CastRaytracedShadow boolean
---@field bCastShadows boolean
---@field bCastStaticShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastVolumetricShadow boolean
---@field bCastRaytracedShadow boolean
local FSkyLightShadowParametersOverride = {}



---@class FVolumetricCloudsAdvancedParameters
---@field FogDensityMultiplier float
---@field HeightFogDensityMultiplier float
local FVolumetricCloudsAdvancedParameters = {}



---@class FVolumetricCloudsAdvancedParametersOverride
---@field bOverride_FogDensityMultiplier boolean
---@field FogDensityMultiplier float
---@field bOverride_HeightFogDensityMultiplier boolean
---@field HeightFogDensityMultiplier float
local FVolumetricCloudsAdvancedParametersOverride = {}



---@class FVolumetricCloudsBasicParameters
---@field Ambient float
---@field light float
---@field Extinction float
---@field PowderExtinction float
---@field PowderStrength float
---@field FinalOutput float
local FVolumetricCloudsBasicParameters = {}



---@class FVolumetricCloudsBasicParametersOverride
---@field bOverride_Ambient boolean
---@field bOverride_Light boolean
---@field bOverride_Extinction boolean
---@field bOverride_PowderExtinction boolean
---@field bOverride_PowderStrength boolean
---@field bOverride_FinalOutput boolean
---@field Ambient float
---@field light float
---@field PowderExtinction float
---@field FinalOutput float
local FVolumetricCloudsBasicParametersOverride = {}



---@class FVolumetricCloudsGroundShadowParameters
---@field ShadowStrength float
---@field CutOutDistanceMeters float
---@field CutOutFadeDistanceMeters float
local FVolumetricCloudsGroundShadowParameters = {}



---@class FVolumetricCloudsGroundShadowParametersOverride
---@field bOverride_ShadowStrength boolean
---@field bOverride_CutOutDistanceMeters boolean
---@field bOverride_CutOutFadeDistanceMeters boolean
---@field ShadowStrength float
---@field CutOutDistanceMeters float
---@field CutOutFadeDistanceMeters float
local FVolumetricCloudsGroundShadowParametersOverride = {}



---@class FVolumetricCloudsLightingParameters
---@field Basic FVolumetricCloudsBasicParameters
---@field SkyLight FVolumetricCloudsSkyLightParameters
---@field Shadows FVolumetricCloudsShadowParameters
---@field Advanced FVolumetricCloudsAdvancedParameters
---@field SceneLight FVolumetricCloudsSceneLightParameters
local FVolumetricCloudsLightingParameters = {}



---@class FVolumetricCloudsLightingParametersOverride
---@field Basic FVolumetricCloudsBasicParametersOverride
---@field SkyLight FVolumetricCloudsSkyLightParametersOverride
---@field Shadows FVolumetricCloudsShadowParametersOverride
---@field Advanced FVolumetricCloudsAdvancedParametersOverride
---@field SceneLight FVolumetricCloudsSceneLightParametersOverride
local FVolumetricCloudsLightingParametersOverride = {}



---@class FVolumetricCloudsPresetParameters : FVolumetricCloudsPresetParams
---@field HeightOffset float
local FVolumetricCloudsPresetParameters = {}



---@class FVolumetricCloudsSceneLightParameters
---@field Direction FVector
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local FVolumetricCloudsSceneLightParameters = {}



---@class FVolumetricCloudsSceneLightParametersOverride
---@field bOverride_Direction boolean
---@field bOverride_Color boolean
---@field bOverride_Intensity boolean
---@field bOverride_Saturation boolean
---@field Direction FVector
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local FVolumetricCloudsSceneLightParametersOverride = {}



---@class FVolumetricCloudsSceneLightRotatorParameters
---@field Direction FRotator
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local FVolumetricCloudsSceneLightRotatorParameters = {}



---@class FVolumetricCloudsSceneLightRotatorParametersOverride
---@field bOverride_Direction boolean
---@field bOverride_Color boolean
---@field bOverride_Intensity boolean
---@field bOverride_Saturation boolean
---@field Direction FRotator
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local FVolumetricCloudsSceneLightRotatorParametersOverride = {}



---@class FVolumetricCloudsShadowParameters
---@field ShadowScale float
---@field ShadowMapCloudShadowDensity float
---@field RayMarchCloudShadowScale float
---@field RayMarchShadowDensity float
---@field SkyLightShadowDensity float
local FVolumetricCloudsShadowParameters = {}



---@class FVolumetricCloudsShadowParametersOverride
---@field bOverride_ShadowScale boolean
---@field bOverride_ShadowMapCloudShadowDensity boolean
---@field bOverride_RayMarchCloudShadowScale boolean
---@field bOverride_RayMarchShadowDensity boolean
---@field bOverride_SkyLightShadowDensity boolean
---@field ShadowScale float
---@field ShadowMapCloudShadowDensity float
---@field RayMarchCloudShadowScale float
---@field RayMarchShadowDensity float
---@field SkyLightShadowDensity float
local FVolumetricCloudsShadowParametersOverride = {}



---@class FVolumetricCloudsSkyLightParameters
---@field CloudOutput float
---@field CloudAlpha float
---@field Desaturate float
---@field GroundColor FLinearColor
local FVolumetricCloudsSkyLightParameters = {}



---@class FVolumetricCloudsSkyLightParametersOverride
---@field bOverride_CloudOutput boolean
---@field bOverride_CloudAlpha boolean
---@field bOverride_Desaturate boolean
---@field bOverride_GroundColor boolean
---@field CloudOutput float
---@field CloudAlpha float
---@field Desaturate float
---@field GroundColor FLinearColor
local FVolumetricCloudsSkyLightParametersOverride = {}



---@class FVolumetricCloudsWindParameters : FVolumetricCloudsWeatherWindParams
local FVolumetricCloudsWindParameters = {}


---@class FVolumetricCloudsWindParametersOverride
---@field bOverride_WindSpeed boolean
---@field bOverride_WindSkew boolean
---@field bOverride_WeatherSpeed boolean
---@field bOverride_SkyLightWeatherSpeedScale boolean
---@field bOverride_HighAltitudeSpeed boolean
---@field WindSpeed FVector
---@field WindSkew float
---@field WeatherSpeed FVector
---@field SkyLightWeatherSpeedScale float
---@field HighAltitudeSpeed FVector
local FVolumetricCloudsWindParametersOverride = {}



---@class FWorldBaseHeights
---@field CloudsZ float
---@field ExpHeightFogZ float
---@field AtmosphereZ float
local FWorldBaseHeights = {}



---@class FWorldBaseHeightsTracker : FWorldBaseHeights
---@field Force int32
local FWorldBaseHeightsTracker = {}



---@class FZeroDirectionalLightSettings
---@field Mode EZeroDirectionalLightMode
---@field ClampToMinimum float
local FZeroDirectionalLightSettings = {}



---@class IGlobalLightingBlendableInterface : IInterface
local IGlobalLightingBlendableInterface = {}


---@class IWorldBaseHeightInterface : IInterface
local IWorldBaseHeightInterface = {}


---@class UBentDirectionalLightWindow : USceneComponent
---@field TopBottomAngle float
---@field LeftRightAngle float
---@field CosineTopBottomAngle float
---@field CosineLeftRightAngle float
---@field WindowBaseAngle float
---@field bEnabled boolean
local UBentDirectionalLightWindow = {}



---@class UBlendableGlobalLightingComponent : USceneComponent
---@field GlobalLightingBlendable UGlobalLightingBlendable
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
---@field bCameraExpHeightFogHeight_DEPRICATED boolean
---@field FogZMode EGlobalLightingFogZMode
local UBlendableGlobalLightingComponent = {}



---@class UBlendableGlobalLightingVolumeFogDefaults : UBlendableGlobalLightingVolumeFogDefaultsBase
---@field Basic FExpHeightFogBasicParametersOverride
---@field Second FExpHeightFogSecondParametersOverride
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersOverride
---@field Volumetric FExpHeightFogVolumetricParametersOverride
---@field VolumetricLighting FExpHeightFogVolumetricLightingParametersOverride
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersOverride
local UBlendableGlobalLightingVolumeFogDefaults = {}



---@class UBlendableGlobalLightingVolumeFogDefaultsBase : UDataAsset
---@field FogZMode EGlobalLightingFogZMode
---@field Transmuter UExpHeightFogTransmuter
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
local UBlendableGlobalLightingVolumeFogDefaultsBase = {}



---@class UBlendableGlobalLightingVolumeFogRelativeDefaults : UBlendableGlobalLightingVolumeFogDefaultsBase
---@field Basic FExpHeightFogBasicParametersRelative
---@field Second FExpHeightFogSecondParametersRelative
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersRelative
---@field Volumetric FExpHeightFogVolumetricParametersRelative
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersRelative
local UBlendableGlobalLightingVolumeFogRelativeDefaults = {}



---@class UBlueprintGlobalLightingCustomBlendables : UObject
---@field Scalars TArray<FBlueprintGlobalLightingCustomBlendablesScalar>
---@field Colors TArray<FBlueprintGlobalLightingCustomBlendablesLinearColor>
local UBlueprintGlobalLightingCustomBlendables = {}



---@class UCloudLightingParams : UObject
local UCloudLightingParams = {}


---@class UCloudLightingParamsForceDirectionalSceneLighting : UCloudLightingParams
local UCloudLightingParamsForceDirectionalSceneLighting = {}


---@class UCloudLightingParamsFull : UCloudLightingParams
---@field Parameters FVolumetricCloudsLightingParameters
---@field bSetSceneLighting boolean
local UCloudLightingParamsFull = {}



---@class UCloudLightingParamsOverrideBasic : UCloudLightingParams
---@field Basic FVolumetricCloudsBasicParametersOverride
---@field SkyLight FVolumetricCloudsSkyLightParametersOverride
local UCloudLightingParamsOverrideBasic = {}



---@class UCloudLightingParamsOverrideFull : UCloudLightingParams
---@field Parameters FVolumetricCloudsLightingParametersOverride
local UCloudLightingParamsOverrideFull = {}



---@class UCloudLightingParamsOverrideSceneLighting : UCloudLightingParams
---@field SceneLight FVolumetricCloudsSceneLightRotatorParametersOverride
local UCloudLightingParamsOverrideSceneLighting = {}



---@class UCloudLightingParamsSceneLighting : UCloudLightingParams
---@field SceneLight FVolumetricCloudsSceneLightRotatorParameters
local UCloudLightingParamsSceneLighting = {}



---@class UCloudLightingParamsSceneLightingSun : UCloudLightingParams
---@field bOverride_Color boolean
---@field bOverride_Intensity boolean
---@field bOverride_Saturation boolean
---@field Color FLinearColor
---@field Intensity float
---@field Saturation float
local UCloudLightingParamsSceneLightingSun = {}



---@class UCloudLightingParamsSimple : UCloudLightingParams
---@field Basic FVolumetricCloudsBasicParameters
---@field SkyLight FVolumetricCloudsSkyLightParameters
local UCloudLightingParamsSimple = {}



---@class UCloudsPresetParams : UObject
local UCloudsPresetParams = {}


---@class UCloudsPresetParamsFromPreset : UCloudsPresetParams
---@field Preset FDataTableRowHandle
local UCloudsPresetParamsFromPreset = {}



---@class UCloudsPresetParamsRaw : UCloudsPresetParams
---@field Parameters FVolumetricCloudsPresetParameters
local UCloudsPresetParamsRaw = {}



---@class UCloudsWindParams : UObject
local UCloudsWindParams = {}


---@class UCloudsWindParamsFull : UCloudsWindParams
---@field Parameters FVolumetricCloudsWindParameters
local UCloudsWindParamsFull = {}



---@class UCloudsWindParamsOverride : UCloudsWindParams
---@field Parameters FVolumetricCloudsWindParametersOverride
local UCloudsWindParamsOverride = {}



---@class UDirectionalLightConstantDirection : UDirectionalLightDirection
---@field Direction FVector
local UDirectionalLightConstantDirection = {}



---@class UDirectionalLightConstantRotator : UDirectionalLightDirection
---@field Direction FRotator
local UDirectionalLightConstantRotator = {}



---@class UDirectionalLightDirection : UObject
local UDirectionalLightDirection = {}


---@class UDirectionalLightFollowCamera : UDirectionalLightDirection
---@field FixedAltitude float
---@field bFixedAltitude boolean
local UDirectionalLightFollowCamera = {}



---@class UDirectionalLightOff : UDirectionalLightParams
---@field bForceVisibilityOff boolean
local UDirectionalLightOff = {}



---@class UDirectionalLightOpposeCamera : UDirectionalLightDirection
---@field FixedAltitude float
---@field bFixedAltitude boolean
local UDirectionalLightOpposeCamera = {}



---@class UDirectionalLightOpposePrimary : UDirectionalLightDirection
local UDirectionalLightOpposePrimary = {}


---@class UDirectionalLightParams : UObject
local UDirectionalLightParams = {}


---@class UDirectionalLightParamsFull : UDirectionalLightParams
---@field Parameters FDirectionalLightParameters
local UDirectionalLightParamsFull = {}



---@class UDirectionalLightParamsLightShafts : UDirectionalLightParams
---@field LightShafts FDirectionalLightShafts
local UDirectionalLightParamsLightShafts = {}



---@class UDirectionalLightParamsOverrideFull : UDirectionalLightParams
---@field Parameters FDirectionalLightParametersOverride
local UDirectionalLightParamsOverrideFull = {}



---@class UDirectionalLightParamsOverrideSimple : UDirectionalLightParams
---@field Basic FDirectionalLightBasicParametersOverride
---@field LightShafts FDirectionalLightShaftsOverride
local UDirectionalLightParamsOverrideSimple = {}



---@class UDirectionalLightParamsRelativeFull : UDirectionalLightParams
---@field Parameters FDirectionalLightParametersRelative
local UDirectionalLightParamsRelativeFull = {}



---@class UDirectionalLightParamsRelativeSimple : UDirectionalLightParams
---@field Basic FDirectionalLightBasicParametersRelative
---@field LightShafts FDirectionalLightShaftsRelative
local UDirectionalLightParamsRelativeSimple = {}



---@class UDirectionalLightParamsShadows : UDirectionalLightParams
---@field Shadows FDirectionalLightShadows
local UDirectionalLightParamsShadows = {}



---@class UDirectionalLightParamsSimple : UDirectionalLightParams
---@field Basic FDirectionalLightBasicParameters
---@field Advanced FDirectionalLightAdvancedParameters
---@field LightShafts FDirectionalLightShafts
local UDirectionalLightParamsSimple = {}



---@class UDirectionalLightSideLit : UDirectionalLightDirection
---@field Rotation float
local UDirectionalLightSideLit = {}



---@class UExpHeightFogParams : UObject
---@field Transmuter UExpHeightFogTransmuter
local UExpHeightFogParams = {}



---@class UExpHeightFogParamsBasic : UExpHeightFogParams
---@field Basic FExpHeightFogBasicParameters
local UExpHeightFogParamsBasic = {}



---@class UExpHeightFogParamsFull : UExpHeightFogParams
---@field Parameters FExpHeightFogParameters
local UExpHeightFogParamsFull = {}



---@class UExpHeightFogParamsNoTransmuter : UExpHeightFogParams
local UExpHeightFogParamsNoTransmuter = {}


---@class UExpHeightFogParamsOverrideBasic : UExpHeightFogParams
---@field Basic FExpHeightFogBasicParametersOverride
local UExpHeightFogParamsOverrideBasic = {}



---@class UExpHeightFogParamsOverrideFog : UExpHeightFogParams
---@field Basic FExpHeightFogBasicParametersOverride
---@field Second FExpHeightFogSecondParametersOverride
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersOverride
---@field VolumetricFog FExpHeightFogVolumetricParametersOverride
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersOverride
local UExpHeightFogParamsOverrideFog = {}



---@class UExpHeightFogParamsOverrideFull : UExpHeightFogParams
---@field Parameters FExpHeightFogParametersOverride
local UExpHeightFogParamsOverrideFull = {}



---@class UExpHeightFogParamsOverrideSecond : UExpHeightFogParams
---@field Second FExpHeightFogSecondParametersOverride
local UExpHeightFogParamsOverrideSecond = {}



---@class UExpHeightFogParamsOverrideVolumetricAdvanced : UExpHeightFogParams
---@field VolumetricAdvanced FExpHeightFogVolumetricAdvancedParametersOverride
local UExpHeightFogParamsOverrideVolumetricAdvanced = {}



---@class UExpHeightFogParamsOverrideVolumetricFog : UExpHeightFogParams
---@field VolumetricFog FExpHeightFogVolumetricParametersOverride
local UExpHeightFogParamsOverrideVolumetricFog = {}



---@class UExpHeightFogParamsOverrideVolumetricLighting : UExpHeightFogParams
---@field VolumetricLighting FExpHeightFogVolumetricLightingParametersOverride
local UExpHeightFogParamsOverrideVolumetricLighting = {}



---@class UExpHeightFogParamsOverrideVolumetricNoise : UExpHeightFogParams
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersOverride
local UExpHeightFogParamsOverrideVolumetricNoise = {}



---@class UExpHeightFogParamsOverrideVolumetricNoiseWind : UExpHeightFogParams
---@field AddWindVelocity FVector
local UExpHeightFogParamsOverrideVolumetricNoiseWind = {}



---@class UExpHeightFogParamsRelativeBasic : UExpHeightFogParams
---@field Basic FExpHeightFogBasicParametersRelative
local UExpHeightFogParamsRelativeBasic = {}



---@class UExpHeightFogParamsRelativeFog : UExpHeightFogParams
---@field Basic FExpHeightFogBasicParametersRelative
---@field Second FExpHeightFogSecondParametersRelative
---@field DirectionalInscattering FExpHeightFogDirectionalInscatteringParametersRelative
---@field VolumetricFog FExpHeightFogVolumetricParametersRelative
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersRelative
local UExpHeightFogParamsRelativeFog = {}



---@class UExpHeightFogParamsRelativeFull : UExpHeightFogParams
---@field Parameters FExpHeightFogParametersRelative
local UExpHeightFogParamsRelativeFull = {}



---@class UExpHeightFogParamsRelativeSecond : UExpHeightFogParams
---@field Second FExpHeightFogSecondParametersRelative
local UExpHeightFogParamsRelativeSecond = {}



---@class UExpHeightFogParamsRelativeVolumetricAdvanced : UExpHeightFogParams
---@field VolumetricAdvanced FExpHeightFogVolumetricAdvancedParametersRelative
local UExpHeightFogParamsRelativeVolumetricAdvanced = {}



---@class UExpHeightFogParamsRelativeVolumetricFog : UExpHeightFogParams
---@field VolumetricFog FExpHeightFogVolumetricParametersRelative
local UExpHeightFogParamsRelativeVolumetricFog = {}



---@class UExpHeightFogParamsRelativeVolumetricFogExtinctionScale : UExpHeightFogParams
---@field VolumetricFogExtinctionScale FAdjustedValueFloat
local UExpHeightFogParamsRelativeVolumetricFogExtinctionScale = {}



---@class UExpHeightFogParamsRelativeVolumetricLighting : UExpHeightFogParams
---@field VolumetricLighting FExpHeightFogVolumetricLightingParametersRelative
local UExpHeightFogParamsRelativeVolumetricLighting = {}



---@class UExpHeightFogParamsRelativeVolumetricNoise : UExpHeightFogParams
---@field VolumetricNoise FExpHeightFogVolumetricNoiseParametersRelative
local UExpHeightFogParamsRelativeVolumetricNoise = {}



---@class UExpHeightFogParamsSecond : UExpHeightFogParams
---@field Second FExpHeightFogSecondParameters
local UExpHeightFogParamsSecond = {}



---@class UExpHeightFogParamsTransmute : UExpHeightFogParams
local UExpHeightFogParamsTransmute = {}


---@class UExpHeightFogTransmuter : UObject
local UExpHeightFogTransmuter = {}


---@class UExpHeightFogTransmuterGlobalLightRigMod : UExpHeightFogTransmuter
---@field mods TArray<UGlobalLightRigMod>
local UExpHeightFogTransmuterGlobalLightRigMod = {}



---@class UExpHeightFogTransmuterGlobalLightRigModCollection : UExpHeightFogTransmuter
---@field ModCollection UGlobalLightRigModCollection
local UExpHeightFogTransmuterGlobalLightRigModCollection = {}



---@class UGlobalLightRigMod : UObject
local UGlobalLightRigMod = {}


---@class UGlobalLightRigModCollection : UDataAsset
---@field mods TArray<UGlobalLightRigMod>
local UGlobalLightRigModCollection = {}



---@class UGlobalLightRigModColorBase : UGlobalLightRigMod
local UGlobalLightRigModColorBase = {}


---@class UGlobalLightRigModColorConstant : UGlobalLightRigModColorBase
---@field Param EGlobalLightRigModParam
---@field Color FLinearColor
---@field ColorType EGlobalLightRigModLinearColorType
---@field Type EGlobalLightRigModType
---@field Mode EGlobalLightRigProbeMode
---@field bEnabled boolean
local UGlobalLightRigModColorConstant = {}



---@class UGlobalLightRigModColorConstantNew : UGlobalLightRigModColorBase
---@field Param EGlobalLightRigModParam
---@field Color FLinearColor
---@field ColorType EGlobalLightRigModLinearColorType
---@field Modifiers TArray<UGlobalLightRigModOption>
local UGlobalLightRigModColorConstantNew = {}



---@class UGlobalLightRigModColorCurve : UGlobalLightRigModColorBase
---@field Param EGlobalLightRigModParam
---@field Source FGlobalLightRigWorldModDriverName
---@field Curve UCurveLinearColor
---@field ColorType EGlobalLightRigModLinearColorType
---@field Type EGlobalLightRigModType
---@field Mode EGlobalLightRigProbeMode
---@field bEnabled boolean
local UGlobalLightRigModColorCurve = {}



---@class UGlobalLightRigModColorCurveNew : UGlobalLightRigModColorBase
---@field Param EGlobalLightRigModParam
---@field Source FGlobalLightRigWorldModDriverName
---@field Curve UCurveLinearColor
---@field ColorType EGlobalLightRigModLinearColorType
---@field Modifiers TArray<UGlobalLightRigModOption>
local UGlobalLightRigModColorCurveNew = {}



---@class UGlobalLightRigModFloatBase : UGlobalLightRigMod
local UGlobalLightRigModFloatBase = {}


---@class UGlobalLightRigModFloatBlendDomain : UGlobalLightRigModFloatExternal
---@field BlendDomain URenderSettingsCustomBlendDomain
local UGlobalLightRigModFloatBlendDomain = {}



---@class UGlobalLightRigModFloatConstant : UGlobalLightRigModFloatBase
---@field Param EGlobalLightRigModParam
---@field Value float
---@field ColorConversion EGlobalLightRigModColorConversionType
---@field Type EGlobalLightRigModType
---@field Mode EGlobalLightRigProbeMode
---@field bEnabled boolean
local UGlobalLightRigModFloatConstant = {}



---@class UGlobalLightRigModFloatConstantNew : UGlobalLightRigModFloatBase
---@field Param EGlobalLightRigModParam
---@field Value float
---@field Modifiers TArray<UGlobalLightRigModOption>
---@field ColorConversion EGlobalLightRigModColorConversionType
local UGlobalLightRigModFloatConstantNew = {}



---@class UGlobalLightRigModFloatCurve : UGlobalLightRigModFloatBase
---@field Param EGlobalLightRigModParam
---@field Source FGlobalLightRigWorldModDriverName
---@field Curve UCurveFloat
---@field ColorConversion EGlobalLightRigModColorConversionType
---@field Type EGlobalLightRigModType
---@field Mode EGlobalLightRigProbeMode
---@field bEnabled boolean
local UGlobalLightRigModFloatCurve = {}



---@class UGlobalLightRigModFloatCurveNew : UGlobalLightRigModFloatBase
---@field Param EGlobalLightRigModParam
---@field Source FGlobalLightRigWorldModDriverName
---@field Curve UCurveFloat
---@field Modifiers TArray<UGlobalLightRigModOption>
---@field ColorConversion EGlobalLightRigModColorConversionType
local UGlobalLightRigModFloatCurveNew = {}



---@class UGlobalLightRigModFloatExposureExpressionEV100 : UGlobalLightRigModFloatExternal
---@field ExposureExpression UExposureExpressionsExposureValue
local UGlobalLightRigModFloatExposureExpressionEV100 = {}



---@class UGlobalLightRigModFloatExternal : UGlobalLightRigModFloatBase
---@field Param EGlobalLightRigModParam
---@field Modifiers TArray<UGlobalLightRigModOption>
---@field ColorConversion EGlobalLightRigModColorConversionType
local UGlobalLightRigModFloatExternal = {}



---@class UGlobalLightRigModFloatLerpVolumeScalar : UGlobalLightRigModFloatExternal
---@field Name FLerpVolumesScalarName
local UGlobalLightRigModFloatLerpVolumeScalar = {}



---@class UGlobalLightRigModLerpBinary : UGlobalLightRigModLerpControl
---@field bInvert boolean
local UGlobalLightRigModLerpBinary = {}



---@class UGlobalLightRigModLerpControl : UObject
---@field Param EGlobalLightRigModParam
---@field bEnabled boolean
local UGlobalLightRigModLerpControl = {}



---@class UGlobalLightRigModLerpCurve : UGlobalLightRigModLerpControl
---@field Curve UCurveFloat
local UGlobalLightRigModLerpCurve = {}



---@class UGlobalLightRigModLerpEase : UGlobalLightRigModLerpControl
---@field Easing EGlobalLightRigModLerpEasingType
---@field BlendExp float
local UGlobalLightRigModLerpEase = {}



---@class UGlobalLightRigModLerpIfNotZero : UGlobalLightRigModLerpBinary
---@field Tolerance float
local UGlobalLightRigModLerpIfNotZero = {}



---@class UGlobalLightRigModLerpIfOne : UGlobalLightRigModLerpBinary
---@field Tolerance float
local UGlobalLightRigModLerpIfOne = {}



---@class UGlobalLightRigModLerpOnOff : UGlobalLightRigModLerpBinary
---@field Cutoff float
local UGlobalLightRigModLerpOnOff = {}



---@class UGlobalLightRigModOption : UObject
local UGlobalLightRigModOption = {}


---@class UGlobalLightRigModOptionDisable : UGlobalLightRigModOption
local UGlobalLightRigModOptionDisable = {}


---@class UGlobalLightRigModOptionGameOnly : UGlobalLightRigModOption
local UGlobalLightRigModOptionGameOnly = {}


---@class UGlobalLightRigModOptionNotes : UGlobalLightRigModOption
local UGlobalLightRigModOptionNotes = {}


---@class UGlobalLightRigModOptionProbeOnly : UGlobalLightRigModOption
local UGlobalLightRigModOptionProbeOnly = {}


---@class UGlobalLightRigModOptionTransformAbs : UGlobalLightRigModOption
local UGlobalLightRigModOptionTransformAbs = {}


---@class UGlobalLightRigModOptionTransformNegate : UGlobalLightRigModOption
local UGlobalLightRigModOptionTransformNegate = {}


---@class UGlobalLightRigModOptionTransformNormalize : UGlobalLightRigModOption
local UGlobalLightRigModOptionTransformNormalize = {}


---@class UGlobalLightRigModOptionTransformOneMinus : UGlobalLightRigModOption
local UGlobalLightRigModOptionTransformOneMinus = {}


---@class UGlobalLightRigModOptionTransformSaturate : UGlobalLightRigModOption
local UGlobalLightRigModOptionTransformSaturate = {}


---@class UGlobalLightRigModOptionTransformSquare : UGlobalLightRigModOption
local UGlobalLightRigModOptionTransformSquare = {}


---@class UGlobalLightRigModOptionTypeAdd : UGlobalLightRigModOption
local UGlobalLightRigModOptionTypeAdd = {}


---@class UGlobalLightRigModOptionTypeMaximum : UGlobalLightRigModOption
local UGlobalLightRigModOptionTypeMaximum = {}


---@class UGlobalLightRigModOptionTypeMinimum : UGlobalLightRigModOption
local UGlobalLightRigModOptionTypeMinimum = {}


---@class UGlobalLightRigModOptionTypeMultiply : UGlobalLightRigModOption
local UGlobalLightRigModOptionTypeMultiply = {}


---@class UGlobalLightingBlendable : UGlobalLightingBlendableBase
local UGlobalLightingBlendable = {}


---@class UGlobalLightingBlendableAtmosphericFog : UGlobalLightingBlendable
local UGlobalLightingBlendableAtmosphericFog = {}


---@class UGlobalLightingBlendableBase : UObject
local UGlobalLightingBlendableBase = {}


---@class UGlobalLightingBlendableBentDirectionalLight : UGlobalLightingBlendableBase
---@field SunDirection FQuat
---@field SunIntensityMod float
---@field SkyLightIntensityMod float
---@field bValid boolean
local UGlobalLightingBlendableBentDirectionalLight = {}



---@class UGlobalLightingBlendableCloudsPreset : UGlobalLightingBlendable
---@field CloudsPresetParameters UCloudsPresetParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableCloudsPreset = {}



---@class UGlobalLightingBlendableCloudsWind : UGlobalLightingBlendable
---@field CloudsWindParameters UCloudsWindParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableCloudsWind = {}



---@class UGlobalLightingBlendableCustomBlendables : UGlobalLightingBlendable
---@field CustomBlendables TArray<UGlobalLightingCustomBlendablesValue>
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableCustomBlendables = {}



---@class UGlobalLightingBlendableDirectionalLight : UGlobalLightingBlendable
---@field DirectionalLightDirection UDirectionalLightDirection
---@field DirectionalLightParameters UDirectionalLightParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableDirectionalLight = {}



---@class UGlobalLightingBlendableDirectionalLightsOff : UGlobalLightingBlendable
---@field bForceVisibilityOff boolean
local UGlobalLightingBlendableDirectionalLightsOff = {}



---@class UGlobalLightingBlendableExpHeightFog : UGlobalLightingBlendable
---@field ExpHeightFogParameters UExpHeightFogParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableExpHeightFog = {}



---@class UGlobalLightingBlendableExpHeightFogVolume : UGlobalLightingBlendable
local UGlobalLightingBlendableExpHeightFogVolume = {}


---@class UGlobalLightingBlendableFull : UGlobalLightingBlendable
---@field DirectionalLightDirection UDirectionalLightDirection
---@field DirectionalLightParameters UDirectionalLightParams
---@field SecondaryDirectionalLightDirection UDirectionalLightDirection
---@field SecondaryDirectionalLightParameters UDirectionalLightParams
---@field SkyLightParameters USkyLightParams
---@field SkyAtmosphereParameters USkyAtmosphereParams
---@field ExpHeightFogParameters UExpHeightFogParams
---@field VolumetricCloudsParameters UCloudLightingParams
---@field CloudsPresetParameters UCloudsPresetParams
---@field CloudsWindParameters UCloudsWindParams
---@field ProbeLightingParameters UProbeLightingParams
---@field CustomBlendables TArray<UGlobalLightingCustomBlendablesValue>
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableFull = {}



---@class UGlobalLightingBlendableGTAOCustomBlendables : UGlobalLightingBlendable
---@field GTAO FCustomBlendableGTAO
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableGTAOCustomBlendables = {}



---@class UGlobalLightingBlendableGTAOFromAOVolume : UGlobalLightingBlendable
---@field AmbientOcclusionVolume AAmbientOcclusionVolume
local UGlobalLightingBlendableGTAOFromAOVolume = {}



---@class UGlobalLightingBlendableModCollection : UGlobalLightingBlendableModsBase
---@field ModCollection UGlobalLightRigModCollection
local UGlobalLightingBlendableModCollection = {}



---@class UGlobalLightingBlendableMods : UGlobalLightingBlendableModsBase
---@field mods TArray<UGlobalLightRigMod>
local UGlobalLightingBlendableMods = {}



---@class UGlobalLightingBlendableModsBase : UGlobalLightingBlendable
local UGlobalLightingBlendableModsBase = {}


---@class UGlobalLightingBlendableProbeLighting : UGlobalLightingBlendable
---@field ProbeLightingParameters UProbeLightingParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableProbeLighting = {}



---@class UGlobalLightingBlendableSecondaryLight : UGlobalLightingBlendable
---@field SecondaryDirectionalLightDirection UDirectionalLightDirection
---@field SecondaryDirectionalLightParameters UDirectionalLightParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableSecondaryLight = {}



---@class UGlobalLightingBlendableSkyAtmosphere : UGlobalLightingBlendable
---@field SkyAtmosphereParameters USkyAtmosphereParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableSkyAtmosphere = {}



---@class UGlobalLightingBlendableSkyLight : UGlobalLightingBlendable
---@field SkyLightParameters USkyLightParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableSkyLight = {}



---@class UGlobalLightingBlendableUseDefaults : UGlobalLightingBlendable
---@field Defaults UGlobalLightingDefaults
---@field bDirectionalLightDirection boolean
---@field bDirectionalLightParameters boolean
---@field bSecondaryDirectionalLightDirection boolean
---@field bSecondaryDirectionalLightParameters boolean
---@field bSkyLightParameters boolean
---@field bSkyAtmosphereParameters boolean
---@field bExpHeightFogParameters boolean
---@field bVolumetricCloudsParameters boolean
---@field bCloudsPresetParameters boolean
---@field bCloudsWindParameters boolean
---@field bProbeLightingParameters boolean
---@field bCustomBlendables boolean
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableUseDefaults = {}



---@class UGlobalLightingBlendableVDHW : UGlobalLightingBlendable
---@field VDHW FCustomBlendableVDHW
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableVDHW = {}



---@class UGlobalLightingBlendableVolumetricClouds : UGlobalLightingBlendable
---@field VolumetricCloudsParameters UCloudLightingParams
---@field OverrideSource EGlobalLightingBlendableInputType
local UGlobalLightingBlendableVolumetricClouds = {}



---@class UGlobalLightingCustomBlendablesLibrary : UBlueprintFunctionLibrary
local UGlobalLightingCustomBlendablesLibrary = {}

---@param WorldContextObject UObject
---@param ScalarName FName
---@param ScalarValue float
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetGlobalLightingCustomBlendableScalarName(WorldContextObject, ScalarName, ScalarValue) end
---@param WorldContextObject UObject
---@param Scalar FGlobalLightingCustomBlendableNameScalar
---@param ScalarValue float
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetGlobalLightingCustomBlendableScalar(WorldContextObject, Scalar, ScalarValue) end
---@param WorldContextObject UObject
---@param ColorName FName
---@param ColorValue FLinearColor
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetGlobalLightingCustomBlendableLinearColorName(WorldContextObject, ColorName, ColorValue) end
---@param WorldContextObject UObject
---@param Color FGlobalLightingCustomBlendableNameLinearColor
---@param ColorValue FLinearColor
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetGlobalLightingCustomBlendableLinearColor(WorldContextObject, Color, ColorValue) end
---@param ScalarName FName
---@param ScalarValue float
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetDefaultGlobalLightingCustomBlendableScalarName(ScalarName, ScalarValue) end
---@param Scalar FGlobalLightingCustomBlendableNameScalar
---@param ScalarValue float
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetDefaultGlobalLightingCustomBlendableScalar(Scalar, ScalarValue) end
---@param ColorName FName
---@param ColorValue FLinearColor
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetDefaultGlobalLightingCustomBlendableLinearColorName(ColorName, ColorValue) end
---@param Color FGlobalLightingCustomBlendableNameLinearColor
---@param ColorValue FLinearColor
---@return boolean
function UGlobalLightingCustomBlendablesLibrary:GetDefaultGlobalLightingCustomBlendableLinearColor(Color, ColorValue) end


---@class UGlobalLightingCustomBlendablesValue : UObject
local UGlobalLightingCustomBlendablesValue = {}


---@class UGlobalLightingCustomBlendablesValueAllowDefaults : UGlobalLightingCustomBlendablesValue
local UGlobalLightingCustomBlendablesValueAllowDefaults = {}


---@class UGlobalLightingCustomBlendablesValueLinearColor : UGlobalLightingCustomBlendablesValueAllowDefaults
---@field Name FGlobalLightingCustomBlendableNameLinearColor
---@field Value FLinearColor
local UGlobalLightingCustomBlendablesValueLinearColor = {}



---@class UGlobalLightingCustomBlendablesValueLinearColorCurve : UGlobalLightingCustomBlendablesValue
---@field Name FGlobalLightingCustomBlendableNameLinearColor
---@field Source FGlobalLightRigWorldModDriverName
---@field Curve UCurveLinearColor
local UGlobalLightingCustomBlendablesValueLinearColorCurve = {}



---@class UGlobalLightingCustomBlendablesValueLinearColorDesaturate : UGlobalLightingCustomBlendablesValue
---@field Name FGlobalLightingCustomBlendableNameLinearColor
---@field Desaturate float
local UGlobalLightingCustomBlendablesValueLinearColorDesaturate = {}



---@class UGlobalLightingCustomBlendablesValueLinearColorMultiply : UGlobalLightingCustomBlendablesValue
---@field Name FGlobalLightingCustomBlendableNameLinearColor
---@field Intensity float
local UGlobalLightingCustomBlendablesValueLinearColorMultiply = {}



---@class UGlobalLightingCustomBlendablesValueScalar : UGlobalLightingCustomBlendablesValueAllowDefaults
---@field Name FGlobalLightingCustomBlendableNameScalar
---@field Value float
local UGlobalLightingCustomBlendablesValueScalar = {}



---@class UGlobalLightingCustomBlendablesValueScalarCurve : UGlobalLightingCustomBlendablesValue
---@field Name FGlobalLightingCustomBlendableNameScalar
---@field Source FGlobalLightRigWorldModDriverName
---@field Curve UCurveFloat
local UGlobalLightingCustomBlendablesValueScalarCurve = {}



---@class UGlobalLightingCustomBlendablesValueTime : UGlobalLightingCustomBlendablesValueAllowDefaults
---@field Name FGlobalLightingCustomBlendableNameTime
---@field Hours int32
---@field Minutes int32
---@field Seconds int32
local UGlobalLightingCustomBlendablesValueTime = {}



---@class UGlobalLightingDefaults : UDataAsset
---@field LightDirection FRotator
---@field LightParameters FDirectionalLightParameters
---@field ZeroDirectionalLightSettings FZeroDirectionalLightSettings
---@field SecondaryLightDirection FRotator
---@field SecondaryLightParameters FDirectionalLightParameters
---@field SecondaryZeroDirectionalLightSettings FZeroDirectionalLightSettings
---@field SkyLightParameters FSkyLightLightingParameters
---@field SkyAtmosphereParameters FSkyAtmosphereParameters
---@field SingleDirectionalLightMaterialOverride UMaterialInterface
---@field DualDirectionalLightMaterialOverride UMaterialInterface
---@field ExpHeightFogParameters FExpHeightFogParameters
---@field CloudLightingParameters FVolumetricCloudsLightingParameters
---@field ProbeLightingParameters FProbeLightingParameters
---@field CloudsPreset FDataTableRowHandle
---@field CloudsWindParameters FVolumetricCloudsWindParameters
---@field CustomBlendDefaultValues TArray<UGlobalLightingCustomBlendablesValueAllowDefaults>
---@field bCameraExpHeightFogHeight boolean
---@field bCloudSceneLightingDefaultToDirectionalLight boolean
---@field ExtraBlendables TArray<UGlobalLightingBlendable>
---@field PostBlendables TArray<UGlobalLightingBlendable>
local UGlobalLightingDefaults = {}



---@class UGlobalLightingSingleton : UObject
---@field MasterMap TMap<TWeakObjectPtr<UWorld>, FGlobalLightingMasterStack>
---@field BlendableListMap TMap<TWeakObjectPtr<UWorld>, FGlobalLightingBlendableList>
---@field WorldBaseHeightMap TMap<TWeakObjectPtr<UWorld>, UWorldBaseHeightSingleton>
local UGlobalLightingSingleton = {}

---@param BlendableLightingObject UObject
function UGlobalLightingSingleton:RegisterGlobalLightingObject(BlendableLightingObject) end
---@param BlendableLightingObject UObject
---@param registered boolean
function UGlobalLightingSingleton:IsRegisteredGlobalLightingObject(BlendableLightingObject, registered) end
---@param BlendableLightingObject UObject
function UGlobalLightingSingleton:DeregisterGlobalLightingObject(BlendableLightingObject) end


---@class UProbeLightingParams : UObject
local UProbeLightingParams = {}


---@class UProbeLightingParamsAdjustments : UProbeLightingParams
---@field Parameters FProbeLightingAdjustmentParameters
local UProbeLightingParamsAdjustments = {}



---@class UProbeLightingParamsAdjustmentsOverride : UProbeLightingParams
---@field Parameters FProbeLightingAdjustmentParametersOverride
local UProbeLightingParamsAdjustmentsOverride = {}



---@class UProbeLightingParamsContactShadows : UProbeLightingParams
---@field Parameters FProbeContactShadowsParameters
local UProbeLightingParamsContactShadows = {}



---@class UProbeLightingParamsContactShadowsOverride : UProbeLightingParams
---@field Parameters FProbeContactShadowsParametersOverride
local UProbeLightingParamsContactShadowsOverride = {}



---@class UProbeLightingParamsFull : UProbeLightingParams
---@field Parameters FProbeLightingParameters
local UProbeLightingParamsFull = {}



---@class UProbeLightingParamsOverride : UProbeLightingParams
---@field Parameters FProbeLightingParametersOverride
local UProbeLightingParamsOverride = {}



---@class UProbeLightingParamsToneMap : UProbeLightingParams
---@field Parameters FProbeLightingToneMapParameters
local UProbeLightingParamsToneMap = {}



---@class UProbeLightingParamsToneMapOverride : UProbeLightingParams
---@field Parameters FProbeLightingToneMapParametersOverride
local UProbeLightingParamsToneMapOverride = {}



---@class USkyAtmosphereLibrary : UBlueprintFunctionLibrary
local USkyAtmosphereLibrary = {}

---@param WorldContextObject UObject
---@param Luminance float
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunZenithLuminance(WorldContextObject, Luminance, DirectionalLight) end
---@param WorldContextObject UObject
---@param SunColor FLinearColor
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunZenithColor(WorldContextObject, SunColor, DirectionalLight) end
---@param WorldContextObject UObject
---@param SunDirection FVector
---@param Luminance float
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunLuminanceFromDirection(WorldContextObject, SunDirection, Luminance, DirectionalLight) end
---@param WorldContextObject UObject
---@param Params FGlobalLightingSunColorParams
---@param SunAngle float
---@param Luminance float
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunLuminance(WorldContextObject, Params, SunAngle, Luminance, DirectionalLight) end
---@param WorldContextObject UObject
---@param SunDirection FVector
---@param SunColor FLinearColor
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunColorFromDirection(WorldContextObject, SunDirection, SunColor, DirectionalLight) end
---@param WorldContextObject UObject
---@param Params FGlobalLightingSunColorParams
---@param SunAngle float
---@param SunColor FLinearColor
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunColor(WorldContextObject, Params, SunAngle, SunColor, DirectionalLight) end
---@param WorldContextObject UObject
---@param BaseSunColor FLinearColor
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GetSunBaseColor(WorldContextObject, BaseSunColor, DirectionalLight) end
---@param WorldContextObject UObject
---@param CurveParams FGlobalLightingGenerateSunColorCurve
---@param SunColorCurve UCurveLinearColor
---@param DirectionalLight ESkyAtmosphereDirectionalLight
---@return boolean
function USkyAtmosphereLibrary:GenerateSunColorCurve(WorldContextObject, CurveParams, SunColorCurve, DirectionalLight) end


---@class USkyAtmosphereParams : UObject
local USkyAtmosphereParams = {}


---@class USkyAtmosphereParamsFull : USkyAtmosphereParams
---@field Parameters FSkyAtmosphereParameters
local USkyAtmosphereParamsFull = {}



---@class USkyAtmosphereParamsOverrideArtDirection : USkyAtmosphereParams
---@field ArtDirection FSkyAtmosphereArtDirectionParametersOverride
local USkyAtmosphereParamsOverrideArtDirection = {}



---@class USkyAtmosphereParamsOverrideFull : USkyAtmosphereParams
---@field Parameters FSkyAtmosphereParametersOverride
local USkyAtmosphereParamsOverrideFull = {}



---@class USkyAtmosphereParamsOverrideOzone : USkyAtmosphereParams
---@field Ozone FSkyAtmosphereOzoneParametersOverride
local USkyAtmosphereParamsOverrideOzone = {}



---@class USkyAtmosphereParamsOverrideScattering : USkyAtmosphereParams
---@field Scattering FSkyAtmosphereScatteringParametersOverride
local USkyAtmosphereParamsOverrideScattering = {}



---@class USkyAtmosphereParamsOverrideSkyOnly : USkyAtmosphereParams
---@field SkyOnly FSkyAtmosphereSkyOnlyParametersOverride
local USkyAtmosphereParamsOverrideSkyOnly = {}



---@class USkyLightParams : UObject
local USkyLightParams = {}


---@class USkyLightParamsFull : USkyLightParams
---@field Parameters FSkyLightLightingParameters
local USkyLightParamsFull = {}



---@class USkyLightParamsHemisphere : USkyLightParams
---@field Hemisphere FSkyLightHemisphereParameters
local USkyLightParamsHemisphere = {}



---@class USkyLightParamsOverrideAdvanced : USkyLightParams
---@field Advanced FSkyLightAdvancedParametersOverride
local USkyLightParamsOverrideAdvanced = {}



---@class USkyLightParamsOverrideBasic : USkyLightParams
---@field Basic FSkyLightBasicParametersOverride
local USkyLightParamsOverrideBasic = {}



---@class USkyLightParamsOverrideDFAO : USkyLightParams
---@field DFAO FSkyLightDFAOParametersOverride
local USkyLightParamsOverrideDFAO = {}



---@class USkyLightParamsOverrideFull : USkyLightParams
---@field Parameters FSkyLightLightingParametersOverride
local USkyLightParamsOverrideFull = {}



---@class USkyLightParamsOverrideHemisphere : USkyLightParams
---@field Hemisphere FSkyLightHemisphereParametersOverride
local USkyLightParamsOverrideHemisphere = {}



---@class USkyLightParamsRelativeBasic : USkyLightParams
---@field Basic FSkyLightBasicParametersRelative
local USkyLightParamsRelativeBasic = {}



---@class USkyLightParamsSimple : USkyLightParams
---@field Basic FSkyLightBasicParameters
local USkyLightParamsSimple = {}



---@class USkyOnlyComponent : UStaticMeshComponent
---@field SingleDirectionalLightMaterial UMaterialInterface
---@field DualDirectionalLightMaterial UMaterialInterface
---@field Parameters FSkyAtmosphereSkyOnlyParameters
---@field SingleDirectionalLightMaterialOverride UMaterialInterface
---@field DualDirectionalLightMaterialOverride UMaterialInterface
local USkyOnlyComponent = {}



---@class UWorldBaseHeightSingleton : UObject
---@field Base FWorldBaseHeights
---@field Offsets FWorldBaseHeightsTracker
---@field Final FWorldBaseHeights
---@field UpdateDisable int32
---@field OwningWorld UWorld
---@field SetFogComponent TWeakObjectPtr<UExponentialHeightFogComponent>
---@field SetCloudsComponent TWeakObjectPtr<UVolumetricCloudsComponent>
---@field SetAtmosphereComponent TWeakObjectPtr<USceneComponent>
---@field CachedFogComponent TWeakObjectPtr<UExponentialHeightFogComponent>
---@field CachedCloudsComponent TWeakObjectPtr<UVolumetricCloudsComponent>
---@field CachedAtmosphereComponent TWeakObjectPtr<USceneComponent>
---@field BaseOverrides TArray<TWeakObjectPtr<AActor>>
---@field BaseHeightObjects TArray<TWeakObjectPtr<UObject>>
local UWorldBaseHeightSingleton = {}



