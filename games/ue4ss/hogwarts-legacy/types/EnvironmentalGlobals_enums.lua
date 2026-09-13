---@enum EEnvironmentalGlobalsColorCurveVarMode
local EEnvironmentalGlobalsColorCurveVarMode = {
    Normal = 0,
    Clamped = 1,
    Unadjusted = 2,
    EEnvironmentalGlobalsColorCurveVarMode_MAX = 3,
}

---@enum EEnvironmentalGlobalsColorVarConversion
local EEnvironmentalGlobalsColorVarConversion = {
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
    EEnvironmentalGlobalsColorVarConversion_MAX = 12,
}

---@enum EEnvironmentalGlobalsDirectionalLightMode
local EEnvironmentalGlobalsDirectionalLightMode = {
    Unknown = 0,
    Sun = 1,
    Moon = 2,
    EEnvironmentalGlobalsDirectionalLightMode_MAX = 3,
}

---@enum EEnvironmentalGlobalsRunMode
local EEnvironmentalGlobalsRunMode = {
    GameAndProbeCapture = 0,
    GameOnly = 1,
    ProbeCaptureOnly = 2,
    EEnvironmentalGlobalsRunMode_MAX = 3,
}

---@enum EEnvironmentalGlobalsScalarConversion
local EEnvironmentalGlobalsScalarConversion = {
    None = 0,
    EV100ToMultipler = 1,
    MultiplierToEV100 = 2,
    EEnvironmentalGlobalsScalarConversion_MAX = 3,
}

---@enum EEnvironmentalGlobalsScalarDebugFormat
local EEnvironmentalGlobalsScalarDebugFormat = {
    None = 0,
    EV100 = 1,
    PowerOf2 = 2,
    Invert = 3,
    EEnvironmentalGlobalsScalarDebugFormat_MAX = 4,
}

---@enum EEnvironmentalGlobalsValue
local EEnvironmentalGlobalsValue = {
    DayNight = 0,
    DayNightLerp = 1,
    Day = 2,
    Night = 3,
    SunAltitudeDegrees = 4,
    MoonAltitudeDegrees = 5,
    LightAltitudeDegrees = 6,
    SunUnitIntensity = 7,
    MoonUnitIntensity = 8,
    LightUnitIntensity = 9,
    CameraEyeIndoors = 10,
    CameraEyeProbeIndoors = 11,
    CameraEyeWeatherIndoors = 12,
    Overcast = 13,
    NormalizedTime = 14,
    AverageLuminanceEV100 = 15,
    AutoExposureEV100 = 16,
    BrightnessEV100 = 17,
    PlayerSpeed = 18,
    CameraSpeed = 19,
    CameraAngle = 20,
    SeasonSmooth = 21,
    SeasonLerp = 22,
    Season = 23,
    EEnvironmentalGlobalsValue_MAX = 24,
}

