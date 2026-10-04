---@meta

---@class FUsdStageOptions
---@field MetersPerUnit float
---@field UpAxis EUsdUpAxis
local FUsdStageOptions = {}



---@class UUsdAssetCache : UObject
---@field TransientStorage TMap<FString, UObject>
---@field PersistentStorage TMap<FString, UObject>
---@field bAllowPersistentStorage boolean
---@field OwnedAssets TSet<UObject>
---@field PrimPathToAssets TMap<FString, UObject>
local UUsdAssetCache = {}



---@class UUsdAssetImportData : UAssetImportData
---@field PrimPath FString
---@field ImportOptions UObject
local UUsdAssetImportData = {}



---@class UUsdProjectSettings : UDeveloperSettings
---@field AdditionalPluginDirectories TArray<FDirectoryPath>
local UUsdProjectSettings = {}



