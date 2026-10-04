---@meta

---@class APackagesStatsFetchLevelController : AActor
---@field PackageStatsCaptureSettings UPackageStatsCaptureSettings
---@field WorldStructureGenerator UWorldStructureDescGenerator
local APackagesStatsFetchLevelController = {}



---@class ASCT_LevelController : AActor
---@field LevelToAnalyzePtr TSoftObjectPtr<UWorld>
---@field ConstLevelsToStream TArray<TSoftObjectPtr<UWorld>>
---@field bUseBlockingStreaming boolean
---@field bRunLevelMiners boolean
---@field MinerNamesToRun TArray<FName>
---@field bFlushAsyncThreadBeforeStreaming boolean
---@field bStreamLevelsIndependently boolean
---@field bUnloadLevelsPriorExit boolean
---@field bExitAtEnd boolean
---@field StreamingEvents TArray<USCT_StreamingEventWrapper>
---@field LevelToAnalyze UWorld
local ASCT_LevelController = {}



---@class ULevelTransformsDataAsset : UDataAsset
---@field LevelsTransforms TMap<TSoftObjectPtr<UWorld>, int32>
---@field Transform TArray<FTransform>
---@field LevelsWithStreamingVolumes TSet<TSoftObjectPtr<UWorld>>
---@field ForcedStreamingBehaviorType TMap<TSoftObjectPtr<UWorld>, EStreamingBehaviorType>
---@field ForceExcludeLevels TSet<TSoftObjectPtr<UWorld>>
---@field AdditionalPersistentLevels TSet<TSoftObjectPtr<UWorld>>
---@field NamedWorldRegions TMap<FName, FBox>
local ULevelTransformsDataAsset = {}



---@class UPackageStatsCaptureSettings : UDataAsset
---@field RawPackages TArray<FString>
local UPackageStatsCaptureSettings = {}



---@class USCT_StreamingEventWrapper : UObject
---@field LevelController ASCT_LevelController
---@field LevelStreaming ULevelStreaming
local USCT_StreamingEventWrapper = {}

function USCT_StreamingEventWrapper:OnLevelUnloaded() end
function USCT_StreamingEventWrapper:OnLevelShown() end
function USCT_StreamingEventWrapper:OnLevelLoaded() end
function USCT_StreamingEventWrapper:OnLevelHidden() end


---@class UStreamingComplexityToolContext : UObject
---@field Levels TMap<FName, ULevel>
local UStreamingComplexityToolContext = {}



---@class UWorldStructureDescGenerator : UObject
---@field PendingParses TArray<UWorld>
local UWorldStructureDescGenerator = {}



