---@meta

---@class FArtifactSettings
---@field ArtifactName FString
---@field ClientId FString
---@field ClientSecret FString
---@field productId FString
---@field SandboxId FString
---@field DeploymentId FString
---@field EncryptionKey FString
local FArtifactSettings = {}



---@class UDEPRECATED_EOSArtifactSettings : UDataAsset
local UDEPRECATED_EOSArtifactSettings = {}


---@class UEOSSettings : UObject
---@field CacheDir FString
---@field DefaultArtifactName FString
---@field TickBudgetInMilliseconds int32
---@field bEnableOverlay boolean
---@field bEnableSocialOverlay boolean
---@field bShouldEnforceBeingLaunchedByEGS boolean
---@field TitleStorageTags TArray<FString>
---@field TitleStorageReadChunkLength int32
---@field Artifacts TArray<FArtifactSettings>
---@field bUseEAS boolean
---@field bUseEOSConnect boolean
---@field bMirrorStatsToEOS boolean
---@field bMirrorAchievementsToEOS boolean
---@field bUseEOSSessions boolean
---@field bMirrorPresenceToEAS boolean
local UEOSSettings = {}



---@class UNetConnectionEOS : UIpConnection
local UNetConnectionEOS = {}


---@class UNetDriverEOS : UIpNetDriver
---@field bIsPassthrough boolean
---@field bIsUsingP2PSockets boolean
local UNetDriverEOS = {}



