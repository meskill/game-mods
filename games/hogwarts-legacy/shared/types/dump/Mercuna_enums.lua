---@enum ECompassBaring
local ECompassBaring = {
    West_MinX = 0,
    East_MaxX = 1,
    North_MinY = 2,
    South_MaxY = 3,
    Max = 4,
}

---@enum EMerOctreeDebugDrawMode
local EMerOctreeDebugDrawMode = {
    DISABLED = 0,
    UNNAVIGABLE = 1,
    NAVIGABLE = 2,
    CROSS_SECTION = 3,
    REACHABLE = 4,
    PATHFIND = 5,
    REGION = 6,
    EMerOctreeDebugDrawMode_MAX = 7,
}

---@enum EMercunaLevelOfDetail
local EMercunaLevelOfDetail = {
    Full = 0,
    Half = 1,
    Quarter = 2,
    Eighth = 3,
    Sixteenth = 4,
    EMercunaLevelOfDetail_MAX = 5,
}

---@enum EMercunaMoveGoal
local EMercunaMoveGoal = {
    Actor = 0,
    Vector = 1,
    None = 2,
    EMercunaMoveGoal_MAX = 3,
}

---@enum EMercunaMoveResult
local EMercunaMoveResult = {
    Success = 0,
    Failed = 1,
    Cancelled = 2,
    Blocked = 3,
    Invalid = 4,
    EMercunaMoveResult_MAX = 5,
}

---@enum EMercunaPathEvent
local EMercunaPathEvent = {
    Ready = 0,
    Updated = 1,
    Invalid = 2,
    EMercunaPathEvent_MAX = 3,
}

---@enum EMercunaPointDistribution
local EMercunaPointDistribution = {
    Uniform = 0,
    Random = 1,
    EMercunaPointDistribution_MAX = 2,
}

---@enum EMercunaSplineEvent
local EMercunaSplineEvent = {
    Ready = 0,
    Updated = 1,
    Invalid = 2,
    EMercunaSplineEvent_MAX = 3,
}

