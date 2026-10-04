---@meta

---@class FLastRenderedExposure
---@field AutoExposureEV100 float
---@field AverageViewLuminanceEV100 float
---@field AverageLuminanceEV100 float
---@field FrameNumber int64
---@field bValid boolean
local FLastRenderedExposure = {}



---@class FLastRenderedExposureFilterTimeConstants
---@field AutoExposure float
---@field AverageLuminance float
local FLastRenderedExposureFilterTimeConstants = {}



---@class FLastRenderedExposurePair
---@field Current FLastRenderedExposure
---@field Filtered FLastRenderedExposure
---@field History FLastRenderedExposureRunningAverage
local FLastRenderedExposurePair = {}



---@class FLastRenderedExposureRunningAverage
---@field Average FLastRenderedExposure
---@field Samples int32
---@field TotalSamples int32
local FLastRenderedExposureRunningAverage = {}



---@class FLastRenderedExposureUnreal
---@field AutoExposure float
---@field AverageViewLuminance float
---@field AverageLuminance float
---@field AverageBrightness float
local FLastRenderedExposureUnreal = {}



---@class FLastRenderedExposureWithExpiration : FLastRenderedExposure
---@field MaxAge int64
local FLastRenderedExposureWithExpiration = {}



---@class FPostProcessExposureValues
---@field AutoExposureMinBrightness float
---@field AutoExposureMaxBrightness float
---@field AutoExposureBiasBase float
---@field AutoExposureBiasVFX float
---@field AutoExposureBiasCurve UCurveFloat
---@field AutoExposureSpeedUp float
---@field AutoExposureSpeedDown float
---@field HistogramLogMin float
---@field HistogramLogMax float
---@field BloomIntensity float
---@field BloomThreshold float
---@field AutoExposureMeterMask UTexture
local FPostProcessExposureValues = {}



---@class FPostProcessExposureValuesEV100 : FPostProcessExposureValues
local FPostProcessExposureValuesEV100 = {}


---@class FPostProcessExposureValuesEV100FinalBias : FPostProcessExposureValuesEV100
---@field AutoExposureCurveBias float
local FPostProcessExposureValuesEV100FinalBias = {}



---@class FPostProcessExposureValuesUnitless : FPostProcessExposureValues
local FPostProcessExposureValuesUnitless = {}


---@class FPostProcessExposureValuesUnreal : FPostProcessExposureValues
local FPostProcessExposureValuesUnreal = {}


