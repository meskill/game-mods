---@meta

---@class AAnimatedLightsSingleton : AActor
---@field WorldData UAnimatedLightWorldData
local AAnimatedLightsSingleton = {}



---@class FAnimatedLightExtraCachedLightSettings
---@field IntensityUnits ELightUnits
---@field CosHalfConeAngle float
local FAnimatedLightExtraCachedLightSettings = {}



---@class FAnimatedLightExtraMaterialParameter : FAnimatedLightExtraParameterRuntime
---@field Material TWeakObjectPtr<UMaterialInstanceDynamic>
---@field ParameterIndex int32
local FAnimatedLightExtraMaterialParameter = {}



---@class FAnimatedLightExtraNiagaraParameter : FAnimatedLightExtraParameterRuntime
---@field NiagaraComponent TWeakObjectPtr<UNiagaraComponent>
---@field bInvalid boolean
local FAnimatedLightExtraNiagaraParameter = {}



---@class FAnimatedLightExtraParameter
---@field Parameter FName
---@field ToleranceThreshold float
---@field Value EAnimatedLightExtraParameterValue
---@field OutputIntensityUnits ELightUnits
---@field DistanceMetersSuspend float
---@field DistanceMetersClose float
---@field bOnlyUpdateOnce boolean
---@field bUseOutputIntensityUnits boolean
local FAnimatedLightExtraParameter = {}



---@class FAnimatedLightExtraParameterRuntime : FAnimatedLightExtraParameter
---@field Owner TWeakObjectPtr<UObject>
---@field LastValue FLinearColor
---@field UnaffectedValue FLinearColor
---@field DistanceSquaredMetersSuspend float
---@field DistanceSquaredMetersNear float
---@field SleepFrames int32
---@field bUnaffectedValueValid boolean
local FAnimatedLightExtraParameterRuntime = {}



---@class FAnimatedLightExtraSetupMaterialParameter : FAnimatedLightExtraParameter
---@field Material UMaterialInstanceDynamic
local FAnimatedLightExtraSetupMaterialParameter = {}



---@class FAnimatedLightExtraSetupNiagaraParameter : FAnimatedLightExtraParameter
---@field NiagaraComponent UNiagaraComponent
local FAnimatedLightExtraSetupNiagaraParameter = {}



---@class FAnimatedLightSettings
---@field WaveSpeed1 float
---@field WaveSpeed2 float
---@field MinIntensity float
---@field IntensityNoiseType EAnimatedLightComponentNoiseType
---@field IntensityNoiseSpeed float
---@field IntensityNoiseFactor float
---@field HueNoiseType EAnimatedLightComponentNoiseType
---@field HueNoiseSpeed float
---@field HueNoiseAmount float
---@field SaturationNoiseType EAnimatedLightComponentNoiseType
---@field SaturationNoiseSpeed float
---@field SaturationNoiseAmount float
---@field bIntensityFlicker boolean
---@field bAddIntensityNoise boolean
---@field bAddHSVNoise boolean
local FAnimatedLightSettings = {}



---@class FAnimatedLightState
---@field HueNoise float
---@field SaturationNoise float
---@field IntensityMod float
---@field NoiseIntensity float
---@field IntensityNoiseFactor float
local FAnimatedLightState = {}



---@class UAnimatedLightClusterComponent : USceneComponent
---@field CullingSettings UAnimatedLightsClusterSettings
---@field LightComponents TArray<TWeakObjectPtr<ULightComponent>>
---@field MaxVisibleDistance float
---@field SleepDeltaTime float
---@field bCanForceUpdates boolean
local UAnimatedLightClusterComponent = {}

function UAnimatedLightClusterComponent:RebuildLights() end


---@class UAnimatedLightClusterComponentAuto : UAnimatedLightClusterComponent
local UAnimatedLightClusterComponentAuto = {}


---@class UAnimatedLightClusterComponentChildOfLight : UAnimatedLightClusterComponent
local UAnimatedLightClusterComponentChildOfLight = {}


---@class UAnimatedLightComponent : UAnimatedLightComponentBase
---@field ColorCurve_DEPRICATED UCurveLinearColor
---@field IntensityCurve_DEPRICATED UCurveFloat
---@field WaveSpeed1 float
---@field WaveSpeed2 float
---@field MinIntensity float
---@field IntensityNoiseType EAnimatedLightComponentNoiseType
---@field IntensityNoiseSpeed float
---@field IntensityNoiseFactor float
---@field HueNoiseType EAnimatedLightComponentNoiseType
---@field HueNoiseSpeed float
---@field HueNoiseAmount float
---@field SaturationNoiseType EAnimatedLightComponentNoiseType
---@field SaturationNoiseSpeed float
---@field SaturationNoiseAmount float
---@field UseMathBased boolean
---@field bAddIntensityNoise boolean
---@field bAddHSVNoise boolean
---@field bLoopColorCurve_DEPRICATED boolean
---@field bLoopIntensityCurve_DEPRICATED boolean
local UAnimatedLightComponent = {}



---@class UAnimatedLightComponentBase : UAnimatedLightClusterComponentAuto
---@field StartOffset float
---@field DurationScale float
---@field bDeepScanChildren boolean
---@field bEnabled boolean
---@field RandomizeStartOffset boolean
---@field Time float
local UAnimatedLightComponentBase = {}

---@param bIsEnabled boolean
function UAnimatedLightComponentBase:IsAnimatedLightEnabled(bIsEnabled) end
---@param bEnable boolean
function UAnimatedLightComponentBase:EnableAnimatedLight(bEnable) end
function UAnimatedLightComponentBase:DisableAnimatedLight() end


---@class UAnimatedLightComponentLean : UAnimatedLightComponentBase
---@field Settings UAnimatedLightSettingsAsset
local UAnimatedLightComponentLean = {}



---@class UAnimatedLightParametersComponent : UAnimatedLightParametersComponentAuto
---@field MaterialParameters TArray<FAnimatedLightExtraSetupMaterialParameter>
---@field NiagaraParameters TArray<FAnimatedLightExtraSetupNiagaraParameter>
local UAnimatedLightParametersComponent = {}

---@return boolean
function UAnimatedLightParametersComponent:RemoveAnimatedLightParameters() end
---@param Parameter FName
---@return boolean
function UAnimatedLightParametersComponent:RemoveAnimatedLightParameter(Parameter) end
---@param NiagaraComponent UNiagaraComponent
---@return boolean
function UAnimatedLightParametersComponent:RemoveAnimatedLightNiagaraParameters(NiagaraComponent) end
---@param Parameter FName
---@return boolean
function UAnimatedLightParametersComponent:RemoveAnimatedLightNiagaraParameter(Parameter) end
---@param MaterialInstanceDynamic UMaterialInstanceDynamic
---@return boolean
function UAnimatedLightParametersComponent:RemoveAnimatedLightMaterialParameters(MaterialInstanceDynamic) end
---@param Parameter FName
---@return boolean
function UAnimatedLightParametersComponent:RemoveAnimatedLightMaterialParameter(Parameter) end
---@param NiagaraComponent UNiagaraComponent
---@param ParameterList TArray<FAnimatedLightExtraParameter>
---@return boolean
function UAnimatedLightParametersComponent:AddAnimatedLightNiagaraParameters(NiagaraComponent, ParameterList) end
---@param NiagaraComponent UNiagaraComponent
---@param Parameter FAnimatedLightExtraParameter
---@return boolean
function UAnimatedLightParametersComponent:AddAnimatedLightNiagaraParameter(NiagaraComponent, Parameter) end
---@param MaterialInstanceDynamic UMaterialInstanceDynamic
---@param ParameterList TArray<FAnimatedLightExtraParameter>
---@return boolean
function UAnimatedLightParametersComponent:AddAnimatedLightMaterialParameters(MaterialInstanceDynamic, ParameterList) end
---@param MaterialInstanceDynamic UMaterialInstanceDynamic
---@param Parameter FAnimatedLightExtraParameter
---@return boolean
function UAnimatedLightParametersComponent:AddAnimatedLightMaterialParameter(MaterialInstanceDynamic, Parameter) end


---@class UAnimatedLightParametersComponentAuto : UAnimatedLightParametersComponentBase
---@field ForceLightComponent ULightComponent
---@field bUseForceLightComponent boolean
local UAnimatedLightParametersComponentAuto = {}



---@class UAnimatedLightParametersComponentBase : USceneComponent
---@field bEnabled boolean
local UAnimatedLightParametersComponentBase = {}

---@param bNewEnabled boolean
function UAnimatedLightParametersComponentBase:SetEnabled(bNewEnabled) end


---@class UAnimatedLightPluginSettings : UDataAsset
---@field InOrderBuckets TArray<FName>
local UAnimatedLightPluginSettings = {}



---@class UAnimatedLightSettingsAsset : UDataAsset
---@field Settings FAnimatedLightSettings
local UAnimatedLightSettingsAsset = {}



---@class UAnimatedLightWorldData : UObject
---@field Settings UAnimatedLightPluginSettings
local UAnimatedLightWorldData = {}



---@class UAnimatedLightsAPI : UBlueprintFunctionLibrary
local UAnimatedLightsAPI = {}

---@param WorldContextObject UObject
---@param PauseOwner UObject
---@return boolean
function UAnimatedLightsAPI:UnpauseAnimatedLights(WorldContextObject, PauseOwner) end
---@param WorldContextObject UObject
---@param LightComponent ULightComponent
---@param PauseOwner UObject
---@return boolean
function UAnimatedLightsAPI:UnpauseAnimatedLight(WorldContextObject, LightComponent, PauseOwner) end
---@param light ULightComponent
---@param Intensity float
---@param bSetEvenIfNotAnimated boolean
---@return boolean
function UAnimatedLightsAPI:SetAnimatedLightIntensity(light, Intensity, bSetEvenIfNotAnimated) end
---@param light ULightComponent
---@param Color FLinearColor
---@param Intensity float
---@param bSetEvenIfNotAnimated boolean
---@return boolean
function UAnimatedLightsAPI:SetAnimatedLightColorIntensity(light, Color, Intensity, bSetEvenIfNotAnimated) end
---@param light ULightComponent
---@param Color FLinearColor
---@param bSetEvenIfNotAnimated boolean
---@return boolean
function UAnimatedLightsAPI:SetAnimatedLightColor(light, Color, bSetEvenIfNotAnimated) end
---@param WorldContextObject UObject
---@param LightComponent ULightComponent
---@param PauseOwner UObject
---@return boolean
function UAnimatedLightsAPI:PauseAnimatedLight(WorldContextObject, LightComponent, PauseOwner) end
---@param light ULightComponent
---@param bIsAnimatedLight boolean
function UAnimatedLightsAPI:IsAnimatedLight(light, bIsAnimatedLight) end
---@param light ULightComponent
---@param Intensity float
---@param bGetEvenIfNotAnimated boolean
---@return boolean
function UAnimatedLightsAPI:GetAnimatedLightIntensity(light, Intensity, bGetEvenIfNotAnimated) end
---@param light ULightComponent
---@param Color FLinearColor
---@param Intensity float
---@param bGetEvenIfNotAnimated boolean
---@return boolean
function UAnimatedLightsAPI:GetAnimatedLightColorIntensity(light, Color, Intensity, bGetEvenIfNotAnimated) end
---@param light ULightComponent
---@param Color FLinearColor
---@param bGetEvenIfNotAnimated boolean
---@return boolean
function UAnimatedLightsAPI:GetAnimatedLightColor(light, Color, bGetEvenIfNotAnimated) end
---@param WorldContextObject UObject
---@param LightComponent ULightComponent
---@param PauseOwner UObject
---@param bPaused boolean
---@return boolean
function UAnimatedLightsAPI:AnimatedLightIsPaused(WorldContextObject, LightComponent, PauseOwner, bPaused) end


---@class UAnimatedLightsClusterSettings : UDataAsset
---@field TickEveryFrameDistanceMeters float
---@field SlowTickDistanceMeters float
---@field SlowTickRateSeconds float
---@field MaxTickEveryFrameDistanceMeters float
---@field MaxSlowTickDistanceMeters float
---@field InverseRange float
---@field MaxInverseRange float
---@field SlowTickInverseRange float
---@field bAutoScale boolean
local UAnimatedLightsClusterSettings = {}

---@param NewTickEveryFrameDistanceMeters float
---@param NewSlowTickDistanceMeters float
function UAnimatedLightsClusterSettings:SetRange(NewTickEveryFrameDistanceMeters, NewSlowTickDistanceMeters) end


