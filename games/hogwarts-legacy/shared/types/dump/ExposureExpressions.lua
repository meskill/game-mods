---@meta

---@class FExposureExpressions
---@field ExposureConstants TMap<FName, float>
---@field ExposureExpressions TArray<FExposureExpressionsExposureExpression>
---@field ScalarConstants TMap<FName, float>
---@field ScalarExpressions TArray<FExposureExpressionsScalarExpression>
local FExposureExpressions = {}



---@class FExposureExpressionsDropdownName
---@field Name FName
local FExposureExpressionsDropdownName = {}



---@class FExposureExpressionsExecuteContext
---@field World UWorld
---@field Timestamp uint32
---@field Exposure FPostProcessExposureValuesEV100FinalBias
---@field LastExposure FLastRenderedExposure
---@field LastExposureFiltered FLastRenderedExposure
---@field LastExposureHistory FLastRenderedExposure
---@field NightDay float
---@field Overcast float
---@field OutdoorsIndoors float
---@field FilteredOutdoorsIndoors float
local FExposureExpressionsExecuteContext = {}



---@class FExposureExpressionsExposureConstantName : FExposureExpressionsDropdownName
local FExposureExpressionsExposureConstantName = {}


---@class FExposureExpressionsExposureExpression
---@field Name FName
---@field Expression UExposureExpressionsExposureValue
local FExposureExpressionsExposureExpression = {}



---@class FExposureExpressionsExposureExpressionName : FExposureExpressionsDropdownName
local FExposureExpressionsExposureExpressionName = {}


---@class FExposureExpressionsExtra
local FExposureExpressionsExtra = {}


---@class FExposureExpressionsExtraDefault
---@field Name FName
---@field Targets int32
local FExposureExpressionsExtraDefault = {}



---@class FExposureExpressionsExtraDefaultExposure : FExposureExpressionsExtraDefault
---@field DefaultExpression UExposureExpressionsExposureValue
local FExposureExpressionsExtraDefaultExposure = {}



---@class FExposureExpressionsExtraDefaultExposureConstant : FExposureExpressionsExtraDefault
---@field Value float
local FExposureExpressionsExtraDefaultExposureConstant = {}



---@class FExposureExpressionsExtraDefaultScalar : FExposureExpressionsExtraDefault
---@field DefaultExpression UExposureExpressionsScalarValue
local FExposureExpressionsExtraDefaultScalar = {}



---@class FExposureExpressionsExtraDefaultScalarConstant : FExposureExpressionsExtraDefault
---@field Value float
local FExposureExpressionsExtraDefaultScalarConstant = {}



---@class FExposureExpressionsExtraExposure : FExposureExpressionsExtra
---@field Name FExposureExpressionsExtraExposureName
---@field Expression UExposureExpressionsExposureValue
local FExposureExpressionsExtraExposure = {}



---@class FExposureExpressionsExtraExposureConstant : FExposureExpressionsExtra
---@field Name FExposureExpressionsExtraExposureName
---@field Value float
local FExposureExpressionsExtraExposureConstant = {}



---@class FExposureExpressionsExtraExposureName : FExposureExpressionsDropdownName
local FExposureExpressionsExtraExposureName = {}


---@class FExposureExpressionsExtraLerp
---@field Name FName
---@field Value float
---@field Targets int32
local FExposureExpressionsExtraLerp = {}



---@class FExposureExpressionsExtraLerpExposure : FExposureExpressionsExtraLerp
---@field CachedFactor float
local FExposureExpressionsExtraLerpExposure = {}



---@class FExposureExpressionsExtraLerpScalar : FExposureExpressionsExtraLerp
local FExposureExpressionsExtraLerpScalar = {}


---@class FExposureExpressionsExtraScalar : FExposureExpressionsExtra
---@field Name FExposureExpressionsExtraScalarName
---@field Expression UExposureExpressionsScalarValue
local FExposureExpressionsExtraScalar = {}



---@class FExposureExpressionsExtraScalarConstant : FExposureExpressionsExtra
---@field Name FExposureExpressionsExtraScalarName
---@field Value float
local FExposureExpressionsExtraScalarConstant = {}



---@class FExposureExpressionsExtraScalarName : FExposureExpressionsDropdownName
local FExposureExpressionsExtraScalarName = {}


---@class FExposureExpressionsExtras
---@field ExposureConstants TArray<FExposureExpressionsExtraExposureConstant>
---@field ExposureExtras TArray<FExposureExpressionsExtraExposure>
---@field ScalarConstants TArray<FExposureExpressionsExtraScalarConstant>
---@field ScalarExtras TArray<FExposureExpressionsExtraScalar>
local FExposureExpressionsExtras = {}



---@class FExposureExpressionsExtrasDefaults
---@field ExposureConstants TArray<FExposureExpressionsExtraDefaultExposureConstant>
---@field ExposureExtras TArray<FExposureExpressionsExtraDefaultExposure>
---@field ScalarConstants TArray<FExposureExpressionsExtraDefaultScalarConstant>
---@field ScalarExtras TArray<FExposureExpressionsExtraDefaultScalar>
local FExposureExpressionsExtrasDefaults = {}



---@class FExposureExpressionsExtrasLerp
---@field ExposureExtras TArray<FExposureExpressionsExtraLerpExposure>
---@field ScalarExtras TArray<FExposureExpressionsExtraLerpScalar>
local FExposureExpressionsExtrasLerp = {}



---@class FExposureExpressionsScalarConstantName : FExposureExpressionsDropdownName
local FExposureExpressionsScalarConstantName = {}


---@class FExposureExpressionsScalarExpression
---@field Name FName
---@field Expression UExposureExpressionsScalarValue
local FExposureExpressionsScalarExpression = {}



---@class FExposureExpressionsScalarExpressionName : FExposureExpressionsDropdownName
local FExposureExpressionsScalarExpressionName = {}


---@class IInterface_ExposureExpressionsGlobals : IInterface
local IInterface_ExposureExpressionsGlobals = {}


---@class IInterface_ExposureExpressionsGlobalsProvider : IInterface
local IInterface_ExposureExpressionsGlobalsProvider = {}


---@class UExposureExpressionsAutoExposureValue : UExposureExpressionsExposureValue
---@field bSmoothed boolean
---@field bUnbiased boolean
---@field bUseHistory boolean
local UExposureExpressionsAutoExposureValue = {}



---@class UExposureExpressionsAverageBrightnessExposureValue : UExposureExpressionsExposureValue
---@field bSmoothed boolean
---@field bUnbiased boolean
---@field bUseHistory boolean
local UExposureExpressionsAverageBrightnessExposureValue = {}



---@class UExposureExpressionsAverageLuminanceExposureValue : UExposureExpressionsExposureValue
---@field bSmoothed boolean
---@field bUnbiased boolean
---@field bUseHistory boolean
local UExposureExpressionsAverageLuminanceExposureValue = {}



---@class UExposureExpressionsAverageLuminanceExposureValueWithReverseBias : UExposureExpressionsExposureValue
---@field bSmoothed boolean
---@field bUseHistory boolean
local UExposureExpressionsAverageLuminanceExposureValueWithReverseBias = {}



---@class UExposureExpressionsAverageViewLuminanceExposureValue : UExposureExpressionsExposureValue
---@field bSmoothed boolean
---@field bUnbiased boolean
---@field bUseHistory boolean
local UExposureExpressionsAverageViewLuminanceExposureValue = {}



---@class UExposureExpressionsBaseBiasExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsBaseBiasExposureValue = {}


---@class UExposureExpressionsBiasExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsBiasExposureValue = {}


---@class UExposureExpressionsBiasedExposureValue : UExposureExpressionsExposureValueSingle
---@field bAutoExposureBiasBase boolean
---@field bAutoExposureBiasVFX boolean
---@field bAutoExposureBiasCurve boolean
local UExposureExpressionsBiasedExposureValue = {}



---@class UExposureExpressionsBiasedExposureValueAdd : UExposureExpressionsBiasedExposureValue
local UExposureExpressionsBiasedExposureValueAdd = {}


---@class UExposureExpressionsBiasedExposureValueSubtract : UExposureExpressionsBiasedExposureValue
local UExposureExpressionsBiasedExposureValueSubtract = {}


---@class UExposureExpressionsBiasedMaxExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsBiasedMaxExposureValue = {}


---@class UExposureExpressionsBiasedMinExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsBiasedMinExposureValue = {}


---@class UExposureExpressionsConstantBiasExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsConstantBiasExposureValue = {}


---@class UExposureExpressionsCurveBiasExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsCurveBiasExposureValue = {}


---@class UExposureExpressionsExposureConstant : UExposureExpressionsExposureValue
local UExposureExpressionsExposureConstant = {}


---@class UExposureExpressionsExposureConstantAbsoluteMaximum : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantAbsoluteMaximum = {}


---@class UExposureExpressionsExposureConstantAbsoluteMinimum : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantAbsoluteMinimum = {}


---@class UExposureExpressionsExposureConstantEV100Value : UExposureExpressionsExposureConstant
---@field Value float
local UExposureExpressionsExposureConstantEV100Value = {}



---@class UExposureExpressionsExposureConstantFactor : UExposureExpressionsExposureValueFactor
local UExposureExpressionsExposureConstantFactor = {}


---@class UExposureExpressionsExposureConstantNegativeOne : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantNegativeOne = {}


---@class UExposureExpressionsExposureConstantNegativeTwo : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantNegativeTwo = {}


---@class UExposureExpressionsExposureConstantOne : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantOne = {}


---@class UExposureExpressionsExposureConstantOneX : UExposureExpressionsExposureConstantFactor
local UExposureExpressionsExposureConstantOneX = {}


---@class UExposureExpressionsExposureConstantTrueZero : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantTrueZero = {}


---@class UExposureExpressionsExposureConstantTwo : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantTwo = {}


---@class UExposureExpressionsExposureConstantTwoX : UExposureExpressionsExposureConstantFactor
local UExposureExpressionsExposureConstantTwoX = {}


---@class UExposureExpressionsExposureConstantUnitlessValue : UExposureExpressionsExposureConstant
---@field Value float
local UExposureExpressionsExposureConstantUnitlessValue = {}



---@class UExposureExpressionsExposureConstantZero : UExposureExpressionsExposureConstant
local UExposureExpressionsExposureConstantZero = {}


---@class UExposureExpressionsExposureCurve : UExposureExpressionsExposureValue
---@field ExposureCurve UCurveFloat
---@field CurveX UExposureExpressionsScalarValue
local UExposureExpressionsExposureCurve = {}



---@class UExposureExpressionsExposureExtrasValue : UExposureExpressionsExposureValue
---@field Value FExposureExpressionsExtraExposureName
local UExposureExpressionsExposureExtrasValue = {}



---@class UExposureExpressionsExposureValue : UExposureExpressionsValue
local UExposureExpressionsExposureValue = {}


---@class UExposureExpressionsExposureValueAbs : UExposureExpressionsExposureValueSingle
local UExposureExpressionsExposureValueAbs = {}


---@class UExposureExpressionsExposureValueAdd : UExposureExpressionsExposureValueOp
local UExposureExpressionsExposureValueAdd = {}


---@class UExposureExpressionsExposureValueAddBias : UExposureExpressionsExposureValueSingle
local UExposureExpressionsExposureValueAddBias = {}


---@class UExposureExpressionsExposureValueAddMulti : UExposureExpressionsExposureValueMulti
local UExposureExpressionsExposureValueAddMulti = {}


---@class UExposureExpressionsExposureValueAverageMulti : UExposureExpressionsExposureValueMulti
local UExposureExpressionsExposureValueAverageMulti = {}


---@class UExposureExpressionsExposureValueClamp : UExposureExpressionsExposureValue
---@field Value UExposureExpressionsExposureValue
---@field ExposureMin UExposureExpressionsExposureValue
---@field ExposureMax UExposureExpressionsExposureValue
local UExposureExpressionsExposureValueClamp = {}



---@class UExposureExpressionsExposureValueCurveRemap : UExposureExpressionsExposureValue
---@field Curve UCurveFloat
---@field Value UExposureExpressionsExposureValue
local UExposureExpressionsExposureValueCurveRemap = {}



---@class UExposureExpressionsExposureValueFactor : UExposureExpressionsExposureValue
local UExposureExpressionsExposureValueFactor = {}


---@class UExposureExpressionsExposureValueFunction : UExposureExpressionsExposureValuePair
local UExposureExpressionsExposureValueFunction = {}


---@class UExposureExpressionsExposureValueLerp : UExposureExpressionsExposureValue
---@field ExposureA UExposureExpressionsExposureValue
---@field ExposureB UExposureExpressionsExposureValue
---@field Alpha float
local UExposureExpressionsExposureValueLerp = {}



---@class UExposureExpressionsExposureValueLerpWithAlpha : UExposureExpressionsExposureValue
---@field ExposureA UExposureExpressionsExposureValue
---@field ExposureB UExposureExpressionsExposureValue
---@field Alpha UExposureExpressionsScalarValue
local UExposureExpressionsExposureValueLerpWithAlpha = {}



---@class UExposureExpressionsExposureValueMapRangeClamped : UExposureExpressionsExposureValue
---@field Value UExposureExpressionsExposureValue
---@field InExposureMin UExposureExpressionsExposureValue
---@field InExposureMax UExposureExpressionsExposureValue
---@field OutExposureMin UExposureExpressionsExposureValue
---@field OutExposureMax UExposureExpressionsExposureValue
local UExposureExpressionsExposureValueMapRangeClamped = {}



---@class UExposureExpressionsExposureValueMax : UExposureExpressionsExposureValueFunction
local UExposureExpressionsExposureValueMax = {}


---@class UExposureExpressionsExposureValueMaxMulti : UExposureExpressionsExposureValueMulti
local UExposureExpressionsExposureValueMaxMulti = {}


---@class UExposureExpressionsExposureValueMedian : UExposureExpressionsExposureValueFunction
local UExposureExpressionsExposureValueMedian = {}


---@class UExposureExpressionsExposureValueMedianMulti : UExposureExpressionsExposureValueMulti
local UExposureExpressionsExposureValueMedianMulti = {}


---@class UExposureExpressionsExposureValueMin : UExposureExpressionsExposureValueFunction
local UExposureExpressionsExposureValueMin = {}


---@class UExposureExpressionsExposureValueMinMulti : UExposureExpressionsExposureValueMulti
local UExposureExpressionsExposureValueMinMulti = {}


---@class UExposureExpressionsExposureValueMulti : UExposureExpressionsExposureValue
---@field Exposures TArray<UExposureExpressionsExposureValue>
local UExposureExpressionsExposureValueMulti = {}



---@class UExposureExpressionsExposureValueNeg : UExposureExpressionsExposureValueSingle
local UExposureExpressionsExposureValueNeg = {}


---@class UExposureExpressionsExposureValueOp : UExposureExpressionsExposureValuePair
local UExposureExpressionsExposureValueOp = {}


---@class UExposureExpressionsExposureValuePair : UExposureExpressionsExposureValue
---@field ExposureA UExposureExpressionsExposureValue
---@field ExposureB UExposureExpressionsExposureValue
local UExposureExpressionsExposureValuePair = {}



---@class UExposureExpressionsExposureValueReverseBias : UExposureExpressionsExposureValueSingle
local UExposureExpressionsExposureValueReverseBias = {}


---@class UExposureExpressionsExposureValueSelect : UExposureExpressionsExposureValue
---@field Value UExposureExpressionsScalarValue
---@field Constant float
---@field ExposureTrue UExposureExpressionsExposureValue
---@field ExposureFalse UExposureExpressionsExposureValue
local UExposureExpressionsExposureValueSelect = {}



---@class UExposureExpressionsExposureValueSingle : UExposureExpressionsExposureValue
---@field Value UExposureExpressionsExposureValue
local UExposureExpressionsExposureValueSingle = {}



---@class UExposureExpressionsExposureValueSubtract : UExposureExpressionsExposureValueOp
local UExposureExpressionsExposureValueSubtract = {}


---@class UExposureExpressionsGlobalExposureConstant : UExposureExpressionsGlobalExposureValueBase
---@field GlobalConstant FExposureExpressionsExposureConstantName
local UExposureExpressionsGlobalExposureConstant = {}



---@class UExposureExpressionsGlobalExposureExpression : UExposureExpressionsExposureValue
---@field GlobalExpression FExposureExpressionsExposureExpressionName
local UExposureExpressionsGlobalExposureExpression = {}



---@class UExposureExpressionsGlobalExposureValueBase : UExposureExpressionsExposureValue
local UExposureExpressionsGlobalExposureValueBase = {}


---@class UExposureExpressionsGlobalScalarConstant : UExposureExpressionsGlobalScalarValueBase
---@field GlobalConstant FExposureExpressionsScalarConstantName
local UExposureExpressionsGlobalScalarConstant = {}



---@class UExposureExpressionsGlobalScalarExpression : UExposureExpressionsScalarValue
---@field GlobalExpression FExposureExpressionsScalarExpressionName
local UExposureExpressionsGlobalScalarExpression = {}



---@class UExposureExpressionsGlobalScalarValueBase : UExposureExpressionsScalarValue
local UExposureExpressionsGlobalScalarValueBase = {}


---@class UExposureExpressionsHistogramMaxValue : UExposureExpressionsExposureValue
local UExposureExpressionsHistogramMaxValue = {}


---@class UExposureExpressionsHistogramMinValue : UExposureExpressionsExposureValue
local UExposureExpressionsHistogramMinValue = {}


---@class UExposureExpressionsMaxExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsMaxExposureValue = {}


---@class UExposureExpressionsMinExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsMinExposureValue = {}


---@class UExposureExpressionsScalarCurve : UExposureExpressionsScalarValue
---@field Curve UCurveFloat
---@field CurveX UExposureExpressionsScalarValue
local UExposureExpressionsScalarCurve = {}



---@class UExposureExpressionsScalarExtrasValue : UExposureExpressionsScalarValue
---@field Value FExposureExpressionsExtraScalarName
local UExposureExpressionsScalarExtrasValue = {}



---@class UExposureExpressionsScalarValue : UExposureExpressionsValue
local UExposureExpressionsScalarValue = {}


---@class UExposureExpressionsScalarValueAbs : UExposureExpressionsScalarValueSingle
local UExposureExpressionsScalarValueAbs = {}


---@class UExposureExpressionsScalarValueAdd : UExposureExpressionsScalarValueOp
local UExposureExpressionsScalarValueAdd = {}


---@class UExposureExpressionsScalarValueClamp : UExposureExpressionsScalarValue
---@field Value UExposureExpressionsScalarValue
---@field Min UExposureExpressionsScalarValue
---@field Max UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueClamp = {}



---@class UExposureExpressionsScalarValueConstantBase : UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueConstantBase = {}


---@class UExposureExpressionsScalarValueConstantNegativeOne : UExposureExpressionsScalarValueConstantBase
local UExposureExpressionsScalarValueConstantNegativeOne = {}


---@class UExposureExpressionsScalarValueConstantOne : UExposureExpressionsScalarValueConstantBase
local UExposureExpressionsScalarValueConstantOne = {}


---@class UExposureExpressionsScalarValueConstantRange : UExposureExpressionsScalarValueConstantBase
---@field Value float
local UExposureExpressionsScalarValueConstantRange = {}



---@class UExposureExpressionsScalarValueConstantZero : UExposureExpressionsScalarValueConstantBase
local UExposureExpressionsScalarValueConstantZero = {}


---@class UExposureExpressionsScalarValueDay : UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueDay = {}


---@class UExposureExpressionsScalarValueDivide : UExposureExpressionsScalarValueOp
local UExposureExpressionsScalarValueDivide = {}


---@class UExposureExpressionsScalarValueFunction : UExposureExpressionsScalarValuePair
local UExposureExpressionsScalarValueFunction = {}


---@class UExposureExpressionsScalarValueIndoors : UExposureExpressionsScalarValue
---@field bSmoothed boolean
local UExposureExpressionsScalarValueIndoors = {}



---@class UExposureExpressionsScalarValueLerp : UExposureExpressionsScalarValue
---@field A UExposureExpressionsScalarValue
---@field b UExposureExpressionsScalarValue
---@field Alpha UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueLerp = {}



---@class UExposureExpressionsScalarValueMapRangeClamped : UExposureExpressionsScalarValue
---@field Value UExposureExpressionsScalarValue
---@field Min UExposureExpressionsScalarValue
---@field Max UExposureExpressionsScalarValue
---@field OutMin UExposureExpressionsScalarValue
---@field OutMax UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueMapRangeClamped = {}



---@class UExposureExpressionsScalarValueMapRangeClampedExposure : UExposureExpressionsExposureValue
---@field Value UExposureExpressionsScalarValue
---@field Min UExposureExpressionsScalarValue
---@field Max UExposureExpressionsScalarValue
---@field ExposureMin UExposureExpressionsExposureValue
---@field ExposureMax UExposureExpressionsExposureValue
local UExposureExpressionsScalarValueMapRangeClampedExposure = {}



---@class UExposureExpressionsScalarValueMax : UExposureExpressionsScalarValueFunction
local UExposureExpressionsScalarValueMax = {}


---@class UExposureExpressionsScalarValueMin : UExposureExpressionsScalarValueFunction
local UExposureExpressionsScalarValueMin = {}


---@class UExposureExpressionsScalarValueMultiply : UExposureExpressionsScalarValueOp
local UExposureExpressionsScalarValueMultiply = {}


---@class UExposureExpressionsScalarValueNegate : UExposureExpressionsScalarValueSingle
local UExposureExpressionsScalarValueNegate = {}


---@class UExposureExpressionsScalarValueOneMinus : UExposureExpressionsScalarValueSingle
local UExposureExpressionsScalarValueOneMinus = {}


---@class UExposureExpressionsScalarValueOp : UExposureExpressionsScalarValuePair
local UExposureExpressionsScalarValueOp = {}


---@class UExposureExpressionsScalarValueOutdoorsDaytime : UExposureExpressionsScalarValue
---@field bSmoothed boolean
local UExposureExpressionsScalarValueOutdoorsDaytime = {}



---@class UExposureExpressionsScalarValueOvercast : UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueOvercast = {}


---@class UExposureExpressionsScalarValuePair : UExposureExpressionsScalarValue
---@field A UExposureExpressionsScalarValue
---@field b UExposureExpressionsScalarValue
local UExposureExpressionsScalarValuePair = {}



---@class UExposureExpressionsScalarValueSaturate : UExposureExpressionsScalarValueSingle
local UExposureExpressionsScalarValueSaturate = {}


---@class UExposureExpressionsScalarValueSelect : UExposureExpressionsScalarValue
---@field Value UExposureExpressionsScalarValue
---@field Constant float
---@field ValueTrue UExposureExpressionsScalarValue
---@field ValueFalse UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueSelect = {}



---@class UExposureExpressionsScalarValueSingle : UExposureExpressionsScalarValue
---@field Value UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueSingle = {}



---@class UExposureExpressionsScalarValueSmoothStep : UExposureExpressionsScalarValue
---@field Value UExposureExpressionsScalarValue
---@field Min UExposureExpressionsScalarValue
---@field Max UExposureExpressionsScalarValue
local UExposureExpressionsScalarValueSmoothStep = {}



---@class UExposureExpressionsScalarValueStep : UExposureExpressionsScalarValueFunction
local UExposureExpressionsScalarValueStep = {}


---@class UExposureExpressionsScalarValueSubtract : UExposureExpressionsScalarValueOp
local UExposureExpressionsScalarValueSubtract = {}


---@class UExposureExpressionsVFXBiasExposureValue : UExposureExpressionsExposureValue
local UExposureExpressionsVFXBiasExposureValue = {}


---@class UExposureExpressionsValue : UObject
local UExposureExpressionsValue = {}


