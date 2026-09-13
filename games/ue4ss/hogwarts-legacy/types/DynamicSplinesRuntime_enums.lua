---@enum EDynamicSplineUsageBits
local EDynamicSplineUsageBits = {
    None = 0,
    Positions = 1,
    Normals = 2,
    Tangents = 4,
    WorldSpace = 8,
    EDynamicSplineUsageBits_MAX = 9,
}

---@enum ESplineInterpMode
local ESplineInterpMode = {
    Auto = 0,
    AutoClamped = 1,
    User = 2,
    Linear = 3,
    Constant = 4,
    Unknown = 5,
    ESplineInterpMode_MAX = 6,
}

---@enum ESplineType
local ESplineType = {
    None = 0,
    StaticMesh = 1,
    Skeletal = 2,
    ESplineType_MAX = 3,
}

