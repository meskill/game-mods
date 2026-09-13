---@meta

---@class AEnvironmentalGlobalsSingleton : AActor
---@field Globals FEnvironmentalGlobals
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
---@field PlayerVelocity FEnvironmentalGlobalsVelocityTracker
---@field CameraVelocity FEnvironmentalGlobalsVelocityTracker
---@field AccumulateIndoors FEnvironmentalGlobalsIndoors
---@field bDirty boolean
---@field bDiscontinuity boolean
local AEnvironmentalGlobalsSingleton = {}

---@param WorldContextObject UObject
---@param EnvironmentalGlobals FEnvironmentalGlobals
function AEnvironmentalGlobalsSingleton:GetEnvironmentalGlobals(WorldContextObject, EnvironmentalGlobals) end
---@param WorldContextObject UObject
---@param Name FName
---@param Value FVector
---@param bSuccess boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsSetExtraVector(WorldContextObject, Name, Value, bSuccess) end
---@param WorldContextObject UObject
---@param Name FName
---@param Value float
---@param bSuccess boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsSetExtraScalar(WorldContextObject, Name, Value, bSuccess) end
---@param WorldContextObject UObject
---@param Name FName
---@param Value FLinearColor
---@param bSuccess boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsSetExtraColor(WorldContextObject, Name, Value, bSuccess) end
---@param WorldContextObject UObject
---@param Season FEnvironmentalGlobalsSeason
---@param bAllowOverrides boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsGetSeason(WorldContextObject, Season, bAllowOverrides) end
---@param WorldContextObject UObject
---@param Name FName
---@param Value FVector
---@param bExists boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsGetExtraVector(WorldContextObject, Name, Value, bExists) end
---@param WorldContextObject UObject
---@param Name FName
---@param Value float
---@param bExists boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsGetExtraScalar(WorldContextObject, Name, Value, bExists) end
---@param WorldContextObject UObject
---@param Name FName
---@param Value FLinearColor
---@param bExists boolean
function AEnvironmentalGlobalsSingleton:EnvironmentalGlobalsGetExtraColor(WorldContextObject, Name, Value, bExists) end


---@class APerSeasonFXOverrideVolume : ASeasonOverrideVolume
---@field FallOverride ESeasonEnum
---@field FallPhaseOverride int32
---@field WinterOverride ESeasonEnum
---@field WinterPhaseOverride int32
---@field SpringOverride ESeasonEnum
---@field SpringPhaseOverride int32
---@field SummerOverride ESeasonEnum
---@field SummerPhaseOverride int32
local APerSeasonFXOverrideVolume = {}



---@class ASeasonFXOverrideVolume : ASeasonOverrideVolume
---@field SeasonOverride ESeasonEnum
---@field PhaseOverride int32
local ASeasonFXOverrideVolume = {}



---@class ASeasonOverrideVolume : AVolume
---@field Priority float
---@field bEnabled boolean
local ASeasonOverrideVolume = {}

---@param NewPriority float
function ASeasonOverrideVolume:SetPriority(NewPriority) end


---@class FEnvironmentalGlobals
---@field DayNight float
---@field DayNightLerp float
---@field Day float
---@field Night float
---@field SunDirection FEnvironmentalGlobalsLightDirection
---@field MoonDirection FEnvironmentalGlobalsLightDirection
---@field LightDirection FEnvironmentalGlobalsLightDirection
---@field DirectionalLightMode EEnvironmentalGlobalsDirectionalLightMode
---@field bDualDirectionalLightMode boolean
---@field Camera FEnvironmentalGlobalsPositionOrientationVelocity
---@field Player FEnvironmentalGlobalsPositionOrientationVelocity
---@field CameraEyeIndoors float
---@field CameraEyeProbeIndoors float
---@field CameraEyeWeatherIndoors float
---@field CameraEyeAudioIndoors float
---@field CameraEyeStreamingIndoors float
---@field Overcast float
---@field DateTime FDateTime
---@field NormalizedDateTime FTimespan
---@field LightsOnMask int64
---@field LastFrameExposure FEnvironmentalGlobalsLastFrameExposure
---@field SeasonLerp FEnvironmentalGlobalsSeasonLerp
---@field OverrideSeasonLerp FEnvironmentalGlobalsSeasonLerp
---@field Extras FEnvironmentalGlobalsExtraVariables
local FEnvironmentalGlobals = {}



---@class FEnvironmentalGlobalsColorName : FEnvironmentalGlobalsDropdownName
local FEnvironmentalGlobalsColorName = {}


---@class FEnvironmentalGlobalsColorRunMode
---@field Mode EEnvironmentalGlobalsRunMode
---@field GameDefaultValue FLinearColor
---@field ProbeDefaultValue FLinearColor
---@field bUseGameDefaultValue boolean
---@field bUseProbeDefaultValue boolean
local FEnvironmentalGlobalsColorRunMode = {}



---@class FEnvironmentalGlobalsDropdownName
---@field Name FName
local FEnvironmentalGlobalsDropdownName = {}



---@class FEnvironmentalGlobalsExtraColorVariable
---@field Name FName
---@field Value FLinearColor
local FEnvironmentalGlobalsExtraColorVariable = {}



---@class FEnvironmentalGlobalsExtraScalarVariable
---@field Name FName
---@field Value float
local FEnvironmentalGlobalsExtraScalarVariable = {}



---@class FEnvironmentalGlobalsExtraVariables
---@field Scalars TArray<FEnvironmentalGlobalsExtraScalarVariable>
---@field Colors TArray<FEnvironmentalGlobalsExtraColorVariable>
---@field Vectors TArray<FEnvironmentalGlobalsExtraVectorVariable>
local FEnvironmentalGlobalsExtraVariables = {}



---@class FEnvironmentalGlobalsExtraVectorVariable
---@field Name FName
---@field Value FVector
local FEnvironmentalGlobalsExtraVectorVariable = {}



---@class FEnvironmentalGlobalsIndoors
---@field GameIndoors float
---@field ProbeIndoors float
---@field WeatherIndoors float
---@field AudioIndoors float
---@field StreamingIndoors float
---@field bValidGameIndoors boolean
---@field bValidProbeIndoors boolean
---@field bValidWeatherIndoors boolean
---@field bValidAudioIndoors boolean
---@field bValidStreamingIndoors boolean
local FEnvironmentalGlobalsIndoors = {}



---@class FEnvironmentalGlobalsLastFrameExposure
---@field AverageLuminance float
---@field AutoExposure float
---@field Brightness float
local FEnvironmentalGlobalsLastFrameExposure = {}



---@class FEnvironmentalGlobalsLightDirection
---@field Direction FVector
---@field Rotator FRotator
---@field AzimuthDegrees float
---@field AltitudeDegrees float
---@field UnitIntensity float
---@field Intensity float
---@field AtmosphericIntensity float
---@field Color FLinearColor
---@field AtmosphericColor FLinearColor
---@field bInferredFromWorld boolean
local FEnvironmentalGlobalsLightDirection = {}



---@class FEnvironmentalGlobalsPositionOrientation
---@field Position FVector
---@field Rotation FQuat
---@field Direction FVector
---@field Up FVector
---@field Right FVector
local FEnvironmentalGlobalsPositionOrientation = {}



---@class FEnvironmentalGlobalsPositionOrientationVelocity : FEnvironmentalGlobalsPositionOrientation
---@field Velocity FVector
---@field VelocityDir FVector
---@field Speed float
local FEnvironmentalGlobalsPositionOrientationVelocity = {}



---@class FEnvironmentalGlobalsScalarClamp
---@field ClampMin float
---@field ClampMax float
---@field ClampMinMaxConversion EEnvironmentalGlobalsScalarConversion
---@field bUseMin boolean
---@field bUseMax boolean
local FEnvironmentalGlobalsScalarClamp = {}



---@class FEnvironmentalGlobalsScalarName : FEnvironmentalGlobalsDropdownName
local FEnvironmentalGlobalsScalarName = {}


---@class FEnvironmentalGlobalsScalarRunMode
---@field Mode EEnvironmentalGlobalsRunMode
---@field GameDefaultValue float
---@field ProbeDefaultValue float
---@field bUseGameDefaultValue boolean
---@field bUseProbeDefaultValue boolean
local FEnvironmentalGlobalsScalarRunMode = {}



---@class FEnvironmentalGlobalsSeason : FEnvironmentalGlobalsSeasonLerp
---@field SeasonSmooth float
---@field FallSmooth float
---@field WinterSmooth float
---@field SpringSmooth float
---@field SummerSmooth float
local FEnvironmentalGlobalsSeason = {}



---@class FEnvironmentalGlobalsSeasonLerp
---@field Season ESeasonEnum
---@field Phases int32
---@field Phase int32
---@field Lerp float
local FEnvironmentalGlobalsSeasonLerp = {}



---@class FEnvironmentalGlobalsUnsetExtraVariables
---@field UnsetScalars TArray<FName>
---@field UnsetColors TArray<FName>
---@field UnsetVectors TArray<FName>
local FEnvironmentalGlobalsUnsetExtraVariables = {}



---@class FEnvironmentalGlobalsVectorName : FEnvironmentalGlobalsDropdownName
local FEnvironmentalGlobalsVectorName = {}


---@class FEnvironmentalGlobalsVectorOrColorName : FEnvironmentalGlobalsDropdownName
local FEnvironmentalGlobalsVectorOrColorName = {}


---@class FEnvironmentalGlobalsVelocityTracker
---@field VelocityDirection FVector
---@field Speed float
---@field AngularVelocity float
---@field LastPosition FVector
---@field LastForward FVector
---@field bInitialized boolean
local FEnvironmentalGlobalsVelocityTracker = {}



---@class ISeasonOverrideInterface : IInterface
local ISeasonOverrideInterface = {}


---@class UEnvironmentalGlobalsColorCurveVar : UEnvironmentalGlobalsColorVar
---@field Curve UCurveLinearColor
---@field CurveX EEnvironmentalGlobalsValue
---@field Conversion EEnvironmentalGlobalsColorVarConversion
---@field Mode EEnvironmentalGlobalsColorCurveVarMode
local UEnvironmentalGlobalsColorCurveVar = {}



---@class UEnvironmentalGlobalsColorVar : UEnvironmentalGlobalsVar
---@field ParameterName FName
---@field RunMode FEnvironmentalGlobalsColorRunMode
---@field bApplyToMaterialParameterCollection boolean
---@field bApplyToNiagaraParameterCollection boolean
local UEnvironmentalGlobalsColorVar = {}



---@class UEnvironmentalGlobalsCustomScalar : UEnvironmentalGlobalsScalarVar
---@field Scalar UEnvironmentalGlobalsCustomScalarBase
local UEnvironmentalGlobalsCustomScalar = {}



---@class UEnvironmentalGlobalsCustomScalarBase : UObject
local UEnvironmentalGlobalsCustomScalarBase = {}


---@class UEnvironmentalGlobalsCustomScalarConstant : UEnvironmentalGlobalsCustomScalarBase
---@field Value float
local UEnvironmentalGlobalsCustomScalarConstant = {}



---@class UEnvironmentalGlobalsCustomScalarEnvGlobal : UEnvironmentalGlobalsCustomScalarModsBase
---@field Value EEnvironmentalGlobalsValue
local UEnvironmentalGlobalsCustomScalarEnvGlobal = {}



---@class UEnvironmentalGlobalsCustomScalarExposureExpression : UEnvironmentalGlobalsCustomScalarModsBase
---@field Expression UExposureExpressionsScalarValue
local UEnvironmentalGlobalsCustomScalarExposureExpression = {}



---@class UEnvironmentalGlobalsCustomScalarMod : UObject
local UEnvironmentalGlobalsCustomScalarMod = {}


---@class UEnvironmentalGlobalsCustomScalarModCeil : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModCeil = {}


---@class UEnvironmentalGlobalsCustomScalarModClamp : UEnvironmentalGlobalsCustomScalarMod
---@field Min float
---@field Max float
local UEnvironmentalGlobalsCustomScalarModClamp = {}



---@class UEnvironmentalGlobalsCustomScalarModCos : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModCos = {}


---@class UEnvironmentalGlobalsCustomScalarModCurve : UEnvironmentalGlobalsCustomScalarMod
---@field Curve UCurveFloat
local UEnvironmentalGlobalsCustomScalarModCurve = {}



---@class UEnvironmentalGlobalsCustomScalarModDivide : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModDivide = {}


---@class UEnvironmentalGlobalsCustomScalarModDivideBy : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModDivideBy = {}


---@class UEnvironmentalGlobalsCustomScalarModFloor : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModFloor = {}


---@class UEnvironmentalGlobalsCustomScalarModInverse : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModInverse = {}


---@class UEnvironmentalGlobalsCustomScalarModLerp : UEnvironmentalGlobalsCustomScalarMod
---@field ValueAtZero float
---@field ValueAtOne float
local UEnvironmentalGlobalsCustomScalarModLerp = {}



---@class UEnvironmentalGlobalsCustomScalarModMax : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModMax = {}


---@class UEnvironmentalGlobalsCustomScalarModMin : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModMin = {}


---@class UEnvironmentalGlobalsCustomScalarModMinus : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModMinus = {}


---@class UEnvironmentalGlobalsCustomScalarModMinusBy : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModMinusBy = {}


---@class UEnvironmentalGlobalsCustomScalarModMultiply : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModMultiply = {}


---@class UEnvironmentalGlobalsCustomScalarModOneMinus : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModOneMinus = {}


---@class UEnvironmentalGlobalsCustomScalarModPlus : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModPlus = {}


---@class UEnvironmentalGlobalsCustomScalarModPower : UEnvironmentalGlobalsCustomScalarMod
---@field Exponent float
local UEnvironmentalGlobalsCustomScalarModPower = {}



---@class UEnvironmentalGlobalsCustomScalarModRaise : UEnvironmentalGlobalsCustomScalarMod
---@field Base float
local UEnvironmentalGlobalsCustomScalarModRaise = {}



---@class UEnvironmentalGlobalsCustomScalarModRemap : UEnvironmentalGlobalsCustomScalarMod
---@field InputMinMax FVector2D
---@field OutputMinMax FVector2D
local UEnvironmentalGlobalsCustomScalarModRemap = {}



---@class UEnvironmentalGlobalsCustomScalarModRound : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModRound = {}


---@class UEnvironmentalGlobalsCustomScalarModSaturate : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModSaturate = {}


---@class UEnvironmentalGlobalsCustomScalarModSin : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModSin = {}


---@class UEnvironmentalGlobalsCustomScalarModSingleValue : UEnvironmentalGlobalsCustomScalarMod
---@field Value UEnvironmentalGlobalsCustomScalarBase
local UEnvironmentalGlobalsCustomScalarModSingleValue = {}



---@class UEnvironmentalGlobalsCustomScalarModSmoothStep : UEnvironmentalGlobalsCustomScalarMod
---@field Min float
---@field Max float
local UEnvironmentalGlobalsCustomScalarModSmoothStep = {}



---@class UEnvironmentalGlobalsCustomScalarModStepGreater : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModStepGreater = {}


---@class UEnvironmentalGlobalsCustomScalarModStepLess : UEnvironmentalGlobalsCustomScalarModSingleValue
local UEnvironmentalGlobalsCustomScalarModStepLess = {}


---@class UEnvironmentalGlobalsCustomScalarModTrunc : UEnvironmentalGlobalsCustomScalarMod
local UEnvironmentalGlobalsCustomScalarModTrunc = {}


---@class UEnvironmentalGlobalsCustomScalarModsBase : UEnvironmentalGlobalsCustomScalarBase
---@field mods TArray<UEnvironmentalGlobalsCustomScalarMod>
local UEnvironmentalGlobalsCustomScalarModsBase = {}



---@class UEnvironmentalGlobalsExpsoureCurveFromGlobals : UExposureExpressionsExposureValue
---@field Curve UCurveFloat
---@field CurveX EEnvironmentalGlobalsValue
local UEnvironmentalGlobalsExpsoureCurveFromGlobals = {}



---@class UEnvironmentalGlobalsScalarCurveVar : UEnvironmentalGlobalsScalarVar
---@field Curve UCurveFloat
---@field CurveX EEnvironmentalGlobalsValue
---@field Conversion EEnvironmentalGlobalsScalarConversion
---@field ClampMinMax FEnvironmentalGlobalsScalarClamp
local UEnvironmentalGlobalsScalarCurveVar = {}



---@class UEnvironmentalGlobalsScalarExpression : UEnvironmentalGlobalsScalarVar
---@field Expression UExposureExpressionsExposureValue
---@field Conversion EEnvironmentalGlobalsScalarConversion
local UEnvironmentalGlobalsScalarExpression = {}



---@class UEnvironmentalGlobalsScalarVar : UEnvironmentalGlobalsVar
---@field ParameterName FName
---@field RunMode FEnvironmentalGlobalsScalarRunMode
---@field bApplyToMaterialParameterCollection boolean
---@field bApplyToNiagaraParameterCollection boolean
local UEnvironmentalGlobalsScalarVar = {}



---@class UEnvironmentalGlobalsSeasonPhases : UDataAsset
---@field FallPhases int32
---@field WinterPhases int32
---@field SpringPhases int32
---@field SummerPhases int32
local UEnvironmentalGlobalsSeasonPhases = {}



---@class UEnvironmentalGlobalsVar : UObject
local UEnvironmentalGlobalsVar = {}


---@class UEnvironmentalGlobalsVars : UDataAsset
---@field Vars TArray<UEnvironmentalGlobalsVar>
---@field GlobalExpressions FExposureExpressions
local UEnvironmentalGlobalsVars = {}



