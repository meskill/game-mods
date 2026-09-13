---@meta

---@class FWInstrumentedProfilerCategoryAvailability
---@field Category EWInstrumentedProfilerCategorySettings
---@field Availability EWInstrumentedProfilerAvailabilitySettings
local FWInstrumentedProfilerCategoryAvailability = {}



---@class UWExternalProfilersSettings : UObject
---@field AutomatedResume EWInstrumentedProfilerAutomatedResumeSettings
---@field Categories TArray<FWInstrumentedProfilerCategoryAvailability>
local UWExternalProfilersSettings = {}



---@class UWTelemetrySettings : UObject
---@field AutomatedResume EWInstrumentedProfilerAutomatedResumeSettings
---@field bEnableTelemetry boolean
---@field TelemetrySizeInKB int32
---@field ConnectionAddress FString
---@field Categories TArray<FWInstrumentedProfilerCategoryAvailability>
---@field bBreakOnMismatchedZone boolean
---@field TelemetryMaxThreadCount int32
---@field TelemetryMaxTimeSpanTrackCount int32
---@field bEnableContextSwitches boolean
---@field bEnableMessages boolean
---@field bEnableOutputDebugInfo boolean
---@field bBreakOnWarning boolean
local UWTelemetrySettings = {}



