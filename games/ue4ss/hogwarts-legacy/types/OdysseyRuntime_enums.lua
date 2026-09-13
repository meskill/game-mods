---@enum ELinkType
local ELinkType = {
    JUMP_LINK = 0,
    LADDER_LINK = 1,
    CLIMB_LINK = 2,
    SLIDE_LINK = 3,
    VAULT_LINK = 4,
    SPLINE_LINK = 5,
    ELinkType_MAX = 6,
}

---@enum ENavLayer
local ENavLayer = {
    Layer0 = 0,
    Layer1 = 1,
    Layer2 = 2,
    Layer3 = 3,
    ENavLayer_MAX = 4,
}

---@enum EOdcAuthoredObstacleShape
local EOdcAuthoredObstacleShape = {
    Box = 0,
    Prism = 1,
    EOdcAuthoredObstacleShape_MAX = 2,
}

---@enum EOdcBlockageMode
local EOdcBlockageMode = {
    BLOCKED_IF_ANY_MATCH = 0,
    BLOCKED_IF_ALL_MATCH = 1,
    BLOCKED_IF_MAX = 2,
}

---@enum EOdcNavmeshProbeType
local EOdcNavmeshProbeType = {
    Full3D = 0,
    Projection = 1,
    Horizontal = 2,
    EOdcNavmeshProbeType_MAX = 3,
}

---@enum EOdcPathSmoothingPass
local EOdcPathSmoothingPass = {
    Original = 0,
    FilterSignificantPoints = 1,
    Extrude = 2,
    AlignPointsOnSlopes = 3,
    Smoothed = 4,
    EOdcPathSmoothingPass_MAX = 5,
}

---@enum EOdcPenaltyTableMode
local EOdcPenaltyTableMode = {
    PENALTY_MODE_DISABLED = 0,
    PENALTY_MODE_MAX = 1,
    PENALTY_MODE_TOTAL = 2,
}

---@enum EOdcSnapMode
local EOdcSnapMode = {
    SNAP_CLOSEST = 0,
    SNAP_VERTICAL = 1,
    SNAP_MAX = 2,
}

---@enum OdcObstacleBehavior
local OdcObstacleBehavior = {
    Automatic = 0,
    NoEffectPenalty = 1,
    NoEffectImpassable = 2,
    PenaltyImpassable = 3,
    OdcObstacleBehavior_MAX = 4,
}

