---@enum ELakeToolVersion
local ELakeToolVersion = {
    Base = 0,
    FixWaterDepthEncoding = 1,
    Latest = 1,
    ELakeToolVersion_MAX = 2,
}

---@enum EPlayerRenderTarget
local EPlayerRenderTarget = {
    PRT_Ripple = 0,
    PRT_WaveDisplacements = 1,
    PRT_WaveFoam = 2,
    PRT_Count = 3,
    PRT_MAX = 4,
}

---@enum EWaterType
local EWaterType = {
    NoWater = 0,
    Shallow = 1,
    Deep = 2,
    EWaterType_MAX = 3,
}

