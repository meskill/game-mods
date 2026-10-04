---@enum ECSGOperation
local ECSGOperation = {
    DifferenceAB = 0,
    DifferenceBA = 1,
    Intersect = 2,
    Union = 3,
    TrimA = 4,
    TrimB = 5,
    ECSGOperation_MAX = 6,
}

---@enum EHoleFillOpFillType
local EHoleFillOpFillType = {
    TriangleFan = 0,
    PolygonEarClipping = 1,
    Planar = 2,
    Minimal = 3,
    Smooth = 4,
    EHoleFillOpFillType_MAX = 5,
}

---@enum EMorphologyOperation
local EMorphologyOperation = {
    Dilate = 0,
    Contract = 1,
    Close = 2,
    Open = 3,
    EMorphologyOperation_MAX = 4,
}

---@enum ENormalCalculationMethod
local ENormalCalculationMethod = {
    AreaWeighted = 0,
    AngleWeighted = 1,
    AreaAngleWeighting = 2,
    ENormalCalculationMethod_MAX = 3,
}

---@enum ERemeshSmoothingType
local ERemeshSmoothingType = {
    Uniform = 0,
    Cotangent = 1,
    MeanValue = 2,
    ERemeshSmoothingType_MAX = 3,
}

---@enum ERemeshType
local ERemeshType = {
    Standard = 0,
    FullPass = 1,
    NormalFlow = 2,
    ERemeshType_MAX = 3,
}

---@enum ESplitNormalMethod
local ESplitNormalMethod = {
    UseExistingTopology = 0,
    FaceNormalThreshold = 1,
    FaceGroupID = 2,
    PerTriangle = 3,
    PerVertex = 4,
    ESplitNormalMethod_MAX = 5,
}

---@enum EUVProjectionMethod
local EUVProjectionMethod = {
    Cube = 0,
    Cylinder = 1,
    Plane = 2,
    EUVProjectionMethod_MAX = 3,
}

