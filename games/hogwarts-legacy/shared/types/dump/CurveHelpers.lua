---@meta

---@class FBlueprintCurveKey
---@field InterpMode ERichCurveInterpMode
---@field TangentMode ERichCurveTangentMode
---@field TangentWeightMode ERichCurveTangentWeightMode
---@field Time float
---@field Value float
---@field ArriveTangent float
---@field ArriveTangentWeight float
---@field LeaveTangent float
---@field LeaveTangentWeight float
local FBlueprintCurveKey = {}



---@class FSampleTextureToCurve
---@field Type ESampleTextureToCurveType
---@field StartUV float
---@field EndUV float
---@field OtherCoordBase float
---@field CurveStartT float
---@field CurveEndT float
---@field ColorNormalize ESampleTextureToColorNormalizeMode
---@field CurveNormalize ESampleTextureToColorNormalizeMode
---@field Desaturate float
---@field QuantizeColorsBits int32
---@field ColorScale float
---@field AlphaChannel ESampleTextureToCurveAlphaChannel
---@field FixedAlpha float
---@field AlphaIntensity ESampleTextureToColorNormalizeMode
---@field AlphaScale float
---@field CurveErrorTolerancePercent float
---@field bCubicKeys boolean
---@field bUseCurveErrorTolerance boolean
---@field bUseColorNormalize boolean
---@field bUseCurveNormalize boolean
---@field bUseDesaturate boolean
---@field bUseQuantizeColors boolean
---@field bUseColorScale boolean
---@field bDoAlpha boolean
---@field bOverrideAlphaIntensity boolean
---@field bUseAlphaScale boolean
local FSampleTextureToCurve = {}



---@class UCurveFromTextureLibrary : UBlueprintFunctionLibrary
local UCurveFromTextureLibrary = {}

---@param Texture UTexture2D
---@param Settings FSampleTextureToCurve
---@param ColorCurve UCurveLinearColor
---@param Worked boolean
function UCurveFromTextureLibrary:TextureToLinearColorCurve(Texture, Settings, ColorCurve, Worked) end


---@class UCurveHelpersBlueprintLibrary : UBlueprintFunctionLibrary
local UCurveHelpersBlueprintLibrary = {}

---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param DeltaTime float
function UCurveHelpersBlueprintLibrary:ShiftCurve(RuntimeFloatCurve, DeltaTime) end
---@param Spline USplineComponent
---@param bEdited boolean
function UCurveHelpersBlueprintLibrary:SetSplineHasBeenEdited(Spline, bEdited) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param ExternalCurve UCurveFloat
---@param bCopyToInternal boolean
function UCurveHelpersBlueprintLibrary:SetExternalCurve(RuntimeFloatCurve, ExternalCurve, bCopyToInternal) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Keys TArray<FBlueprintCurveKey>
function UCurveHelpersBlueprintLibrary:SetCurveKeys(RuntimeFloatCurve, Keys) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param DefaultValue float
function UCurveHelpersBlueprintLibrary:SetCurveDefaultValue(RuntimeFloatCurve, DefaultValue) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param ScaleOrigin float
---@param ScaleFactor float
function UCurveHelpersBlueprintLibrary:ScaleCurve(RuntimeFloatCurve, ScaleOrigin, ScaleFactor) end
---@param Actor AActor
function UCurveHelpersBlueprintLibrary:RunConstructionScripts(Actor) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
function UCurveHelpersBlueprintLibrary:ResetCurve(RuntimeFloatCurve) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Tolerance float
function UCurveHelpersBlueprintLibrary:RemoveRedundantCurveKeys(RuntimeFloatCurve, Tolerance) end
---@param Time float
---@param Value float
---@param Key FBlueprintCurveKey
function UCurveHelpersBlueprintLibrary:MakeLinearCurveKey(Time, Value, Key) end
---@param Keys TArray<FBlueprintCurveKey>
---@param StartTime float
---@param StartValue float
---@param MidTime float
---@param MidValue float
---@param EndTime float
---@param EndValue float
---@param bLinear boolean
function UCurveHelpersBlueprintLibrary:MakeCurveKeysTriplet(Keys, StartTime, StartValue, MidTime, MidValue, EndTime, EndValue, bLinear) end
---@param Keys TArray<FBlueprintCurveKey>
---@param StartTime float
---@param StartValue float
---@param EndTime float
---@param EndValue float
---@param bLinear boolean
function UCurveHelpersBlueprintLibrary:MakeCurveKeysSimple(Keys, StartTime, StartValue, EndTime, EndValue, bLinear) end
---@param Time float
---@param Value float
---@param Key FBlueprintCurveKey
---@param InterpMode ERichCurveInterpMode
---@param ArriveTangent float
---@param LeaveTangent float
function UCurveHelpersBlueprintLibrary:MakeCurveKey(Time, Value, Key, InterpMode, ArriveTangent, LeaveTangent) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param bExternalCurve boolean
function UCurveHelpersBlueprintLibrary:IsUsingExternalCurve(RuntimeFloatCurve, bExternalCurve) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Keys TArray<FBlueprintCurveKey>
function UCurveHelpersBlueprintLibrary:InsertCurveKeys(RuntimeFloatCurve, Keys) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Key FBlueprintCurveKey
function UCurveHelpersBlueprintLibrary:InsertCurveKey(RuntimeFloatCurve, Key) end
---@param Spline USplineComponent
---@param bEdited boolean
function UCurveHelpersBlueprintLibrary:GetSplineHasBeenEdited(Spline, bEdited) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param ExternalCurve UCurveFloat
function UCurveHelpersBlueprintLibrary:GetExternalCurve(RuntimeFloatCurve, ExternalCurve) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param MinValue float
---@param MaxValue float
function UCurveHelpersBlueprintLibrary:GetCurveValueRange(RuntimeFloatCurve, MinValue, MaxValue) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param MinTime float
---@param MaxTime float
function UCurveHelpersBlueprintLibrary:GetCurveTimeRange(RuntimeFloatCurve, MinTime, MaxTime) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param KeyIndex int32
---@param Time float
---@param Value float
---@param bInRange boolean
function UCurveHelpersBlueprintLibrary:GetCurveKeyTimeValue(RuntimeFloatCurve, KeyIndex, Time, Value, bInRange) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Keys TArray<FBlueprintCurveKey>
---@param KeyCount int32
function UCurveHelpersBlueprintLibrary:GetCurveKeys(RuntimeFloatCurve, Keys, KeyCount) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param KeyCount int32
function UCurveHelpersBlueprintLibrary:GetCurveKeyCount(RuntimeFloatCurve, KeyCount) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param KeyIndex int32
---@param Key FBlueprintCurveKey
---@param bInRange boolean
function UCurveHelpersBlueprintLibrary:GetCurveKey(RuntimeFloatCurve, KeyIndex, Key, bInRange) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param DefaultValue float
function UCurveHelpersBlueprintLibrary:GetCurveDefaultValue(RuntimeFloatCurve, DefaultValue) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Time float
---@param Value float
function UCurveHelpersBlueprintLibrary:EvalCurve(RuntimeFloatCurve, Time, Value) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param KeyIndex int32
---@param bInRange boolean
function UCurveHelpersBlueprintLibrary:CurveKeyIndexInRange(RuntimeFloatCurve, KeyIndex, bInRange) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param bHasAnyData boolean
function UCurveHelpersBlueprintLibrary:CurveHasAnyData(RuntimeFloatCurve, bHasAnyData) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
function UCurveHelpersBlueprintLibrary:ConvertExternalCurve(RuntimeFloatCurve) end
---@param SourceRuntimeFloatCurve FRuntimeFloatCurve
---@param NewRuntimeFloatCurve FRuntimeFloatCurve
function UCurveHelpersBlueprintLibrary:CloneCurve(SourceRuntimeFloatCurve, NewRuntimeFloatCurve) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
function UCurveHelpersBlueprintLibrary:ClearCurveDefaultValue(RuntimeFloatCurve) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Tension float
function UCurveHelpersBlueprintLibrary:AutoSetCurveTangents(RuntimeFloatCurve, Tension) end
---@param RuntimeFloatCurve FRuntimeFloatCurve
---@param Key FBlueprintCurveKey
function UCurveHelpersBlueprintLibrary:AppendCurveKey(RuntimeFloatCurve, Key) end


