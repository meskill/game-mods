---@enum EConsiderationCurveType
local EConsiderationCurveType = {
    Custom = 0,
    Linear_Up = 1,
    Linear_Down = 2,
    EConsiderationCurveType_MAX = 3,
}

---@enum EScoreOverrideReturnConfigurationType
local EScoreOverrideReturnConfigurationType = {
    Value_A = 0,
    Value_B = 1,
    Value_Custom = 2,
    Value_MAX = 3,
}

---@enum EUtilityArithmeticOperation
local EUtilityArithmeticOperation = {
    Equal = 0,
    NotEqual = 1,
    Less = 2,
    LessOrEqual = 3,
    Greater = 4,
    GreaterOrEqual = 5,
    EUtilityArithmeticOperation_MAX = 6,
}

---@enum EUtilitySelectionMethod
local EUtilitySelectionMethod = {
    FirstScore = 0,
    HighestScore = 1,
    WeightedRandom = 2,
    EUtilitySelectionMethod_MAX = 3,
}

---@enum EUtilityTrackedErrorType
local EUtilityTrackedErrorType = {
    Error_Unspecified = 0,
    Error_InvalidActor = 1,
    Error_InvalidPath = 2,
    Error_MissingNavmesh = 3,
    Error_MAX = 4,
}

