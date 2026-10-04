---@meta

---@class ACharacterLightRigAdjustmentVolume : AVolume
---@field Adjustments FCharacterLightRigAdjustments
---@field Priority int32
---@field bEnabled boolean
---@field InterpolationDistance float
---@field bUnbounded boolean
local ACharacterLightRigAdjustmentVolume = {}



---@class ADynamicCharacterLightRig : AActor
---@field DayTemperature float
---@field NightTemperature float
---@field Lights TArray<FDynamicCharacterLightRigLight>
---@field LightingChannel EDynamicCharacterLightRigChannel
---@field AdaptationSettings FDynamicLightAdaptationSettings
---@field BlendDomain FBlendDomain
---@field bEnabled boolean
---@field bUseAdaptationSettings boolean
---@field bInitializedOwnerChannels boolean
local ADynamicCharacterLightRig = {}

---@param Enabled boolean
function ADynamicCharacterLightRig:LightRigEnabled(Enabled) end
---@param ToActor AActor
---@param DynamicLightRig ADynamicCharacterLightRig
function ADynamicCharacterLightRig:GetDynamicLightRig(ToActor, DynamicLightRig) end
---@param Actor AActor
---@param DynamicLightRig ADynamicCharacterLightRig
function ADynamicCharacterLightRig:Get(Actor, DynamicLightRig) end
---@param Enable boolean
function ADynamicCharacterLightRig:EnableLightRig(Enable) end
---@param WorldContextObject UObject
function ADynamicCharacterLightRig:DynamicLightRigCinematicEnable(WorldContextObject) end
---@param WorldContextObject UObject
---@param bDisable boolean
function ADynamicCharacterLightRig:DynamicLightRigCinematicDisable(WorldContextObject, bDisable) end
---@param WorldContextObject UObject
---@param bDisabled boolean
function ADynamicCharacterLightRig:DynamicLightRigCinematicDiabled(WorldContextObject, bDisabled) end
function ADynamicCharacterLightRig:DisableLightRig() end
---@param ToActor AActor
---@param DynamicLightRigClass TSubclassOf<ADynamicCharacterLightRig>
---@param DynamicLightRig ADynamicCharacterLightRig
---@param AttachSocket FName
function ADynamicCharacterLightRig:AttachDynamicLightRig(ToActor, DynamicLightRigClass, DynamicLightRig, AttachSocket) end


---@class AInsideOutsideOverrideVolume : AVolume
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
local AInsideOutsideOverrideVolume = {}

---@param NewPriority float
function AInsideOutsideOverrideVolume:SetPriority(NewPriority) end


---@class AInsideOverrideVolume : AInsideOutsideOverrideVolume
local AInsideOverrideVolume = {}


---@class AOutsideOverrideVolume : AInsideOutsideOverrideVolume
local AOutsideOverrideVolume = {}


---@class APostProcessVolumeWithBlendDomain : APostProcessVolume
---@field BlendDomain FBlendDomain
local APostProcessVolumeWithBlendDomain = {}

function APostProcessVolumeWithBlendDomain:CopySettings() end


---@class APostProcessingVarsActor : AActor
---@field Component UPostProcessingVarsComponent
local APostProcessingVarsActor = {}



---@class ARenderSettingsCustomBlendDomainVolume : AVolume
---@field Domains TArray<FRenderSettingsCustomBlendDomainNameWithValue>
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
local ARenderSettingsCustomBlendDomainVolume = {}

---@param NewPriority float
function ARenderSettingsCustomBlendDomainVolume:SetPriority(NewPriority) end


---@class ARenderSettingsCustomBlendDomainVolumeAttached : AActor
---@field AttachTo AVolume
---@field Domains TArray<FRenderSettingsCustomBlendDomainNameWithValue>
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
local ARenderSettingsCustomBlendDomainVolumeAttached = {}

---@param NewPriority float
function ARenderSettingsCustomBlendDomainVolumeAttached:SetPriority(NewPriority) end


---@class ARenderSettingsEmissiveAdapatationExtrasVolume : ARenderSettingsEmissiveAdapatationVolumeBase
---@field EmissiveAdaptationExtras FExposureExpressionsExtras
local ARenderSettingsEmissiveAdapatationExtrasVolume = {}



---@class ARenderSettingsEmissiveAdapatationVolume : ARenderSettingsEmissiveAdapatationVolumeBase
---@field EmissiveAdaptation FRenderSettingsEmissiveAdaptation
local ARenderSettingsEmissiveAdapatationVolume = {}



---@class ARenderSettingsEmissiveAdapatationVolumeBase : AVolume
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
local ARenderSettingsEmissiveAdapatationVolumeBase = {}

---@param NewPriority float
function ARenderSettingsEmissiveAdapatationVolumeBase:SetPriority(NewPriority) end


---@class ARenderSettingsExposureSpeedTransitionVolume : ARenderSettingsPostProcessingVolume
---@field BlendCurve UCurveFloat
---@field SpeedUp float
---@field SpeedDown float
---@field bUseFilteredIndoors boolean
---@field bOverride_SpeedUp boolean
---@field bOverride_SpeedDown boolean
local ARenderSettingsExposureSpeedTransitionVolume = {}



---@class ARenderSettingsExposureVolume : ARenderSettingsPostProcessingVolume
---@field Exposure FRenderSettingsPPExposureName
---@field ExposureTweak float
---@field bExposureTweak boolean
local ARenderSettingsExposureVolume = {}

function ARenderSettingsExposureVolume:EditExposure() end


---@class ARenderSettingsPostProcessingVolume : AVolume
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
---@field EnginePostProcessSettings FPostProcessSettings
local ARenderSettingsPostProcessingVolume = {}

function ARenderSettingsPostProcessingVolume:Update() end
---@param NewPriority float
function ARenderSettingsPostProcessingVolume:SetPriority(NewPriority) end


---@class ARenderSettingsProbeVolume : ARenderSettingsPostProcessingVolume
---@field Probes FRenderSettingsPPProbesName
---@field ToneMappingOverride FRenderSettingsPPProbesToneMapping
local ARenderSettingsProbeVolume = {}

function ARenderSettingsProbeVolume:EditProbes() end


---@class ARenderSettingsSingleton : AActor
---@field DefaultPostProcessing FRenderSettingsPostProcessingGroup
---@field LightAdaptation FLightAdaptationTracker
---@field bCreatedInInactiveWorld boolean
---@field EnginePostProcessSettings FPostProcessSettings
---@field DefaultDistanceFog FDistanceFog
---@field DistanceFog FDistanceFogCompute
---@field DefaultEmissiveAdaptation FRenderSettingsEmissiveAdaptation
---@field EmissiveAdaptation FEmissiveAdaptationStateCompute
---@field PlayerCentricViewpointOverrides FPlayerCentricPostProcessingOverrides
---@field PlayerCentricPostProcessing UPlayerCentricPostProcessingComponent
---@field ViewpointState FBlendDomainState
---@field CameraState FBlendDomainState
---@field PlayerState FBlendDomainState
---@field LastFrameExposure FLastRenderedExposurePair
---@field LastValidExposure FLastRenderedExposure
---@field ViewpointEye0Player1Lerp float
---@field ActiveEditorViewport int32
---@field LastCameraCutFrame uint32
---@field LastExposureRenderCutFrame uint32
---@field bInExposureRenderingCut boolean
---@field bIsFixedExposure boolean
---@field DebugPostProcessComponent UPostProcessComponent
local ARenderSettingsSingleton = {}

---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:RenderSettingsGetOvercast(WorldContextObject) end
---@param WorldContextObject UObject
---@param IndoorsType ERenderSettingsIndoorsType
---@return float
function ARenderSettingsSingleton:RenderSettingsGetIndoors(WorldContextObject, IndoorsType) end
---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:RenderSettingsGetDayNight(WorldContextObject) end
---@param WorldContextObject UObject
---@param ViewpointOverrideOwner UObject
---@param PostProcessingViewpointOverride float
---@param LerpAlpha float
function ARenderSettingsSingleton:PushPlayerViewpointOverride(WorldContextObject, ViewpointOverrideOwner, PostProcessingViewpointOverride, LerpAlpha) end
---@param WorldContextObject UObject
---@param ViewpointOverrideOwner UObject
function ARenderSettingsSingleton:PopPlayerViewpointOverride(WorldContextObject, ViewpointOverrideOwner) end
---@param WorldContextObject UObject
---@param Indoors0To1 float
---@param bIsIndoors boolean
function ARenderSettingsSingleton:IsPlayerIndoors(WorldContextObject, Indoors0To1, bIsIndoors) end
---@param WorldContextObject UObject
---@param Indoors0To1 float
---@param bIsIndoors boolean
function ARenderSettingsSingleton:IsCameraIndoors(WorldContextObject, Indoors0To1, bIsIndoors) end
---@param WorldContextObject UObject
---@param ViewpointOverrideOwner UObject
---@param bExists boolean
function ARenderSettingsSingleton:HasPlayerViewpointOverride(WorldContextObject, ViewpointOverrideOwner, bExists) end
---@param WorldContextObject UObject
---@param Indoors float
---@param IndoorsType ERenderSettingsIndoorsType
function ARenderSettingsSingleton:GetViewpointIsInside(WorldContextObject, Indoors, IndoorsType) end
---@param WorldContextObject UObject
---@param BlendDomainState FBlendDomainState
function ARenderSettingsSingleton:GetViewpointBlendDomain(WorldContextObject, BlendDomainState) end
---@param WorldContextObject UObject
---@param Indoors float
---@param IndoorsType ERenderSettingsIndoorsType
function ARenderSettingsSingleton:GetPlayerIsInside(WorldContextObject, Indoors, IndoorsType) end
---@param WorldContextObject UObject
---@param BlendDomainState FBlendDomainState
function ARenderSettingsSingleton:GetPlayerBlendDomain(WorldContextObject, BlendDomainState) end
---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:GetOvercast(WorldContextObject) end
---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:GetIndoors(WorldContextObject) end
---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:GetFilteredIndoors(WorldContextObject) end
---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:GetDayNight(WorldContextObject) end
---@param WorldContextObject UObject
---@param Indoors float
---@param IndoorsType ERenderSettingsIndoorsType
function ARenderSettingsSingleton:GetCameraIsInside(WorldContextObject, Indoors, IndoorsType) end
---@param WorldContextObject UObject
---@param BlendDomainState FBlendDomainState
function ARenderSettingsSingleton:GetCameraBlendDomain(WorldContextObject, BlendDomainState) end
---@param BlendDomainState FBlendDomainState
---@param BlendDomain FName
---@param bValue boolean
function ARenderSettingsSingleton:GetBlendDomainValueBool(BlendDomainState, BlendDomain, bValue) end
---@param BlendDomainState FBlendDomainState
---@param BlendDomain FName
---@param Value float
function ARenderSettingsSingleton:GetBlendDomainValue(BlendDomainState, BlendDomain, Value) end
---@param BlendDomainState FBlendDomainState
---@param Indoors float
---@param IndoorsType ERenderSettingsIndoorsType
function ARenderSettingsSingleton:GetBlendDomainIndoors(BlendDomainState, Indoors, IndoorsType) end
---@param WorldContextObject UObject
---@return UDirectionalLightComponent
function ARenderSettingsSingleton:GetBestDirectionalLight(WorldContextObject) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
---@param Value float
function ARenderSettingsSingleton:CustomBlendDomainSetOverride(WorldContextObject, CustomBlendDomainName, Value) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
---@param bExists boolean
function ARenderSettingsSingleton:CustomBlendDomainHasOverride(WorldContextObject, CustomBlendDomainName, bExists) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
---@param Value float
---@param bExists boolean
function ARenderSettingsSingleton:CustomBlendDomainGetOverride(WorldContextObject, CustomBlendDomainName, Value, bExists) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
---@param bValue boolean
---@param bDefaultValue boolean
function ARenderSettingsSingleton:CustomBlendDomainGetBool(WorldContextObject, CustomBlendDomainName, bValue, bDefaultValue) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
---@param Value float
---@param bExists boolean
function ARenderSettingsSingleton:CustomBlendDomainGet(WorldContextObject, CustomBlendDomainName, Value, bExists) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
---@param bExists boolean
function ARenderSettingsSingleton:CustomBlendDomainExists(WorldContextObject, CustomBlendDomainName, bExists) end
---@param WorldContextObject UObject
---@param CustomBlendDomainName FName
function ARenderSettingsSingleton:CustomBlendDomainClearOverride(WorldContextObject, CustomBlendDomainName) end
---@param WorldContextObject UObject
---@return float
function ARenderSettingsSingleton:CurrentPlayerViewpointOverride(WorldContextObject) end
---@param WorldContextObject UObject
---@param Position FVector
---@param Indoors float
---@param IndoorsType ERenderSettingsIndoorsType
---@param bHighQuality boolean
function ARenderSettingsSingleton:ComputeIsInside(WorldContextObject, Position, Indoors, IndoorsType, bHighQuality) end
---@param WorldContextObject UObject
---@param Position FVector
---@param BlendDomainState FBlendDomainState
---@param bHighQuality boolean
function ARenderSettingsSingleton:ComputeBlendDomain(WorldContextObject, Position, BlendDomainState, bHighQuality) end


---@class ARenderSettingsViewpointInsideOutsideVolume : ARenderSettingsViewpointVolumeBase
---@field TargetViewpointLerp float
---@field InsideMaxDifference float
---@field InsideMinDifference float
---@field ViewpointLerp float
local ARenderSettingsViewpointInsideOutsideVolume = {}



---@class ARenderSettingsViewpointVolume : ARenderSettingsViewpointVolumeBase
---@field ViewpointLerp float
local ARenderSettingsViewpointVolume = {}



---@class ARenderSettingsViewpointVolumeBase : AVolume
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
local ARenderSettingsViewpointVolumeBase = {}



---@class ARenderSettingsVolume : AVolume
---@field PostProcessing FRenderSettingsPostProcessing
---@field DistanceFog FDistanceFogName
---@field DistanceFogOverrides FDistanceFogOverrides
---@field CharacterLightRigAdjustments FCharacterLightRigAdjustmentsName
---@field EmissiveAdaptation FRenderSettingsEmissiveAdaptationName
---@field ExposureTweak float
---@field IndoorsOutdoors ERenderSettingsVolumeIndoorsOutdoorsType
---@field IndoorsType ERenderSettingsIndoorsType
---@field DayNight ERenderSettingsVolumeDayNightType
---@field Overcast ERenderSettingsVolumeOvercastType
---@field LightingMode EBlendDomainLightingMode
---@field NormalizedTimeBlend FBlendDomainNormalizedTimeCurve
---@field IndoorsOutdoorsBlendCurve FBlendDomainIndoorsOutdoorsCurve
---@field CustomBlends TArray<URenderSettingsCustomBlendDomain>
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
---@field bExposureTweak boolean
---@field bDistanceFog boolean
---@field bCharacterLightRigAdjustments boolean
---@field bEmissiveAdaptation boolean
---@field EnginePostProcessSettings FPostProcessSettings
---@field DistanceFogData FDistanceFog
---@field CharacterLightRigAdjustmentsData FCharacterLightRigAdjustments
local ARenderSettingsVolume = {}

function ARenderSettingsVolume:UpdateEnginePostProcessing() end
---@param Library URenderSettingsLibrary
function ARenderSettingsVolume:UpdateEmissiveAdaptation(Library) end
---@param Library URenderSettingsLibrary
function ARenderSettingsVolume:UpdateDistanceFog(Library) end
---@param Library URenderSettingsLibrary
function ARenderSettingsVolume:UpdateCharacterLightRigAdjustments(Library) end
function ARenderSettingsVolume:UpdateAll() end
---@param NewPriority float
function ARenderSettingsVolume:SetPriority(NewPriority) end
function ARenderSettingsVolume:EditProbes() end
function ARenderSettingsVolume:EditGroups() end
function ARenderSettingsVolume:EditExposure() end
function ARenderSettingsVolume:EditDistanceFog() end
function ARenderSettingsVolume:EditColorGrading() end
function ARenderSettingsVolume:EditAll() end


---@class FAdaptationOverrideInterfaces
---@field PriorityAdaptationOverrides TArray<TWeakObjectPtr<UObject>>
---@field StackedAdaptationOverrides TArray<TWeakObjectPtr<UObject>>
local FAdaptationOverrideInterfaces = {}



---@class FBlendDomain : FBlendDomainLegacy
---@field CustomBlends TArray<URenderSettingsCustomBlendDomain>
local FBlendDomain = {}



---@class FBlendDomainIndoorsOutdoorsCurve
---@field IndoorsOutdoorsCurve UCurveFloat
local FBlendDomainIndoorsOutdoorsCurve = {}



---@class FBlendDomainLegacy
---@field IndoorsOutdoorsBlend EBlendDomainIndoorsOutdoors
---@field IndoorsType ERenderSettingsIndoorsType
---@field DayNightBlend EBlendDomainDayNight
---@field OvercastClearBlend EBlendDomainOvercast
---@field LightingMode EBlendDomainLightingMode
---@field NormalizedTimeBlend FBlendDomainNormalizedTimeCurve
---@field IndoorsOutdoorsBlendCurve FBlendDomainIndoorsOutdoorsCurve
local FBlendDomainLegacy = {}



---@class FBlendDomainNormalizedTimeCurve
---@field NormalizedTimeCurve UCurveFloat
---@field bMirrorAroundNoon boolean
local FBlendDomainNormalizedTimeCurve = {}



---@class FBlendDomainState
---@field BlendDomains TMap<FName, float>
---@field Vectors TMap<FName, FVector>
---@field Scalars TMap<FName, float>
---@field bLowQuality boolean
local FBlendDomainState = {}



---@class FCharacterLightRigAdjustments
---@field Name FName
---@field IntensityMod float
---@field TemperatureMod float
---@field DayNightLerp float
---@field bIntensityMod boolean
---@field bOverrideTemperatureMod boolean
---@field bOverrideDayNightLerp boolean
local FCharacterLightRigAdjustments = {}



---@class FCharacterLightRigAdjustmentsCompute
local FCharacterLightRigAdjustmentsCompute = {}


---@class FCharacterLightRigAdjustmentsName
---@field Name FName
local FCharacterLightRigAdjustmentsName = {}



---@class FDirectPostProcessingEval
---@field PostProcessSettings FPostProcessSettings
local FDirectPostProcessingEval = {}



---@class FDistanceFog
---@field bOverride_FogColor boolean
---@field bOverride_StartDistance boolean
---@field bOverride_FullDistance boolean
---@field bOverride_CutoffDistance boolean
---@field bOverride_Thickness boolean
---@field bOverride_MaxFogOpacityPercent boolean
---@field bOverride_BlendSceneColorPercent boolean
---@field bOverride_SkyBlendPercent boolean
---@field bOverride_SkyDesaturation boolean
---@field bOverride_SkyIntensityBoost boolean
---@field bOverride_SkySamplingHorizonAngle boolean
---@field bOverride_SkySamplingUseCameraZ boolean
---@field bOverride_FastAtmosphereHorizonBump boolean
---@field bOverride_FogPPMaterial boolean
---@field bOverride_ExtraA boolean
---@field bOverride_ExtraB boolean
---@field bOverride_ExtraC boolean
---@field bOverride_ExtraD boolean
---@field bOverride_FogGradientHorizonOffset boolean
---@field bFogColorGradient boolean
---@field Name FName
---@field OnOff float
---@field FogColor FLinearColor
---@field FogColorZenith FLinearColor
---@field FogColorNadir FLinearColor
---@field FogGradientHorizonOffset float
---@field MaxFogOpacityPercent float
---@field StartDistance float
---@field FullDistance float
---@field CutoffDistance float
---@field Thickness float
---@field BlendSceneColorPercent float
---@field SkyBlendPercent float
---@field SkyDesaturation float
---@field SkyIntensityBoost float
---@field SkySamplingHorizonAngle float
---@field SkySamplingUseCameraZ float
---@field FastAtmosphereHorizonBump float
---@field FogPPMaterial UMaterialInterface
---@field ExtraLerp FDistanceFogExtraVariables
---@field ExtraSet FDistanceFogExtraVariables
local FDistanceFog = {}



---@class FDistanceFogCompute
---@field FogPostProcess UPostProcessComponent
---@field ActivePPMaterial UMaterialInterface
local FDistanceFogCompute = {}



---@class FDistanceFogDayNight
---@field SunDirection FVector
---@field NightDay float
---@field MoonBrightness float
local FDistanceFogDayNight = {}



---@class FDistanceFogExtraVariables
---@field Scalars TMap<FName, float>
---@field Colors TMap<FName, FLinearColor>
local FDistanceFogExtraVariables = {}



---@class FDistanceFogName
---@field Name FName
local FDistanceFogName = {}



---@class FDistanceFogOverrides
---@field bOverride_OnOff boolean
---@field bOverride_FogGradientHorizonOffset boolean
---@field bOverride_MaxFogOpacityPercent boolean
---@field bOverride_StartDistance boolean
---@field bOverride_FullDistance boolean
---@field bOverride_Thickness boolean
---@field bOverride_BlendSceneColorPercent boolean
---@field OnOff float
---@field FogGradientHorizonOffset float
---@field MaxFogOpacityPercent float
---@field StartDistance float
---@field FullDistance float
---@field Thickness float
---@field BlendSceneColorPercent float
local FDistanceFogOverrides = {}



---@class FDynamicCharacterLightRigAltitudeFollowLight
---@field AltitudeOffset float
---@field MinAltitude float
---@field MaxAltitude float
local FDynamicCharacterLightRigAltitudeFollowLight = {}



---@class FDynamicCharacterLightRigAzimuthFollowLight
---@field AzimuthOffset float
local FDynamicCharacterLightRigAzimuthFollowLight = {}



---@class FDynamicCharacterLightRigFillLight
---@field AwayIntensityPercent float
---@field TowardsIntensityPercent float
local FDynamicCharacterLightRigFillLight = {}



---@class FDynamicCharacterLightRigLight
---@field light ULightComponent
---@field ComponentName FName
---@field DayIntensity float
---@field NightIntensity float
---@field FillLight FDynamicCharacterLightRigFillLight
---@field AzimuthFollow FDynamicCharacterLightRigAzimuthFollowLight
---@field AltitudeFollow FDynamicCharacterLightRigAltitudeFollowLight
---@field bOffAtNight boolean
---@field bFillLight boolean
---@field bAzimuthFollow boolean
---@field bAltitudeFollow boolean
---@field bModulateWithTemperature boolean
---@field bDisableDirectionalLightBelowHorizon boolean
---@field bAllowAdaptation boolean
---@field bEnable boolean
---@field DebugColor FColor
local FDynamicCharacterLightRigLight = {}



---@class FDynamicCharacterLightRigLightUpdate
---@field Owner AActor
---@field DayNightLerp float
---@field TemperatureMod float
---@field IntensityMod float
---@field Adaptation float
---@field OwnerPosition FVector
---@field OwnerDirection FVector
---@field CameraPosition FVector
---@field CameraDirection FVector
---@field DirectionalLight FVector
---@field DirectionalLightIntensity float
---@field DirectionalLightAzimuthDegrees float
---@field DirectionalLightAltitudeDegrees float
---@field bDirectionalLight boolean
---@field bEnabled boolean
local FDynamicCharacterLightRigLightUpdate = {}



---@class FDynamicLightAdaptationEVValue
---@field Type EDynamicLightAdaptationEVValueType
---@field EVValue float
---@field MinMaxTarget float
local FDynamicLightAdaptationEVValue = {}



---@class FDynamicLightAdaptationEVValueClamp
---@field MinEV FDynamicLightAdaptationEVValue
---@field MaxEV FDynamicLightAdaptationEVValue
---@field bUseMinEV boolean
---@field bUseMaxEV boolean
local FDynamicLightAdaptationEVValueClamp = {}



---@class FDynamicLightAdaptationSettings : FDynamicLightAdaptationSettingsBase
---@field ModInterface UDynamicLightAdaptationModSettingsInterface
---@field ModInterfaces TArray<UDynamicLightAdaptationModSettingsInterface>
local FDynamicLightAdaptationSettings = {}



---@class FDynamicLightAdaptationSettingsBase
---@field BaseEV float
---@field OutdoorsDayTimeEVBoost float
---@field AdaptationStrengthPercent float
---@field MinMaxExposureTarget float
---@field MaxEV float
---@field MinEV float
---@field StartCutoffMaxEV float
---@field StartCutoffMinEV float
---@field AutoExposureUpdateTolerance float
---@field FreezeAdaptationAfterFrames int32
---@field Mode ELightAdapatationMode
---@field bUseExposureBias boolean
---@field bFiltered boolean
---@field ExposureCompensationCurve UCurveFloat
---@field bApplyCompensation boolean
local FDynamicLightAdaptationSettingsBase = {}



---@class FEmissiveAdaptationFinalState
---@field MinExposureEV100 float
---@field MaxExposureEV100 float
---@field BiasPow2 float
---@field MinExposure float
---@field MaxExposure float
---@field Bias float
---@field InverseBias float
---@field LastFrameAverageLuminanceEV100 float
---@field LastFrameAutoExposureEV100 float
---@field LastFrameAverageLuminanceFilteredEV100 float
---@field LastFrameAutoExposureFilteredEV100 float
---@field LastFrameAverageLuminance float
---@field LastFrameAutoExposure float
---@field LastFrameAverageLuminanceFiltered float
---@field LastFrameAutoExposureFiltered float
---@field BloomTargetEV100 float
---@field BloomFinalMultiplier float
---@field BloomFinalMultiplierOutdoorsDaytime float
---@field BloomUncorrectedMultiplier float
---@field BloomMultiplierMin float
---@field BloomMultiplierMax float
---@field BloomCorrectionFactor float
---@field AutoFinalMultiplier float
---@field AutoFinalMultiplierOutdoorsDaytime float
---@field LuminanceFinalMultiplier float
---@field LuminanceFinalMultiplierFiltered float
---@field LuminanceMultiplierMin float
---@field LuminanceMultiplierMax float
---@field Indoors float
---@field FilteredIndoors float
---@field OutdoorsDayTime float
---@field OutdoorsDayTimeBoostEV float
---@field OutdoorsDayTimeBoostFactor float
---@field bEnabled boolean
local FEmissiveAdaptationFinalState = {}



---@class FEmissiveAdaptationLerpSettings
---@field BloomTargetEV float
---@field BloomBaseEV float
---@field BloomIntensityCorrection float
---@field BloomOutdoorsDaytimeBoostEV float
---@field AutoExposureAdaptationBoostEV float
---@field LuminanceAdaptationBoostEV float
---@field LuminanceAdaptationClampMinEV float
---@field LuminanceAdaptationClampMaxEV float
---@field Extras FExposureExpressionsExtrasLerp
local FEmissiveAdaptationLerpSettings = {}



---@class FEmissiveAdaptationStateCompute
---@field WorldState FEmissiveAdaptationWorldState
---@field VolumeSettings FEmissiveAdaptationLerpSettings
---@field PPBloomIntensity float
local FEmissiveAdaptationStateCompute = {}



---@class FEmissiveAdaptationWorldState
---@field World UWorld
---@field Eye FVector
---@field NightDay float
---@field Overcast float
---@field OutdoorsIndoors float
---@field FilteredOutdoorsIndoors float
---@field LastExposure FLastRenderedExposurePair
---@field bDayNightSystemValid boolean
local FEmissiveAdaptationWorldState = {}



---@class FLightAdaptationTracker
---@field Components TArray<TWeakObjectPtr<ULightAdaptationComponent>>
---@field LastState FEmissiveAdaptationFinalState
local FLightAdaptationTracker = {}



---@class FPlayerCentricPostProcessingOverride
---@field Owner TWeakObjectPtr<UObject>
---@field PostProcessingViewpoint float
---@field LerpAlpha float
local FPlayerCentricPostProcessingOverride = {}



---@class FPlayerCentricPostProcessingOverrides
---@field OverrideStack TArray<FPlayerCentricPostProcessingOverride>
local FPlayerCentricPostProcessingOverrides = {}



---@class FPostProcessingVarColorCurve
---@field Var EPostProcessingVarColor
---@field Curve FRuntimeCurveLinearColor
local FPostProcessingVarColorCurve = {}



---@class FPostProcessingVarScalarCurve
---@field Var EPostProcessingVarScalar
---@field Curve FRuntimeFloatCurve
local FPostProcessingVarScalarCurve = {}



---@class FRenderSettingsBlendDomainConsoleLien
---@field BlendDomain FBlendDomain
---@field bOnlyAfterBeginPlay boolean
---@field Mode ERenderSettingsBlendDomainConsoleLienMode
---@field ConsoleVariables TArray<FConsoleVariableLienEntry>
local FRenderSettingsBlendDomainConsoleLien = {}



---@class FRenderSettingsCustomBlendDomainConsoleEntry
---@field domain FName
---@field ConsoleVariable FString
---@field ExplicitCompare float
---@field bInvertValue boolean
---@field bUseExplicitCompare boolean
local FRenderSettingsCustomBlendDomainConsoleEntry = {}



---@class FRenderSettingsCustomBlendDomainEntry
---@field domain FName
---@field DefaultValue float
---@field DefaultValueBlendDomain FRenderSettingsPreComputedLastBlendDomainName
---@field bInvertDefaultValueBlendDomain boolean
---@field bUseDefaultValueBlendDomain boolean
local FRenderSettingsCustomBlendDomainEntry = {}



---@class FRenderSettingsCustomBlendDomainName
---@field Name FName
local FRenderSettingsCustomBlendDomainName = {}



---@class FRenderSettingsCustomBlendDomainNameWithValue
---@field Name FRenderSettingsCustomBlendDomainName
---@field Value float
local FRenderSettingsCustomBlendDomainNameWithValue = {}



---@class FRenderSettingsCustomBlendDomainOverrides
---@field InterfaceOverrides TArray<TWeakObjectPtr<UObject>>
---@field ValueOverrides FRenderSettingsCustomBlendDomainValueOverrides
local FRenderSettingsCustomBlendDomainOverrides = {}



---@class FRenderSettingsCustomBlendDomainValueOverrides : FRenderSettingsCustomBlendDomainValueStore
local FRenderSettingsCustomBlendDomainValueOverrides = {}


---@class FRenderSettingsCustomBlendDomainValueStore
---@field Values TMap<FName, float>
local FRenderSettingsCustomBlendDomainValueStore = {}



---@class FRenderSettingsCustomBlendDomains
---@field AllDomains TArray<URenderSettingsCustomBlendDomainBase>
---@field PreComputeDomainsFirst TArray<URenderSettingsCustomBlendDomainBase>
---@field PreComputeDomainsNormal TArray<URenderSettingsCustomBlendDomainBase>
---@field PreComputeDomainsLast TArray<URenderSettingsCustomBlendDomainBase>
---@field PreComputeDomainsCustom TArray<URenderSettingsCustomBlendDomainBase>
local FRenderSettingsCustomBlendDomains = {}



---@class FRenderSettingsEmissiveAdaptation
---@field bOverride_BloomTarget boolean
---@field bOverride_BloomBaseEV boolean
---@field bOverride_BloomIntensityCorrection boolean
---@field bOverride_BloomOutdoorsDaytimeBoostEV boolean
---@field bOverride_AutoExposureAdaptationBoostEV boolean
---@field bOverride_LuminanceAdaptationBoostEV boolean
---@field bOverride_LuminanceAdaptationMinEV boolean
---@field bOverride_LuminanceAdaptationMaxEV boolean
---@field Name FName
---@field BloomTargetExpression UExposureExpressionsExposureValue
---@field BloomBaseExpression UExposureExpressionsExposureValue
---@field BloomIntensityCorrection float
---@field BloomOutdoorsDaytimeBoostExpression UExposureExpressionsExposureValue
---@field AutoExposureAdaptationBoostExpression UExposureExpressionsExposureValue
---@field LuminanceAdaptationBoostExpression UExposureExpressionsExposureValue
---@field LuminanceAdaptationMinExpression UExposureExpressionsExposureValue
---@field LuminanceAdaptationMaxExpression UExposureExpressionsExposureValue
---@field Extras FExposureExpressionsExtras
local FRenderSettingsEmissiveAdaptation = {}



---@class FRenderSettingsEmissiveAdaptationName
---@field Name FName
local FRenderSettingsEmissiveAdaptationName = {}



---@class FRenderSettingsPPAmbient
---@field bOverride_AmbientOcclusionIntensity boolean
---@field bOverride_AmbientOcclusionRadius boolean
---@field bOverride_AmbientCubemapTint boolean
---@field bOverride_AmbientCubemapIntensity boolean
---@field Name FName
---@field AmbientOcclusionIntensity float
---@field AmbientOcclusionRadius float
---@field AdvancedAO FRenderSettingsPPAmbientOcclusionAdvanced
---@field AmbientCubemap UTextureCube
---@field AmbientCubemapTint FLinearColor
---@field AmbientCubemapIntensity float
local FRenderSettingsPPAmbient = {}



---@class FRenderSettingsPPAmbientName
---@field Name FName
local FRenderSettingsPPAmbientName = {}



---@class FRenderSettingsPPAmbientOcclusionAdvanced
---@field bOverride_AmbientOcclusionStaticFraction boolean
---@field bOverride_AmbientOcclusionFadeDistance boolean
---@field bOverride_AmbientOcclusionFadeRadius boolean
---@field bOverride_AmbientOcclusionRadiusInWS boolean
---@field bOverride_AmbientOcclusionPower boolean
---@field bOverride_AmbientOcclusionBias boolean
---@field bOverride_AmbientOcclusionQuality boolean
---@field bOverride_AmbientOcclusionMipBlend boolean
---@field bOverride_AmbientOcclusionMipScale boolean
---@field bOverride_AmbientOcclusionMipThreshold boolean
---@field AmbientOcclusionStaticFraction float
---@field AmbientOcclusionRadiusInWS boolean
---@field AmbientOcclusionFadeDistance float
---@field AmbientOcclusionFadeRadius float
---@field AmbientOcclusionPower float
---@field AmbientOcclusionBias float
---@field AmbientOcclusionQuality float
---@field AmbientOcclusionMipBlend float
---@field AmbientOcclusionMipScale float
---@field AmbientOcclusionMipThreshold float
local FRenderSettingsPPAmbientOcclusionAdvanced = {}



---@class FRenderSettingsPPBloom
---@field bOverride_Method boolean
---@field bOverride_Intensity boolean
---@field bOverride_Threshold boolean
---@field bOverride_Cross boolean
---@field bOverride_ConvolutionTexture boolean
---@field bOverride_DirtMaskIntensity boolean
---@field bOverride_DirtMaskTint boolean
---@field bOverride_DirtMask boolean
---@field Name FName
---@field Method EBloomMethod
---@field Intensity float
---@field Threshold float
---@field Cross float
---@field ConvolutionTexture UTexture2D
---@field Advanced FRenderSettingsPPBloomAdvanced
---@field DirtMask UTexture
---@field DirtMaskIntensity float
---@field DirtMaskTint FLinearColor
local FRenderSettingsPPBloom = {}



---@class FRenderSettingsPPBloomAdvanced
---@field bOverride_Tint1 boolean
---@field bOverride_Size1 boolean
---@field bOverride_Size2 boolean
---@field bOverride_Tint2 boolean
---@field bOverride_Tint3 boolean
---@field bOverride_Size3 boolean
---@field bOverride_Tint4 boolean
---@field bOverride_Size4 boolean
---@field bOverride_Tint5 boolean
---@field bOverride_Size5 boolean
---@field bOverride_Tint6 boolean
---@field bOverride_Size6 boolean
---@field bOverride_SizeScale boolean
---@field bOverride_ConvolutionSize boolean
---@field bOverride_ConvolutionCenterUV boolean
---@field bOverride_ConvolutionPreFilterMin boolean
---@field bOverride_ConvolutionPreFilterMax boolean
---@field bOverride_ConvolutionPreFilterMult boolean
---@field bOverride_ConvolutionBufferScale boolean
---@field SizeScale float
---@field Size1 float
---@field Size2 float
---@field Size3 float
---@field Size4 float
---@field Size5 float
---@field Size6 float
---@field Tint1 FLinearColor
---@field Tint2 FLinearColor
---@field Tint3 FLinearColor
---@field Tint4 FLinearColor
---@field Tint5 FLinearColor
---@field Tint6 FLinearColor
---@field ConvolutionSize float
---@field ConvolutionCenterUV FVector2D
---@field ConvolutionPreFilterMin float
---@field ConvolutionPreFilterMax float
---@field ConvolutionPreFilterMult float
---@field ConvolutionBufferScale float
local FRenderSettingsPPBloomAdvanced = {}



---@class FRenderSettingsPPBloomName
---@field Name FName
local FRenderSettingsPPBloomName = {}



---@class FRenderSettingsPPChromaticAberration
---@field bOverride_SceneFringeIntensity boolean
---@field bOverride_StartOffset boolean
---@field SceneFringeIntensity float
---@field StartOffset float
local FRenderSettingsPPChromaticAberration = {}



---@class FRenderSettingsPPColorCorrection
---@field bOverride_Saturation boolean
---@field bOverride_Contrast boolean
---@field bOverride_Gamma boolean
---@field bOverride_Gain boolean
---@field bOverride_Offset boolean
---@field Saturation FVector4
---@field Contrast FVector4
---@field Gamma FVector4
---@field Gain FVector4
---@field Offset FVector4
local FRenderSettingsPPColorCorrection = {}



---@class FRenderSettingsPPColorGrading
---@field bOverride_WhiteTemp boolean
---@field bOverride_WhiteTint boolean
---@field bOverride_ColorCorrectionShadowsMax boolean
---@field bOverride_ColorCorrectionHighlightsMin boolean
---@field bOverride_SceneColorTint boolean
---@field bOverride_BlueCorrection boolean
---@field bOverride_ExpandGamut boolean
---@field Name FName
---@field WhiteTemp float
---@field WhiteTint float
---@field ColorGradingGlobal FRenderSettingsPPColorCorrection
---@field ColorGradingShadows FRenderSettingsPPColorCorrection
---@field ColorCorrectionShadowsMax float
---@field ColorGradingMidtones FRenderSettingsPPColorCorrection
---@field ColorGradingHighlights FRenderSettingsPPColorCorrection
---@field ColorCorrectionHighlightsMin float
---@field SceneColorTint FLinearColor
---@field BlueCorrection float
---@field ExpandGamut float
local FRenderSettingsPPColorGrading = {}



---@class FRenderSettingsPPColorGradingName
---@field Name FName
local FRenderSettingsPPColorGradingName = {}



---@class FRenderSettingsPPDepthOfField
---@field bOverride_SensorWidth boolean
---@field bOverride_FocalDistance boolean
---@field bOverride_DepthBlurAmount boolean
---@field bOverride_DepthBlurRadius boolean
---@field bOverride_Occlusion boolean
---@field bOverride_Fstop boolean
---@field bOverride_MinFstop boolean
---@field bOverride_BladeCount boolean
---@field Name FName
---@field SensorWidth float
---@field FocalDistance float
---@field DepthBlurAmount float
---@field DepthBlurRadius float
---@field Occlusion float
---@field Fstop float
---@field MinFstop float
---@field BladeCount int32
local FRenderSettingsPPDepthOfField = {}



---@class FRenderSettingsPPDepthOfFieldName
---@field Name FName
local FRenderSettingsPPDepthOfFieldName = {}



---@class FRenderSettingsPPExposure
---@field bOverride_AutoExposureMethod boolean
---@field bOverride_AutoExposureMinBrightness boolean
---@field bOverride_AutoExposureMaxBrightness boolean
---@field bOverride_AutoExposureSpeedUp boolean
---@field bOverride_AutoExposureSpeedDown boolean
---@field bOverride_AutoExposureBias boolean
---@field Name FName
---@field AutoExposureMethod EAutoExposureMethod
---@field AutoExposureMinBrightness float
---@field AutoExposureMaxBrightness float
---@field AutoExposureSpeedUp float
---@field AutoExposureSpeedDown float
---@field AutoExposureBias float
---@field Advanced FRenderSettingsPPExposureAdvanced
local FRenderSettingsPPExposure = {}



---@class FRenderSettingsPPExposureAdvanced
---@field bOverride_AutoExposureLowPercent boolean
---@field bOverride_AutoExposureHighPercent boolean
---@field bOverride_HistogramLogMin boolean
---@field bOverride_HistogramLogMax boolean
---@field bOverride_AutoExposureMeterMask boolean
---@field AutoExposureLowPercent float
---@field AutoExposureHighPercent float
---@field HistogramLogMin float
---@field HistogramLogMax float
---@field AutoExposureMeterMask UTexture
local FRenderSettingsPPExposureAdvanced = {}



---@class FRenderSettingsPPExposureName
---@field Name FName
local FRenderSettingsPPExposureName = {}



---@class FRenderSettingsPPFilm
---@field bOverride_FilmSlope boolean
---@field bOverride_FilmToe boolean
---@field bOverride_FilmShoulder boolean
---@field bOverride_FilmBlackClip boolean
---@field bOverride_FilmWhiteClip boolean
---@field bOverride_FilmWhitePoint boolean
---@field bOverride_FilmSaturation boolean
---@field bOverride_FilmContrast boolean
---@field Name FName
---@field FilmSlope float
---@field FilmToe float
---@field FilmShoulder float
---@field FilmBlackClip float
---@field FilmWhiteClip float
---@field FilmWhitePoint FLinearColor
---@field FilmSaturation float
---@field FilmContrast float
---@field Advanced FRenderSettingsPPFilmAdvanced
local FRenderSettingsPPFilm = {}



---@class FRenderSettingsPPFilmAdvanced
---@field bOverride_FilmShadowTint boolean
---@field bOverride_FilmShadowTintBlend boolean
---@field bOverride_FilmShadowTintAmount boolean
---@field bOverride_FilmChannelMixerRed boolean
---@field bOverride_FilmChannelMixerGreen boolean
---@field bOverride_FilmChannelMixerBlue boolean
---@field bOverride_FilmToeAmount boolean
---@field bOverride_FilmHealAmount boolean
---@field bOverride_FilmDynamicRange boolean
---@field FilmShadowTint FLinearColor
---@field FilmShadowTintBlend float
---@field FilmShadowTintAmount float
---@field FilmChannelMixerRed FLinearColor
---@field FilmChannelMixerGreen FLinearColor
---@field FilmChannelMixerBlue FLinearColor
---@field FilmToeAmount float
---@field FilmHealAmount float
---@field FilmDynamicRange float
local FRenderSettingsPPFilmAdvanced = {}



---@class FRenderSettingsPPFilmName
---@field Name FName
local FRenderSettingsPPFilmName = {}



---@class FRenderSettingsPPGrain
---@field bOverride_Intensity boolean
---@field bOverride_Jitter boolean
---@field Jitter float
---@field Intensity float
local FRenderSettingsPPGrain = {}



---@class FRenderSettingsPPLensFX
---@field bOverride_VignetteIntensity boolean
---@field Name FName
---@field VignetteIntensity float
---@field Grain FRenderSettingsPPGrain
---@field ChromaticAberration FRenderSettingsPPChromaticAberration
local FRenderSettingsPPLensFX = {}



---@class FRenderSettingsPPLensFXName
---@field Name FName
local FRenderSettingsPPLensFXName = {}



---@class FRenderSettingsPPMotionBlur
---@field bOverride_Amount boolean
---@field bOverride_Max boolean
---@field bOverride_PerObjectSize boolean
---@field Name FName
---@field Amount float
---@field Max float
---@field PerObjectSize float
local FRenderSettingsPPMotionBlur = {}



---@class FRenderSettingsPPMotionBlurName
---@field Name FName
local FRenderSettingsPPMotionBlurName = {}



---@class FRenderSettingsPPProbes
---@field Name FName
---@field ToneMapping FRenderSettingsPPProbesToneMapping
local FRenderSettingsPPProbes = {}



---@class FRenderSettingsPPProbesName
---@field Name FName
local FRenderSettingsPPProbesName = {}



---@class FRenderSettingsPPProbesToneMapping
---@field bOverride_ProbeToneMapAmount boolean
---@field bOverride_ProbeToneMapMinIntensity boolean
---@field bOverride_ProbeToneMapMaxEV boolean
---@field ProbeToneMapAmount float
---@field ProbeToneMapMinIntensity float
---@field ProbeToneMapMaxEV float
local FRenderSettingsPPProbesToneMapping = {}



---@class FRenderSettingsPPScreenSpaceReflections
---@field bOverride_Intensity boolean
---@field bOverride_Quality boolean
---@field bOverride_MaxRoughness boolean
---@field Name FName
---@field Intensity float
---@field Quality float
---@field MaxRoughness float
local FRenderSettingsPPScreenSpaceReflections = {}



---@class FRenderSettingsPPScreenSpaceReflectionsName
---@field Name FName
local FRenderSettingsPPScreenSpaceReflectionsName = {}



---@class FRenderSettingsPostProcessing
---@field bOverride_Exposure boolean
---@field bOverride_ColorGrading boolean
---@field bOverride_Film boolean
---@field bOverride_LensFX boolean
---@field bOverride_Bloom boolean
---@field bOverride_MotionBlur boolean
---@field bOverride_DepthOfField boolean
---@field bOverride_Ambient boolean
---@field bOverride_ScreenSpaceReflections boolean
---@field bOverride_Probes boolean
---@field PostProcessingGroup FRenderSettingsPostProcessingGroupName
---@field Exposure FRenderSettingsPPExposureName
---@field ColorGrading FRenderSettingsPPColorGradingName
---@field Film FRenderSettingsPPFilmName
---@field LensFX FRenderSettingsPPLensFXName
---@field Bloom FRenderSettingsPPBloomName
---@field MotionBlur FRenderSettingsPPMotionBlurName
---@field DepthOfField FRenderSettingsPPDepthOfFieldName
---@field Ambient FRenderSettingsPPAmbientName
---@field ScreenSpaceReflections FRenderSettingsPPScreenSpaceReflectionsName
---@field Probes FRenderSettingsPPProbesName
local FRenderSettingsPostProcessing = {}



---@class FRenderSettingsPostProcessingGroup
---@field bOverride_Exposure boolean
---@field bOverride_ColorGrading boolean
---@field bOverride_Film boolean
---@field bOverride_LensFX boolean
---@field bOverride_Bloom boolean
---@field bOverride_MotionBlur boolean
---@field bOverride_DepthOfField boolean
---@field bOverride_Ambient boolean
---@field bOverride_ScreenSpaceReflections boolean
---@field bOverride_Probes boolean
---@field Name FName
---@field Exposure FRenderSettingsPPExposureName
---@field ColorGrading FRenderSettingsPPColorGradingName
---@field Film FRenderSettingsPPFilmName
---@field LensFX FRenderSettingsPPLensFXName
---@field Bloom FRenderSettingsPPBloomName
---@field MotionBlur FRenderSettingsPPMotionBlurName
---@field DepthOfField FRenderSettingsPPDepthOfFieldName
---@field Ambient FRenderSettingsPPAmbientName
---@field ScreenSpaceReflections FRenderSettingsPPScreenSpaceReflectionsName
---@field Probes FRenderSettingsPPProbesName
local FRenderSettingsPostProcessingGroup = {}



---@class FRenderSettingsPostProcessingGroupName
---@field Name FName
local FRenderSettingsPostProcessingGroupName = {}



---@class FRenderSettingsPreComputedBlendDomainName : FRenderSettingsPreComputedBlendDomainNameBase
local FRenderSettingsPreComputedBlendDomainName = {}


---@class FRenderSettingsPreComputedBlendDomainNameBase
---@field Name FName
local FRenderSettingsPreComputedBlendDomainNameBase = {}



---@class FRenderSettingsPreComputedFirstBlendDomainName : FRenderSettingsPreComputedBlendDomainNameBase
local FRenderSettingsPreComputedFirstBlendDomainName = {}


---@class FRenderSettingsPreComputedLastBlendDomainName : FRenderSettingsPreComputedBlendDomainNameBase
local FRenderSettingsPreComputedLastBlendDomainName = {}


---@class FRenderSettingsPreComputedNormalBlendDomainName : FRenderSettingsPreComputedBlendDomainNameBase
local FRenderSettingsPreComputedNormalBlendDomainName = {}


---@class FSimpleBlendDomain
---@field Blends TArray<URenderSettingsCustomBlendDomain>
local FSimpleBlendDomain = {}



---@class FWorldAdaptationOverrideInterfaces
---@field WorldMap TMap<TWeakObjectPtr<UWorld>, FAdaptationOverrideInterfaces>
local FWorldAdaptationOverrideInterfaces = {}



---@class IAdaptationOverrideInterface : IInterface
local IAdaptationOverrideInterface = {}


---@class IInterface_RenderSettingsCustomBlendDomain : IInterface
local IInterface_RenderSettingsCustomBlendDomain = {}


---@class IInterface_RenderSettingsCustomBlendDomainOverride : IInterface
local IInterface_RenderSettingsCustomBlendDomainOverride = {}


---@class IInterface_RenderSettingsEmissiveAdaptation : IInterface
local IInterface_RenderSettingsEmissiveAdaptation = {}


---@class UAssetBlendDomainActorVisibilityComponent : UAssetBlendDomainComponentVisibilityComponent
local UAssetBlendDomainActorVisibilityComponent = {}


---@class UAssetBlendDomainChildVisibilityComponent : UAssetBlendDomainComponentVisibilityComponent
---@field bChildrenOfChildren boolean
local UAssetBlendDomainChildVisibilityComponent = {}



---@class UAssetBlendDomainComponentVisibilityComponent : UAssetBlendDomainVisibilityComponent
---@field bSetDitheredAlpha boolean
local UAssetBlendDomainComponentVisibilityComponent = {}



---@class UAssetBlendDomainDelegateVisibilityComponent : UAssetBlendDomainVisibilityComponent
---@field VisibilityDelegate FAssetBlendDomainDelegateVisibilityComponentVisibilityDelegate
local UAssetBlendDomainDelegateVisibilityComponent = {}



---@class UAssetBlendDomainParentVisibilityComponent : UAssetBlendDomainComponentVisibilityComponent
---@field bPropagateToChildren boolean
local UAssetBlendDomainParentVisibilityComponent = {}



---@class UAssetBlendDomainVisibilityComponent : UBlendDomainVisibilityComponentBase
---@field BlendDomain URenderSettingsBlendDomainAsset
local UAssetBlendDomainVisibilityComponent = {}



---@class UBlendDomainActorVisibilityComponent : UBlendDomainComponentVisibilityComponent
local UBlendDomainActorVisibilityComponent = {}

---@param Actor AActor
---@param bTransient boolean
---@param bStartEnabled boolean
---@return UBlendDomainActorVisibilityComponent
function UBlendDomainActorVisibilityComponent:CreateForActor(Actor, bTransient, bStartEnabled) end


---@class UBlendDomainChildVisibilityComponent : UBlendDomainComponentVisibilityComponent
---@field bChildrenOfChildren boolean
local UBlendDomainChildVisibilityComponent = {}

---@param Parent USceneComponent
---@param bTransient boolean
---@param bStartEnabled boolean
---@return UBlendDomainChildVisibilityComponent
function UBlendDomainChildVisibilityComponent:CreateForChildComponents(Parent, bTransient, bStartEnabled) end


---@class UBlendDomainComponentVisibilityComponent : UBlendDomainVisibilityComponent
---@field bSetDitheredAlpha boolean
local UBlendDomainComponentVisibilityComponent = {}



---@class UBlendDomainDelegateVisibilityComponent : UBlendDomainVisibilityComponent
---@field VisibilityDelegate FBlendDomainDelegateVisibilityComponentVisibilityDelegate
local UBlendDomainDelegateVisibilityComponent = {}



---@class UBlendDomainParentVisibilityComponent : UBlendDomainComponentVisibilityComponent
---@field bPropagateToChildren boolean
local UBlendDomainParentVisibilityComponent = {}

---@param Parent USceneComponent
---@param bTransient boolean
---@param bStartEnabled boolean
---@return UBlendDomainParentVisibilityComponent
function UBlendDomainParentVisibilityComponent:CreateForParentComponent(Parent, bTransient, bStartEnabled) end


---@class UBlendDomainVisibilityComponent : UBlendDomainVisibilityComponentBase
---@field BlendDomain FBlendDomain
local UBlendDomainVisibilityComponent = {}



---@class UBlendDomainVisibilityComponentBase : USceneComponent
---@field Threshold float
---@field bEnabled boolean
---@field LastBlend float
local UBlendDomainVisibilityComponentBase = {}

---@param bNewEnabled boolean
function UBlendDomainVisibilityComponentBase:SetEnabled(bNewEnabled) end
function UBlendDomainVisibilityComponentBase:ForceUpdate() end


---@class UCharacterLightRigAdjustmentsSettings : UDataAsset
---@field Settings TArray<FCharacterLightRigAdjustments>
local UCharacterLightRigAdjustmentsSettings = {}



---@class UDistanceFogSettings : UDataAsset
---@field DistanceFogMPC UMaterialParameterCollection
---@field DistanceFogPPMaterial UMaterialInterface
---@field Settings TArray<FDistanceFog>
local UDistanceFogSettings = {}



---@class UDynamicLightAdaptationModSettingsAsset : UDataAsset
---@field mods TArray<UDynamicLightAdaptationModSettingsInterface>
local UDynamicLightAdaptationModSettingsAsset = {}



---@class UDynamicLightAdaptationModSettingsEVExpression : UDynamicLightAdaptationModSettingsInterface
---@field ModProperty ELightAdapatationEVProperty
---@field ModOp ELightAdapatationEVModOp
---@field Expression UExposureExpressionsExposureValue
local UDynamicLightAdaptationModSettingsEVExpression = {}



---@class UDynamicLightAdaptationModSettingsInterface : UObject
local UDynamicLightAdaptationModSettingsInterface = {}


---@class UDynamicLightAdaptationModSettingsInterfaceAsset : UDynamicLightAdaptationModSettingsInterface
---@field ModAsset UDynamicLightAdaptationModSettingsAsset
local UDynamicLightAdaptationModSettingsInterfaceAsset = {}



---@class UDynamicLightAdaptationModSettingsVariableBase : UDynamicLightAdaptationModSettingsInterface
---@field ModProperty ELightAdapatationProperty
---@field ModOp ELightAdapatationModOp
local UDynamicLightAdaptationModSettingsVariableBase = {}



---@class UDynamicLightAdaptationModSettingsVariableBlendDomainCurve : UDynamicLightAdaptationModSettingsVariableBlendDomainCurveBase
---@field BlendDomain FRenderSettingsPreComputedBlendDomainName
local UDynamicLightAdaptationModSettingsVariableBlendDomainCurve = {}



---@class UDynamicLightAdaptationModSettingsVariableBlendDomainCurveBase : UDynamicLightAdaptationModSettingsVariableCurveBase
---@field DefaultValueIfMissing float
---@field bUseCamera boolean
local UDynamicLightAdaptationModSettingsVariableBlendDomainCurveBase = {}



---@class UDynamicLightAdaptationModSettingsVariableCurveBase : UDynamicLightAdaptationModSettingsVariableBase
---@field Curve UCurveFloat
local UDynamicLightAdaptationModSettingsVariableCurveBase = {}



---@class UDynamicLightAdaptationModSettingsVariableCustomBlendDomainCurve : UDynamicLightAdaptationModSettingsVariableBlendDomainCurveBase
---@field CustomBlendDomain FRenderSettingsCustomBlendDomainName
local UDynamicLightAdaptationModSettingsVariableCustomBlendDomainCurve = {}



---@class UDynamicLightAdaptationModSettingsVariableRawBlendDomainCurve : UDynamicLightAdaptationModSettingsVariableBlendDomainCurveBase
---@field BlendDomain FName
local UDynamicLightAdaptationModSettingsVariableRawBlendDomainCurve = {}



---@class UEmissiveAdaptationBlueprintLibrary : UBlueprintFunctionLibrary
local UEmissiveAdaptationBlueprintLibrary = {}

---@param UnrealExposure float
---@param EV100Exposure float
function UEmissiveAdaptationBlueprintLibrary:UnrealToEV100(UnrealExposure, EV100Exposure) end
---@param WorldContextObject UObject
---@param State FEmissiveAdaptationFinalState
function UEmissiveAdaptationBlueprintLibrary:GetEmissiveAdaptationState(WorldContextObject, State) end
---@param WorldContextObject UObject
---@param OutdoorsDayTime float
function UEmissiveAdaptationBlueprintLibrary:GetEmissiveAdaptationOutdoorsDayTime(WorldContextObject, OutdoorsDayTime) end
---@param WorldContextObject UObject
---@param MinExposureEV100 float
---@param MaxExposureEV100 float
---@param BiasPow2 float
function UEmissiveAdaptationBlueprintLibrary:GetEmissiveAdaptationMinMaxExposureEV100(WorldContextObject, MinExposureEV100, MaxExposureEV100, BiasPow2) end
---@param WorldContextObject UObject
---@param MinExposure float
---@param MaxExposure float
---@param Bias float
function UEmissiveAdaptationBlueprintLibrary:GetEmissiveAdaptationMinMaxExposure(WorldContextObject, MinExposure, MaxExposure, Bias) end
---@param WorldContextObject UObject
---@param FinalMultiplierClamped float
function UEmissiveAdaptationBlueprintLibrary:GetEmissiveAdaptationFinalMultiplierClamped(WorldContextObject, FinalMultiplierClamped) end
---@param WorldContextObject UObject
---@param FinalMultiplier float
---@param FactorMin float
---@param FactorMax float
function UEmissiveAdaptationBlueprintLibrary:GetEmissiveAdaptationFinalMultiplier(WorldContextObject, FinalMultiplier, FactorMin, FactorMax) end
---@param EV100Exposure float
---@param UnrealExposure float
function UEmissiveAdaptationBlueprintLibrary:EV100ToUnreal(EV100Exposure, UnrealExposure) end
---@param Factor float
---@param EV00Bias float
function UEmissiveAdaptationBlueprintLibrary:BiasFactorToEV100(Factor, EV00Bias) end
---@param EV00Bias float
---@param Factor float
function UEmissiveAdaptationBlueprintLibrary:BiasFactor(EV00Bias, Factor) end


---@class UEnvironmentalGlobalsCustomScalarBlendDomain : UEnvironmentalGlobalsCustomScalarModsBase
---@field BlendDomain URenderSettingsCustomBlendDomain
local UEnvironmentalGlobalsCustomScalarBlendDomain = {}



---@class ULightAdaptation : UBlueprintFunctionLibrary
local ULightAdaptation = {}

---@param LightComponent ULightComponent
---@param Intensity float
function ULightAdaptation:LightAdaptationSetIntensity(LightComponent, Intensity) end
---@param LightComponent ULightComponent
---@param Settings FDynamicLightAdaptationSettings
---@param Intensity float
---@param AdaptationComponent ULightAdaptationComponentChildOfLight
function ULightAdaptation:LightAdaptationRegisterWithIntensity(LightComponent, Settings, Intensity, AdaptationComponent) end
---@param LightComponent ULightComponent
---@param Settings FDynamicLightAdaptationSettings
---@param AdaptationComponent ULightAdaptationComponentChildOfLight
function ULightAdaptation:LightAdaptationRegister(LightComponent, Settings, AdaptationComponent) end
---@param WorldContextObject UObject
---@param Settings FDynamicLightAdaptationSettings
---@param IntensityFactor float
function ULightAdaptation:LightAdaptationIntensityFactor(WorldContextObject, Settings, IntensityFactor) end
---@param LightComponent ULightComponent
---@param Intensity float
function ULightAdaptation:LightAdaptationGetIntensity(LightComponent, Intensity) end
---@param AdaptationComponent ULightAdaptationComponentChildOfLight
---@param bRestoreIntensity boolean
function ULightAdaptation:LightAdaptationDeregister(AdaptationComponent, bRestoreIntensity) end
---@param WorldContextObject UObject
---@param State FEmissiveAdaptationFinalState
function ULightAdaptation:GetLightAdaptationState(WorldContextObject, State) end


---@class ULightAdaptationComponent : UAnimatedLightClusterComponent
---@field Settings FDynamicLightAdaptationSettings
---@field Adaptation float
---@field LastExposure float
---@field FirstUpdateFrame uint32
---@field bForceClusterUpdate boolean
local ULightAdaptationComponent = {}



---@class ULightAdaptationComponentAuto : ULightAdaptationComponent
---@field bDeepScanChildren boolean
local ULightAdaptationComponentAuto = {}



---@class ULightAdaptationComponentChildOfLight : ULightAdaptationComponent
local ULightAdaptationComponentChildOfLight = {}


---@class UPlayerCentricPostProcessingComponent : UActorComponent
---@field PlayerEyeDistanceSameThreshold float
---@field bIncludeBlendables boolean
---@field PostProcessSettings FPostProcessSettings
---@field Priority float
---@field bInVolumeList boolean
local UPlayerCentricPostProcessingComponent = {}



---@class UPostProcessWithBlendDomainComponent : USceneComponent
---@field BlendDomain FBlendDomain
---@field Settings FPostProcessSettings
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbound boolean
local UPostProcessWithBlendDomainComponent = {}

---@param InBlendableObject TScriptInterface<IBlendableInterface>
---@param InWeight float
function UPostProcessWithBlendDomainComponent:AddOrUpdateBlendable(InBlendableObject, InWeight) end


---@class UPostProcessingVar : UObject
local UPostProcessingVar = {}


---@class UPostProcessingVarColorBase : UPostProcessingVar
---@field Var EPostProcessingVarColor
local UPostProcessingVarColorBase = {}



---@class UPostProcessingVarColorConstant : UPostProcessingVarColorBase
---@field Value FLinearColor
local UPostProcessingVarColorConstant = {}



---@class UPostProcessingVarColorCurveAsset : UPostProcessingVarColorBase
---@field Curve UCurveLinearColor
local UPostProcessingVarColorCurveAsset = {}



---@class UPostProcessingVarColorInlineCurve : UPostProcessingVarColorBase
---@field Value FRuntimeCurveLinearColor
local UPostProcessingVarColorInlineCurve = {}



---@class UPostProcessingVarScalarBase : UPostProcessingVar
---@field Var EPostProcessingVarScalar
local UPostProcessingVarScalarBase = {}



---@class UPostProcessingVarScalarConstant : UPostProcessingVarScalarBase
---@field Value float
local UPostProcessingVarScalarConstant = {}



---@class UPostProcessingVarScalarCurveAsset : UPostProcessingVarScalarBase
---@field Curve UCurveFloat
local UPostProcessingVarScalarCurveAsset = {}



---@class UPostProcessingVarScalarInlineCurve : UPostProcessingVarScalarBase
---@field Value FRuntimeFloatCurve
local UPostProcessingVarScalarInlineCurve = {}



---@class UPostProcessingVarsComponent : UPostProcessingVarsComponentBase
---@field Vars TArray<UPostProcessingVar>
local UPostProcessingVarsComponent = {}



---@class UPostProcessingVarsComponentBase : USceneComponent
---@field Driver UPostProcessingVarsDriver
---@field DriverValue float
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
---@field bDriverValueValid boolean
---@field PostProcessSettings FPostProcessSettings
local UPostProcessingVarsComponentBase = {}

---@param NewPriority float
function UPostProcessingVarsComponentBase:SetPriority(NewPriority) end


---@class UPostProcessingVarsDriver : UObject
local UPostProcessingVarsDriver = {}


---@class UPostProcessingVarsDriverConst : UPostProcessingVarsDriver
---@field Value float
local UPostProcessingVarsDriverConst = {}



---@class UPostProcessingVarsDriverEnvironmentalGlobalsExtra : UPostProcessingVarsDriver
---@field EnvironmentalGlobal FEnvironmentalGlobalsScalarName
local UPostProcessingVarsDriverEnvironmentalGlobalsExtra = {}



---@class UPostProcessingVarsDriverEnvironmentalGlobalsValue : UPostProcessingVarsDriver
---@field EnvironmentalGlobal EEnvironmentalGlobalsValue
local UPostProcessingVarsDriverEnvironmentalGlobalsValue = {}



---@class URenderSettingsBlendDomainAsset : UDataAsset
local URenderSettingsBlendDomainAsset = {}


---@class URenderSettingsBlendDomainConsoleLiens : UDataAsset
---@field Liens TArray<FRenderSettingsBlendDomainConsoleLien>
local URenderSettingsBlendDomainConsoleLiens = {}



---@class URenderSettingsBlendDomainFullAsset : URenderSettingsBlendDomainAsset
---@field BlendDomain FBlendDomain
local URenderSettingsBlendDomainFullAsset = {}



---@class URenderSettingsBlendDomainSimpleAsset : URenderSettingsBlendDomainAsset
---@field BlendDomain FSimpleBlendDomain
local URenderSettingsBlendDomainSimpleAsset = {}



---@class URenderSettingsComponent : USceneComponent
---@field PostProcessing FRenderSettingsPostProcessing
---@field EnginePostProcessSettings FPostProcessSettings
---@field ExposureTweak float
---@field DistanceFog FDistanceFogName
---@field DistanceFogOverrides FDistanceFogOverrides
---@field CharacterLightRigAdjustments FCharacterLightRigAdjustmentsName
---@field EmissiveAdaptation FRenderSettingsEmissiveAdaptationName
---@field IndoorsOutdoors ERenderSettingsVolumeIndoorsOutdoorsType
---@field IndoorsType ERenderSettingsIndoorsType
---@field DayNight ERenderSettingsVolumeDayNightType
---@field Overcast ERenderSettingsVolumeOvercastType
---@field LightingMode EBlendDomainLightingMode
---@field NormalizedTimeBlend FBlendDomainNormalizedTimeCurve
---@field IndoorsOutdoorsBlendCurve FBlendDomainIndoorsOutdoorsCurve
---@field CustomBlends TArray<URenderSettingsCustomBlendDomain>
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
---@field bExposureTweak boolean
---@field bDistanceFog boolean
---@field bCharacterLightRigAdjustments boolean
---@field bEmissiveAdaptation boolean
---@field DistanceFogData FDistanceFog
---@field CharacterLightRigAdjustmentsData FCharacterLightRigAdjustments
local URenderSettingsComponent = {}

function URenderSettingsComponent:UpdateEnginePostProcessing() end
---@param Library URenderSettingsLibrary
function URenderSettingsComponent:UpdateEmissiveAdaptation(Library) end
---@param Library URenderSettingsLibrary
function URenderSettingsComponent:UpdateDistanceFog(Library) end
---@param Library URenderSettingsLibrary
function URenderSettingsComponent:UpdateCharacterLightRigAdjustments(Library) end
function URenderSettingsComponent:UpdateAll() end
---@param NewPriority float
function URenderSettingsComponent:SetPriority(NewPriority) end
---@param NewPostProcessing FRenderSettingsPostProcessing
function URenderSettingsComponent:SetPostProcessing(NewPostProcessing) end
---@param NewExposureTweak float
---@param bEnable boolean
function URenderSettingsComponent:SetExposureTweak(NewExposureTweak, bEnable) end
---@param NewEmissiveAdaptation FRenderSettingsEmissiveAdaptationName
---@param bEnable boolean
function URenderSettingsComponent:SetEmissiveAdaptation(NewEmissiveAdaptation, bEnable) end
---@param NewDistanceFog FDistanceFogName
---@param bEnable boolean
function URenderSettingsComponent:SetDistanceFog(NewDistanceFog, bEnable) end
---@param NewCharacterLightRigAdjustments FCharacterLightRigAdjustmentsName
---@param bEnable boolean
function URenderSettingsComponent:SetCharacterLightRigAdjustments(NewCharacterLightRigAdjustments, bEnable) end
function URenderSettingsComponent:ClearExposureTweak() end
function URenderSettingsComponent:ClearEmissiveAdaptation() end
function URenderSettingsComponent:ClearDistanceFog() end
function URenderSettingsComponent:ClearCharacterLightRigAdjustments() end


---@class URenderSettingsCustomBlendDomain : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomain = {}


---@class URenderSettingsCustomBlendDomainAnd : URenderSettingsCustomBlendDomainNoPreCompute
---@field Domains TArray<URenderSettingsCustomBlendDomain>
local URenderSettingsCustomBlendDomainAnd = {}



---@class URenderSettingsCustomBlendDomainAudioIndoors : URenderSettingsNamedCustomBlendDomain
local URenderSettingsCustomBlendDomainAudioIndoors = {}


---@class URenderSettingsCustomBlendDomainBase : UObject
local URenderSettingsCustomBlendDomainBase = {}


---@class URenderSettingsCustomBlendDomainComponent : USceneComponent
---@field Domains TArray<FRenderSettingsCustomBlendDomainNameWithValue>
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbounded boolean
local URenderSettingsCustomBlendDomainComponent = {}

---@param NewPriority float
function URenderSettingsCustomBlendDomainComponent:SetPriority(NewPriority) end


---@class URenderSettingsCustomBlendDomainConsantBiasScale : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
---@field Bias float
---@field Scale float
local URenderSettingsCustomBlendDomainConsantBiasScale = {}



---@class URenderSettingsCustomBlendDomainConstant : URenderSettingsCustomBlendDomainNoPreCompute
---@field Constant float
local URenderSettingsCustomBlendDomainConstant = {}



---@class URenderSettingsCustomBlendDomainCurveRemap : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
---@field Curve UCurveFloat
local URenderSettingsCustomBlendDomainCurveRemap = {}



---@class URenderSettingsCustomBlendDomainFilteredIndoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainFilteredIndoors = {}


---@class URenderSettingsCustomBlendDomainFilteredOutdoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainFilteredOutdoors = {}


---@class URenderSettingsCustomBlendDomainFilteredProbeIndoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainFilteredProbeIndoors = {}


---@class URenderSettingsCustomBlendDomainFilteredProbeOutdoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainFilteredProbeOutdoors = {}


---@class URenderSettingsCustomBlendDomainFixedExposure : URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainFixedExposure = {}


---@class URenderSettingsCustomBlendDomainHDR : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainHDR = {}


---@class URenderSettingsCustomBlendDomainHDRBase : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomainHDRBase = {}


---@class URenderSettingsCustomBlendDomainHDRLinearGamma : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainHDRLinearGamma = {}


---@class URenderSettingsCustomBlendDomainHasBegunPlay : URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainHasBegunPlay = {}


---@class URenderSettingsCustomBlendDomainIf : URenderSettingsCustomBlendDomainNoPreCompute
---@field A URenderSettingsCustomBlendDomain
---@field b URenderSettingsCustomBlendDomain
---@field ALessThanB URenderSettingsCustomBlendDomain
---@field AEqualsB URenderSettingsCustomBlendDomain
---@field AGreaterThanB URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainIf = {}



---@class URenderSettingsCustomBlendDomainInEditor : URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainInEditor = {}


---@class URenderSettingsCustomBlendDomainIndoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainIndoors = {}


---@class URenderSettingsCustomBlendDomainIndoorsBase : URenderSettingsNamedCustomBlendDomain
local URenderSettingsCustomBlendDomainIndoorsBase = {}


---@class URenderSettingsCustomBlendDomainIndoorsOutdoorsCurve : URenderSettingsCustomBlendDomainNoPreCompute
---@field IndoorsOutdoorsCurve UCurveFloat
---@field IndoorsType ERenderSettingsIndoorsType
local URenderSettingsCustomBlendDomainIndoorsOutdoorsCurve = {}



---@class URenderSettingsCustomBlendDomainIsOne : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainIsOne = {}



---@class URenderSettingsCustomBlendDomainIsZero : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainIsZero = {}



---@class URenderSettingsCustomBlendDomainLastFrameExposure : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomainLastFrameExposure = {}


---@class URenderSettingsCustomBlendDomainLastFrameExposureRange : URenderSettingsCustomBlendDomainNoPreCompute
---@field LowExposure float
---@field HighExposure float
---@field ExposureValue ELastFrameExposureValue
local URenderSettingsCustomBlendDomainLastFrameExposureRange = {}



---@class URenderSettingsCustomBlendDomainMax : URenderSettingsCustomBlendDomainNoPreCompute
---@field Domains TArray<URenderSettingsCustomBlendDomain>
local URenderSettingsCustomBlendDomainMax = {}



---@class URenderSettingsCustomBlendDomainMin : URenderSettingsCustomBlendDomainNoPreCompute
---@field Domains TArray<URenderSettingsCustomBlendDomain>
local URenderSettingsCustomBlendDomainMin = {}



---@class URenderSettingsCustomBlendDomainNoPreCompute : URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainNoPreCompute = {}


---@class URenderSettingsCustomBlendDomainNotHDR : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainNotHDR = {}


---@class URenderSettingsCustomBlendDomainNotHDRLinearGamma : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainNotHDRLinearGamma = {}


---@class URenderSettingsCustomBlendDomainNotOne : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainNotOne = {}



---@class URenderSettingsCustomBlendDomainNotProbeCapture : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainNotProbeCapture = {}


---@class URenderSettingsCustomBlendDomainNotZero : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainNotZero = {}



---@class URenderSettingsCustomBlendDomainOne : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainOne = {}


---@class URenderSettingsCustomBlendDomainOneMinus : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainOneMinus = {}



---@class URenderSettingsCustomBlendDomainOutdoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainOutdoors = {}


---@class URenderSettingsCustomBlendDomainOverrideComponentBase : UActorComponent
---@field bEnabled boolean
local URenderSettingsCustomBlendDomainOverrideComponentBase = {}

---@param bEnable boolean
function URenderSettingsCustomBlendDomainOverrideComponentBase:SetEnabled(bEnable) end
---@param bEnable boolean
function URenderSettingsCustomBlendDomainOverrideComponentBase:IsEnabled(bEnable) end


---@class URenderSettingsCustomBlendDomainOverrideNamedComponent : URenderSettingsCustomBlendDomainOverrideComponentBase
---@field Name FRenderSettingsCustomBlendDomainName
---@field Value float
local URenderSettingsCustomBlendDomainOverrideNamedComponent = {}



---@class URenderSettingsCustomBlendDomainOverrideRawComponent : URenderSettingsCustomBlendDomainOverrideComponentBase
---@field Name FName
---@field Value float
local URenderSettingsCustomBlendDomainOverrideRawComponent = {}



---@class URenderSettingsCustomBlendDomainPaused : URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainPaused = {}


---@class URenderSettingsCustomBlendDomainPausedSmoothed : URenderSettingsCustomBlendDomainPaused
local URenderSettingsCustomBlendDomainPausedSmoothed = {}


---@class URenderSettingsCustomBlendDomainPreset : URenderSettingsCustomBlendDomainNoPreCompute
---@field Preset URenderSettingsCustomBlendDomainPresetAsset
local URenderSettingsCustomBlendDomainPreset = {}



---@class URenderSettingsCustomBlendDomainPresetAsset : UDataAsset
---@field Domains TArray<URenderSettingsCustomBlendDomain>
local URenderSettingsCustomBlendDomainPresetAsset = {}



---@class URenderSettingsCustomBlendDomainProbeCapture : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainProbeCapture = {}


---@class URenderSettingsCustomBlendDomainProbeCaptureBase : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomainProbeCaptureBase = {}


---@class URenderSettingsCustomBlendDomainProbeIndoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainProbeIndoors = {}


---@class URenderSettingsCustomBlendDomainProbeIndoorsBase : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomainProbeIndoorsBase = {}


---@class URenderSettingsCustomBlendDomainProbeOutdoors : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainProbeOutdoors = {}


---@class URenderSettingsCustomBlendDomainRayTracing : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainRayTracing = {}


---@class URenderSettingsCustomBlendDomainRayTracingBase : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomainRayTracingBase = {}


---@class URenderSettingsCustomBlendDomainRayTracingReflections : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainRayTracingReflections = {}


---@class URenderSettingsCustomBlendDomainRayTracingShadows : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainRayTracingShadows = {}


---@class URenderSettingsCustomBlendDomainRemap : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
---@field InputMin float
---@field InputMax float
---@field OunputMin float
---@field OutputMax float
local URenderSettingsCustomBlendDomainRemap = {}



---@class URenderSettingsCustomBlendDomainSeason : URenderSettingsCustomBlendDomainBase
local URenderSettingsCustomBlendDomainSeason = {}


---@class URenderSettingsCustomBlendDomainSeasonFall : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainSeasonFall = {}


---@class URenderSettingsCustomBlendDomainSeasonSpring : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainSeasonSpring = {}


---@class URenderSettingsCustomBlendDomainSeasonSummer : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainSeasonSummer = {}


---@class URenderSettingsCustomBlendDomainSeasonWinter : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainSeasonWinter = {}


---@class URenderSettingsCustomBlendDomainStep : URenderSettingsCustomBlendDomainNoPreCompute
---@field domain URenderSettingsCustomBlendDomain
---@field Threshold float
local URenderSettingsCustomBlendDomainStep = {}



---@class URenderSettingsCustomBlendDomainStreamingIndoors : URenderSettingsNamedCustomBlendDomain
local URenderSettingsCustomBlendDomainStreamingIndoors = {}


---@class URenderSettingsCustomBlendDomainWithOverrides : URenderSettingsCustomBlendDomainNoPreCompute
---@field Default URenderSettingsCustomBlendDomain
---@field OverrideOn URenderSettingsCustomBlendDomain
---@field OverrideOff URenderSettingsCustomBlendDomain
local URenderSettingsCustomBlendDomainWithOverrides = {}



---@class URenderSettingsCustomBlendDomainZero : URenderSettingsCustomBlendDomainNoPreCompute
local URenderSettingsCustomBlendDomainZero = {}


---@class URenderSettingsEmissiveAdaptationSettings : UDataAsset
---@field NightDayLerp FRuntimeFloatCurve
---@field OutdoorsIndoorsLerp FRuntimeFloatCurve
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
---@field GlobalExpressions FExposureExpressions
---@field Extras FExposureExpressionsExtrasDefaults
---@field AutoExposureBaseExpression UExposureExpressionsExposureValue
---@field AverageLuminanceBaseExpression UExposureExpressionsExposureValue
---@field FilteredAverageLuminanceBaseExpression UExposureExpressionsExposureValue
---@field Settings TArray<FRenderSettingsEmissiveAdaptation>
local URenderSettingsEmissiveAdaptationSettings = {}



---@class URenderSettingsLibrary : UDataAsset
---@field PostProcessingPriorityBoost float
---@field InsideTransitionDepth float
---@field AudioInsideTransitionDepth float
---@field IndoorsOutdoorsFiltering float
---@field IndoorsOutdoorsTeleportDistance float
---@field ExposureTimeConstants FLastRenderedExposureFilterTimeConstants
---@field PostProcessingGroupSettings URenderSettingsPostProcessingGroupSettings
---@field ExposureSettings URenderSettingsPPExposureSettings
---@field ColorGradingSettings URenderSettingsPPColorGradingSettings
---@field FilmSettings URenderSettingsPPFilmSettings
---@field LensFXSettings URenderSettingsPPLensFXSettings
---@field BloomSettings URenderSettingsPPBloomSettings
---@field MotionBlurSettings URenderSettingsPPMotionBlurSettings
---@field DepthOfFieldSettings URenderSettingsPPDepthOfFieldSettings
---@field AmbientSettings URenderSettingsPPAmbientSettings
---@field ScreenSpaceReflectionsSettings URenderSettingsPPScreenSpaceReflectionsSettings
---@field ProbeSettings URenderSettingsPPProbesSettings
---@field EmissiveAdaptationSettings URenderSettingsEmissiveAdaptationSettings
---@field DistanceFogSettings UDistanceFogSettings
---@field CharacterLightRigAdjustmentsSettings UCharacterLightRigAdjustmentsSettings
---@field CustomBlendDomains TArray<FRenderSettingsCustomBlendDomainEntry>
---@field ConsoleCustomBlendDomains TArray<FRenderSettingsCustomBlendDomainConsoleEntry>
---@field GlobalBlendDomainConsoleVars URenderSettingsBlendDomainConsoleLiens
---@field AutoDisableWorldNames TArray<FName>
---@field bGlobalDisableLevelDefaults boolean
---@field bPostProcessingPriorityBoost boolean
local URenderSettingsLibrary = {}



---@class URenderSettingsNamedCustomBlendDomain : URenderSettingsNamedCustomBlendDomainBase
local URenderSettingsNamedCustomBlendDomain = {}


---@class URenderSettingsNamedCustomBlendDomainBase : URenderSettingsCustomBlendDomain
local URenderSettingsNamedCustomBlendDomainBase = {}


---@class URenderSettingsNamedCustomBlendDomainLibrary : URenderSettingsNamedCustomBlendDomainBase
local URenderSettingsNamedCustomBlendDomainLibrary = {}


---@class URenderSettingsNamedCustomBlendDomainLibraryCustom : URenderSettingsCustomBlendDomainNoPreCompute
---@field Name FRenderSettingsCustomBlendDomainName
local URenderSettingsNamedCustomBlendDomainLibraryCustom = {}



---@class URenderSettingsNamedCustomBlendDomainLibraryCustomOneMinus : URenderSettingsCustomBlendDomainNoPreCompute
---@field Name FRenderSettingsCustomBlendDomainName
local URenderSettingsNamedCustomBlendDomainLibraryCustomOneMinus = {}



---@class URenderSettingsNamedCustomBlendDomainUserConsoleVariables : URenderSettingsNamedCustomBlendDomainLibrary
local URenderSettingsNamedCustomBlendDomainUserConsoleVariables = {}


---@class URenderSettingsPPAmbientSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPAmbient>
local URenderSettingsPPAmbientSettings = {}



---@class URenderSettingsPPBloomSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPBloom>
local URenderSettingsPPBloomSettings = {}



---@class URenderSettingsPPColorGradingSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPColorGrading>
local URenderSettingsPPColorGradingSettings = {}



---@class URenderSettingsPPDepthOfFieldSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPDepthOfField>
local URenderSettingsPPDepthOfFieldSettings = {}



---@class URenderSettingsPPExposureSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPExposure>
local URenderSettingsPPExposureSettings = {}



---@class URenderSettingsPPFilmSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPFilm>
local URenderSettingsPPFilmSettings = {}



---@class URenderSettingsPPLensFXSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPLensFX>
local URenderSettingsPPLensFXSettings = {}



---@class URenderSettingsPPMotionBlurSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPMotionBlur>
local URenderSettingsPPMotionBlurSettings = {}



---@class URenderSettingsPPProbesSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPProbes>
local URenderSettingsPPProbesSettings = {}



---@class URenderSettingsPPScreenSpaceReflectionsSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPPScreenSpaceReflections>
local URenderSettingsPPScreenSpaceReflectionsSettings = {}



---@class URenderSettingsPostProcessingGroupSettings : UDataAsset
---@field Settings TArray<FRenderSettingsPostProcessingGroup>
local URenderSettingsPostProcessingGroupSettings = {}



---@class URenderSettingsPreComputeBlendDomain : URenderSettingsCustomBlendDomainNoPreCompute
---@field Name FRenderSettingsPreComputedBlendDomainName
local URenderSettingsPreComputeBlendDomain = {}



---@class URenderSettingsPreComputeBlendDomainOneMinus : URenderSettingsCustomBlendDomainNoPreCompute
---@field Name FRenderSettingsPreComputedBlendDomainName
local URenderSettingsPreComputeBlendDomainOneMinus = {}



---@class USimpleUpdatePumpComponent : UActorComponent
---@field SimpleUpdatePumpMode ESimpleUpdatePumpComponentMode
---@field bSuspend boolean
local USimpleUpdatePumpComponent = {}



