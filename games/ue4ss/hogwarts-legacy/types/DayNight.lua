---@meta

---@class ADayNightBasisVolume : AVolume
---@field BasisOverride UEphemerisBasis
---@field Priority float
---@field bUnbounded boolean
---@field bEnabled boolean
local ADayNightBasisVolume = {}

---@param NewPriority float
function ADayNightBasisVolume:SetPriority(NewPriority) end


---@class ADayNightMaster : AActor
---@field DayNightMaster UDayNightMasterComponent
---@field bAutoFindSkyActor boolean
local ADayNightMaster = {}



---@class ADayNightMasterComputeOnly : AActor
---@field DayNightMaster UDayNightMasterComponent
local ADayNightMasterComputeOnly = {}



---@class ADayNightSky : AActor
---@field DayNightMaster UDayNightMasterComponent
---@field TrackEyeXYRoot USceneComponent
---@field GlobalLightingBlendable UGlobalLightingBlendableDayNightSky
---@field GlobalLightingBlendablePriority float
---@field SunDisk FSunDisk
---@field MoonDisk FMoonDisk
---@field Planets FPlanetParams
---@field Venus FPlanet
---@field Mars FPlanet
---@field Jupiter FPlanet
---@field Saturn FPlanet
---@field MilkyWay FMilkyWay
---@field StarFieldSystem TSoftObjectPtr<UNiagaraSystem>
---@field HighlightStarFieldSystem TSoftObjectPtr<UNiagaraSystem>
---@field StarField UNiagaraStarrySkySwitchableHighlightComponent
---@field MoonParameters FStarrySkyCurveParameters
---@field CurrentMoonParameters FStarrySkyParameters
---@field HideStarsNormalizedTime FVector2D
---@field NightSkyVisibilityBlendDomain URenderSettingsBlendDomainAsset
---@field NightSkyVisibilityBlendDomainThreshold float
---@field bEnableSunDisk boolean
---@field bUseActorZForWorldOrigin boolean
---@field bUseHideStarsNormalizedTime boolean
---@field Compass UDayNightCompass
local ADayNightSky = {}

---@param WorldContextObject UObject
---@param DayNightSkyActor ADayNightSky
function ADayNightSky:GetDayNightSky(WorldContextObject, DayNightSkyActor) end
function ADayNightSky:EditLightRig() end
function ADayNightSky:EditBasis() end


---@class ADayNightVolume : AVolume
---@field OverrideBasis UEphemerisBasis
---@field bUseMasterDate boolean
---@field TimeSourceStack FTimeDateSourceStackVolume
---@field TimeController FTimeController
---@field EphemerisProgram TArray<UEphemerisSubroutine>
---@field EphemerisComputer FEphemerisComputer
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
---@field bAppendToMasterEphemerisProgram boolean
---@field LastUpdate float
---@field InitializedComputer int32
---@field AppendedEphemerisProgram TArray<UEphemerisSubroutine>
---@field bMasterTimeApplied boolean
local ADayNightVolume = {}

---@param NewPriority float
function ADayNightVolume:SetPriority(NewPriority) end


---@class AUberExposureActor : AActor
---@field Component UUberExposureComponent
local AUberExposureActor = {}



---@class FAziAltTime
---@field AziAlt FAzimuthAltitude
---@field DateTime FDateTime
local FAziAltTime = {}



---@class FAzimuthAltitude
---@field Azimuth float
---@field Altitude float
local FAzimuthAltitude = {}



---@class FAzimuthAltitudeDegrees
---@field AzimuthDegrees float
---@field AltitudeDegrees float
local FAzimuthAltitudeDegrees = {}



---@class FCelestialDiskMeshParameters
---@field MeshSlices int32
---@field MeshRadius float
---@field bUVAsAngleRadius boolean
local FCelestialDiskMeshParameters = {}



---@class FCelestialHaloMeshParameters
---@field MeshSlices int32
---@field MeshInnerRadius float
---@field MeshOuterRadius float
---@field bUVAsAngleRadius boolean
local FCelestialHaloMeshParameters = {}



---@class FCelestialPointOfInterest
---@field Name FName
---@field Type ECelestialPointOfInterestType
---@field AzimuthDegrees float
---@field AltitudeDegrees float
---@field TopographicDirection FVector
---@field HighlightConstellation FName
---@field HighlightStar FName
local FCelestialPointOfInterest = {}



---@class FCelestialPointOfInterestEntry : FTableRowBase
---@field Type ECelestialPointOfInterestType
---@field HighlightConstellation FName
---@field HighlightStar FName
---@field RightAscentionHours float
---@field RightAscentionMinutes float
---@field RightAscentionSeconds float
---@field DeclinationDegrees float
---@field DeclinationMinutes float
---@field DeclinationSeconds float
local FCelestialPointOfInterestEntry = {}



---@class FCelestialPointOfInterestName
---@field Name FName
local FCelestialPointOfInterestName = {}



---@class FCelestialPointOfInterestResolvedEntry : FTableRowBase
---@field Name FName
---@field Type ECelestialPointOfInterestType
---@field DirectionToStar FVector
---@field HighlightConstellation FName
---@field HighlightStar FName
local FCelestialPointOfInterestResolvedEntry = {}



---@class FDateInput
---@field Month EDateTimeMonth
---@field Day int32
---@field Year int32
local FDateInput = {}



---@class FDateTimeInput
---@field Month EDateTimeMonth
---@field Day int32
---@field Year int32
---@field Hour int32
---@field AmPm EHourAmPm
---@field Minute int32
local FDateTimeInput = {}



---@class FDateTimeScenario : FTableRowBase
---@field Month int32
---@field Day int32
---@field Year int32
---@field Hour int32
---@field Minute int32
local FDateTimeScenario = {}



---@class FDayNightCSVReportOptions
---@field GeneralOptions int32
---@field DayNightOptions int32
---@field LightRigOptions int32
---@field LightingOptions int32
---@field AtmosphereOptions int32
---@field FogOptions int32
---@field ExposureOptions int32
---@field EmissiveAdaptationOptions int32
---@field bEverything boolean
local FDayNightCSVReportOptions = {}



---@class FDayNightCloudSceneLighting
---@field LightDirection EDayNightCloudSceneLightingSource
---@field LightColor EDayNightCloudSceneLightingSource
---@field LightIntensity EDayNightCloudSceneLightingSource
---@field Saturation float
---@field ManualLightDirection FRotator
---@field ManualLightColor FLinearColor
---@field ManualLightIntensity float
local FDayNightCloudSceneLighting = {}



---@class FDayNightCloudSceneLightingOverride
---@field LightDirection EDayNightCloudSceneLightingSource
---@field LightColor EDayNightCloudSceneLightingSource
---@field LightIntensity EDayNightCloudSceneLightingSource
---@field Saturation float
---@field ManualLightDirection FRotator
---@field ManualLightColor FLinearColor
---@field ManualLightIntensity float
---@field bOverride_LightDirection boolean
---@field bOverride_LightColor boolean
---@field bOverride_LightIntensity boolean
---@field bOverride_Saturation boolean
local FDayNightCloudSceneLightingOverride = {}



---@class FDayNightCompassParams
---@field RadiusMeters float
---@field Scale float
---@field OffsetMeters float
---@field WorldAzimuthOffsetDegrees float
local FDayNightCompassParams = {}



---@class FDayNightEventSystem
---@field EventMap TMap<TWeakObjectPtr<UObject>, FDayNightReceiverEvents>
---@field LastStates TArray<FDayNightEventSystemLastState>
---@field GlobalEventMap TMap<FName, FDayNightGlobalEvents>
---@field GlobalLastState FDayNightEventSystemLastState
---@field GlobalCurrentState FDayNightEventsCurrentState
local FDayNightEventSystem = {}



---@class FDayNightEventSystemLastState
---@field DateTime FDateTime
---@field SunAltitude float
---@field MoonAltitude float
---@field bFirstRun boolean
local FDayNightEventSystemLastState = {}



---@class FDayNightEventTrackers
local FDayNightEventTrackers = {}


---@class FDayNightEventsCurrentAltitude
---@field Altitude float
---@field Direction EDayNightEventDirection
---@field bValid boolean
local FDayNightEventsCurrentAltitude = {}



---@class FDayNightEventsCurrentState
---@field NormalizedTime float
---@field GameDateTime FDateTime
---@field DeltaTime FTimespan
---@field Sun FDayNightEventsCurrentAltitude
---@field Moon FDayNightEventsCurrentAltitude
---@field MoonPhase EMoonPhaseName
---@field bValid boolean
local FDayNightEventsCurrentState = {}



---@class FDayNightGameTimeEvent
---@field GameTime FTimeInput
---@field bAllowFireOnBeginPlay boolean
---@field bAllowFireOnDiscontinuity boolean
local FDayNightGameTimeEvent = {}



---@class FDayNightGlobalEvents : FDayNightEventTrackers
local FDayNightGlobalEvents = {}


---@class FDayNightLightControllerDirectionalBoost
---@field LightHalfAngleMin float
---@field LightHalfAngleMax float
---@field BoostPercentage float
local FDayNightLightControllerDirectionalBoost = {}



---@class FDayNightLightRigOverride
---@field DirectionalLight FDirectionalLightBasicParametersOverride
---@field DirectionalLightShafts FDirectionalLightShaftsOverride
---@field SkyLight FSkyLightBasicParametersOverride
---@field SkyLightHemisphere FSkyLightHemisphereParametersOverride
---@field SkyAtmosphere FSkyAtmosphereParametersOverride
---@field CloudLighting FVolumetricCloudsBasicParametersOverride
---@field CloudsAdvanced FVolumetricCloudsAdvancedParametersOverride
---@field CloudsShadows FVolumetricCloudsShadowParametersOverride
---@field CloudsSkyLight FVolumetricCloudsSkyLightParametersOverride
---@field CloudSceneLighting FDayNightCloudSceneLightingOverride
---@field ProbeLightingAdjustments FProbeLightingAdjustmentParametersOverride
---@field ProbeLightingToneMap FProbeLightingToneMapParametersOverride
---@field ProbeContactShadows FProbeContactShadowsParametersOverride
local FDayNightLightRigOverride = {}



---@class FDayNightLightRigResults
---@field ActiveLight FDayNightLightRigState
---@field Sunlight FDayNightLightRigState
---@field MoonLight FDayNightLightRigState
---@field Night0Day1 float
---@field SunLightInfluence float
---@field MoonLightInfluence float
---@field LightSource EDayNightLightSource
---@field Time FLightParameterSmoothingTime
---@field BlendOps int32
---@field SunAltitudeDegrees float
---@field MoonAltitudeDegrees float
---@field NormalizedTime float
---@field bUsingSecondaryDirectionalLight boolean
---@field DebugModReport FString
local FDayNightLightRigResults = {}



---@class FDayNightLightRigSetup
---@field DirectionalLight FDirectionalLightBasicParameters
---@field DirectionalLightShafts FDirectionalLightShafts
---@field SkyLight FSkyLightBasicParameters
---@field SkyLightHemisphere FSkyLightHemisphereParameters
---@field SkyAtmosphere FSkyAtmosphereParameters
---@field CloudLighting FVolumetricCloudsBasicParameters
---@field CloudsAdvanced FVolumetricCloudsAdvancedParameters
---@field CloudsShadows FVolumetricCloudsShadowParameters
---@field CloudsSkyLight FVolumetricCloudsSkyLightParameters
---@field CloudSceneLighting FDayNightCloudSceneLighting
---@field CloudsSceneLight FVolumetricCloudsSceneLightParameters
---@field ProbeLightingAdjustments FProbeLightingAdjustmentParameters
---@field ProbeLightingToneMap FProbeLightingToneMapParameters
---@field ProbeContactShadows FProbeContactShadowsParameters
local FDayNightLightRigSetup = {}



---@class FDayNightLightRigState : FDayNightLightRigSetup
---@field Direction FVector
local FDayNightLightRigState = {}



---@class FDayNightLightRigStateWithTime : FDayNightLightRigState
---@field Time FLightParameterSmoothingTime
local FDayNightLightRigStateWithTime = {}



---@class FDayNightLightSkyAtmosphereComputeDirLight
---@field Direction FVector
---@field Color FLinearColor
---@field ColorMod FLinearColor
---@field Intensity float
---@field SkyIntensityMod float
---@field AltitudeDegrees float
---@field Priority float
local FDayNightLightSkyAtmosphereComputeDirLight = {}



---@class FDayNightLightSkyAtmosphereComputeDirectionalLightParams
---@field LightIntensityMod float
---@field SkyIntensityMod float
---@field ColorMod FLinearColor
---@field FullColorDegrees float
---@field NoColorDegrees float
---@field FullIntensityDegrees float
---@field MinIntensityDegrees float
---@field StartFadeIntensityDegrees float
---@field EndFadeIntensityDegrees float
local FDayNightLightSkyAtmosphereComputeDirectionalLightParams = {}



---@class FDayNightLightSkyAtmosphereComputeParams
---@field SunParams FDayNightLightSkyAtmosphereComputeDirectionalLightParams
---@field MoonParams FDayNightLightSkyAtmosphereComputeDirectionalLightParams
---@field DirectionParams FDayNightLightSkyAtmosphereComputeSampleDirectionParams
---@field Desaturation float
---@field bDesaturateWithOvercast boolean
local FDayNightLightSkyAtmosphereComputeParams = {}



---@class FDayNightLightSkyAtmosphereComputeSampleDirectionParams
---@field SampleOffsetAltitudeDegrees float
---@field MinimumSampleAltitudeDegrees float
---@field MaximumSampleAltitudeDegrees float
---@field bMirrorLowerHemisphere boolean
---@field bUseMinimumSampleAltitudeDegrees boolean
---@field bUseMaximumSampleAltitudeDegrees boolean
local FDayNightLightSkyAtmosphereComputeSampleDirectionParams = {}



---@class FDayNightMasterComputeOnlyPerLevel
---@field Level FName
---@field LevelPartialMatch FString
---@field ComputeDefault TSubclassOf<ADayNightMasterComputeOnly>
---@field bUseSubString boolean
local FDayNightMasterComputeOnlyPerLevel = {}



---@class FDayNightMoonAltitudeEvent
---@field MoonAltitudeDegrees float
---@field MoonPhase EMoonPhaseName
---@field NightThreshold float
---@field DirectionTrigger EDayNightEventDirectionTrigger
---@field bAllowFireOnBeginPlay boolean
---@field bAllowFireOnDiscontinuity boolean
---@field bUseMoonPhase boolean
---@field bUseNightThreshold boolean
local FDayNightMoonAltitudeEvent = {}



---@class FDayNightNormalizedTimeEvent
---@field NormalizedTime FTimeInput
---@field bAllowFireOnBeginPlay boolean
---@field bAllowFireOnDiscontinuity boolean
local FDayNightNormalizedTimeEvent = {}



---@class FDayNightReceiverEvents : FDayNightEventTrackers
local FDayNightReceiverEvents = {}


---@class FDayNightSunAltitudeChangeEvent
---@field SunAltitudeChangeDegrees float
---@field Direction EDayNightEventDirectionTrigger
---@field SunMinAltitudeDegrees float
---@field SunMaxAltitudeDegrees float
---@field bAllowFireOnBeginPlay boolean
---@field bAllowFireOnDiscontinuity boolean
local FDayNightSunAltitudeChangeEvent = {}



---@class FDayNightSunAltitudeEvent
---@field SunAltitudeDegrees float
---@field DirectionTrigger EDayNightEventDirectionTrigger
---@field bAllowFireOnBeginPlay boolean
---@field bAllowFireOnDiscontinuity boolean
local FDayNightSunAltitudeEvent = {}



---@class FDayNightWorldInfo
---@field LevelDefaultBasis UEphemerisBasis
---@field ForceBasis UEphemerisBasis
---@field OverrideBasis UEphemerisBasis
---@field Master UDayNightMasterComponent
---@field DayNightOverrides TArray<TWeakObjectPtr<UObject>>
---@field BasisOverrides TArray<TWeakObjectPtr<UObject>>
---@field LightControllers TSet<TWeakObjectPtr<UDayNightLightControllerComponent>>
---@field TimeOverrides FTimeOverrides
---@field SkyStateOverrides FSkyStateOverrides
---@field EventSystem FDayNightEventSystem
---@field bEventSystemReset boolean
---@field bMissingComputeMasterTemplate boolean
local FDayNightWorldInfo = {}



---@class FDirLightPseudoFadeCustomBlendableInterval
---@field StartTime FGlobalLightingCustomBlendableNameTime
---@field EndTime FGlobalLightingCustomBlendableNameTime
---@field FadeTime FGlobalLightingCustomBlendableNameTime
---@field Disabled FGlobalLightingCustomBlendableNameScalar
local FDirLightPseudoFadeCustomBlendableInterval = {}



---@class FDirLightPseudoFadeTimeInterval
---@field StartTime FTimeInput
---@field EndTime FTimeInput
---@field FadeTimeHours float
local FDirLightPseudoFadeTimeInterval = {}



---@class FEarthShadow
---@field MeshComponent UStaticMeshComponent
---@field Mesh UStaticMesh
---@field ZOffsetMeters float
---@field ScaleXY float
---@field bZOffsetRelativeToWorldMinZ boolean
local FEarthShadow = {}



---@class FEphemeralCelestialSphereState
---@field Rotator FRotator
---@field Rotation FQuat
local FEphemeralCelestialSphereState = {}



---@class FEphemeralMoonState : FTopographicDirection
---@field Up FVector
---@field Right FVector
---@field LocalSunLight FVector
---@field UnitSize float
---@field Phase float
---@field DiskPhase float
---@field PhaseName EMoonPhaseName
---@field Blood float
---@field MoonPeriodDaysOverride float
---@field DiskScale float
---@field AboveHorizon float
---@field Visibility float
---@field SunAngleDegrees float
local FEphemeralMoonState = {}



---@class FEphemeralPlanetState : FTopographicDirection
---@field SunLighting float
---@field SunAngleDegrees float
local FEphemeralPlanetState = {}



---@class FEphemeralSkyState
---@field Basis UEphemerisBasis
---@field DateTime FDateTime
---@field Sun FEphemeralSunState
---@field Sunlight FTopographicDirection
---@field SunDisk FTopographicDirection
---@field OverrideSunDateTime FDateTime
---@field NormalizedTime FSolarNormalizedTime
---@field Moon FEphemeralMoonState
---@field MoonLight FTopographicDirection
---@field Venus FEphemeralPlanetState
---@field Mars FEphemeralPlanetState
---@field Jupiter FEphemeralPlanetState
---@field Saturn FEphemeralPlanetState
---@field CelestialSphere FEphemeralCelestialSphereState
---@field NightDayNegOneToOne float
---@field NightDayLerp float
---@field NightLerp float
---@field DayLerp float
---@field NightSkyStrength float
---@field bTimeLerped boolean
---@field bNormalizedTimeValid boolean
---@field bSunValid boolean
---@field bMoonValid boolean
---@field bPlanetsValid boolean
---@field bCelestialSphereValid boolean
---@field bComputed boolean
---@field bUsingSecondaryDirectionalLight boolean
local FEphemeralSkyState = {}



---@class FEphemeralSunState : FTopographicDirection
---@field DiskScale float
---@field Visibility float
local FEphemeralSunState = {}



---@class FEphemerisBasisPerLevel
---@field Level FName
---@field LevelPartialMatch FString
---@field Basis UEphemerisBasis
---@field bUseSubString boolean
local FEphemerisBasisPerLevel = {}



---@class FEphemerisComputer
---@field AstronomicalDayInfo FEphemerisDayInfo
---@field DayInfo FEphemerisDayInfo
---@field Basis UEphemerisBasis
---@field SubroutineData TMap<UEphemerisSubroutine, UObject>
local FEphemerisComputer = {}



---@class FEphemerisDayInfo
---@field Date FDateTime
---@field SunRise FAziAltTime
---@field SunSet FAziAltTime
---@field SolarTransit FAziAltTime
---@field SolarMidnight FAziAltTime
---@field DayLength FTimespan
---@field SunRiseTime FTimespan
---@field SunSetTime FTimespan
---@field SolarTransitTime FTimespan
---@field SolarMidnightTime FTimespan
---@field bSunRiseValid boolean
---@field bSunSetValid boolean
local FEphemerisDayInfo = {}



---@class FEphemerisSubroutineIdealSunPathPreview
---@field DayInfo FEphemerisDayInfo
---@field AzimuthCurve FRuntimeFloatCurve
---@field AltitudeCurve FRuntimeFloatCurve
local FEphemerisSubroutineIdealSunPathPreview = {}



---@class FFixedSunPosition
---@field Type EFixedSunPositionType
---@field Direction FVector
---@field AltitudeDegrees float
---@field AzimuthDegrees float
---@field StartTime FTimespan
---@field EndTime FTimespan
local FFixedSunPosition = {}



---@class FFixedSunPositionInput
---@field Altitude float
---@field Type EFixedSunPositionInputType
local FFixedSunPositionInput = {}



---@class FGeocentricOrbit
---@field Resources FGeocentricOrbitResources
---@field Spline USplineComponent
---@field SplineMeshRoot USceneComponent
---@field Extras TArray<USceneComponent>
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
---@field SplineMeshes TArray<USplineMeshComponent>
local FGeocentricOrbit = {}



---@class FGeocentricOrbitCreateBaseParams
---@field Name FName
---@field RadiusMeters float
---@field TagColor FColor
---@field TagScale FVector2D
---@field bLinear boolean
---@field bShowTags boolean
---@field bShowBasis boolean
---@field bDebugDraw boolean
---@field bHiddenInGame boolean
local FGeocentricOrbitCreateBaseParams = {}



---@class FGeocentricOrbitCreateParams : FGeocentricOrbitCreateBaseParams
---@field TopographicPosition FTopographicObserver
---@field StartDateTime FDateTime
---@field Samples int32
local FGeocentricOrbitCreateParams = {}



---@class FGeocentricOrbitInputPoint
---@field TopographicDir FVector
---@field Up FVector
---@field Right FVector
---@field LocalSunLight FVector
---@field AzimuthAltitude FAzimuthAltitudeDegrees
---@field StartDateTime FDateTime
---@field EndDateTime FDateTime
---@field Extra FString
---@field Phase int32
---@field bBasisValid boolean
---@field bTimeOnly boolean
---@field bSubsample boolean
local FGeocentricOrbitInputPoint = {}



---@class FGeocentricOrbitPoint
---@field TopographicDir FVector
---@field Up FVector
---@field Right FVector
---@field AzimuthAltitude FAzimuthAltitudeDegrees
---@field bBasisValid boolean
local FGeocentricOrbitPoint = {}



---@class FGeocentricOrbitResources
---@field MarkerMesh UStaticMesh
---@field MarkerMaterial UMaterialInterface
---@field TextMaterial UMaterialInterface
---@field VectorMesh UStaticMesh
---@field VectorMaterial UMaterialInterface
local FGeocentricOrbitResources = {}



---@class FGeocentricOrbitsAdvanced
---@field Samples int32
---@field SubSamples int32
---@field TagScale FVector2D
---@field OrbitRadiusMeters float
---@field SplineMeshScale float
---@field bHideAzimuthAltitude boolean
---@field SunTextColor FColor
---@field MoonTextColor FColor
---@field VenusTextColor FColor
---@field MarsTextColor FColor
---@field JupiterTextColor FColor
---@field SaturnTextColor FColor
local FGeocentricOrbitsAdvanced = {}



---@class FGeocentricOrbitsShow
---@field bSunPath boolean
---@field bShowSunExtra boolean
---@field bMoonPath boolean
---@field bShowMoonPhase boolean
---@field bVenusPath boolean
---@field bMarsPath boolean
---@field bJupiterPath boolean
---@field bSaturnPath boolean
local FGeocentricOrbitsShow = {}



---@class FLightParameterSmoothingDeltaTime
---@field DeltaRealTimeSeconds float
---@field DeltaTimeOfDayHours float
---@field DeltaNormalizedTimeHours float
local FLightParameterSmoothingDeltaTime = {}



---@class FLightParameterSmoothingDiscontinuitySettings
---@field MaxDeltaRealTimeSeconds float
---@field MaxDeltaTimeOfDayHours float
---@field MaxDeltaNormalizedTimeHours float
local FLightParameterSmoothingDiscontinuitySettings = {}



---@class FLightParameterSmoothingTime
---@field RealTime float
---@field TimeOfDay FDateTime
---@field NormalizedTime float
local FLightParameterSmoothingTime = {}



---@class FLightProbeCaptureSetupComputer
---@field DayInfo FEphemerisDayInfo
---@field CaptureTimeIntervals TArray<FLightProbeCaptureTimeInterval>
local FLightProbeCaptureSetupComputer = {}



---@class FLightProbeCaptureTimeInput
---@field Time FTimeInput
---@field LerpCurve UCurveFloat
---@field bFlipLerpCurveT boolean
local FLightProbeCaptureTimeInput = {}



---@class FLightProbeCaptureTimeInterval
---@field CaptureDateTime FDateTime
---@field NormalizedStartTime float
---@field DurationHours float
---@field TimeLerpCurve FRuntimeFloatCurve
---@field bFlipTimeLerpCurveT boolean
local FLightProbeCaptureTimeInterval = {}



---@class FLightProbeCaptureTimeSlot : FWLightProbesCaptureEvaluator
---@field Computer FLightProbeCaptureSetupComputer
---@field ProbesBlendData FWLightProbesBlendData
local FLightProbeCaptureTimeSlot = {}



---@class FManualMoonSetup
---@field Phase EMoonPhaseName
---@field PhasePercent float
---@field LightingAngle float
---@field SizeFactorPercent float
---@field BloodPercent float
---@field bOverride_Phase boolean
---@field bOverride_SizeFactor boolean
---@field bOverride_Blood boolean
local FManualMoonSetup = {}



---@class FMilkyWay
---@field Mesh UStaticMesh
---@field MeshComponent UStaticMeshComponent
---@field OriginalMaterials TArray<UMaterialInterface>
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
---@field BaseBrightness float
---@field Contrast float
---@field Desaturation float
---@field SolidColor FLinearColor
---@field SolidColorBlend float
---@field AlphaEdgePower float
---@field MoonBrightnessModifier UCurveFloat
---@field MoonFadePower UCurveFloat
---@field Correction FMilkyWayCorrection
---@field bCorrection boolean
local FMilkyWay = {}



---@class FMilkyWayCorrection
---@field Rotation FVector
---@field VCorrect float
local FMilkyWayCorrection = {}



---@class FMoonDisk
---@field MeshComponent UProceduralMeshComponent
---@field BaseMaterial UMaterial
---@field MaterialParameterCollection UMaterialParameterCollection
---@field DynamicMaterial UMaterialInstanceDynamic
---@field Parameters FMoonDiskParameters
---@field CurrentState FMoonDiskComputedState
---@field MeshParameters FCelestialDiskMeshParameters
local FMoonDisk = {}



---@class FMoonDiskComputedState
---@field State FMoonDiskState
---@field Distance float
---@field size float
---@field Brightness float
---@field Earthshine float
---@field MoonCosineRadius float
local FMoonDiskComputedState = {}



---@class FMoonDiskParameters
---@field DayEmissiveTarget float
---@field DayEmissiveMax float
---@field NightEmissiveTarget float
---@field NightEmissiveMax float
---@field Earthshine float
---@field EarthShineMax float
---@field EarthShineWinterFactor float
---@field SunMoonFullWashoutAngle float
---@field SunMoonNoWashoutAngle float
---@field AlbedoFloor float
---@field DetailScale float
---@field SpaceLightingPower float
---@field size float
---@field Distance float
local FMoonDiskParameters = {}



---@class FMoonDiskState
---@field MoonDir FVector
---@field MoonUp FVector
---@field SizeFactor float
---@field Phase float
---@field Sunlight FVector
---@field LocalSunLight FVector
---@field UnitSunIntensity float
---@field MoonAltitudeAngle float
---@field SunAltitudeAngle float
---@field SunMoonAngle float
---@field SunWashoutStrength float
---@field IllusionScale float
---@field BloodFactor float
---@field bValid boolean
local FMoonDiskState = {}



---@class FMoonPath
---@field Date FDateTime
---@field MoonAltitudeVsMoonAzimuth FRuntimeFloatCurve
---@field MoonUpVsMoonAzimuth FRuntimeCurveVector
---@field MoonRightVsMoonAzimuth FRuntimeCurveVector
---@field MoonAzisVsMoonAltitude FRuntimeCurveVector
local FMoonPath = {}



---@class FMoonPathSettings
---@field SamplePoints int32
---@field CubicTension float
---@field bHighAccuracyPosition boolean
---@field bTrueTopoCentric boolean
---@field bRemoveRedundantKeys boolean
---@field bCubicInterpolation boolean
local FMoonPathSettings = {}



---@class FNightLightRigLerpParameterAtlas
---@field LerpAtlas FLerpParameterAtlas
---@field LerpT float
local FNightLightRigLerpParameterAtlas = {}



---@class FPlanet
---@field MeshComponent UProceduralMeshComponent
---@field DynamicMaterial UMaterialInstanceDynamic
---@field Name FName
---@field Color FLinearColor
---@field Brightness float
---@field DayModulate float
---@field SizeModulate float
local FPlanet = {}



---@class FPlanetParams
---@field BaseMaterial UMaterialInterface
local FPlanetParams = {}



---@class FProceduralQuadParams
---@field XSize float
---@field YSize float
---@field DefaultZ float
---@field UVTiling float
---@field bUseUVs boolean
---@field bHasCollision boolean
---@field VertexColor FColor
---@field bUseVertexColors boolean
---@field bCreateNormals boolean
---@field bCreateTangents boolean
local FProceduralQuadParams = {}



---@class FSkyStateOverrides
---@field SkyStateOverrides TArray<TWeakObjectPtr<UObject>>
local FSkyStateOverrides = {}



---@class FSolarDay
---@field DayInfo FEphemerisDayInfo
---@field AzimuthCurve FRichCurve
---@field AltitudeCurve FRichCurve
local FSolarDay = {}



---@class FSolarDayCreateParams
---@field Samples int32
---@field ErrorThreshold float
local FSolarDayCreateParams = {}



---@class FSolarNormalizedTime
---@field NormalizedTime float
local FSolarNormalizedTime = {}



---@class FStarrySkyCurveParameters
---@field IntensityMod UCurveFloat
---@field MagnitudeCutoff UCurveFloat
---@field MoonFadeRadius UCurveFloat
---@field MoonFadeHardness UCurveFloat
---@field Desaturation UCurveFloat
---@field HorizonFadePower UCurveFloat
---@field TwinkleIntensity float
---@field TwinkleSpeed float
local FStarrySkyCurveParameters = {}



---@class FStarrySkyHighlightParameters
---@field HighlightIntensity float
---@field HighlightMagnitudeEmphasis float
---@field HighlightDesaturate float
---@field HighlightUseSurge float
---@field HighlightSurgeSpeed float
---@field HighlightStarOnlyFactor float
local FStarrySkyHighlightParameters = {}



---@class FStarrySkyHighlights
---@field Constellations TArray<FName>
---@field Stars TArray<FName>
local FStarrySkyHighlights = {}



---@class FStarrySkyParameters
---@field IntensityMod float
---@field MagnitudeCutoff float
---@field MoonFadeRadius float
---@field MoonFadeHardness float
---@field Desaturation float
---@field HorizonFadePower float
---@field TwinkleIntensity float
---@field TwinkleSpeed float
local FStarrySkyParameters = {}



---@class FSunDisk
---@field MeshComponent UProceduralMeshComponent
---@field BaseMaterial UMaterial
---@field DynamicMaterial UMaterialInstanceDynamic
---@field Parameters FSunDiskParameters
---@field Corona FSunDiskCorona
---@field OverrideState FSunDiskOverrides
---@field OverrideStateLerpAlpha float
---@field CurrentState FSunDiskComputedState
---@field MeshParameters FCelestialDiskMeshParameters
local FSunDisk = {}



---@class FSunDiskComputedState
---@field State FSunDiskState
---@field Distance float
---@field size float
---@field BaseScale float
---@field Color FLinearColor
---@field Desaturation float
---@field Brightness float
---@field HorizonZ float
---@field CoronaBrightnessFactor float
---@field CoronaAlphaFactor float
local FSunDiskComputedState = {}



---@class FSunDiskCorona
---@field MeshComponent UProceduralMeshComponent
---@field BaseMaterial UMaterialInterface
---@field DynamicMaterial UMaterialInstanceDynamic
---@field BrightnessCurve UCurveFloat
---@field AlphaCurve UCurveFloat
---@field ScaleCurve UCurveFloat
---@field MeshParameters FCelestialHaloMeshParameters
---@field bEnabled boolean
local FSunDiskCorona = {}



---@class FSunDiskParameters
---@field bAreaBasedEmissive boolean
---@field BaseSizeEmissive float
---@field MinEmissive float
---@field MaxEmissive float
---@field EmissiveFactor float
---@field DiskOnlyBrightnessModCurve UCurveFloat
---@field BrightnessModCurve UCurveFloat
---@field ColorTempCurve UCurveFloat
---@field ColorCurve UCurveLinearColor
---@field bManualColoration boolean
---@field bBlackBodyColorTemp boolean
---@field bNormalizeUnrealColorTemp boolean
---@field bUseColorTemp boolean
---@field bUseBrightnessMod boolean
---@field size float
---@field Distance float
local FSunDiskParameters = {}



---@class FSunDiskState
---@field SunDir FVector
---@field SunAltitudeAngle float
---@field SunAzimuthAngle float
---@field SunIllusionScale float
---@field bValid boolean
local FSunDiskState = {}



---@class FTimeChangeRequest
---@field Year FTimeDateChangeValue
---@field Month FTimeDateChangeValue
---@field Day FTimeDateChangeValue
---@field Hours FTimeDateChangeValue
---@field Minutes FTimeDateChangeValue
---@field Seconds FTimeDateChangeValue
local FTimeChangeRequest = {}



---@class FTimeController
---@field TimeDateSource UTimeSource
---@field FilteredTime FDateTime
---@field TimeTransition FTimeLerp
---@field RateTarget float
---@field RateFilter float
local FTimeController = {}



---@class FTimeDateChangeValue
---@field Value int32
---@field Type ETimeDateChangeValueType
local FTimeDateChangeValue = {}



---@class FTimeDateSourceStack
---@field TimeSources TArray<UTimeSource>
local FTimeDateSourceStack = {}



---@class FTimeDateSourceStackVolume
---@field TimeSources TArray<UTimeSourceVolume>
local FTimeDateSourceStackVolume = {}



---@class FTimeInput
---@field Hour int32
---@field Minute int32
---@field AmPm EHourAmPm
local FTimeInput = {}



---@class FTimeLerp
---@field ChangeCurve FRichCurve
---@field StartTime FDateTime
---@field Age float
---@field CurveDuration float
---@field bEaseOut float
local FTimeLerp = {}



---@class FTimeOverrides
---@field TimeOverrides TArray<TWeakObjectPtr<UObject>>
local FTimeOverrides = {}



---@class FTimeSourceSlotSetupName
---@field Name FName
local FTimeSourceSlotSetupName = {}



---@class FTimeSourceSlotSetupTime
---@field Name FName
---@field Time FTimeInput
local FTimeSourceSlotSetupTime = {}



---@class FTimeSourceSlotValidTime
---@field Name FName
---@field DateTime FDateTime
---@field Duration FTimespan
local FTimeSourceSlotValidTime = {}



---@class FTopographicDirection
---@field Direction FVector
---@field AzimuthDegrees float
---@field AltitudeDegrees float
local FTopographicDirection = {}



---@class FTopographicObserver
---@field LatitudeDegrees float
---@field LongitudeDegrees float
---@field TimeZone int32
---@field AltitudeMeters float
---@field WorldAzimuthOffsetDegrees float
local FTopographicObserver = {}



---@class FUberExposureColorGrading
---@field bUseColorSaturation boolean
---@field bUseColorContrast boolean
---@field bUseColorGamma boolean
---@field bUseColorGain boolean
---@field bUseColorOffset boolean
---@field ColorSaturation UCurveLinearColor
---@field ColorContrast UCurveLinearColor
---@field ColorGamma UCurveLinearColor
---@field ColorGain UCurveLinearColor
---@field ColorOffset UCurveLinearColor
local FUberExposureColorGrading = {}



---@class FUberExposureColorGradingGlobal : FUberExposureColorGrading
local FUberExposureColorGradingGlobal = {}


---@class FUberExposureColorGradingGlobalValues : FUberExposureColorGradingValues
local FUberExposureColorGradingGlobalValues = {}


---@class FUberExposureColorGradingHighlights : FUberExposureColorGrading
---@field bUseHighlightsMin boolean
---@field HighlightsMin UCurveFloat
local FUberExposureColorGradingHighlights = {}



---@class FUberExposureColorGradingHighlightsValues : FUberExposureColorGradingValues
---@field HighlightsMinValue FString
local FUberExposureColorGradingHighlightsValues = {}



---@class FUberExposureColorGradingMidtones : FUberExposureColorGrading
local FUberExposureColorGradingMidtones = {}


---@class FUberExposureColorGradingMidtonesValues : FUberExposureColorGradingValues
local FUberExposureColorGradingMidtonesValues = {}


---@class FUberExposureColorGradingShadows : FUberExposureColorGrading
---@field bUseShadowsMax boolean
---@field ShadowsMax UCurveFloat
local FUberExposureColorGradingShadows = {}



---@class FUberExposureColorGradingShadowsValues : FUberExposureColorGradingValues
---@field ShadowsMaxValue FString
local FUberExposureColorGradingShadowsValues = {}



---@class FUberExposureColorGradingValues
---@field ColorSaturationValue FString
---@field ColorContrastValue FString
---@field ColorGammaValue FString
---@field ColorGainValue FString
---@field ColorOffsetValue FString
local FUberExposureColorGradingValues = {}



---@class IDayNightEventInterface : IInterface
local IDayNightEventInterface = {}

---@param DayNightMaster UDayNightMasterComponent
---@param EventName FName
---@param NormalizedTime FSolarNormalizedTime
---@param GameTime FDateTime
---@param SunDirection EDayNightEventDirection
---@param SunAltitudeDegrees float
---@param bLate boolean
function IDayNightEventInterface:DayNightSunEvent(DayNightMaster, EventName, NormalizedTime, GameTime, SunDirection, SunAltitudeDegrees, bLate) end
---@param DayNightMaster UDayNightMasterComponent
---@param EventName FName
---@param NormalizedTime FSolarNormalizedTime
---@param GameTime FDateTime
---@param MoonDirection EDayNightEventDirection
---@param MoonAltitudeDegrees float
---@param Phase EMoonPhaseName
---@param bLate boolean
function IDayNightEventInterface:DayNightMoonEvent(DayNightMaster, EventName, NormalizedTime, GameTime, MoonDirection, MoonAltitudeDegrees, Phase, bLate) end


---@class IDayNightOverrideBasisInterface : IInterface
local IDayNightOverrideBasisInterface = {}


---@class IDayNightOverrideInterface : IInterface
local IDayNightOverrideInterface = {}


---@class IDayNightSkyStateOverrideInterface : IInterface
local IDayNightSkyStateOverrideInterface = {}


---@class IDayNightTimeOverrideInterface : IInterface
local IDayNightTimeOverrideInterface = {}


---@class UBlendableDirLightPseudoFadeBase : UGlobalLightingBlendable
---@field Mode EDayNightTweakDirectionalLightMode
local UBlendableDirLightPseudoFadeBase = {}



---@class UBlendableDirLightPseudoFadeCustomBlendableInterval : UBlendableDirLightPseudoFadeIntervalBase
---@field Sun FDirLightPseudoFadeCustomBlendableInterval
---@field Moon FDirLightPseudoFadeCustomBlendableInterval
local UBlendableDirLightPseudoFadeCustomBlendableInterval = {}



---@class UBlendableDirLightPseudoFadeIntervalBase : UBlendableDirLightPseudoFadeBase
---@field bNormalizedTime boolean
local UBlendableDirLightPseudoFadeIntervalBase = {}



---@class UBlendableDirLightPseudoFadeTimeInterval : UBlendableDirLightPseudoFadeIntervalBase
---@field Sun FDirLightPseudoFadeTimeInterval
---@field Moon FDirLightPseudoFadeTimeInterval
local UBlendableDirLightPseudoFadeTimeInterval = {}



---@class UDayLightRig : UDataAsset
---@field Sun FDayNightLightRigSetup
---@field AltitudeMods TArray<ULightSettingsModCurve>
---@field TimeMods TArray<ULightSettingsModCurve>
local UDayLightRig = {}



---@class UDayNightAtmosphereLightControllerComponent : UDayNightLightControllerComponent
---@field SkyParams FDayNightLightSkyAtmosphereComputeParams
---@field Intensity UCurveFloat
---@field BaseIntensityFactor float
---@field Desaturation UCurveFloat
---@field ColorOp EDayNightLightControllerOp
---@field IntensityOp EDayNightLightControllerOp
---@field CachedZenithTransmission FLinearColor
---@field AllLightsDirection FVector
---@field bCheckedLightsSameDirection boolean
local UDayNightAtmosphereLightControllerComponent = {}



---@class UDayNightBasicLightControllerComponent : UDayNightLightControllerComponent
---@field DayColorMod FLinearColor
---@field NightColorMod FLinearColor
---@field Night0Day1ColorMod UCurveLinearColor
---@field SunLightDesaturation float
---@field DayIntensityMod float
---@field NightIntensityMod float
---@field SunLightMinMaxInensityFactor FVector2D
---@field SunDirectionalBoost FDayNightLightControllerDirectionalBoost
---@field StartNightSunAngle float
---@field FullNightSunAngle float
---@field bModulateColor boolean
---@field bModulateIntensity boolean
---@field bUseSunDirectionalBoost boolean
---@field bUseSunLightColor boolean
---@field bAttenuateDayIntensityWithSunIntensity boolean
---@field bUseModColorCurve boolean
local UDayNightBasicLightControllerComponent = {}



---@class UDayNightCompass : USceneComponent
---@field TextMaterial UMaterialInterface
---@field North UTextRenderComponent
---@field South UTextRenderComponent
---@field East UTextRenderComponent
---@field West UTextRenderComponent
---@field Params FDayNightCompassParams
local UDayNightCompass = {}



---@class UDayNightCurveLightControllerComponent : UDayNightLightControllerComponent
---@field Color UCurveLinearColor
---@field Desaturation float
---@field Intensity UCurveFloat
---@field DirectionalBoost FDayNightLightControllerDirectionalBoost
---@field bUseDirectionalBoost boolean
---@field ColorOp EDayNightLightControllerOp
---@field IntensityOp EDayNightLightControllerOp
local UDayNightCurveLightControllerComponent = {}



---@class UDayNightCustomBlendDomainDay : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainDay = {}


---@class UDayNightCustomBlendDomainDayNight : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainDayNight = {}


---@class UDayNightCustomBlendDomainDayNightAltitudeCurveRemap : URenderSettingsCustomBlendDomainNoPreCompute
---@field AltitudeRemapCurve UCurveFloat
local UDayNightCustomBlendDomainDayNightAltitudeCurveRemap = {}



---@class UDayNightCustomBlendDomainDayNightAltitudeRemap : URenderSettingsCustomBlendDomainNoPreCompute
---@field AltitudeMin float
---@field AltitudeMax float
---@field OunputMin float
---@field OutputMax float
local UDayNightCustomBlendDomainDayNightAltitudeRemap = {}



---@class UDayNightCustomBlendDomainDayNightBase : URenderSettingsCustomBlendDomainBase
local UDayNightCustomBlendDomainDayNightBase = {}


---@class UDayNightCustomBlendDomainDayNightComputeOnly : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainDayNightComputeOnly = {}


---@class UDayNightCustomBlendDomainDayNightMoonAltitudeCurveRemap : UDayNightCustomBlendDomainDayNightAltitudeCurveRemap
local UDayNightCustomBlendDomainDayNightMoonAltitudeCurveRemap = {}


---@class UDayNightCustomBlendDomainDayNightMoonAltitudeRemap : UDayNightCustomBlendDomainDayNightAltitudeRemap
local UDayNightCustomBlendDomainDayNightMoonAltitudeRemap = {}


---@class UDayNightCustomBlendDomainDayNightMoonDiskVisibility : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainDayNightMoonDiskVisibility = {}


---@class UDayNightCustomBlendDomainDayNightNormalizedTimeCurve : URenderSettingsCustomBlendDomainNoPreCompute
---@field NormalizedTimeCurve UCurveFloat
---@field bMirrorAroundNoon boolean
local UDayNightCustomBlendDomainDayNightNormalizedTimeCurve = {}



---@class UDayNightCustomBlendDomainDayNightSunAltitudeCurveRemap : UDayNightCustomBlendDomainDayNightAltitudeCurveRemap
local UDayNightCustomBlendDomainDayNightSunAltitudeCurveRemap = {}


---@class UDayNightCustomBlendDomainDayNightSunAltitudeRemap : UDayNightCustomBlendDomainDayNightAltitudeRemap
local UDayNightCustomBlendDomainDayNightSunAltitudeRemap = {}


---@class UDayNightCustomBlendDomainDayNightSunDiskVisibility : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainDayNightSunDiskVisibility = {}


---@class UDayNightCustomBlendDomainDayNightValid : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainDayNightValid = {}


---@class UDayNightCustomBlendDomainNight : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainNight = {}


---@class UDayNightCustomBlendDomainNormalizedTime : URenderSettingsCustomBlendDomainNoPreCompute
local UDayNightCustomBlendDomainNormalizedTime = {}


---@class UDayNightEVents : UBlueprintFunctionLibrary
local UDayNightEVents = {}

---@param TimeInput FTimeInput
---@return FTimespan
function UDayNightEVents:TimeInputAsTimespan(TimeInput) end
---@param TimeInput FTimeInput
---@return float
function UDayNightEVents:TimeInputAsFloat(TimeInput) end
---@param NormalizedTime FSolarNormalizedTime
---@return FTimespan
function UDayNightEVents:NormalizedTimeAsTimespan(NormalizedTime) end
---@param NormalizedTime FSolarNormalizedTime
---@return FString
function UDayNightEVents:NormalizedTimeAsString(NormalizedTime) end
---@param NormalizedTime FSolarNormalizedTime
---@return float
function UDayNightEVents:NormalizedTimeAsFloat(NormalizedTime) end
---@param MoonPhase EMoonPhaseName
---@return FString
function UDayNightEVents:MoonPhaseAsString(MoonPhase) end
---@param MoonPhase EMoonPhaseName
---@return FName
function UDayNightEVents:MoonPhaseAsName(MoonPhase) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@param EventName FName
---@return boolean
function UDayNightEVents:DayNightRemoveGlobalEvents(WorldContextObject, GlobalEventGroup, EventName) end
---@param Component UActorComponent
---@param EventName FName
---@return boolean
function UDayNightEVents:DayNightRemoveComponentEvents(Component, EventName) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@return boolean
function UDayNightEVents:DayNightRemoveAllGlobalEvents(WorldContextObject, GlobalEventGroup) end
---@param Component UActorComponent
---@return boolean
function UDayNightEVents:DayNightRemoveAllComponentEvents(Component) end
---@param Actor AActor
---@return boolean
function UDayNightEVents:DayNightRemoveAllActorEvents(Actor) end
---@param Actor AActor
---@param EventName FName
---@return boolean
function UDayNightEVents:DayNightRemoveActorEvents(Actor, EventName) end
---@param Component UActorComponent
---@param GlobalEventGroup FName
---@return boolean
function UDayNightEVents:DayNightGlobalRemoveComponentReceiver(Component, GlobalEventGroup) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@return boolean
function UDayNightEVents:DayNightGlobalRemoveAllReceivers(WorldContextObject, GlobalEventGroup) end
---@param Actor AActor
---@param GlobalEventGroup FName
---@return boolean
function UDayNightEVents:DayNightGlobalRemoveActorReceiver(Actor, GlobalEventGroup) end
---@param Component UActorComponent
---@param GlobalEventGroup FName
---@return boolean
function UDayNightEVents:DayNightGlobalAddComponentReceiver(Component, GlobalEventGroup) end
---@param Actor AActor
---@param GlobalEventGroup FName
---@return boolean
function UDayNightEVents:DayNightGlobalAddActorReceiver(Actor, GlobalEventGroup) end
---@param Event FName
function UDayNightEVents:DayNightGetGlobalSunsetEvent(Event) end
---@param EventGroup FName
function UDayNightEVents:DayNightGetGlobalSunriseSunsetEventGroup(EventGroup) end
---@param Event FName
function UDayNightEVents:DayNightGetGlobalSunriseEvent(Event) end
---@param WorldContextObject UObject
---@param bLightsCanStartOn boolean
function UDayNightEVents:DayNightEventsLightsCanStartOn(WorldContextObject, bLightsCanStartOn) end
---@param WorldContextObject UObject
---@param bIsEditorWorld boolean
function UDayNightEVents:DayNightEventsIsEditorWorld(WorldContextObject, bIsEditorWorld) end
---@param WorldContextObject UObject
---@param CurrentState FDayNightEventsCurrentState
function UDayNightEVents:DayNightEventsCurrentState(WorldContextObject, CurrentState) end
---@param Component UActorComponent
---@return boolean
function UDayNightEVents:DayNightBeginPlayComponentEvents(Component) end
---@param Actor AActor
---@return boolean
function UDayNightEVents:DayNightBeginPlayActorEvents(Actor) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@param EventName FName
---@param DayNightEvent FDayNightNormalizedTimeEvent
---@return boolean
function UDayNightEVents:DayNightAddGlobalTimeEvent(WorldContextObject, GlobalEventGroup, EventName, DayNightEvent) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@param EventName FName
---@param DayNightEvent FDayNightSunAltitudeEvent
---@return boolean
function UDayNightEVents:DayNightAddGlobalSunEvent(WorldContextObject, GlobalEventGroup, EventName, DayNightEvent) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@param EventName FName
---@param DayNightEvent FDayNightSunAltitudeChangeEvent
---@return boolean
function UDayNightEVents:DayNightAddGlobalSunChangeEvent(WorldContextObject, GlobalEventGroup, EventName, DayNightEvent) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@param EventName FName
---@param DayNightEvent FDayNightMoonAltitudeEvent
---@return boolean
function UDayNightEVents:DayNightAddGlobalMoonEvent(WorldContextObject, GlobalEventGroup, EventName, DayNightEvent) end
---@param WorldContextObject UObject
---@param GlobalEventGroup FName
---@param EventName FName
---@param DayNightEvent FDayNightGameTimeEvent
---@return boolean
function UDayNightEVents:DayNightAddGlobalGameTimeEvent(WorldContextObject, GlobalEventGroup, EventName, DayNightEvent) end
---@param Component UActorComponent
---@param EventName FName
---@param DayNightEvent FDayNightNormalizedTimeEvent
---@return boolean
function UDayNightEVents:DayNightAddComponentTimeEvent(Component, EventName, DayNightEvent) end
---@param Component UActorComponent
---@param EventName FName
---@param DayNightEvent FDayNightSunAltitudeEvent
---@return boolean
function UDayNightEVents:DayNightAddComponentSunEvent(Component, EventName, DayNightEvent) end
---@param Component UActorComponent
---@param EventName FName
---@param DayNightEvent FDayNightSunAltitudeChangeEvent
---@return boolean
function UDayNightEVents:DayNightAddComponentSunChangeEvent(Component, EventName, DayNightEvent) end
---@param Component UActorComponent
---@param EventName FName
---@param DayNightEvent FDayNightMoonAltitudeEvent
---@return boolean
function UDayNightEVents:DayNightAddComponentMoonEvent(Component, EventName, DayNightEvent) end
---@param Component UActorComponent
---@param EventName FName
---@param DayNightEvent FDayNightGameTimeEvent
---@return boolean
function UDayNightEVents:DayNightAddComponentGameTimeEvent(Component, EventName, DayNightEvent) end
---@param Actor AActor
---@param EventName FName
---@param DayNightEvent FDayNightNormalizedTimeEvent
---@return boolean
function UDayNightEVents:DayNightAddActorTimeEvent(Actor, EventName, DayNightEvent) end
---@param Actor AActor
---@param EventName FName
---@param DayNightEvent FDayNightSunAltitudeEvent
---@return boolean
function UDayNightEVents:DayNightAddActorSunEvent(Actor, EventName, DayNightEvent) end
---@param Actor AActor
---@param EventName FName
---@param DayNightEvent FDayNightSunAltitudeChangeEvent
---@return boolean
function UDayNightEVents:DayNightAddActorSunChangeEvent(Actor, EventName, DayNightEvent) end
---@param Actor AActor
---@param EventName FName
---@param DayNightEvent FDayNightMoonAltitudeEvent
---@return boolean
function UDayNightEVents:DayNightAddActorMoonEvent(Actor, EventName, DayNightEvent) end
---@param Actor AActor
---@param EventName FName
---@param DayNightEvent FDayNightGameTimeEvent
---@return boolean
function UDayNightEVents:DayNightAddActorGameTimeEvent(Actor, EventName, DayNightEvent) end
---@param DateTimeInput FDateTimeInput
---@param Valid boolean
---@return FDateTime
function UDayNightEVents:DateTimeInputAsDateTime(DateTimeInput, Valid) end


---@class UDayNightExpHeightFogAdjustments : UDataAsset
---@field AltitudeMods TArray<ULightSettingsModCurve>
---@field NormalizedTimeMods TArray<ULightSettingsModCurve>
local UDayNightExpHeightFogAdjustments = {}



---@class UDayNightLightControllerComponent : UAnimatedLightClusterComponentAuto
---@field UpdateThresholdDegrees float
---@field bEnabled boolean
---@field bDeepScanChildren boolean
---@field LastSunAngleUpdate float
local UDayNightLightControllerComponent = {}

---@param bIsControllerEnabled boolean
function UDayNightLightControllerComponent:IsLightControllerEnabled(bIsControllerEnabled) end
---@param bEnableController boolean
function UDayNightLightControllerComponent:EnableLightController(bEnableController) end


---@class UDayNightLightRig : UDataAsset
---@field Day UDayLightRig
---@field Night UNightLightRig
---@field MinimumDirectionalLightIntensity float
---@field SunAltitudeInfluenceCurve UCurveFloat
---@field MoonAltitudeInfluenceCurve UCurveFloat
---@field DayNightLerp TArray<ULightSettingsLerpControl>
---@field DayNightLerpDirection ULightDirectionLerpControl
---@field BlendOps int32
---@field SunAltitudeMods TArray<ULightSettingsModCurve>
---@field NormalizedTimeMods TArray<ULightSettingsModCurve>
---@field DiscontinuitySettings FLightParameterSmoothingDiscontinuitySettings
---@field SmoothingMods TArray<ULightParameterSmoothing>
---@field ExpHeightFogAdjustments UDayNightExpHeightFogAdjustments
local UDayNightLightRig = {}



---@class UDayNightLocalLightControllerComponent : UDayNightLightControllerComponent
---@field DayColorMod FLinearColor
---@field NightColorMod FLinearColor
---@field Night0Day1ColorMod UCurveLinearColor
---@field DayIntensityMod float
---@field NightIntensityMod float
---@field StartNightSunAngle float
---@field FullNightSunAngle float
---@field bModulateColor boolean
---@field bModulateIntensity boolean
---@field bUseModColorCurve boolean
local UDayNightLocalLightControllerComponent = {}



---@class UDayNightMasterComponent : UActorComponent
---@field ForceWorldBasis UEphemerisBasis
---@field TimeSourceStack FTimeDateSourceStack
---@field TimeController FTimeController
---@field EphemerisProgram TArray<UEphemerisSubroutine>
---@field EphemerisComputer FEphemerisComputer
---@field DayNightLightRig UDayNightLightRig
---@field SkyState FEphemeralSkyState
---@field DayNightLightRigResults FDayNightLightRigResults
---@field SkyActorOverride ADayNightSky
---@field DebugOrbits UGeocentricOrbitsComponent
---@field LastNormalizedTime float
local UDayNightMasterComponent = {}

---@param WorldContextObject UObject
---@param Name FName
---@param poi FCelestialPointOfInterest
---@return boolean
function UDayNightMasterComponent:GetPointOfInterest(WorldContextObject, Name, poi) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:GetNightZeroToOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:GetNightZeroDayOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:GetNightNegOneDayOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:GetDayZeroToOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightMaster UDayNightMasterComponent
function UDayNightMasterComponent:GetDayNightMaster(WorldContextObject, DayNightMaster) end
---@param WorldContextObject UObject
---@param CurrentTime FSolarNormalizedTime
---@param Valid boolean
function UDayNightMasterComponent:DayNightGetNormalizedTime(WorldContextObject, CurrentTime, Valid) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:DayNightGetNightZeroToOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:DayNightGetNightZeroDayOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:DayNightGetNightNegOneDayOne(WorldContextObject, DayNightValue) end
---@param WorldContextObject UObject
---@param DayNightValue float
function UDayNightMasterComponent:DayNightGetDayZeroToOne(WorldContextObject, DayNightValue) end


---@class UDayNightMasterComputeOnlyLibrary : UDataAsset
---@field ComputeDefault TSubclassOf<ADayNightMasterComputeOnly>
---@field LevelOverrides TArray<FDayNightMasterComputeOnlyPerLevel>
local UDayNightMasterComputeOnlyLibrary = {}



---@class UDayNightOverrideComponent : USceneComponent
---@field OverrideBasis UEphemerisBasis
---@field TimeSourceStack FTimeDateSourceStackVolume
---@field TimeController FTimeController
---@field EphemerisProgram TArray<UEphemerisSubroutine>
---@field EphemerisComputer FEphemerisComputer
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
---@field bAppendToMasterEphemerisProgram boolean
---@field LastUpdate float
---@field InitializedComputer int32
---@field AppendedEphemerisProgram TArray<UEphemerisSubroutine>
local UDayNightOverrideComponent = {}

---@param NewPriority float
function UDayNightOverrideComponent:SetPriority(NewPriority) end


---@class UDayNightTemperatureCurveLightControllerComponent : UDayNightLightControllerComponent
---@field ColorTemp UCurveFloat
---@field Desaturation float
---@field Intensity UCurveFloat
---@field DirectionalBoost FDayNightLightControllerDirectionalBoost
---@field bUseDirectionalBoost boolean
---@field ColorOp EDayNightLightControllerOp
---@field IntensityOp EDayNightLightControllerOp
---@field bAccurateColorTemp boolean
local UDayNightTemperatureCurveLightControllerComponent = {}



---@class UEphemerisBasis : UDataAsset
---@field TopographicObserver FTopographicObserver
---@field SunAltitudeNightDayCurve UCurveFloat
---@field NightSkyStrengthCurve UCurveFloat
---@field SunIllusionCurve UCurveFloat
---@field MoonIllusionCurve UCurveFloat
---@field CelestialPointsOfInterest UDataTable
---@field StarCatalog UStarCatalog
---@field bSunIllusionCurve boolean
---@field bMoonIllusionCurve boolean
local UEphemerisBasis = {}



---@class UEphemerisBasisLibrary : UDataAsset
---@field DefaultBasis UEphemerisBasis
---@field LevelBasis TArray<FEphemerisBasisPerLevel>
local UEphemerisBasisLibrary = {}



---@class UEphemerisSubroutine : UObject
local UEphemerisSubroutine = {}


---@class UEphemerisSubroutineAstronomical : UEphemerisSubroutine
---@field MoonPeriodDays float
---@field bOverride_MoonPeriodDays boolean
local UEphemerisSubroutineAstronomical = {}



---@class UEphemerisSubroutineDynamicIdealMoonPath : UEphemerisSubroutine
---@field AzimuthMode EMoonPathMode
---@field AzimuthOffsetDegrees float
---@field PathSettings FMoonPathSettings
---@field bEnabled boolean
local UEphemerisSubroutineDynamicIdealMoonPath = {}



---@class UEphemerisSubroutineDynamicIdealMoonPathData : UObject
---@field MoonPath FMoonPath
local UEphemerisSubroutineDynamicIdealMoonPathData = {}



---@class UEphemerisSubroutineFauxMoon : UEphemerisSubroutine
---@field IdealDate FDateInput
---@field BaseOffsetDegrees float
---@field OffsetVarianceDegrees float
---@field OffsetPeriodDays float
---@field PhasePeriodDays float
---@field bEnabled boolean
---@field bOverride_PhasePeriodDays boolean
---@field bUseIdealDate boolean
local UEphemerisSubroutineFauxMoon = {}



---@class UEphemerisSubroutineFauxMoonData : UObject
---@field IdealDayInfo FEphemerisDayInfo
local UEphemerisSubroutineFauxMoonData = {}



---@class UEphemerisSubroutineFixedIdealMoonPath : UEphemerisSubroutine
---@field MoonPath UFixedIdealMoonPathData
---@field AzimuthMode EMoonPathMode
---@field AzimuthOffsetDegrees float
---@field bEnabled boolean
local UEphemerisSubroutineFixedIdealMoonPath = {}



---@class UEphemerisSubroutineFixedSunPositions : UEphemerisSubroutine
---@field FixedPositions UFixedSunPositions
---@field bEnabled boolean
local UEphemerisSubroutineFixedSunPositions = {}



---@class UEphemerisSubroutineForceMoonPhase : UEphemerisSubroutine
---@field Moon FManualMoonSetup
---@field bEnabled boolean
local UEphemerisSubroutineForceMoonPhase = {}



---@class UEphemerisSubroutineGamifyTime : UObject
local UEphemerisSubroutineGamifyTime = {}


---@class UEphemerisSubroutineGamifyTimeCurveBase : UEphemerisSubroutineGamifyTime
---@field ToNormalizedTime FRuntimeFloatCurve
local UEphemerisSubroutineGamifyTimeCurveBase = {}



---@class UEphemerisSubroutineGamifyTimeDayNightRatio : UEphemerisSubroutineGamifyTimeCurveBase
---@field DayToNightRatio float
local UEphemerisSubroutineGamifyTimeDayNightRatio = {}



---@class UEphemerisSubroutineGamifyTimeSunriseSunset : UEphemerisSubroutineGamifyTimeCurveBase
---@field SunRise FTimeInput
---@field SunSet FTimeInput
local UEphemerisSubroutineGamifyTimeSunriseSunset = {}



---@class UEphemerisSubroutineIdealSunPath : UEphemerisSubroutine
---@field IdealDate FDateInput
---@field GamifyTime UEphemerisSubroutineGamifyTime
---@field RemapNormalizedTime UCurveFloat
---@field bEnabled boolean
---@field bUseRemapNormalizedTime boolean
---@field bRemapNormalizedTimeIs12Hour boolean
local UEphemerisSubroutineIdealSunPath = {}



---@class UEphemerisSubroutineIdealSunPathData : UObject
---@field SolarDay FSolarDay
local UEphemerisSubroutineIdealSunPathData = {}



---@class UEphemerisSubroutineMoonOpposesSun : UEphemerisSubroutine
---@field OffsetDegrees float
---@field bEnabled boolean
local UEphemerisSubroutineMoonOpposesSun = {}



---@class UEphemerisSubroutineMoonPosition : UEphemerisSubroutine
---@field Direction FRotator
---@field bOverride_Direction boolean
local UEphemerisSubroutineMoonPosition = {}



---@class UEphemerisSubroutineNoNewMoon : UEphemerisSubroutine
---@field MinimalPhasePercent float
---@field bUpdateVisualPhaseOnly boolean
---@field bEnabled boolean
local UEphemerisSubroutineNoNewMoon = {}



---@class UEphemerisSubroutineSunPosition : UEphemerisSubroutine
---@field Direction FRotator
---@field bOverride_Direction boolean
local UEphemerisSubroutineSunPosition = {}



---@class UEphemerisSubroutineTweakDirection : UEphemerisSubroutine
---@field TweakAltitude float
---@field TweakAzimuth float
---@field NormalizedTimeBlend UCurveFloat
local UEphemerisSubroutineTweakDirection = {}



---@class UEphemerisSubroutineTweakMoonPosition : UEphemerisSubroutineTweakDirection
---@field bOnlyLightDirection boolean
local UEphemerisSubroutineTweakMoonPosition = {}



---@class UEphemerisSubroutineTweakSunPosition : UEphemerisSubroutineTweakDirection
---@field bFullSun boolean
---@field bSunDisk boolean
---@field bSunLight boolean
local UEphemerisSubroutineTweakSunPosition = {}



---@class UExpHeightFogDayNightTransmuter : UExpHeightFogTransmuter
---@field OverrideAdjustments UDayNightExpHeightFogAdjustments
---@field bEnabled boolean
local UExpHeightFogDayNightTransmuter = {}



---@class UFixedIdealMoonPathData : UDataAsset
---@field MoonPath FMoonPath
local UFixedIdealMoonPathData = {}

function UFixedIdealMoonPathData:ForceRecompute() end


---@class UFixedSunPositions : UDataAsset
---@field TransitionTime float
---@field TransitionEaseInOutPower float
---@field SunAltitudes TArray<FFixedSunPositionInput>
---@field SunriseDurationMinutes float
---@field NoonDurationHours float
---@field SunsetDurationMinutes float
---@field MidnightDurationHours float
---@field bNoonDuration boolean
---@field bSunriseDuration boolean
---@field bMidnightDuration boolean
---@field bSunsetDuration boolean
local UFixedSunPositions = {}



---@class UFixedSunPositionsData : UObject
---@field DayInfo FEphemerisDayInfo
---@field Positions TArray<FFixedSunPosition>
---@field TransitionTime FTimespan
---@field TransitionEaseInOutPower float
local UFixedSunPositionsData = {}



---@class UGeocentricOrbitsComponent : USceneComponent
---@field Show FGeocentricOrbitsShow
---@field Advanced FGeocentricOrbitsAdvanced
---@field ComputedForDate FDateTime
---@field ComputedForTopographicObserver FTopographicObserver
---@field SplineMesh UStaticMesh
---@field SunSplineMeshMaterial UMaterialInterface
---@field MoonSplineMeshMaterial UMaterialInterface
---@field VenusSplineMeshMaterial UMaterialInterface
---@field MarsSplineMeshMaterial UMaterialInterface
---@field JupiterSplineMeshMaterial UMaterialInterface
---@field SaturnSplineMeshMaterial UMaterialInterface
---@field SunPath FGeocentricOrbit
---@field MoonPath FGeocentricOrbit
---@field VenusPath FGeocentricOrbit
---@field MarsPath FGeocentricOrbit
---@field JupiterPath FGeocentricOrbit
---@field SaturnPath FGeocentricOrbit
---@field OrbitResources FGeocentricOrbitResources
local UGeocentricOrbitsComponent = {}



---@class UGlobalLightingBlendableDayNight : UGlobalLightingBlendableDayNightBase
local UGlobalLightingBlendableDayNight = {}


---@class UGlobalLightingBlendableDayNightBase : UGlobalLightingBlendable
---@field bDisable boolean
local UGlobalLightingBlendableDayNightBase = {}



---@class UGlobalLightingBlendableDayNightInheritMoon : UGlobalLightingBlendableDayNightBase
---@field Moon FManualMoonSetup
---@field bForceTimeToMidnight boolean
local UGlobalLightingBlendableDayNightInheritMoon = {}



---@class UGlobalLightingBlendableDayNightInheritSun : UGlobalLightingBlendableDayNightBase
---@field Mode EDayNightInheritSunMode
local UGlobalLightingBlendableDayNightInheritSun = {}



---@class UGlobalLightingBlendableDayNightOverrideMoon : UGlobalLightingBlendableDayNightBase
---@field Moon FManualMoonSetup
---@field bMoonIsSecondaryDirectionalLight boolean
local UGlobalLightingBlendableDayNightOverrideMoon = {}



---@class UGlobalLightingBlendableDayNightSky : UGlobalLightingBlendableBase
---@field bDisableSkySunDisk boolean
---@field bDisableSkyMoonDisk boolean
local UGlobalLightingBlendableDayNightSky = {}



---@class UGlobalLightingBlendableTweakDirectionalLight : UGlobalLightingBlendableDayNightBase
---@field Mode EDayNightTweakDirectionalLightMode
---@field TweakAltitude float
---@field TweakAzimuth float
---@field LightParams FDirectionalLightBasicParametersOverride
---@field LightShafts FDirectionalLightShaftsOverride
---@field Shadows FDirectionalLightShadowsOverride
local UGlobalLightingBlendableTweakDirectionalLight = {}



---@class UGlobalSubsurfaceModComponent : UActorComponent
---@field GlobalSubsurfaceMPC UMaterialParameterCollection
---@field GlobalSubsurfaceCurve UCurveFloat
---@field CurrentModValue float
---@field bOutdoorsOnly boolean
---@field bDisable boolean
local UGlobalSubsurfaceModComponent = {}



---@class ULightDirectionEase : ULightDirectionLerpControl
---@field Easing ELerpEasingType
---@field BlendExp float
local ULightDirectionEase = {}



---@class ULightDirectionLerpBinary : ULightDirectionLerpControl
---@field bInvert boolean
local ULightDirectionLerpBinary = {}



---@class ULightDirectionLerpControl : UObject
---@field bEnabled boolean
local ULightDirectionLerpControl = {}



---@class ULightDirectionLerpCurve : ULightDirectionLerpControl
---@field Curve UCurveFloat
local ULightDirectionLerpCurve = {}



---@class ULightDirectionLerpIfNotZero : ULightDirectionLerpBinary
---@field Tolerance float
local ULightDirectionLerpIfNotZero = {}



---@class ULightDirectionLerpIfOne : ULightDirectionLerpBinary
---@field Tolerance float
local ULightDirectionLerpIfOne = {}



---@class ULightDirectionLerpOnOff : ULightDirectionLerpBinary
---@field Cutoff float
local ULightDirectionLerpOnOff = {}



---@class ULightParameterSmoothing : UObject
---@field ModParamSet TArray<EGlobalLightRigModParam>
---@field TimeSource ELightParameterSmoothingTimeSource
---@field TimeBase ELightParameterSmoothingTimeBase
---@field TimeBlendCurve UCurveFloat
---@field TimeBlendCurveInput ELightParameterTimeBlendInput
---@field bEnabled boolean
local ULightParameterSmoothing = {}



---@class ULightParameterSmoothingFilter : ULightParameterSmoothing
---@field TimeConstant float
local ULightParameterSmoothingFilter = {}



---@class ULightParameterSmoothingLinear : ULightParameterSmoothing
---@field Rate float
local ULightParameterSmoothingLinear = {}



---@class ULightProbeCaptureLocalFixedSetup : UWLightProbesVolumeCaptureSetup
---@field Computer FLightProbeCaptureSetupComputer
local ULightProbeCaptureLocalFixedSetup = {}



---@class ULightProbeCaptureLocalSetup : UWLightProbesVolumeCaptureSetup
---@field CaptureSetup ULightProbeCaptureSetup
local ULightProbeCaptureLocalSetup = {}



---@class ULightProbeCaptureSetup : UDataAsset
---@field Computer FLightProbeCaptureSetupComputer
local ULightProbeCaptureSetup = {}



---@class ULightSettingsEase : ULightSettingsLerpControl
---@field Easing ELerpEasingType
---@field BlendExp float
local ULightSettingsEase = {}



---@class ULightSettingsLerpBinary : ULightSettingsLerpControl
---@field bInvert boolean
local ULightSettingsLerpBinary = {}



---@class ULightSettingsLerpControl : UObject
---@field ModParam EGlobalLightRigModParam
---@field Param ELightRigCurveParam
---@field bEnabled boolean
local ULightSettingsLerpControl = {}



---@class ULightSettingsLerpCurve : ULightSettingsLerpControl
---@field Curve UCurveFloat
local ULightSettingsLerpCurve = {}



---@class ULightSettingsLerpIfNotZero : ULightSettingsLerpBinary
---@field Tolerance float
local ULightSettingsLerpIfNotZero = {}



---@class ULightSettingsLerpIfOne : ULightSettingsLerpBinary
---@field Tolerance float
local ULightSettingsLerpIfOne = {}



---@class ULightSettingsLerpOnOff : ULightSettingsLerpBinary
---@field Cutoff float
local ULightSettingsLerpOnOff = {}



---@class ULightSettingsModColorBase : ULightSettingsModCurve
local ULightSettingsModColorBase = {}


---@class ULightSettingsModColorConstant : ULightSettingsModColorBase
---@field Color FLinearColor
---@field ColorType ELightRigCurveLinearColorType
local ULightSettingsModColorConstant = {}



---@class ULightSettingsModColorCurve : ULightSettingsModColorBase
---@field Curve UCurveLinearColor
---@field ColorType ELightRigCurveLinearColorType
local ULightSettingsModColorCurve = {}



---@class ULightSettingsModColorThreshold : ULightSettingsModColorBase
---@field Threshold ULightSettingsModThreshold
---@field ColorAbove FLinearColor
---@field ColorBelow FLinearColor
---@field ColorType ELightRigCurveLinearColorType
local ULightSettingsModColorThreshold = {}



---@class ULightSettingsModCurve : UObject
---@field ModParam EGlobalLightRigModParam
---@field Param ELightRigCurveParam
---@field Mode ELightRigMode
---@field Type ELightRigCurveType
---@field bEnabled boolean
local ULightSettingsModCurve = {}



---@class ULightSettingsModFloatBase : ULightSettingsModCurve
---@field ColorConversion ELightRigCurveColorConversionType
local ULightSettingsModFloatBase = {}



---@class ULightSettingsModFloatConstant : ULightSettingsModFloatBase
---@field Value float
local ULightSettingsModFloatConstant = {}



---@class ULightSettingsModFloatCurve : ULightSettingsModFloatBase
---@field Curve UCurveFloat
local ULightSettingsModFloatCurve = {}



---@class ULightSettingsModFloatThreshold : ULightSettingsModFloatBase
---@field Threshold ULightSettingsModThreshold
---@field ValueAbove float
---@field ValueBelow float
local ULightSettingsModFloatThreshold = {}



---@class ULightSettingsModSunColor : ULightSettingsModColorBase
---@field Params FGlobalLightingSunColorParams
local ULightSettingsModSunColor = {}



---@class ULightSettingsModSunLuminance : ULightSettingsModFloatBase
---@field Params FGlobalLightingSunColorParams
local ULightSettingsModSunLuminance = {}



---@class ULightSettingsModThreshold : UObject
local ULightSettingsModThreshold = {}


---@class ULightSettingsModThresholdBlendable : ULightSettingsModThreshold
---@field Blendable FGlobalLightingCustomBlendableNameScalar
local ULightSettingsModThresholdBlendable = {}



---@class ULightSettingsModThresholdConsoleVariableAltitude : ULightSettingsModThresholdConsoleVariableBase
local ULightSettingsModThresholdConsoleVariableAltitude = {}


---@class ULightSettingsModThresholdConsoleVariableBase : ULightSettingsModThreshold
---@field ConsoleVariableName FName
---@field ConsoleVariableDefaultValue float
---@field bCreateConsoleVariableIfMissing boolean
local ULightSettingsModThresholdConsoleVariableBase = {}



---@class ULightSettingsModThresholdConstantAltitude : ULightSettingsModThreshold
---@field AltitudeThreshold float
local ULightSettingsModThresholdConstantAltitude = {}



---@class UNiagaraStarrySkyComponent : UActorComponent
---@field StarrySkySystem UNiagaraSystem
---@field bDestroySystemWhenHidden boolean
---@field StarrySkyComponent UNiagaraComponent
---@field StarrySkyMPC UMaterialParameterCollection
local UNiagaraStarrySkyComponent = {}

---@param NiagaraSystem UNiagaraSystem
function UNiagaraStarrySkyComponent:SetSystem(NiagaraSystem) end
---@param NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
function UNiagaraStarrySkyComponent:LoadSystem(NiagaraSystem) end
---@param NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@return boolean
function UNiagaraStarrySkyComponent:IsLoadedSystem(NiagaraSystem) end


---@class UNiagaraStarrySkyHighlightComponent : UNiagaraStarrySkyComponent
---@field StarCatalog UStarCatalog
---@field Highlights FStarrySkyHighlights
---@field HighlightModulate float
---@field HighlightParameters FStarrySkyHighlightParameters
local UNiagaraStarrySkyHighlightComponent = {}

---@param Constellations int32
function UNiagaraStarrySkyHighlightComponent:SupportedHighlightConstellations(Constellations) end
---@param StarName FName
function UNiagaraStarrySkyHighlightComponent:SetHighlightStar(StarName) end
---@param ConstellationNames TArray<FName>
---@param StarName FName
function UNiagaraStarrySkyHighlightComponent:SetHighlights(ConstellationNames, StarName) end
---@param ConstellationNames TArray<FName>
function UNiagaraStarrySkyHighlightComponent:SetHighlightConstellations(ConstellationNames) end
---@param ConstellationName FName
function UNiagaraStarrySkyHighlightComponent:SetHighlightConstellation(ConstellationName) end
---@param ConstellationName FName
---@param StarName FName
function UNiagaraStarrySkyHighlightComponent:SetHighlight(ConstellationName, StarName) end
function UNiagaraStarrySkyHighlightComponent:ClearHighlights() end
function UNiagaraStarrySkyHighlightComponent:ClearHighlightConstellations() end


---@class UNiagaraStarrySkySwitchableHighlightComponent : UNiagaraStarrySkyComponent
---@field StarCatalog UStarCatalog
---@field CurrentHighlights FStarrySkyHighlights
---@field HighlightModulate float
---@field CurrentHighlightParameters FStarrySkyHighlightParameters
---@field HighlightStarrySkySystem UNiagaraSystem
---@field bUseCameraAsOriginForHighlighting boolean
---@field CurrentMode ESwitchableStarrySkyMode
---@field bHighlightForDefocus boolean
local UNiagaraStarrySkySwitchableHighlightComponent = {}

---@param Constellations int32
function UNiagaraStarrySkySwitchableHighlightComponent:SupportedHighlightConstellations(Constellations) end
---@param WorldContextObject UObject
---@param HighlightConstellationNames TArray<FName>
---@param HighlightStarName FName
---@param InitialModulate float
---@return boolean
function UNiagaraStarrySkySwitchableHighlightComponent:StarrySkyStartHighlightings(WorldContextObject, HighlightConstellationNames, HighlightStarName, InitialModulate) end
---@param WorldContextObject UObject
---@param HighlightConstellationName FName
---@param HighlightStarName FName
---@param InitialModulate float
---@return boolean
function UNiagaraStarrySkySwitchableHighlightComponent:StarrySkyStartHighlighting(WorldContextObject, HighlightConstellationName, HighlightStarName, InitialModulate) end
---@param WorldContextObject UObject
---@param Parameters FStarrySkyHighlightParameters
---@return boolean
function UNiagaraStarrySkySwitchableHighlightComponent:StarrySkySetHighlightParameters(WorldContextObject, Parameters) end
---@param WorldContextObject UObject
---@param Modulate float
---@return boolean
function UNiagaraStarrySkySwitchableHighlightComponent:StarrySkySetHighlightModulate(WorldContextObject, Modulate) end
---@param WorldContextObject UObject
---@return boolean
function UNiagaraStarrySkySwitchableHighlightComponent:StarrySkyEndHighlighting(WorldContextObject) end
---@param Mode ESwitchableStarrySkyMode
function UNiagaraStarrySkySwitchableHighlightComponent:SetMode(Mode) end
---@param NiagaraSystem UNiagaraSystem
function UNiagaraStarrySkySwitchableHighlightComponent:SetHighlightSystem(NiagaraSystem) end
---@param StarName FName
function UNiagaraStarrySkySwitchableHighlightComponent:SetHighlightStar(StarName) end
---@param ConstellationNames TArray<FName>
---@param StarName FName
function UNiagaraStarrySkySwitchableHighlightComponent:SetHighlights(ConstellationNames, StarName) end
---@param ConstellationNames TArray<FName>
function UNiagaraStarrySkySwitchableHighlightComponent:SetHighlightConstellations(ConstellationNames) end
---@param ConstellationName FName
function UNiagaraStarrySkySwitchableHighlightComponent:SetHighlightConstellation(ConstellationName) end
---@param ConstellationName FName
---@param StarName FName
function UNiagaraStarrySkySwitchableHighlightComponent:SetHighlight(ConstellationName, StarName) end
---@param NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
function UNiagaraStarrySkySwitchableHighlightComponent:LoadHighlightSystem(NiagaraSystem) end
---@param NiagaraSystem TSoftObjectPtr<UNiagaraSystem>
---@return boolean
function UNiagaraStarrySkySwitchableHighlightComponent:IsHighlightLoadedSystem(NiagaraSystem) end
---@param Mode ESwitchableStarrySkyMode
function UNiagaraStarrySkySwitchableHighlightComponent:GetMode(Mode) end
function UNiagaraStarrySkySwitchableHighlightComponent:ClearHighlights() end
function UNiagaraStarrySkySwitchableHighlightComponent:ClearHighlightConstellations() end


---@class UNightLightRig : UDataAsset
---@field NewMoon FDayNightLightRigOverride
---@field FullMoon FDayNightLightRigOverride
---@field PhaseLerp TArray<ULightSettingsLerpControl>
---@field AltitudeMods TArray<ULightSettingsModCurve>
---@field SunAltitudeMods TArray<ULightSettingsModCurve>
---@field SunTimeMods TArray<ULightSettingsModCurve>
local UNightLightRig = {}



---@class UProbeNightLightRig : UDataAsset
---@field DirectionMode EProbeNightLightMoonDirection
---@field FixedDirection FRotator
---@field MoonSetup FManualMoonSetup
---@field ProbeNight FDayNightLightRigOverride
---@field AltitudeMods TArray<ULightSettingsModCurve>
---@field SunAltitudeMods TArray<ULightSettingsModCurve>
---@field SunTimeMods TArray<ULightSettingsModCurve>
---@field bUseMoonSetup boolean
---@field bUseLightRig boolean
local UProbeNightLightRig = {}



---@class USkyAtmosphereColorationCompute : UBlueprintFunctionLibrary
local USkyAtmosphereColorationCompute = {}

---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param SunInfo FDayNightLightSkyAtmosphereComputeDirLight
function USkyAtmosphereColorationCompute:SkySunInfo(WorldContextObject, Params, SunInfo) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param MoonInfo FDayNightLightSkyAtmosphereComputeDirLight
function USkyAtmosphereColorationCompute:SkyMoonInfo(WorldContextObject, Params, MoonInfo) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param DirectionalLightInfo FDayNightLightSkyAtmosphereComputeDirLight
function USkyAtmosphereColorationCompute:SkyDirectionalInfo(WorldContextObject, Params, DirectionalLightInfo) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Directions TArray<FVector>
---@param SkyColorsRGBIntensityAs TArray<FLinearColor>
function USkyAtmosphereColorationCompute:SkyColorsLitPacked(WorldContextObject, Params, Directions, SkyColorsRGBIntensityAs) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Directions TArray<FVector>
---@param SkyColors TArray<FLinearColor>
---@param ComputeType ESkyAtmosphereColorationComputeType
---@param OutputType ESkyAtmosphereColorationComputeOutput
function USkyAtmosphereColorationCompute:SkyColorsLitCompute(WorldContextObject, Params, Directions, SkyColors, ComputeType, OutputType) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Directions TArray<FVector>
---@param SkyColors TArray<FLinearColor>
function USkyAtmosphereColorationCompute:SkyColorsLitComposited(WorldContextObject, Params, Directions, SkyColors) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Directions TArray<FVector>
---@param SkyColors TArray<FLinearColor>
---@param SkyIntensites TArray<float>
function USkyAtmosphereColorationCompute:SkyColorsLit(WorldContextObject, Params, Directions, SkyColors, SkyIntensites) end
---@param DirectionParams FDayNightLightSkyAtmosphereComputeSampleDirectionParams
---@param Direction FVector
---@param SamplingDirection FVector
function USkyAtmosphereColorationCompute:SkyColorSamplingDirection(DirectionParams, Direction, SamplingDirection) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Direction FVector
---@param SkyColor FLinearColor
---@param ComputeType ESkyAtmosphereColorationComputeType
---@param OutputType ESkyAtmosphereColorationComputeOutput
function USkyAtmosphereColorationCompute:SkyColorLitCompute(WorldContextObject, Params, Direction, SkyColor, ComputeType, OutputType) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Direction FVector
---@param SkyColor FLinearColor
---@param SkyIntensity float
function USkyAtmosphereColorationCompute:SkyColorLit(WorldContextObject, Params, Direction, SkyColor, SkyIntensity) end
---@param WorldContextObject UObject
---@param Params FDayNightLightSkyAtmosphereComputeParams
---@param Direction FVector
---@param SkyColor FLinearColor
function USkyAtmosphereColorationCompute:SkyColorBase(WorldContextObject, Params, Direction, SkyColor) end
---@param Component UPrimitiveComponent
---@param bIsSelectable boolean
---@param bShowInReflections boolean
function USkyAtmosphereColorationCompute:SetupDebugPrimitive(Component, bIsSelectable, bShowInReflections) end


---@class USkyStateOverride : UObject
local USkyStateOverride = {}


---@class USkyStateOverrideBlueprintLibrary : UBlueprintFunctionLibrary
local USkyStateOverrideBlueprintLibrary = {}

---@param WorldContextObject UObject
---@param SkyStateOverride USkyStateOverride
---@param bSuccess boolean
function USkyStateOverrideBlueprintLibrary:RegisterSkyStateOverride(WorldContextObject, SkyStateOverride, bSuccess) end
---@param WorldContextObject UObject
---@param SkyStateOverride USkyStateOverride
---@param bRegistered boolean
function USkyStateOverrideBlueprintLibrary:IsSkyStateOverrideRegistered(WorldContextObject, SkyStateOverride, bRegistered) end
---@param WorldContextObject UObject
---@param SkyStateOverride USkyStateOverride
function USkyStateOverrideBlueprintLibrary:DeregisterSkyStateOverride(WorldContextObject, SkyStateOverride) end


---@class USkyStateOverrideCelestialPointOfInterestAlignTo : USkyStateOverride
---@field PointOfInterest FCelestialPointOfInterestName
---@field SlerpUp FVector
---@field Priority float
---@field bUseSlerp boolean
---@field bEnabled boolean
local USkyStateOverrideCelestialPointOfInterestAlignTo = {}

---@param NewPointOfInterest FName
function USkyStateOverrideCelestialPointOfInterestAlignTo:SetPointOfInterestName(NewPointOfInterest) end
---@param NewPointOfInterest FCelestialPointOfInterestName
function USkyStateOverrideCelestialPointOfInterestAlignTo:SetPointOfInterest(NewPointOfInterest) end
---@param CurrentPointOfInterest FName
function USkyStateOverrideCelestialPointOfInterestAlignTo:GetPointOfInterestName(CurrentPointOfInterest) end
---@param CurrentPointOfInterest FCelestialPointOfInterestName
function USkyStateOverrideCelestialPointOfInterestAlignTo:GetPointOfInterest(CurrentPointOfInterest) end


---@class USkyStateOverrideCelestialPointOfInterestAlignToRotator : USkyStateOverrideCelestialPointOfInterestAlignTo
---@field OrientTo FRotator
---@field Extra FRotator
---@field bExtraRotation boolean
local USkyStateOverrideCelestialPointOfInterestAlignToRotator = {}

---@param NewOrientTo FRotator
function USkyStateOverrideCelestialPointOfInterestAlignToRotator:SetOrientTo(NewOrientTo) end
---@param NewExtra FRotator
function USkyStateOverrideCelestialPointOfInterestAlignToRotator:SetExtraRotation(NewExtra) end
---@param CurrentOrientTo FRotator
function USkyStateOverrideCelestialPointOfInterestAlignToRotator:GetOrientTo(CurrentOrientTo) end
---@param CurrentExtra FRotator
---@param bHasExtra boolean
function USkyStateOverrideCelestialPointOfInterestAlignToRotator:GetExtraRotation(CurrentExtra, bHasExtra) end
function USkyStateOverrideCelestialPointOfInterestAlignToRotator:ClearExtraRotation() end


---@class USkyStateOverrideCelestialSphereRotator : USkyStateOverride
---@field Rotator FRotator
---@field Priority float
---@field bEnabled boolean
local USkyStateOverrideCelestialSphereRotator = {}



---@class USkyStateOverrideComponent : UActorComponent
---@field SkyStateOverride USkyStateOverride
---@field bEnabled boolean
---@field ComponentLerpAlpha float
local USkyStateOverrideComponent = {}

---@param bValid boolean
function USkyStateOverrideComponent:Valid(bValid) end
---@param LerpAlpha float
function USkyStateOverrideComponent:SetLerpAlpha(LerpAlpha) end
---@param bEnable boolean
function USkyStateOverrideComponent:SetEnabled(bEnable) end
---@param bEnable boolean
function USkyStateOverrideComponent:IsEnabled(bEnable) end
---@param bHasLerpAlpha boolean
function USkyStateOverrideComponent:HasLerpAlpha(bHasLerpAlpha) end
---@param LerpAlpha float
function USkyStateOverrideComponent:GetLerpAlpha(LerpAlpha) end
function USkyStateOverrideComponent:DisableLerpAlpha() end
---@param bUseLerpAlpha boolean
function USkyStateOverrideComponent:CanUseLerpAlpha(bUseLerpAlpha) end


---@class USkyStateOverrideHideMoon : USkyStateOverride
---@field Priority float
---@field bEnabled boolean
local USkyStateOverrideHideMoon = {}



---@class UTimeOverrideBase : UObject
local UTimeOverrideBase = {}

---@param Time FTimespan
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideSetTime(Time, bSupported) end
---@param Time float
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideSetNormalizedTime(Time, bSupported) end
---@param bEnable boolean
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideSetEnable(bEnable, bSupported) end
---@param DateTime FDateTime
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideSetDateTime(DateTime, bSupported) end
---@param bEnabled boolean
function UTimeOverrideBase:TimeOverrideIsEnabled(bEnabled) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideHasTime(bSupported) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideHasNormalizedTime(bSupported) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideHasDateTime(bSupported) end
---@param CurrentTime FTimespan
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideGetTime(CurrentTime, bSupported) end
---@param Priority float
function UTimeOverrideBase:TimeOverrideGetPriority(Priority) end
---@param CurrentNormalizedTime float
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideGetNormalizedTime(CurrentNormalizedTime, bSupported) end
---@param CurrentDateTime FDateTime
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideGetDateTime(CurrentDateTime, bSupported) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideCanSetTime(bSupported) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideCanSetNormalizedTime(bSupported) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideCanSetEnable(bSupported) end
---@param bSupported boolean
function UTimeOverrideBase:TimeOverrideCanSetDateTime(bSupported) end


---@class UTimeOverrideBlueprintLibrary : UBlueprintFunctionLibrary
local UTimeOverrideBlueprintLibrary = {}

---@param WorldContextObject UObject
---@param TimeOverride UTimeOverrideBase
---@param bSuccess boolean
function UTimeOverrideBlueprintLibrary:RegisterTimeOverride(WorldContextObject, TimeOverride, bSuccess) end
---@param WorldContextObject UObject
---@param TimeOverride UTimeOverrideBase
---@param bRegistered boolean
function UTimeOverrideBlueprintLibrary:IsTimeOverrideRegistered(WorldContextObject, TimeOverride, bRegistered) end
---@param WorldContextObject UObject
---@param TimeOverride UTimeOverrideBase
function UTimeOverrideBlueprintLibrary:DeregisterTimeOverride(WorldContextObject, TimeOverride) end


---@class UTimeOverrideComponent : UActorComponent
---@field TimeOverride UTimeOverrideBase
---@field bEnabled boolean
---@field ComponentLerpAlpha float
local UTimeOverrideComponent = {}

---@param bValid boolean
function UTimeOverrideComponent:Valid(bValid) end
---@param LerpAlpha float
function UTimeOverrideComponent:SetLerpAlpha(LerpAlpha) end
---@param bEnable boolean
function UTimeOverrideComponent:SetEnabled(bEnable) end
---@param bEnable boolean
function UTimeOverrideComponent:IsEnabled(bEnable) end
---@param bHasLerpAlpha boolean
function UTimeOverrideComponent:HasLerpAlpha(bHasLerpAlpha) end
---@param LerpAlpha float
function UTimeOverrideComponent:GetLerpAlpha(LerpAlpha) end
function UTimeOverrideComponent:DisableLerpAlpha() end
---@param bUseLerpAlpha boolean
function UTimeOverrideComponent:CanUseLerpAlpha(bUseLerpAlpha) end


---@class UTimeOverrideDateTime : UTimeOverrideBase
local UTimeOverrideDateTime = {}


---@class UTimeOverrideDateTimeInput : UTimeOverrideDateTime
---@field DateTime FDateTimeInput
---@field Priority float
---@field bEnabled boolean
local UTimeOverrideDateTimeInput = {}



---@class UTimeOverrideDateTimeRaw : UTimeOverrideDateTime
---@field DateTime FDateTime
---@field Priority float
---@field bEnabled boolean
local UTimeOverrideDateTimeRaw = {}

---@param Owner UObject
---@param TimeOverride UTimeOverrideDateTimeRaw
---@param CreateDateTime FDateTime
---@param CreatePriority float
---@param bCreateEnabled boolean
---@param bIsTransient boolean
function UTimeOverrideDateTimeRaw:TimeOverrideDateTimeCreate(Owner, TimeOverride, CreateDateTime, CreatePriority, bCreateEnabled, bIsTransient) end


---@class UTimeOverrideTimeHours : UTimeOverrideTimeOnly
---@field Time float
---@field Type ETimeOverrideType
---@field Priority float
---@field bEnabled boolean
local UTimeOverrideTimeHours = {}

---@param Owner UObject
---@param TimeOverride UTimeOverrideTimeHours
---@param CreateTime float
---@param CreateType ETimeOverrideType
---@param CreatePriority float
---@param bCreateEnabled boolean
---@param bIsTransient boolean
function UTimeOverrideTimeHours:TimeOverrideTimeHoursCreate(Owner, TimeOverride, CreateTime, CreateType, CreatePriority, bCreateEnabled, bIsTransient) end


---@class UTimeOverrideTimeInput : UTimeOverrideTimeOnly
---@field Time FTimeInput
---@field Type ETimeOverrideType
---@field Priority float
---@field bEnabled boolean
local UTimeOverrideTimeInput = {}



---@class UTimeOverrideTimeOnly : UTimeOverrideBase
local UTimeOverrideTimeOnly = {}


---@class UTimeOverrideTimeSlot : UTimeOverrideTimeOnly
---@field Setup UTimeSourceSlotSetup
---@field Slot FTimeSourceSlotSetupName
---@field Priority float
local UTimeOverrideTimeSlot = {}



---@class UTimeSource : UObject
local UTimeSource = {}


---@class UTimeSourceCSVDump : UTimeSourceLocal
---@field bEnabled boolean
---@field DateTime FDateTimeInput
---@field DurationHours float
---@field IntervalMinutes float
---@field Show FDayNightCSVReportOptions
---@field OverrideFilename FString
---@field Rate float
---@field bCapture boolean
local UTimeSourceCSVDump = {}



---@class UTimeSourceCharacterCreator : UTimeSourceVolume
---@field BaseDate FDateInput
---@field Time float
local UTimeSourceCharacterCreator = {}

---@param globalTime float
function UTimeSourceCharacterCreator:SetPreviewTime(globalTime) end
---@param Disabled boolean
function UTimeSourceCharacterCreator:PreviewDisabled(Disabled) end
---@param globalTime float
function UTimeSourceCharacterCreator:GetPreviewTime(globalTime) end
function UTimeSourceCharacterCreator:EditorForceUpdate() end
function UTimeSourceCharacterCreator:DisablePreview() end


---@class UTimeSourceFromDateTime : UTimeSourceLocal
---@field DateTime FDateTimeInput
---@field Rate float
---@field bUseRate boolean
---@field bEnabled boolean
local UTimeSourceFromDateTime = {}

function UTimeSourceFromDateTime:EditorForceUpdate() end


---@class UTimeSourceFromScenario : UTimeSourceLocal
---@field Scenario FDataTableRowHandle
---@field Rate float
---@field bUseRate boolean
local UTimeSourceFromScenario = {}

function UTimeSourceFromScenario:EditorForceUpdate() end


---@class UTimeSourceLightProbeCapture : UTimeSource
---@field CaptureSetup ULightProbeCaptureSetup
local UTimeSourceLightProbeCapture = {}



---@class UTimeSourceLocal : UTimeSourceVolume
---@field CurrentTime FDateTime
---@field CurrentRate float
local UTimeSourceLocal = {}



---@class UTimeSourceNow : UTimeSourceLocal
local UTimeSourceNow = {}


---@class UTimeSourceScrubbable : UTimeSourceVolume
---@field BaseDate FDateInput
---@field Control UTimeSourceScrubbableControlBase
---@field ControlClass TSubclassOf<UTimeSourceScrubbableControlBase>
---@field bEnabled boolean
local UTimeSourceScrubbable = {}



---@class UTimeSourceScrubbableControl : UTimeSourceScrubbableControlBase
---@field DaysOffset float
---@field HoursOffset float
---@field MinutesOffset float
---@field SecondsOffset int32
---@field bWholeDays boolean
---@field bWholeHours boolean
---@field bWholeMinutes boolean
local UTimeSourceScrubbableControl = {}



---@class UTimeSourceScrubbableControlBase : UDataAsset
local UTimeSourceScrubbableControlBase = {}


---@class UTimeSourceSlot : UTimeSourceLocal
---@field Setup UTimeSourceSlotSetup
---@field Slot FTimeSourceSlotSetupName
---@field DayOfWeek EDateTimeDayOfWeek
---@field Rate float
---@field bUseRate boolean
---@field QuantizedTime FDateTime
---@field SlotRate float
local UTimeSourceSlot = {}

function UTimeSourceSlot:EditorForceUpdate() end


---@class UTimeSourceSlotSetup : UDataAsset
---@field SlotDate FDateInput
---@field SlotTimes TArray<FTimeSourceSlotSetupTime>
---@field DayInfo FEphemerisDayInfo
---@field SortedDateTimes TArray<FTimeSourceSlotValidTime>
local UTimeSourceSlotSetup = {}



---@class UTimeSourceVolume : UTimeSource
local UTimeSourceVolume = {}


---@class UUberExposureComponent : UPostProcessingVarsComponent
---@field ExposureMethod EAutoExposureMethod
---@field AutoExposureMeterMask UTexture
---@field ExposureCompensationCurve UCurveFloat
---@field BaseExposureCompensationCurve UCurveFloat
---@field BaseExposureCompensationValue float
---@field MinExposureCurve UCurveFloat
---@field MaxExposureCurve UCurveFloat
---@field SpeedUpCurve UCurveFloat
---@field SpeedDownCurve UCurveFloat
---@field LowPercentCurve UCurveFloat
---@field HighPercentCurve UCurveFloat
---@field HistogramMinCurve UCurveFloat
---@field HistogramMaxCurve UCurveFloat
---@field ExposureBiasCurve UCurveFloat
---@field WhiteBalanceTempCurve UCurveFloat
---@field WhiteBalanceTintCurve UCurveFloat
---@field Global FUberExposureColorGradingGlobal
---@field Shadows FUberExposureColorGradingShadows
---@field Midtones FUberExposureColorGradingMidtones
---@field Highlights FUberExposureColorGradingHighlights
---@field BlueCorrectionCurve UCurveFloat
---@field ExpandGamutCurve UCurveFloat
---@field SceneColorTintCurve UCurveLinearColor
---@field ProbeToneMapAmountCurve UCurveFloat
---@field ProbeToneMapMinIntensityCurve UCurveFloat
---@field ProbeToneMapMaxEVCurve UCurveFloat
---@field ProbeOutsideIntensityCurve UCurveFloat
---@field ProbeInsideIntensityCurve UCurveFloat
---@field ProbeOutsideSaturationCurve UCurveFloat
---@field ProbeInsideSaturationCurve UCurveFloat
---@field ProbeContactShadowsMinValueCurve UCurveFloat
---@field ProbeContactShadowsLengthCurve UCurveFloat
---@field ProbeContactShadowsConeAngleCurve UCurveFloat
---@field ProbeContactShadowsFalloffExponentCurve UCurveFloat
---@field ProbeContactShadowsDepthToleranceCurve UCurveFloat
---@field bSetExposureMethod boolean
---@field bUseExposureCompensationCurve boolean
---@field bUseMinExposureCurve boolean
---@field bUseMaxExposureCurve boolean
---@field bUseSpeedUpCurve boolean
---@field bUseSpeedDownCurve boolean
---@field bUseLowPercentCurve boolean
---@field bUseHighPercentCurve boolean
---@field bUseHistogramMinCurve boolean
---@field bUseHistogramMaxCurve boolean
---@field bSetExposureBiasCurve boolean
---@field bUseWhiteBalanceTempCurve boolean
---@field bUseWhiteBalanceTintCurve boolean
---@field bUseBlueCorrectionCurve boolean
---@field bUseExpandGamutCurve boolean
---@field bUseColorGradingShadows boolean
---@field bUseColorGradingMidtones boolean
---@field bUseColorGradingHighlights boolean
---@field bUseProbeToneMapAmount boolean
---@field bUseProbeToneMapMinIntensity boolean
---@field bUseProbeToneMapMaxEV boolean
---@field bUseProbeOutsideIntensity boolean
---@field bUseProbeInsideIntensity boolean
---@field bUseProbeOutsideSaturation boolean
---@field bUseProbeInsideSaturation boolean
---@field bUseProbeContactShadowsMinValue boolean
---@field bUseProbeContactShadowsLength boolean
---@field bUseProbeContactShadowsConeAngle boolean
---@field bUseProbeContactShadowsFalloffExponent boolean
---@field bUseProbeContactShadowsDepthTolerance boolean
---@field bUseAutoExposureMeterMask boolean
---@field bUseColorGradingGlobal boolean
---@field bUseSceneColorTintCurve boolean
local UUberExposureComponent = {}



---@class UUberExposureComponentConstDriver : UUberExposureComponent
local UUberExposureComponentConstDriver = {}


---@class UUberExposureComponentExposureExpression : UUberExposureComponent
local UUberExposureComponentExposureExpression = {}


---@class UUberExposureComponentNormalizedTime : UUberExposureComponentConstDriver
local UUberExposureComponentNormalizedTime = {}


---@class UUberExposureComponentRenderSettingsCustomBlendDomain : UUberExposureComponentConstDriver
local UUberExposureComponentRenderSettingsCustomBlendDomain = {}


---@class UUberExposureComponentSunAltitude : UUberExposureComponentConstDriver
local UUberExposureComponentSunAltitude = {}


---@class UUberExposureComponentSunAltitudeReference : UUberExposureComponentSunAltitude
local UUberExposureComponentSunAltitudeReference = {}


---@class UUberExposureDriver : UPostProcessingVarsDriver
local UUberExposureDriver = {}


---@class UUberExposureDriverBlueprintBase : UUberExposureDriver
local UUberExposureDriverBlueprintBase = {}

---@param World UWorld
---@param Owner AActor
---@return float
function UUberExposureDriverBlueprintBase:UberExposureDriverGetValue(World, Owner) end


---@class UUberExposureDriverExposureExpression : UUberExposureDriver
---@field Expression UExposureExpressionsExposureValue
local UUberExposureDriverExposureExpression = {}



---@class UUberExposureDriverIndoors : UUberExposureDriver
local UUberExposureDriverIndoors = {}


---@class UUberExposureDriverNormalizedTime : UUberExposureDriver
---@field DefaultDay FDateInput
---@field bAssumeNoonIfNoDayNight boolean
---@field bUseDefaultDay boolean
local UUberExposureDriverNormalizedTime = {}



---@class UUberExposureDriverRainStormIntensity : UUberExposureDriver
local UUberExposureDriverRainStormIntensity = {}


---@class UUberExposureDriverRenderSettingsCustomBlendDomain : UUberExposureDriver
---@field domain URenderSettingsCustomBlendDomain
local UUberExposureDriverRenderSettingsCustomBlendDomain = {}



---@class UUberExposureDriverSunAltitudeDegrees : UUberExposureDriver
local UUberExposureDriverSunAltitudeDegrees = {}


