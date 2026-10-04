---@enum EBlendDomainDayNight
local EBlendDomainDayNight = {
    DayAndNight = 0,
    DayOnly = 1,
    NightOnly = 2,
    EBlendDomainDayNight_MAX = 3,
}

---@enum EBlendDomainIndoorsOutdoors
local EBlendDomainIndoorsOutdoors = {
    IndoorsAndOutdoors = 0,
    OutdoorsOnly = 1,
    IndoorsOnly = 2,
    EBlendDomainIndoorsOutdoors_MAX = 3,
}

---@enum EBlendDomainLightingMode
local EBlendDomainLightingMode = {
    GameAndProbeCapture = 0,
    GameOnly = 1,
    ProbeCaptureOnly = 2,
    EBlendDomainLightingMode_MAX = 3,
}

---@enum EBlendDomainOvercast
local EBlendDomainOvercast = {
    ClearAndOvercast = 0,
    ClearOnly = 1,
    OvercastOnly = 2,
    EBlendDomainOvercast_MAX = 3,
}

---@enum EDynamicCharacterLightRigChannel
local EDynamicCharacterLightRigChannel = {
    ChannelAuto = 0,
    ChannelOne = 1,
    ChannelTwo = 2,
    EDynamicCharacterLightRigChannel_MAX = 3,
}

---@enum EDynamicLightAdaptationEVValueType
local EDynamicLightAdaptationEVValueType = {
    Absolute = 0,
    MinMaxExposureTarget = 1,
    LastFrameAverageLuminanceDelta = 2,
    AutoAdaptationDelta = 3,
    AutoAdaptationBloomDelta = 4,
    EDynamicLightAdaptationEVValueType_MAX = 5,
}

---@enum ELastFrameExposureValue
local ELastFrameExposureValue = {
    AverageLuminance = 0,
    AverageHistogramLuminance = 1,
    AutoExposure = 2,
    Brightness = 3,
    FilteredAverageLuminance = 4,
    FilteredAverageHistogramLuminance = 5,
    FilteredAutoExposure = 6,
    FilteredBrightness = 7,
    ELastFrameExposureValue_MAX = 8,
}

---@enum ELightAdapatationEVModOp
local ELightAdapatationEVModOp = {
    Set = 0,
    Add = 1,
    Subtract = 2,
    Min = 3,
    Max = 4,
}

---@enum ELightAdapatationEVProperty
local ELightAdapatationEVProperty = {
    BaseEV = 0,
    OutdoorsDayTimeEVBoost = 1,
    MaxEV = 2,
    MinEV = 3,
    StartCutoffMaxEV = 4,
    StartCutoffMinEV = 5,
    ELightAdapatationEVProperty_MAX = 6,
}

---@enum ELightAdapatationModOp
local ELightAdapatationModOp = {
    Set = 0,
    Multiply = 1,
    Divide = 2,
    Add = 3,
    Subtract = 4,
    Min = 5,
    Max = 6,
}

---@enum ELightAdapatationMode
local ELightAdapatationMode = {
    LastFrameAutoExposure = 0,
    LastFrameAverageLuminance = 1,
    MinMaxExposureTarget = 2,
    AutoAdaptation = 3,
    AutoAdaptationBloom = 4,
    FixedExposure = 5,
    ELightAdapatationMode_MAX = 6,
}

---@enum ELightAdapatationProperty
local ELightAdapatationProperty = {
    BaseEV = 0,
    OutdoorsDayTimeEVBoost = 1,
    AdaptationStrengthPercent = 2,
    MinMaxExposureTarget = 3,
    MaxEV = 4,
    MinEV = 5,
    StartCutoffMaxEV = 6,
    StartCutoffMinEV = 7,
    ELightAdapatationProperty_MAX = 8,
}

---@enum EPostProcessingVarBool
local EPostProcessingVarBool = {
    None = 0,
    AutoExposureApplyPhysicalCameraExposure = 1,
    AmbientOcclusionRadiusInWS = 2,
    EPostProcessingVarBool_MAX = 3,
}

---@enum EPostProcessingVarColor
local EPostProcessingVarColor = {
    None = 0,
    FilmWhitePoint = 1,
    FilmShadowTint = 2,
    FilmChannelMixerRed = 3,
    FilmChannelMixerGreen = 4,
    FilmChannelMixerBlue = 5,
    SceneColorTint = 6,
    Bloom1Tint = 7,
    Bloom2Tint = 8,
    Bloom3Tint = 9,
    Bloom4Tint = 10,
    Bloom5Tint = 11,
    Bloom6Tint = 12,
    BloomDirtMaskTint = 13,
    AmbientCubemapTint = 14,
    LensFlareTint = 15,
    IndirectLightingColor = 16,
    ColorSaturation = 17,
    ColorContrast = 18,
    ColorGamma = 19,
    ColorGain = 20,
    ColorOffset = 21,
    ColorSaturationShadows = 22,
    ColorContrastShadows = 23,
    ColorGammaShadows = 24,
    ColorGainShadows = 25,
    ColorOffsetShadows = 26,
    ColorSaturationMidtones = 27,
    ColorContrastMidtones = 28,
    ColorGammaMidtones = 29,
    ColorGainMidtones = 30,
    ColorOffsetMidtones = 31,
    ColorSaturationHighlights = 32,
    ColorContrastHighlights = 33,
    ColorGammaHighlights = 34,
    ColorGainHighlights = 35,
    ColorOffsetHighlights = 36,
    ReflectionCaptureOutsideColorTint = 37,
    ReflectionCaptureInsideColorTint = 38,
    EPostProcessingVarColor_MAX = 39,
}

---@enum EPostProcessingVarInt
local EPostProcessingVarInt = {
    None = 0,
    ReflectionsType = 1,
    DepthOfFieldBladeCount = 2,
    MotionBlurTargetFPS = 3,
    EPostProcessingVarInt_MAX = 4,
}

---@enum EPostProcessingVarScalar
local EPostProcessingVarScalar = {
    None = 0,
    WhiteTemp = 1,
    WhiteTint = 2,
    ColorCorrectionHighlightsMin = 3,
    ColorCorrectionShadowsMax = 4,
    BlueCorrection = 5,
    ExpandGamut = 6,
    ToneCurveAmount = 7,
    FilmSlope = 8,
    FilmToe = 9,
    FilmShoulder = 10,
    FilmBlackClip = 11,
    FilmWhiteClip = 12,
    FilmShadowTintBlend = 13,
    FilmShadowTintAmount = 14,
    FilmSaturation = 15,
    FilmContrast = 16,
    FilmToeAmount = 17,
    FilmHealAmount = 18,
    FilmDynamicRange = 19,
    SceneFringeIntensity = 20,
    ChromaticAberrationStartOffset = 21,
    BloomIntensity = 22,
    BloomThreshold = 23,
    BloomCross = 24,
    BloomSizeScale = 25,
    Bloom1Size = 26,
    Bloom2Size = 27,
    Bloom3Size = 28,
    Bloom4Size = 29,
    Bloom5Size = 30,
    Bloom6Size = 31,
    BloomConvolutionSize = 32,
    BloomConvolutionPreFilterMin = 33,
    BloomConvolutionPreFilterMax = 34,
    BloomConvolutionPreFilterMult = 35,
    BloomConvolutionBufferScale = 36,
    BloomDirtMaskIntensity = 37,
    AmbientCubemapIntensity = 38,
    CameraShutterSpeed = 39,
    CameraISO = 40,
    DepthOfFieldFstop = 41,
    DepthOfFieldMinFstop = 42,
    AutoExposureBias = 43,
    AutoExposureBiasVFX = 44,
    AutoExposureLowPercent = 45,
    AutoExposureHighPercent = 46,
    AutoExposureMinBrightness = 47,
    AutoExposureMaxBrightness = 48,
    AutoExposureSpeedUp = 49,
    AutoExposureSpeedDown = 50,
    HistogramLogMin = 51,
    HistogramLogMax = 52,
    PreExposureResetValue = 53,
    LensFlareIntensity = 54,
    LensFlareBokehSize = 55,
    LensFlareThreshold = 56,
    VignetteIntensity = 57,
    GrainJitter = 58,
    GrainIntensity = 59,
    AmbientOcclusionIntensity = 60,
    AmbientOcclusionStaticFraction = 61,
    AmbientOcclusionRadius = 62,
    AmbientOcclusionFadeDistance = 63,
    AmbientOcclusionFadeRadius = 64,
    AmbientOcclusionPower = 65,
    AmbientOcclusionBias = 66,
    AmbientOcclusionQuality = 67,
    AmbientOcclusionMipBlend = 68,
    AmbientOcclusionMipScale = 69,
    AmbientOcclusionMipThreshold = 70,
    AmbientOcclusionTemporalBlendWeight = 71,
    AmbientOcclusionSkinIntensity = 72,
    IndirectLightingIntensity = 73,
    ProbeToneMapAmount = 74,
    ProbeToneMapMinIntensity = 75,
    ProbeToneMapMaxEV = 76,
    ProbeOutsideIntensity = 77,
    ProbeInsideIntensity = 78,
    ProbeOutsideSaturation = 79,
    ProbeInsideSaturation = 80,
    ProbeContactShadowsMinValue = 81,
    ProbeContactShadowsLength = 82,
    ProbeContactShadowsConeAngle = 83,
    ProbeContactShadowsFalloffExponent = 84,
    ProbeContactShadowsDepthTolerance = 85,
    ColorGradingIntensity = 86,
    DepthOfFieldSensorWidth = 87,
    DepthOfFieldFocalDistance = 88,
    DepthOfFieldDepthBlurAmount = 89,
    DepthOfFieldDepthBlurRadius = 90,
    DepthOfFieldFocalRegion = 91,
    DepthOfFieldNearTransitionRegion = 92,
    DepthOfFieldFarTransitionRegion = 93,
    DepthOfFieldScale = 94,
    DepthOfFieldNearBlurSize = 95,
    DepthOfFieldFarBlurSize = 96,
    DepthOfFieldOcclusion = 97,
    DepthOfFieldSkyFocusDistance = 98,
    DepthOfFieldVignetteSize = 99,
    MotionBlurAmount = 100,
    MotionBlurMax = 101,
    MotionBlurPerObjectSize = 102,
    ReflectionCaptureOutsideSaturation = 103,
    ReflectionCaptureInsideSaturation = 104,
    ScreenSpaceReflectionIntensity = 105,
    ScreenSpaceReflectionQuality = 106,
    ScreenSpaceReflectionMaxRoughness = 107,
    ScreenPercentage = 108,
    EPostProcessingVarScalar_MAX = 109,
}

---@enum EPostProcessingVarTexture
local EPostProcessingVarTexture = {
    None = 0,
    BloomDirtMask = 1,
    AutoExposureMeterMask = 2,
    LensFlareBokehShape = 3,
    ColorGradingLUT = 4,
    BloomConvolutionTexture = 5,
    AmbientCubemap = 6,
    EPostProcessingVarTexture_MAX = 7,
}

---@enum EPostProcessingVarVector2D
local EPostProcessingVarVector2D = {
    None = 0,
    BloomConvolutionCenterUV = 1,
    EPostProcessingVarVector2D_MAX = 2,
}

---@enum ERenderSettingsBlendDomainConsoleLienMode
local ERenderSettingsBlendDomainConsoleLienMode = {
    IsZero = 0,
    IsOne = 1,
    GreaterThanOneHalf = 2,
    LessThanOneHalf = 3,
    ERenderSettingsBlendDomainConsoleLienMode_MAX = 4,
}

---@enum ERenderSettingsCustomBlendDomainBucket
local ERenderSettingsCustomBlendDomainBucket = {
    First = 0,
    Normal = 1,
    Last = 2,
    Custom = 3,
    ERenderSettingsCustomBlendDomainBucket_MAX = 4,
}

---@enum ERenderSettingsCustomBlendDomainFormat
local ERenderSettingsCustomBlendDomainFormat = {
    Default = 0,
    ZeroToOne = 1,
    NoIfZero = 2,
    YesIfOne = 3,
    OnlyNoIfZero = 4,
    OnlyYesIfOne = 5,
    OnlyNoIfNotOne = 6,
    OnlyYesIfNotZero = 7,
    HideIfDefault = 8,
    Hide = 9,
    ERenderSettingsCustomBlendDomainFormat_MAX = 10,
}

---@enum ERenderSettingsEditAssetType
local ERenderSettingsEditAssetType = {
    Library = 0,
    PostProcessingGroups = 1,
    Exposure = 2,
    ColorGrading = 3,
    DistanceFog = 4,
    EmissiveAdaptation = 5,
    CharacterLightRig = 6,
    Probes = 7,
    ERenderSettingsEditAssetType_MAX = 8,
}

---@enum ERenderSettingsIndoorsType
local ERenderSettingsIndoorsType = {
    Indoors = 0,
    SmoothedIndoors = 1,
    ProbeIndoors = 2,
    SmoothedProbeIndoors = 3,
    StreamingIndoors = 4,
    ERenderSettingsIndoorsType_MAX = 5,
}

---@enum ERenderSettingsVolumeDayNightType
local ERenderSettingsVolumeDayNightType = {
    DayAndNight = 0,
    DayOnly = 1,
    NightOnly = 2,
    ERenderSettingsVolumeDayNightType_MAX = 3,
}

---@enum ERenderSettingsVolumeIndoorsOutdoorsType
local ERenderSettingsVolumeIndoorsOutdoorsType = {
    IndoorsAndOutdoors = 0,
    OutdoorsOnly = 1,
    IndoorsOnly = 2,
    ERenderSettingsVolumeIndoorsOutdoorsType_MAX = 3,
}

---@enum ERenderSettingsVolumeOvercastType
local ERenderSettingsVolumeOvercastType = {
    ClearAndOvercast = 0,
    ClearOnly = 1,
    OvercastOnly = 2,
    ERenderSettingsVolumeOvercastType_MAX = 3,
}

---@enum ESimpleUpdatePumpComponentMode
local ESimpleUpdatePumpComponentMode = {
    UPM_ALWAYS = 0,
    UPM_EDITORONLY = 1,
    UPM_GAMEONLY = 2,
    UPM_NEVER = 3,
    UPM_MAX = 4,
}

