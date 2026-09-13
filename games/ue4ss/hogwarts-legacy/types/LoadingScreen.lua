---@meta

---@class FLoadingScreenDescription
---@field MinimumLoadingScreenDisplayTime float
---@field bAutoCompleteWhenLoadingCompletes boolean
---@field bMoviesAreSkippable boolean
---@field bWaitForManualStop boolean
---@field PlaybackType EMoviePlaybackType
---@field bShowUIOverlay boolean
---@field LoadingText FText
---@field LoadingFont FSlateFontInfo
---@field MoviePaths TArray<FString>
---@field Images TArray<FSoftObjectPath>
---@field ImageStretch EStretch::Type
local FLoadingScreenDescription = {}



---@class ULoadingScreenSettings : UDeveloperSettings
---@field StartupScreen FLoadingScreenDescription
---@field DefaultScreen FLoadingScreenDescription
---@field TipFont FSlateFontInfo
---@field TipWrapAt float
---@field Tips TArray<FText>
---@field SimpleLoadingScreenMaterialFront UMaterialInstance
---@field SimpleLoadingScreenMaterialBack UMaterialInstance
---@field LoadingScreenSpinnerMaterial UMaterialInstance
local ULoadingScreenSettings = {}



