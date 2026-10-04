---@enum ENiagaraHelpersMultiSpawnRateType
local ENiagaraHelpersMultiSpawnRateType = {
    DoNotCompute = 0,
    BoxVolume = 1,
    SphereVolume = 2,
    BoxSurfaceArea = 3,
    SphereSurfaceArea = 4,
    CircleSurfaceArea = 5,
    ForceToOne = 6,
    ENiagaraHelpersMultiSpawnRateType_MAX = 7,
}

---@enum ENiagaraHelpersPrimMatchMode
local ENiagaraHelpersPrimMatchMode = {
    Exact = 0,
    SubStringCaseSensitve = 1,
    SubStringIgnoreCase = 2,
    ENiagaraHelpersPrimMatchMode_MAX = 3,
}

---@enum ENiagaraHelpersPrimRule
local ENiagaraHelpersPrimRule = {
    DoNotSpawn = 0,
    OnlySpawn = 1,
    ENiagaraHelpersPrimRule_MAX = 2,
}

---@enum ENiagaraSpawnBoundsMethod
local ENiagaraSpawnBoundsMethod = {
    Disabled = 0,
    Radius = 1,
    MajorAxisLength = 2,
    ProjectedBoxSurfaceArea = 3,
    ProjectedCircleSurfaceArea = 4,
    BoxVolume = 5,
    SphereVolume = 6,
    BoxSurfaceArea = 7,
    SphereSurfaceArea = 8,
    ENiagaraSpawnBoundsMethod_MAX = 9,
}

