---@meta

---@class FCompositeLevelBounds
---@field Bounds FComputedLevelBounds
---@field LevelName FGameFriendlyLevelName
---@field Timestamp FTimespan
---@field bMarkedRemoved boolean
local FCompositeLevelBounds = {}



---@class FComputedLevelBounds
---@field Total FBox
---@field Actors FBox
---@field Landscape FBox
---@field bUsedLevelBoundsActor boolean
local FComputedLevelBounds = {}



---@class FGameFriendlyLevelName
---@field RawName FName
---@field GameFriendlyName FName
local FGameFriendlyLevelName = {}



---@class FInsideOfLevel : FGameFriendlyLevelName
---@field Level TWeakObjectPtr<ULevel>
---@field Bounds FBox
local FInsideOfLevel = {}



---@class FInsideOfLevelRanked : FInsideOfLevel
---@field Rank float
local FInsideOfLevelRanked = {}



---@class FLevelBoundsSources
---@field Sources int32
local FLevelBoundsSources = {}



---@class FWorldLevelsBounds
---@field Bounds TMap<TWeakObjectPtr<ULevel>, FCompositeLevelBounds>
---@field TickInitialized int32
local FWorldLevelsBounds = {}



---@class UCachedLevelBounds : UObject
---@field Worlds TMap<TWeakObjectPtr<UWorld>, FWorldLevelsBounds>
local UCachedLevelBounds = {}



---@class UachedLevelBoundsBlueprintLibrary : UBlueprintFunctionLibrary
local UachedLevelBoundsBlueprintLibrary = {}

---@param WorldContextObject UObject
---@param LevelBoundsSources FLevelBoundsSources
---@param WorldBounds FBox
function UachedLevelBoundsBlueprintLibrary:UncachedTotalWorldBounds(WorldContextObject, LevelBoundsSources, WorldBounds) end
---@param WorldContextObject UObject
---@param LevelBoundsSources FLevelBoundsSources
---@param bRefresh boolean
---@param WorldBounds FBox
function UachedLevelBoundsBlueprintLibrary:TotalWorldBounds(WorldContextObject, LevelBoundsSources, bRefresh, WorldBounds) end
---@param WorldContextObject UObject
---@param Position FVector
---@param BestHeuristic ELevelBoundsBestHeuristic
---@param LevelBoundsSources FLevelBoundsSources
---@param SummaryInsideList FString
---@param MaxLevelsToShow int32
---@param Separator FString
---@param LevelNameFormat EGameFriendlyLevelNameFormat
---@param bRemoveIgnoredLevels boolean
function UachedLevelBoundsBlueprintLibrary:GetInsideOfLevelsSummary(WorldContextObject, Position, BestHeuristic, LevelBoundsSources, SummaryInsideList, MaxLevelsToShow, Separator, LevelNameFormat, bRemoveIgnoredLevels) end
---@param WorldContextObject UObject
---@param Position FVector
---@param BestHeuristic ELevelBoundsBestHeuristic
---@param LevelBoundsSources FLevelBoundsSources
---@param InsideOfLevelList TArray<FInsideOfLevel>
function UachedLevelBoundsBlueprintLibrary:GetInsideOfLevelsList(WorldContextObject, Position, BestHeuristic, LevelBoundsSources, InsideOfLevelList) end
---@param WorldContextObject UObject
---@param Position FVector
---@param BestHeuristic ELevelBoundsBestHeuristic
---@param LevelBoundsSources FLevelBoundsSources
---@param InsideList FString
---@param Separator FString
---@param LevelNameFormat EGameFriendlyLevelNameFormat
---@param bRemoveIgnoredLevels boolean
function UachedLevelBoundsBlueprintLibrary:GetInsideOfLevels(WorldContextObject, Position, BestHeuristic, LevelBoundsSources, InsideList, Separator, LevelNameFormat, bRemoveIgnoredLevels) end
---@param WorldContextObject UObject
---@param Position FVector
---@param BestHeuristic ELevelBoundsBestHeuristic
---@param LevelBoundsSources FLevelBoundsSources
---@param InsideOfLevel FInsideOfLevel
function UachedLevelBoundsBlueprintLibrary:GetInsideOfLevel(WorldContextObject, Position, BestHeuristic, LevelBoundsSources, InsideOfLevel) end


