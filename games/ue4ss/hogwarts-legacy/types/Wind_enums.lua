---@enum EBeaufortWindScale
local EBeaufortWindScale = {
    Calm = 0,
    LightAir = 1,
    LightBreeze = 2,
    GentleBreeze = 3,
    ModerateBreeze = 4,
    FreshBreeze = 5,
    StrongBreeze = 6,
    ModerateGale = 7,
    FreshGale = 8,
    StrongGale = 9,
    WholeGale = 10,
    Storm = 11,
    Hurricane = 12,
    EBeaufortWindScale_MAX = 13,
}

---@enum EWindDirectionCompass
local EWindDirectionCompass = {
    North = 0,
    NorthEast = 1,
    East = 2,
    SouthEast = 3,
    South = 4,
    SouthWest = 5,
    West = 6,
    NorthWest = 7,
    EWindDirectionCompass_MAX = 8,
}

---@enum EWindDirectionalEnvelopeAffects
local EWindDirectionalEnvelopeAffects = {
    Speed = 0,
    Strength = 1,
    EWindDirectionalEnvelopeAffects_MAX = 2,
}

---@enum EWindGustSimplexNoiseMode
local EWindGustSimplexNoiseMode = {
    Constant = 0,
    Simple = 1,
    XYPlane = 2,
    Full3D = 3,
    EWindGustSimplexNoiseMode_MAX = 4,
}

---@enum EWindPointEnvelopeAffects
local EWindPointEnvelopeAffects = {
    Speed = 0,
    Radius = 1,
    Strength = 2,
    EWindPointEnvelopeAffects_MAX = 3,
}

---@enum EWindSourceEnvelopeTriggerEvent
local EWindSourceEnvelopeTriggerEvent = {
    Trigger = 0,
    Done = 1,
    EWindSourceEnvelopeTriggerEvent_MAX = 2,
}

---@enum EWindVortexEnvelopeAffects
local EWindVortexEnvelopeAffects = {
    Speed = 0,
    Height = 1,
    Radius = 2,
    Strength = 3,
    EWindVortexEnvelopeAffects_MAX = 4,
}

