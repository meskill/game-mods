---@enum ELightCullingDistanceOverride
local ELightCullingDistanceOverride = {
    DoNotTouch = 0,
    AlwaysOverride = 1,
    UseMinimum = 2,
    OnlyIfNotSet = 3,
    ELightCullingDistanceOverride_MAX = 4,
}

---@enum ELightCullingDumpFilterDuplicateCheck
local ELightCullingDumpFilterDuplicateCheck = {
    None = 0,
    PerLevel = 1,
    AcrossLevels = 2,
    Global = 3,
    ELightCullingDumpFilterDuplicateCheck_MAX = 4,
}

---@enum ELightCullingDumpFilterSort
local ELightCullingDumpFilterSort = {
    None = 0,
    Distance = 1,
    Component = 2,
    Name = 3,
    Level = 4,
    ELightCullingDumpFilterSort_MAX = 5,
}

---@enum ELightCullingLightStatus
local ELightCullingLightStatus = {
    Unmanaged = 0,
    Ignored = 1,
    Managed = 2,
    ELightCullingLightStatus_MAX = 3,
}

