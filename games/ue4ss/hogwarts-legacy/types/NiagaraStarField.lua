---@meta

---@class FPixelStarRenderingParameters
---@field LinearBrightnessMin float
---@field LinearBrightnessMax float
---@field LinearBrightnessPower float
---@field MagnitudeBrightnessMin float
---@field MagnitudeBrightnessMax float
---@field bLinearBrightness boolean
local FPixelStarRenderingParameters = {}



---@class FStar
---@field Direction FVector
---@field Color FVector
---@field LinearMagnitude float
---@field MagnitudeBrightness float
---@field ConstellationID uint8
---@field ExtraID uint8
local FStar = {}



---@class FStarCatalogConstellationLimits
---@field LimitConstellationStars FStarCatalogConstellationStars
---@field DefaultLimitConstellationStars int32
---@field ConstellationNameMagnitudeCutoff float
---@field bUseConstellationStarsLimit boolean
---@field bUseDefaultConstellationStarsLimit boolean
---@field bUseConstellationNameMagnitudeCutoff boolean
local FStarCatalogConstellationLimits = {}



---@class FStarCatalogConstellationStars
---@field ConstellationStars TMap<FName, int32>
local FStarCatalogConstellationStars = {}



---@class FStarCatalogDebugStar
---@field DebugColor FLinearColor
---@field DebugBrightness float
local FStarCatalogDebugStar = {}



---@class FStarCatalogEntry : FTableRowBase
---@field RightAscention float
---@field Declination float
---@field Temperature float
---@field Magnitude float
local FStarCatalogEntry = {}



---@class FStarCatalogEntryConvert
---@field Ordering EStarCatalogOrdering
---@field PostZRotationAngleDegrees float
---@field bNormalizeRotation boolean
---@field PolarisDir FVector
---@field MintakaDir FVector
---@field NormalizeRotationAxis FVector
---@field NormalizeRotationAngleDegrees float
---@field bValidNormalizeRotation boolean
local FStarCatalogEntryConvert = {}



---@class FStarCatalogNameIDMap
---@field Names TArray<FName>
local FStarCatalogNameIDMap = {}



---@class FStarCatalogNameMapEntry : FTableRowBase
---@field ID int32
---@field Name FName
local FStarCatalogNameMapEntry = {}



---@class FStarRenderingParameters
---@field OverallRadiusMeters float
---@field StarSizeRatio float
---@field MinBrightnessSize float
---@field MaxBrightnessSize float
---@field OverallBrightness float
local FStarRenderingParameters = {}



---@class FStarScalabilityParameters
---@field LowLimitStarsK float
---@field MediumLimitStarsK float
---@field HighLimitStarsK float
---@field EpicLimitStarsK float
---@field MinStars int32
---@field bUseLimitStars boolean
local FStarScalabilityParameters = {}



---@class UNiagaraDataInterfaceHYGStarCatalog : UNiagaraDataInterface
---@field StarCatalogAsset UStarCatalog
---@field RenderingParams FStarRenderingParameters
---@field PixelRenderingParams FPixelStarRenderingParameters
---@field ScalabilityParams FStarScalabilityParameters
---@field bStarSpawnValuesGPUBufferDirty boolean
local UNiagaraDataInterfaceHYGStarCatalog = {}



---@class UStarCatalog : UDataAsset
---@field Convert FStarCatalogEntryConvert
---@field ConstellationIDMap FStarCatalogNameIDMap
---@field ExtraIDMap FStarCatalogNameIDMap
---@field Stars TArray<FStar>
---@field TotalStars int32
local UStarCatalog = {}

function UStarCatalog:ForceRebuild() end


