---@meta

---@class ADungeonEntrancePlacement : AActor
---@field DungeonName FDungeonName
---@field EntranceIndex int32
local ADungeonEntrancePlacement = {}



---@class FDungeonName
---@field DungeonName FName
---@field DataTable UDataTable
local FDungeonName = {}



---@class FModDetails
---@field Name FString
---@field ID int64
---@field CategoryName FString
---@field categoryId int64
---@field AuthorName FString
---@field authorId int64
---@field isFeatured boolean
local FModDetails = {}



---@class FUIModConfig
---@field modId int64
---@field bStaged boolean
---@field Order int32
local FUIModConfig = {}



---@class UGameModManagerSubsystem : UObject
---@field ActiveModPath FString
local UGameModManagerSubsystem = {}

---@param CompletionCallback FUpdateInstalledModCacheCompletionCallback
function UGameModManagerSubsystem:UpdateInstalledModCache(CompletionCallback) end
---@param modId int64
---@return boolean
function UGameModManagerSubsystem:UnstageMod(modId) end
---@return boolean
function UGameModManagerSubsystem:UnstageAllMods() end
---@param modId int64
---@return boolean
function UGameModManagerSubsystem:StageMod(modId) end
---@param bRequestNewCharacter boolean
function UGameModManagerSubsystem:SetRequestedNewModdedCharacter(bRequestNewCharacter) end
---@param bRequestNewCharacter boolean
function UGameModManagerSubsystem:SetRequestedNewCharacter(bRequestNewCharacter) end
---@param SlotToLoad FString
function UGameModManagerSubsystem:SetRequestedLoadSaveSlot(SlotToLoad) end
---@param CharacterID int32
function UGameModManagerSubsystem:SetRequestedLoadCharacterId(CharacterID) end
---@param ModOrders TMap<int64, int32>
function UGameModManagerSubsystem:SetModLoadOrders(ModOrders) end
---@param bSuccess boolean
---@param modId int64
function UGameModManagerSubsystem:OnUnstageComplete(bSuccess, modId) end
---@param bSuccess boolean
---@param modId int64
function UGameModManagerSubsystem:OnStageComplete(bSuccess, modId) end
---@param modId int64
---@return boolean
function UGameModManagerSubsystem:IsModStaged(modId) end
---@return boolean
function UGameModManagerSubsystem:IsGameModSupportAvailable() end
---@param InstalledModRootDirectory FString
---@return boolean
function UGameModManagerSubsystem:InstalledModIsValid(InstalledModRootDirectory) end
---@return boolean
function UGameModManagerSubsystem:GetRequestedNewModdedCharacter() end
---@return boolean
function UGameModManagerSubsystem:GetRequestedNewCharacter() end
---@return FString
function UGameModManagerSubsystem:GetRequestedLoadSaveSlot() end
---@return int32
function UGameModManagerSubsystem:GetRequestedLoadCharacterId() end
---@param ModOrders TMap<int64, int32>
function UGameModManagerSubsystem:GetModLoadOrders(ModOrders) end
---@param modIds TArray<int64>
---@return boolean
function UGameModManagerSubsystem:GetInstalledModIds(modIds) end
---@param SaveGameModIds TArray<int64>
---@return boolean
function UGameModManagerSubsystem:DoesModConfigRequireRestart(SaveGameModIds) end
---@param ModConfigs TArray<FUIModConfig>
---@return EApplyModsResult
function UGameModManagerSubsystem:ApplyModConfig(ModConfigs) end
---@return boolean
function UGameModManagerSubsystem:AnyModsUsedBP() end


---@class UModStateSaveGame : USaveGame
---@field LoadSlotName FString
---@field LoadCharacterId int32
---@field bRequestedNewModdedCharacter boolean
local UModStateSaveGame = {}



