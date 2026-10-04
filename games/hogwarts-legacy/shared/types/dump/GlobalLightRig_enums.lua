---@enum EAdjustedValueBooleanMode
local EAdjustedValueBooleanMode = {
    Default = 0,
    On = 1,
    Off = 2,
    EAdjustedValueBooleanMode_MAX = 3,
}

---@enum EAdjustedValueMode
local EAdjustedValueMode = {
    NoChange = 0,
    Set = 1,
    Multiply = 2,
    Add = 3,
    Subtract = 4,
    Divide = 5,
    Percent = 6,
    ClampOriginal = 7,
    EAdjustedValueMode_MAX = 8,
}

---@enum EBentDirectionalLightWindowLocation
local EBentDirectionalLightWindowLocation = {
    TopLeft = 0,
    TopRight = 1,
    BottomRight = 2,
    BottomLeft = 3,
    Top = 4,
    Right = 5,
    Bottom = 6,
    Left = 7,
    Center = 8,
    EBentDirectionalLightWindowLocation_MAX = 9,
}

---@enum EGlobalLightRigModColorConversionType
local EGlobalLightRigModColorConversionType = {
    None = 0,
    ColorTemperatureK = 1,
    BlackBodyK = 2,
    Saturation = 3,
    Brightness = 4,
    EGlobalLightRigModColorConversionType_MAX = 5,
}

---@enum EGlobalLightRigModLerpEasingType
local EGlobalLightRigModLerpEasingType = {
    EaseIn = 0,
    EaseOut = 1,
    EaseInOut = 2,
    EGlobalLightRigModLerpEasingType_MAX = 3,
}

---@enum EGlobalLightRigModLinearColorType
local EGlobalLightRigModLinearColorType = {
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
    EGlobalLightRigModLinearColorType_MAX = 12,
}

---@enum EGlobalLightRigModParam
local EGlobalLightRigModParam = {
    ParamNone = 0,
    DirectionalLight_Direction = 1,
    DirectionalLight_Intensity = 2,
    DirectionalLight_LightColor = 3,
    DirectionalLight_Temperature = 4,
    DirectionalLight_UseTemperature = 5,
    DirectionalLight_SpecularScale = 6,
    DirectionalLight_IndirectLightingIntensity = 7,
    DirectionalLight_VolumetricScatteringIntensity = 8,
    DirectionalLight_AtmosphereSunLightPriority = 9,
    DirectionalLight_PseudoLight = 10,
    DirectionalLight_CloudShadowStrength = 11,
    DirectionalLight_CloudShadowOnAtmosphereStrength = 12,
    DirectionalLight_CloudShadowOnSurfaceStrength = 13,
    DirectionalLight_CloudShadowMinMax = 14,
    DirectionalLight_AtmosphereSunDiskColorScale = 15,
    DirectionalLight_EnableLightShaftOcclusion = 16,
    DirectionalLight_OcclusionMaskDarkness = 17,
    DirectionalLight_OcclusionDepthRange = 18,
    DirectionalLight_EnableLightShaftBloom = 19,
    DirectionalLight_BloomScale = 20,
    DirectionalLight_BloomThreshold = 21,
    DirectionalLight_BloomTint = 22,
    DirectionalLight_LightShaftOverrideDirection = 23,
    SkyLight_Intensity = 24,
    SkyLight_LightColor = 25,
    SkyLight_IndirectLightingIntensity = 26,
    SkyLight_VolumetricScatteringIntensity = 27,
    SkyLight_Hemisphere_OutsideIntensity = 28,
    SkyLight_Hemisphere_InsideIntensity = 29,
    SkyLight_Probe_OutsideMinimumIntensity = 30,
    SkyLight_Probe_InsideMinimumIntensity = 31,
    SkyLight_Probe_SkyOcclusionContrast = 32,
    SkyLight_Probe_SkyOcclusionExponent = 33,
    SkyAtmosphere_BottomRadius = 34,
    SkyAtmosphere_AtmosphereHeight = 35,
    SkyAtmosphere_GroundAlbedo = 36,
    SkyAtmosphere_MultiScatteringFactor = 37,
    SkyAtmosphere_RayleighScatteringScale = 38,
    SkyAtmosphere_RayleighScattering = 39,
    SkyAtmosphere_RayleighExponentialDistribution = 40,
    SkyAtmosphere_MieScatteringScale = 41,
    SkyAtmosphere_MieScattering = 42,
    SkyAtmosphere_MieAbsorptionScale = 43,
    SkyAtmosphere_MieAbsorption = 44,
    SkyAtmosphere_MieAnisotropy = 45,
    SkyAtmosphere_MieExponentialDistribution = 46,
    SkyAtmosphere_OzoneAbsorptionScale = 47,
    SkyAtmosphere_OzoneAbsorption = 48,
    SkyAtmosphere_OzoneTentDistributionTipAltitude = 49,
    SkyAtmosphere_OzoneTentDistributionTipValue = 50,
    SkyAtmosphere_OzoneTentDistributionWidth = 51,
    SkyAtmosphere_SkyLuminanceFactor = 52,
    SkyAtmosphere_SkyLuminanceFactorIntensity = 53,
    SkyAtmosphere_SkyDesaturation = 54,
    SkyAtmosphere_AerialPespectiveViewDistanceScale = 55,
    SkyAtmosphere_AerialPerspectiveStartDepth = 56,
    SkyAtmosphere_HeightFogContribution = 57,
    SkyAtmosphere_HeightFogContributionInscattering = 58,
    SkyAtmosphere_HeightFogContributionDirectionalInscaterring = 59,
    SkyAtmosphere_HeightFogAccurateInscatteringColor = 60,
    SkyAtmosphere_HeightFogContributionDesaturation = 61,
    SkyAtmosphere_HeightFogContributionDesaturationInscattering = 62,
    SkyAtmosphere_HeightFogContributionDesaturationDirectionalInscattering = 63,
    SkyAtmosphere_TransmittanceMinLightElevationAngle = 64,
    SkyAtmosphere_HorizonToZenithColorationTexture = 65,
    SkyAtmosphere_HorizonToZenithColorationU = 66,
    SkyAtmosphere_HorizonToZenithColorationIntensity = 67,
    SkyAtmosphere_HorizonToZenithColorationDesaturation = 68,
    SkyAtmosphere_HorizonToZenithFogOpticalDepthScale = 69,
    SkyAtmosphere_HorizonToZenithFogOpticalDepthPower = 70,
    SkyAtmosphere_HorizonToZenithFogIntensity = 71,
    SkyAtmosphere_HorizonToZenithFogDesaturation = 72,
    SkyAtmosphere_LightDirection0 = 73,
    SkyAtmosphere_LightDirection1 = 74,
    SkyAtmosphere_SkyOnlyOverallBrightness = 75,
    SkyAtmosphere_SkyOnlyOverallSaturation = 76,
    SkyAtmosphere_SkyOnlySkyModIntensity = 77,
    SkyAtmosphere_SkyOnlySkyModSaturation = 78,
    SkyAtmosphere_SkyOnlySkyModColor = 79,
    SkyAtmosphere_SkyOnlySunDiskModIntensity = 80,
    SkyAtmosphere_SkyOnlySunDiskModSaturation = 81,
    SkyAtmosphere_SkyOnlySunDiskModColor = 82,
    SkyAtmosphere_SkyOnlyMoonDiskModIntensity = 83,
    SkyAtmosphere_SkyOnlyMoonDiskModSaturation = 84,
    SkyAtmosphere_SkyOnlyMoonDiskModColor = 85,
    SkyAtmosphere_SkyOnlyTwilightBaseColorIntensity_DEPRECATED = 86,
    SkyAtmosphere_SkyOnlyTwilightBaseColorSaturation_DEPRECATED = 87,
    SkyAtmosphere_SkyOnlyTwilightBaseColorColor_DEPRECATED = 88,
    SkyAtmosphere_SkyOnlyTwilightModIntensity_DEPRECATED = 89,
    SkyAtmosphere_SkyOnlyTwilightModSaturation_DEPRECATED = 90,
    SkyAtmosphere_SkyOnlyTwilightModColor_DEPRECATED = 91,
    CloudLighting_Ambient = 92,
    CloudLighting_Light = 93,
    CloudLighting_Extinction = 94,
    CloudLighting_PowderExtinction = 95,
    CloudLighting_PowderStrength = 96,
    CloudLighting_FinalOutput = 97,
    CloudLighting_SkyLightCloudOutput = 98,
    CloudLighting_SkyLightCloudAlpha = 99,
    CloudLighting_SkyLightDesaturate = 100,
    CloudLighting_SkyLightGroundColor = 101,
    CloudLighting_ShadowScale = 102,
    CloudLighting_ShadowMapCloudShadowDensity = 103,
    CloudLighting_RayMarchCloudShadowScale = 104,
    CloudLighting_RayMarchShadowDensity = 105,
    CloudLighting_SkyLightShadowDensity = 106,
    CloudLighting_FogDensityMultiplier = 107,
    CloudLighting_HeightFogDensityMultiplier = 108,
    CloudLighting_GroundShadowStrength = 109,
    CloudLighting_CutOutDistanceMeters = 110,
    CloudLighting_CutOutFadeDistanceMeters = 111,
    CloudLighting_Direction = 112,
    CloudLighting_Color = 113,
    CloudLighting_Intensity = 114,
    CloudLighting_Saturation = 115,
    CloudsWind_WindSpeed = 116,
    CloudsWind_WindSkew = 117,
    CloudsWind_WeatherSpeed = 118,
    CloudsWind_SkyLightWeatherSpeedScale = 119,
    CloudsWind_HighAltitudeSpeed = 120,
    ProbeLighting_ProbeOutsideIntensity = 121,
    ProbeLighting_ProbeInsideIntensity = 122,
    ProbeLighting_ProbeOutsideSaturation = 123,
    ProbeLighting_ProbeInsideSaturation = 124,
    ProbeLighting_ProbeToneMapAmount = 125,
    ProbeLighting_ProbeToneMapMinIntensity = 126,
    ProbeLighting_ProbeToneMapMaxEV = 127,
    ProbeContactShadows_MinValue = 128,
    ProbeContactShadows_Length = 129,
    ProbeContactShadows_ConeAngle = 130,
    ProbeContactShadows_FalloffExponent = 131,
    ProbeContactShadows_DepthTolerance = 132,
    ExponentialHeightFog_ZOffset = 133,
    ExponentialHeightFog_FogDensity = 134,
    ExponentialHeightFog_FogHeightFalloff = 135,
    ExponentialHeightFog_FogInscatteringColor = 136,
    ExponentialHeightFog_FogInscatteringIntensity = 137,
    ExponentialHeightFog_FogInscatteringSaturation = 138,
    ExponentialHeightFog_FogInscatteringColorDirLightLuminanceModulate = 139,
    ExponentialHeightFog_FogMaxOpacity = 140,
    ExponentialHeightFog_StartDistance = 141,
    ExponentialHeightFog_FogCutoffDistance = 142,
    ExponentialHeightFog_DistantFogCloudShadowsMinimum = 143,
    ExponentialHeightFog_SecondFogDensity = 144,
    ExponentialHeightFog_SecondFogHeightFalloff = 145,
    ExponentialHeightFog_SecondFogHeightOffset = 146,
    ExponentialHeightFog_DirectionalInscatteringExponent = 147,
    ExponentialHeightFog_DirectionalInscatteringStartDistance = 148,
    ExponentialHeightFog_DirectionalInscatteringColor = 149,
    ExponentialHeightFog_DirectionalInscatteringIntensity = 150,
    ExponentialHeightFog_DirectionalInscatteringSaturation = 151,
    ExponentialHeightFog_DirectionalInscatteringColorDirLightLuminanceModulate = 152,
    ExponentialHeightFog_VolumetricFogScatteringDistribution = 153,
    ExponentialHeightFog_VolumetricFogAlbedo = 154,
    ExponentialHeightFog_VolumetricFogEmissive = 155,
    ExponentialHeightFog_VolumetricFogExtinctionScale = 156,
    ExponentialHeightFog_VolumetricFogDistance = 157,
    ExponentialHeightFog_OutsideVolumeSunMultiplier = 158,
    ExponentialHeightFog_VolumetricLightingDirectionalLightScattering = 159,
    ExponentialHeightFog_VolumetricLightingDirectionalLightDesaturation = 160,
    ExponentialHeightFog_VolumetricLightingShadowsNearMinimum = 161,
    ExponentialHeightFog_VolumetricLightingShadowsFarMinimum = 162,
    ExponentialHeightFog_VolumetricLightingShadowsNearDistance = 163,
    ExponentialHeightFog_VolumetricLightingShadowsFarDistance = 164,
    ExponentialHeightFog_VolumetricLightingCloudShadowsNearMinimum = 165,
    ExponentialHeightFog_VolumetricLightingCloudShadowsFarMinimum = 166,
    ExponentialHeightFog_VolumetricLightingCloudShadowsNearDistance = 167,
    ExponentialHeightFog_VolumetricLightingCloudShadowsFarDistance = 168,
    ExponentialHeightFog_VolumetricLightingHistoryWeight = 169,
    ExponentialHeightFog_VolumetricLightingHistoryWeightStableCell = 170,
    ExponentialHeightFog_VolumetricLightingHistoryWeightMovingLight = 171,
    ExponentialHeightFog_VolumetricInscatteringContribution = 172,
    ExponentialHeightFog_VolumetricDirectionalInscatteringContribution = 173,
    ExponentialHeightFog_VolumetricFogHeightFogNearStartDistance = 174,
    ExponentialHeightFog_VolumetricFogHeightFogNearFullDistance = 175,
    ExponentialHeightFog_VolumetricFogHeightFogColorationBlendStartDistance = 176,
    ExponentialHeightFog_VolumetricFogHeightFogColorationBlendFullDistance = 177,
    ExponentialHeightFog_VolumetricFogHeightFogColorationBlendStrength = 178,
    ExponentialHeightFog_VolumetricFogHistoryWeight = 179,
    ExponentialHeightFog_VolumetricFogHistoryWeightFarFog = 180,
    ExponentialHeightFog_DensityTweakingLightingThreshold = 181,
    ExponentialHeightFog_DensityTweakingMinPercentage = 182,
    ExponentialHeightFog_AliasingReduction = 183,
    ExponentialHeightFog_VolumetricFogHighQualityDistance = 184,
    ExponentialHeightFog_EmptyCellSkyOcclusion = 185,
    ExponentialHeightFog_EnableVariableScatteringDistribution = 186,
    ExponentialHeightFog_MinScatteringDistribution = 187,
    ExponentialHeightFog_MaxScatteringDistribution = 188,
    ExponentialHeightFog_ScatteringDistributionInterpStart = 189,
    ExponentialHeightFog_ScatteringDistributionInterpEnd = 190,
    ExponentialHeightFog_FullDensityDistance = 191,
    ExponentialHeightFog_MinDensityFactor = 192,
    ExponentialHeightFog_InscatteringTextureTint_DEPRECATED = 193,
    ExponentialHeightFog_FullyDirectionalInscatteringColorDistance_DEPRECATED = 194,
    ExponentialHeightFog_NonDirectionalInscatteringColorDistance_DEPRECATED = 195,
    ExponentialHeightFog_InscatteringColorCubemapFactor_DEPRECATED = 196,
    EGlobalLightRigModParam_MAX = 197,
}

---@enum EGlobalLightRigModParamFamily
local EGlobalLightRigModParamFamily = {
    NoFamily = 0,
    DirectionalLightDirection = 1,
    DirectionalLightParameters = 2,
    SkyLight = 3,
    SkyAtmosphere = 4,
    CloudLighting = 5,
    CloudsWind = 6,
    ProbeLighting = 7,
    ExponentialHeightFog = 8,
    EGlobalLightRigModParamFamily_MAX = 9,
}

---@enum EGlobalLightRigModParamType
local EGlobalLightRigModParamType = {
    NoType = 0,
    FloatType = 1,
    BoolType = 2,
    ColorType = 3,
    LinearColorType = 4,
    VectorType = 5,
    TextureType = 6,
    EGlobalLightRigModParamType_MAX = 7,
}

---@enum EGlobalLightRigModTransform
local EGlobalLightRigModTransform = {
    None = 0,
    Negate = 1,
    Abs = 2,
    OneMinus = 3,
    Saturate = 4,
    Square = 5,
    Normalize = 6,
    EGlobalLightRigModTransform_MAX = 7,
}

---@enum EGlobalLightRigModType
local EGlobalLightRigModType = {
    Absolute = 0,
    Multiply = 1,
    Add = 2,
    Minimum = 3,
    Maximum = 4,
    EGlobalLightRigModType_MAX = 5,
}

---@enum EGlobalLightRigProbeMode
local EGlobalLightRigProbeMode = {
    GameAndProbeCapture = 0,
    GameOnly = 1,
    ProbeCaptureOnly = 2,
    EGlobalLightRigProbeMode_MAX = 3,
}

---@enum EGlobalLightingBlendOps
local EGlobalLightingBlendOps = {
    LightDirection = 0,
    LightParameters = 1,
    SecondaryLightDirection = 2,
    SecondaryLightParameters = 3,
    SkyLightParameters = 4,
    ExpHeightFogParameters = 5,
    CloudsLightingParameters = 6,
    CloudsPresetParameters = 7,
    CloudsWindParameters = 8,
    ProbeLightingParameters = 9,
    SkyAtmosphereParameters = 10,
    CustomBlendables = 11,
    EGlobalLightingBlendOps_MAX = 12,
}

---@enum EGlobalLightingBlendableInputType
local EGlobalLightingBlendableInputType = {
    BaseValues = 0,
    CombinedValues = 1,
    EGlobalLightingBlendableInputType_MAX = 2,
}

---@enum EGlobalLightingCustomBlendableType
local EGlobalLightingCustomBlendableType = {
    Scalar = 0,
    LinearColor = 1,
    Time = 2,
    EGlobalLightingCustomBlendableType_MAX = 3,
}

---@enum EGlobalLightingFogZMode
local EGlobalLightingFogZMode = {
    BaseOfVolume = 0,
    CenterOfVolume = 1,
    CameraZ = 2,
    PlayerZ = 3,
    WorldBase = 4,
    OffsetOnly = 5,
    OffsetIsAbsolute = 6,
    EGlobalLightingFogZMode_MAX = 7,
}

---@enum EGlobalLightingMasterComponent
local EGlobalLightingMasterComponent = {
    DirectionalLight = 0,
    SecondaryDirectionalLight = 1,
    SkyLight = 2,
    SkyAtmosphere = 3,
    ExponentialHeightFog = 4,
    VolumetricClouds = 5,
    EGlobalLightingMasterComponent_MAX = 6,
}

---@enum EGlobalLightingMasterFeature
local EGlobalLightingMasterFeature = {
    ProbeLighting = 0,
    CloudsLighting = 1,
    CloudsPreset = 2,
    CloudsWind = 3,
    CloudsSceneLightDirection = 4,
    CloudsSceneLightColor = 5,
    CloudsSceneLightIntensity = 6,
    CloudsSceneLightSaturation = 7,
    EGlobalLightingMasterFeature_MAX = 8,
}

---@enum ESkyAtmosphereDirectionalLight
local ESkyAtmosphereDirectionalLight = {
    None = 0,
    Sun = 1,
    Moon = 2,
    Auto = 3,
    ESkyAtmosphereDirectionalLight_MAX = 4,
}

---@enum ESkyLightSourceMode
local ESkyLightSourceMode = {
    CapturedScene = 0,
    SpecifiedCubemap = 1,
    RuntimeCapture = 2,
    RuntimeRender = 3,
    SkyAtmosphereCapturedScene = 4,
    ESkyLightSourceMode_MAX = 5,
}

---@enum EWorldBaseHeightAffect
local EWorldBaseHeightAffect = {
    Clouds = 0,
    ExponentialHeightFog = 1,
    Atmosphere = 2,
    EWorldBaseHeightAffect_MAX = 3,
}

---@enum EZeroDirectionalLightMode
local EZeroDirectionalLightMode = {
    AllowZeroIntensity = 0,
    TurnOffLight = 1,
    ClampToMinimum = 2,
    EZeroDirectionalLightMode_MAX = 3,
}

