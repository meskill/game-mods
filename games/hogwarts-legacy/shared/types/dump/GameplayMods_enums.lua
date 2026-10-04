---@enum EInputModType
local EInputModType = {
    UnaffectedByExternalInput = 0,
    ValueOfExternalInput = 1,
    ValueOfInputCurveEvaluatedByExternalInput = 2,
    EInputModType_MAX = 3,
}

---@enum EModExternalInputMethod
local EModExternalInputMethod = {
    CallExternalInputFunction = 0,
    ReadExternalInputTagBlackboardValue = 1,
    EModExternalInputMethod_MAX = 2,
}

---@enum EPostCalculationRoundingType
local EPostCalculationRoundingType = {
    RoundToNearest = 0,
    TowardsZero = 1,
    AwayFromZero = 2,
    EPostCalculationRoundingType_MAX = 3,
}

---@enum EPropModCalculationType
local EPropModCalculationType = {
    Maximum = 0,
    Minimum = 1,
    PreAdd = 2,
    FactorIncrease = 3,
    Multiply = 4,
    PostAdd = 5,
    Count = 6,
    EPropModCalculationType_MAX = 7,
}

---@enum ETimeBasedEffectType
local ETimeBasedEffectType = {
    UnaffectedByTimeCurve = 0,
    TimeCurveEvaluatedByCurrentTime = 1,
    TimeCurveEvaluatedByNormalizedTime = 2,
    ETimeBasedEffectType_MAX = 3,
}

