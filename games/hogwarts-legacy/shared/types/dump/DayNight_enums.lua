---@enum ECelestialPointOfInterestType
local ECelestialPointOfInterestType = {
    Unknown = 0,
    Star = 1,
    MajorConstellation = 2,
    Constellation = 3,
    Zodiac = 4,
    MessierObject = 5,
    ECelestialPointOfInterestType_MAX = 6,
}

---@enum EDateTimeDayOfWeek
local EDateTimeDayOfWeek = {
    Monday = 0,
    Tuesday = 1,
    Wednesday = 2,
    Thursday = 3,
    Friday = 4,
    Saturday = 5,
    Sunday = 6,
    EDateTimeDayOfWeek_MAX = 7,
}

---@enum EDateTimeMonth
local EDateTimeMonth = {
    January = 0,
    February = 1,
    March = 2,
    April = 3,
    May = 4,
    June = 5,
    July = 6,
    August = 7,
    September = 8,
    October = 9,
    November = 10,
    December = 11,
    EDateTimeMonth_MAX = 12,
}

---@enum EDayNightBlendOps
local EDayNightBlendOps = {
    DirectionalLightDirection = 0,
    DirectionalLightBasic = 1,
    DirectionalLightShafts = 2,
    SkyLightBasic = 3,
    SkyLightHemisphere = 4,
    SkyAtmosphere = 5,
    VolumetricCloudsBasic = 6,
    VolumetricCloudsAdvanced = 7,
    VolumetricCloudsShadow = 8,
    VolumetricCloudsSkyLight = 9,
    VolumetricCloudsGroundShadow = 10,
    VolumetricCloudsSceneLight = 11,
    ProbeLightingAdjustment = 12,
    ProbeLightingToneMap = 13,
    ProbeContactShadows = 14,
    EDayNightBlendOps_MAX = 15,
}

---@enum EDayNightCloudSceneLightingSource
local EDayNightCloudSceneLightingSource = {
    DirectionalLight = 0,
    SunLight = 1,
    SunDisk = 2,
    MoonLight = 3,
    Manual = 4,
    Automatic = 5,
    EDayNightCloudSceneLightingSource_MAX = 6,
}

---@enum EDayNightEventDirection
local EDayNightEventDirection = {
    Rising = 0,
    Setting = 1,
    EDayNightEventDirection_MAX = 2,
}

---@enum EDayNightEventDirectionTrigger
local EDayNightEventDirectionTrigger = {
    Rising = 0,
    Setting = 1,
    RisingAndSetting = 2,
    EDayNightEventDirectionTrigger_MAX = 3,
}

---@enum EDayNightInheritSunMode
local EDayNightInheritSunMode = {
    SunDiskOnly = 0,
    FullSunRecompute = 1,
    EDayNightInheritSunMode_MAX = 2,
}

---@enum EDayNightLightControllerOp
local EDayNightLightControllerOp = {
    Disable = 0,
    SetLightValue = 1,
    ModulateLightValue = 2,
    EDayNightLightControllerOp_MAX = 3,
}

---@enum EDayNightLightRigOverrideInit
local EDayNightLightRigOverrideInit = {
    Defaults = 0,
    NewMoon = 1,
    FullMoon = 2,
    ProbeNight = 3,
    EDayNightLightRigOverrideInit_MAX = 4,
}

---@enum EDayNightLightRigSetupInit
local EDayNightLightRigSetupInit = {
    Defaults = 0,
    Sun = 1,
    EDayNightLightRigSetupInit_MAX = 2,
}

---@enum EDayNightLightSource
local EDayNightLightSource = {
    Sun = 0,
    Moon = 1,
    LerpingSun = 2,
    LerpingMoon = 3,
    Invalid = 4,
    EDayNightLightSource_MAX = 5,
}

---@enum EDayNightReportAtmosphere
local EDayNightReportAtmosphere = {
    AtmosphereLightingAzi = 0,
    AtmosphereLightingAlt = 1,
    AtmosphereLightingIntensity = 2,
    AtmosphereLightingColor = 3,
    AtmosphereSunMultiplier = 4,
    AtmosphereDesaturation = 5,
    AtmosphereGroundOffset = 6,
    AtmosphereDensityOffset = 7,
    TwilightNightColorationU = 8,
    TwilightNightColorationVBase = 9,
    TwilightNightModColor = 10,
    TwilightNightIntensity = 11,
    TwilightNightDesaturation = 12,
    TwilightNightFogIntensity = 13,
    TwilightNightFogDesaturation = 14,
    TwilightNightFogStart = 15,
    TwilightNightFogEnd = 16,
    TwilightNightFogPower = 17,
    TwilightNightFogVNear = 18,
    TwilightNightFogVFar = 19,
    EDayNightReportAtmosphere_MAX = 20,
}

---@enum EDayNightReportEmissiveAdaptation
local EDayNightReportEmissiveAdaptation = {
    EmissiveAdaptationMinExposure = 0,
    EmissiveAdaptationMaxExposure = 1,
    EmissiveAdaptationTargetExposureEV = 2,
    EmissiveAdaptationFinalMultiplier = 3,
    EmissiveAdaptationOutdoorsDayTime = 4,
    EmissiveAdaptationEnabled = 5,
    EDayNightReportEmissiveAdaptation_MAX = 6,
}

---@enum EDayNightReportExposure
local EDayNightReportExposure = {
    ExposureMinMax = 0,
    ExposureBias = 1,
    ExposureHistMinMax = 2,
    ExposureSpeed = 3,
    ExposureLowHighPercent = 4,
    ExposureLastFrameLuminance = 5,
    ExposureLastFrameExposure = 6,
    ExposureLastFrameBright = 7,
    EDayNightReportExposure_MAX = 8,
}

---@enum EDayNightReportFog
local EDayNightReportFog = {
    FogDensity = 0,
    FogOpacity = 1,
    FogDistances = 2,
    FogInscattering = 3,
    FogVolumetric = 4,
    EDayNightReportFog_MAX = 5,
}

---@enum EDayNightReportGeneral
local EDayNightReportGeneral = {
    DateTime = 0,
    Time = 1,
    NormalizedTime = 2,
    ProbeLerp = 3,
    ProbeIndex = 4,
    BlendDomainIndoors = 5,
    BlendDomainDayNight = 6,
    BlendDomainOvercast = 7,
    Eye = 8,
    GlobalSS = 9,
    EDayNightReportGeneral_MAX = 10,
}

---@enum EDayNightReportLightRig
local EDayNightReportLightRig = {
    LightRigSun = 0,
    LightRigMoon = 1,
    LightRigLight = 2,
    CloudLighting = 3,
    CloudSkylight = 4,
    CloudShadows = 5,
    EDayNightReportLightRig_MAX = 6,
}

---@enum EDayNightReportLighting
local EDayNightReportLighting = {
    DirLightAzi = 0,
    DirLightAlt = 1,
    DirLightIntensity = 2,
    DirLightColor = 3,
    DirLightIndirectIntensity = 4,
    DirLightSpecularScale = 5,
    DirLightLightShaftBloom = 6,
    DirLightLightShaftOcclusion = 7,
    SkyLightIntensity = 8,
    SkyLightIndirectIntensity = 9,
    EDayNightReportLighting_MAX = 10,
}

---@enum EDayNightReportSky
local EDayNightReportSky = {
    NightNegOneDayOne = 0,
    NightDay = 1,
    Night = 2,
    Day = 3,
    NightSkyStrength = 4,
    SunAzi = 5,
    SunAlt = 6,
    SunDiskAzi = 7,
    SunDiskAlt = 8,
    SunLightAzi = 9,
    SunLightAlt = 10,
    SunVisibility = 11,
    SunScale = 12,
    MoonAzi = 13,
    MoonAlt = 14,
    MoonPhase = 15,
    MoonSize = 16,
    MoonVisibility = 17,
    MoonScale = 18,
    MoonSunAngle = 19,
    PlanetVenus = 20,
    PlanetMars = 21,
    PlanetJupiter = 22,
    PlanetSaturn = 23,
    EDayNightReportSky_MAX = 24,
}

---@enum EDayNightTimeOverrideMode
local EDayNightTimeOverrideMode = {
    DateTime = 0,
    TimeOnly = 1,
    EDayNightTimeOverrideMode_MAX = 2,
}

---@enum EDayNightTweakDirectionalLightMode
local EDayNightTweakDirectionalLightMode = {
    SunAndMoon = 0,
    SunOnly = 1,
    MoonOnly = 2,
    EDayNightTweakDirectionalLightMode_MAX = 3,
}

---@enum EFixedSunPositionInputType
local EFixedSunPositionInputType = {
    AltitudeDegrees = 0,
    PercentageOfTransit = 1,
    PercentageOfTransitOrMidnight = 2,
    EFixedSunPositionInputType_MAX = 3,
}

---@enum EFixedSunPositionType
local EFixedSunPositionType = {
    Noon = 0,
    Midnight = 1,
    SunRise = 2,
    SunSet = 3,
    Rising = 4,
    Setting = 5,
    EFixedSunPositionType_MAX = 6,
}

---@enum EHourAmPm
local EHourAmPm = {
    AM = 0,
    PM = 1,
    EHourAmPm_MAX = 2,
}

---@enum ELerpEasingType
local ELerpEasingType = {
    EaseIn = 0,
    EaseOut = 1,
    EaseInOut = 2,
    ELerpEasingType_MAX = 3,
}

---@enum ELightParameterSmoothingTimeBase
local ELightParameterSmoothingTimeBase = {
    Seconds = 0,
    Minutes = 1,
    Hours = 2,
    ELightParameterSmoothingTimeBase_MAX = 3,
}

---@enum ELightParameterSmoothingTimeSource
local ELightParameterSmoothingTimeSource = {
    RealTime = 0,
    TimeOfDay = 1,
    NormalizedTime = 2,
    ELightParameterSmoothingTimeSource_MAX = 3,
}

---@enum ELightParameterTimeBlendInput
local ELightParameterTimeBlendInput = {
    TimeOfDay = 0,
    NormalizedTime = 1,
    ELightParameterTimeBlendInput_MAX = 2,
}

---@enum ELightProbeCaptureMode
local ELightProbeCaptureMode = {
    Off = 0,
    GlobalSlot = 1,
    LocalTime = 2,
    ELightProbeCaptureMode_MAX = 3,
}

---@enum ELightRigCurveColorConversionType
local ELightRigCurveColorConversionType = {
    None = 0,
    ColorTemperatureK = 1,
    BlackBodyK = 2,
    Saturation = 3,
    Brightness = 4,
    ELightRigCurveColorConversionType_MAX = 5,
}

---@enum ELightRigCurveLinearColorType
local ELightRigCurveLinearColorType = {
    RGBA = 0,
    RGBOneA = 1,
    RGBZeroA = 2,
    RGBTimesAOneA = 3,
    RGBTimesAZeroA = 4,
    RGBNormalizedOneA = 5,
    RGBNormalizedZeroA = 6,
    RGBNormalizedA = 7,
    RGBNormalizedIntA = 8,
    RGBGrayOneA = 9,
    RGBGrayZeroA = 10,
    RGBGrayA = 11,
    ELightRigCurveLinearColorType_MAX = 12,
}

---@enum ELightRigCurveParam
local ELightRigCurveParam = {
    LightRigParamNone = 0,
    DirectionalLight_Direction = 1,
    DirectionalLight_Intensity = 2,
    DirectionalLight_LightColor = 3,
    DirectionalLight_Temperature = 4,
    DirectionalLight_UseTemperature = 5,
    DirectionalLight_SpecularScale = 6,
    DirectionalLight_IndirectLightingIntensity = 7,
    DirectionalLight_VolumetricScatteringIntensity = 8,
    DirectionalLight_AtmosphereSunLightPriority = 9,
    DirectionalLight_EnableLightShaftOcclusion = 10,
    DirectionalLight_OcclusionMaskDarkness = 11,
    DirectionalLight_OcclusionDepthRange = 12,
    DirectionalLight_EnableLightShaftBloom = 13,
    DirectionalLight_BloomScale = 14,
    DirectionalLight_BloomThreshold = 15,
    DirectionalLight_BloomTint = 16,
    DirectionalLight_LightShaftOverrideDirection = 17,
    SkyAtmosphere_BottomRadius = 18,
    SkyAtmosphere_AtmosphereHeight = 19,
    SkyAtmosphere_GroundAlbedo = 20,
    SkyAtmosphere_MultiScatteringFactor = 21,
    SkyAtmosphere_RayleighScatteringScale = 22,
    SkyAtmosphere_RayleighScattering = 23,
    SkyAtmosphere_RayleighExponentialDistribution = 24,
    SkyAtmosphere_MieScatteringScale = 25,
    SkyAtmosphere_MieScattering = 26,
    SkyAtmosphere_MieAbsorptionScale = 27,
    SkyAtmosphere_MieAbsorption = 28,
    SkyAtmosphere_MieAnisotropy = 29,
    SkyAtmosphere_MieExponentialDistribution = 30,
    SkyAtmosphere_OzoneAbsorptionScale = 31,
    SkyAtmosphere_OzoneAbsorption = 32,
    SkyAtmosphere_OzoneTentDistributionTipAltitude = 33,
    SkyAtmosphere_OzoneTentDistributionTipValue = 34,
    SkyAtmosphere_OzoneTentDistributionWidth = 35,
    SkyAtmosphere_SkyLuminanceFactor = 36,
    SkyAtmosphere_SkyLuminanceFactorIntensity = 37,
    SkyAtmosphere_SkyDesaturation = 38,
    SkyAtmosphere_AerialPespectiveViewDistanceScale = 39,
    SkyAtmosphere_HeightFogContribution = 40,
    SkyAtmosphere_HeightFogContributionInscattering = 41,
    SkyAtmosphere_HeightFogContributionDirectionalInscaterring = 42,
    SkyAtmosphere_HeightFogAccurateInscatteringColor = 43,
    SkyAtmosphere_HeightFogContributionDesaturation = 44,
    SkyAtmosphere_HeightFogContributionDesaturationInscattering = 45,
    SkyAtmosphere_HeightFogContributionDesaturationDirectionalInscattering = 46,
    SkyAtmosphere_TransmittanceMinLightElevationAngle = 47,
    SkyAtmosphere_HorizonToZenithColorationU = 48,
    SkyAtmosphere_HorizonToZenithColorationIntensity = 49,
    SkyAtmosphere_HorizonToZenithColorationDesaturation = 50,
    SkyAtmosphere_HorizonToZenithFogOpticalDepthScale = 51,
    SkyAtmosphere_HorizonToZenithFogOpticalDepthPower = 52,
    SkyAtmosphere_HorizonToZenithFogIntensity = 53,
    SkyAtmosphere_HorizonToZenithFogDesaturation = 54,
    SkyAtmosphere_SkyOnlyOverallBrightness = 55,
    SkyAtmosphere_SkyOnlyOverallSaturation = 56,
    SkyAtmosphere_SkyOnlySkyModIntensity = 57,
    SkyAtmosphere_SkyOnlySkyModSaturation = 58,
    SkyAtmosphere_SkyOnlySkyModColor = 59,
    SkyAtmosphere_SkyOnlySunDiskModIntensity = 60,
    SkyAtmosphere_SkyOnlySunDiskModSaturation = 61,
    SkyAtmosphere_SkyOnlySunDiskModColor = 62,
    SkyAtmosphere_SkyOnlyMoonDiskModIntensity = 63,
    SkyAtmosphere_SkyOnlyMoonDiskModSaturation = 64,
    SkyAtmosphere_SkyOnlyMoonDiskModColor = 65,
    SkyAtmosphere_SkyOnlyTwilightBaseColorIntensity = 66,
    SkyAtmosphere_SkyOnlyTwilightBaseColorSaturation = 67,
    SkyAtmosphere_SkyOnlyTwilightBaseColorColor = 68,
    SkyAtmosphere_SkyOnlyTwilightModIntensity = 69,
    SkyAtmosphere_SkyOnlyTwilightModSaturation = 70,
    SkyAtmosphere_SkyOnlyTwilightModColor = 71,
    SkyAtmosphere_LightDirection0 = 72,
    SkyAtmosphere_LightDirection1 = 73,
    SkyLight_Intensity = 74,
    SkyLight_LightColor = 75,
    SkyLight_IndirectLightingIntensity = 76,
    SkyLight_VolumetricScatteringIntensity = 77,
    SkyLight_Hemisphere_OutsideIntensity = 78,
    SkyLight_Hemisphere_InsideIntensity = 79,
    SkyLight_Probe_OutsideMinimumIntensity = 80,
    SkyLight_Probe_InsideMinimumIntensity = 81,
    SkyLight_Probe_SkyOcclusionContrast = 82,
    SkyLight_Probe_SkyOcclusionExponent = 83,
    CloudLighting_Ambient = 84,
    CloudLighting_Light = 85,
    CloudLighting_Extinction = 86,
    CloudLighting_PowderExtinction = 87,
    CloudLighting_PowderStrength = 88,
    CloudLighting_FinalOutput = 89,
    CloudLighting_SkyLightCloudOutput = 90,
    CloudLighting_SkyLightCloudAlpha = 91,
    CloudLighting_SkyLightDesaturate = 92,
    CloudLighting_SkyLightGroundColor = 93,
    CloudLighting_ShadowScale = 94,
    CloudLighting_FogDensityMultiplier = 95,
    CloudLighting_GroundShadowStrength = 96,
    CloudLighting_Direction = 97,
    CloudLighting_Color = 98,
    CloudLighting_Intensity = 99,
    CloudLighting_Saturation = 100,
    ProbeLighting_ProbeOutsideIntensity = 101,
    ProbeLighting_ProbeInsideIntensity = 102,
    ProbeLighting_ProbeOutsideSaturation = 103,
    ProbeLighting_ProbeInsideSaturation = 104,
    ProbeLighting_ProbeToneMapAmount = 105,
    ProbeLighting_ProbeToneMapMinIntensity = 106,
    ProbeLighting_ProbeToneMapMaxEV = 107,
    ProbeContactShadows_MinValue = 108,
    ProbeContactShadows_Length = 109,
    ProbeContactShadows_ConeAngle = 110,
    ProbeContactShadows_FalloffExponent = 111,
    ProbeContactShadows_DepthTolerance = 112,
    ExponentialHeightFog_ZOffset = 113,
    ExponentialHeightFog_FogDensity = 114,
    ExponentialHeightFog_FogHeightFalloff = 115,
    ExponentialHeightFog_FogInscatteringColor = 116,
    ExponentialHeightFog_FogInscatteringIntensity = 117,
    ExponentialHeightFog_FogInscatteringSaturation = 118,
    ExponentialHeightFog_FogInscatteringColorDirLightLuminanceModulate = 119,
    ExponentialHeightFog_FogMaxOpacity = 120,
    ExponentialHeightFog_StartDistance = 121,
    ExponentialHeightFog_FogCutoffDistance = 122,
    ExponentialHeightFog_DistantFogCloudShadowsMinimum = 123,
    ExponentialHeightFog_SecondFogDensity = 124,
    ExponentialHeightFog_SecondFogHeightFalloff = 125,
    ExponentialHeightFog_SecondFogHeightOffset = 126,
    ExponentialHeightFog_DirectionalInscatteringExponent = 127,
    ExponentialHeightFog_DirectionalInscatteringStartDistance = 128,
    ExponentialHeightFog_DirectionalInscatteringColor = 129,
    ExponentialHeightFog_DirectionalInscatteringIntensity = 130,
    ExponentialHeightFog_DirectionalInscatteringSaturation = 131,
    ExponentialHeightFog_DirectionalInscatteringColorDirLightLuminanceModulate = 132,
    ExponentialHeightFog_VolumetricFogScatteringDistribution = 133,
    ExponentialHeightFog_VolumetricFogAlbedo = 134,
    ExponentialHeightFog_VolumetricFogEmissive = 135,
    ExponentialHeightFog_VolumetricFogExtinctionScale = 136,
    ExponentialHeightFog_VolumetricFogDistance = 137,
    ExponentialHeightFog_OutsideVolumeSunMultiplier = 138,
    ExponentialHeightFog_VolumetricLightingDirectionalLightScattering = 139,
    ExponentialHeightFog_VolumetricLightingDirectionalLightDesaturation = 140,
    ExponentialHeightFog_VolumetricLightingShadowsNearMinimum = 141,
    ExponentialHeightFog_VolumetricLightingShadowsFarMinimum = 142,
    ExponentialHeightFog_VolumetricLightingShadowsNearDistance = 143,
    ExponentialHeightFog_VolumetricLightingShadowsFarDistance = 144,
    ExponentialHeightFog_VolumetricLightingCloudShadowsNearMinimum = 145,
    ExponentialHeightFog_VolumetricLightingCloudShadowsFarMinimum = 146,
    ExponentialHeightFog_VolumetricLightingCloudShadowsNearDistance = 147,
    ExponentialHeightFog_VolumetricLightingCloudShadowsFarDistance = 148,
    ExponentialHeightFog_VolumetricInscatteringContribution = 149,
    ExponentialHeightFog_VolumetricDirectionalInscatteringContribution = 150,
    ExponentialHeightFog_VolumetricFogHeightFogNearStartDistance = 151,
    ExponentialHeightFog_VolumetricFogHeightFogNearFullDistance = 152,
    ExponentialHeightFog_VolumetricFogHeightFogColorationBlendStartDistance = 153,
    ExponentialHeightFog_VolumetricFogHeightFogColorationBlendFullDistance = 154,
    ExponentialHeightFog_VolumetricFogHeightFogColorationBlendStrength = 155,
    ExponentialHeightFog_InscatteringTextureTint_DEPRECATED = 156,
    ExponentialHeightFog_FullyDirectionalInscatteringColorDistance_DEPRECATED = 157,
    ExponentialHeightFog_NonDirectionalInscatteringColorDistance_DEPRECATED = 158,
    ExponentialHeightFog_InscatteringColorCubemapFactor_DEPRECATED = 159,
    ELightRigCurveParam_MAX = 160,
}

---@enum ELightRigCurveType
local ELightRigCurveType = {
    Absolute = 0,
    Multiply = 1,
    Add = 2,
    Minimum = 3,
    Maximum = 4,
    ELightRigCurveType_MAX = 5,
}

---@enum ELightRigMode
local ELightRigMode = {
    GameAndProbeCapture = 0,
    GameOnly = 1,
    ProbeCaptureOnly = 2,
    ELightRigMode_MAX = 3,
}

---@enum EMoonPathMode
local EMoonPathMode = {
    SunRelative = 0,
    MoonRelative = 1,
    Absolute = 2,
    EMoonPathMode_MAX = 3,
}

---@enum EMoonPhaseName
local EMoonPhaseName = {
    NewMoon = 0,
    WaxingCrescent = 1,
    FirstQuarter = 2,
    WaxingGibbous = 3,
    FullMoon = 4,
    WaningGibbous = 5,
    LastQuarter = 6,
    WaningCrescent = 7,
    EMoonPhaseName_MAX = 8,
}

---@enum EProbeNightLightMoonDirection
local EProbeNightLightMoonDirection = {
    FromSkyState = 0,
    OppositeSun = 1,
    FixedDirection = 2,
    EProbeNightLightMoonDirection_MAX = 3,
}

---@enum ESkyAtmosphereColorationComputeOutput
local ESkyAtmosphereColorationComputeOutput = {
    Composited = 0,
    ColorOnly = 1,
    IntensityOnly = 2,
    ColorRGBIntensityA = 3,
    ESkyAtmosphereColorationComputeOutput_MAX = 4,
}

---@enum ESkyAtmosphereColorationComputeType
local ESkyAtmosphereColorationComputeType = {
    SkyColorOnly = 0,
    SunLightOnly = 1,
    MoonLightOnly = 2,
    DirLightOnly = 3,
    SunLit = 4,
    MoonLit = 5,
    DirLit = 6,
    ESkyAtmosphereColorationComputeType_MAX = 7,
}

---@enum ESwitchableStarrySkyMode
local ESwitchableStarrySkyMode = {
    Normal = 0,
    Highlight = 1,
    ESwitchableStarrySkyMode_MAX = 2,
}

---@enum ETimeDateChangeValueType
local ETimeDateChangeValueType = {
    None = 0,
    Relative = 1,
    Absolute = 2,
    ETimeDateChangeValueType_MAX = 3,
}

---@enum ETimeOverrideType
local ETimeOverrideType = {
    ActualTime = 0,
    NormalizedTime = 1,
    ETimeOverrideType_MAX = 2,
}

---@enum EVisiblePlanets
local EVisiblePlanets = {
    Venus = 0,
    Mars = 1,
    Jupiter = 2,
    Saturn = 3,
    EVisiblePlanets_MAX = 4,
}

