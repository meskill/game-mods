---@meta

---@class FCalcViewInfo
---@field PostProcessSettings FPostProcessSettingsWeak
---@field ViewActor TWeakObjectPtr<AActor>
---@field UniqueId uint32
---@field PlayerIndex int32
---@field ViewIndex int32
---@field ViewLocation FVector
---@field ViewRotation FRotator
---@field FOV float
---@field DesiredFOV float
---@field LastEyeAdaptationExposure float
---@field LastAverageSceneLuminance float
---@field PreExposure float
---@field FrameNumber uint32
---@field ViewType EWorldCalcSceneViewType
local FCalcViewInfo = {}



---@class FPerWorldCalcViewInfo
---@field Views TMap<uint32, FCalcViewInfo>
local FPerWorldCalcViewInfo = {}



---@class FPostProcessSettingsObjects
---@field BloomConvolutionTexture TWeakObjectPtr<UTexture2D>
---@field BloomDirtMask TWeakObjectPtr<UTexture>
---@field AmbientCubemap TWeakObjectPtr<UTextureCube>
---@field AutoExposureBiasCurve TWeakObjectPtr<UCurveFloat>
---@field AutoExposureMeterMask TWeakObjectPtr<UTexture>
---@field LensFlareBokehShape TWeakObjectPtr<UTexture>
---@field ColorGradingLUT TWeakObjectPtr<UTexture>
local FPostProcessSettingsObjects = {}



---@class FPostProcessSettingsWeak
---@field PostProcessSettings FPostProcessSettings
---@field PostProcessSettingsObjects FPostProcessSettingsObjects
local FPostProcessSettingsWeak = {}



---@class UAllCalcViewInfo : UObject
local UAllCalcViewInfo = {}


