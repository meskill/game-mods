---@enum ESurfaceFogType
local ESurfaceFogType = {
    None = 0,
    Mist = 1,
    Fog = 2,
    Storm = 3,
    ESurfaceFogType_MAX = 4,
}

---@enum EWeatherDecalParameterType
local EWeatherDecalParameterType = {
    EnvGlobals = 0,
    MID = 1,
    MPC = 2,
    NPC = 3,
    SystemMPC = 4,
    SystemNPC = 5,
    RTPC = 6,
    SceneRigEnvGlobals = 7,
    EWeatherDecalParameterType_MAX = 8,
}

---@enum EWeatherSeasonFilter
local EWeatherSeasonFilter = {
    Fall = 0,
    Winter = 1,
    Spring = 2,
    Summer = 3,
    EWeatherSeasonFilter_MAX = 4,
}

---@enum EWeatherSequenceOriginType
local EWeatherSequenceOriginType = {
    Default = 0,
    CustomLottery = 1,
    Volume = 2,
    CommandConsole = 3,
    Override = 4,
    Stack = 5,
    SystemOverride = 6,
    EWeatherSequenceOriginType_MAX = 7,
}

---@enum EWeatherSequenceProbability
local EWeatherSequenceProbability = {
    Common = 0,
    Infrequent = 1,
    Rare = 2,
    VeryRare = 3,
    Never = 4,
    EWeatherSequenceProbability_MAX = 5,
}

---@enum EWeatherSurfaceCharacterFXParameters
local EWeatherSurfaceCharacterFXParameters = {
    None = 0,
    LocalCoverage = 1,
    LocalCoverageRate = 2,
    LocalDrying = 3,
    CachedIndoors = 4,
    StormCoverage = 5,
    StormIntensity = 6,
    StormPrecipitation = 7,
    StormType = 8,
    StormAge = 9,
    EWeatherSurfaceCharacterFXParameters_MAX = 10,
}

---@enum EWeatherSurfaceCharacterFXStateResetType
local EWeatherSurfaceCharacterFXStateResetType = {
    None = 0,
    Zero = 1,
    One = 2,
    EWeatherSurfaceCharacterFXStateResetType_MAX = 3,
}

---@enum EWeatherSurfaceCharacterFXWetState
local EWeatherSurfaceCharacterFXWetState = {
    Dry = 0,
    FirstWet = 1,
    Wet = 2,
    FirstDry = 3,
    EWeatherSurfaceCharacterFXWetState_MAX = 4,
}

---@enum EWeatherSurfacePrecipitation
local EWeatherSurfacePrecipitation = {
    None = 0,
    Rain = 1,
    Snow = 2,
    EWeatherSurfacePrecipitation_MAX = 3,
}

---@enum EWeatherSurfaceStormType
local EWeatherSurfaceStormType = {
    None = 0,
    Light = 1,
    Normal = 2,
    Heavy = 3,
    Torrential = 4,
    EWeatherSurfaceStormType_MAX = 5,
}

---@enum EWindParametersTimeBase
local EWindParametersTimeBase = {
    GameSeconds = 0,
    GameMinutes = 1,
    GameHours = 2,
    RealSeconds = 3,
    RealMinutes = 4,
    RealHours = 5,
    EWindParametersTimeBase_MAX = 6,
}

