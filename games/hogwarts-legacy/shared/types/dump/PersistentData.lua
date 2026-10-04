---@meta

---@class FCharacterSaveGameInfo
---@field CharacterID int32
---@field CharacterName FString
---@field CharacterPronoun FString
---@field CharacterVoice FString
---@field CharacterHouse FString
---@field CharacterGender FString
---@field CharacterLevel int32
---@field CharacterGameDifficulty uint8
---@field CharacterPresetData TArray<FName>
---@field CharacterClothesData TArray<FName>
---@field GearTags FString
---@field bIsUsed boolean
---@field CharacterUID FString
---@field UDSPlayerState FUDSPlayerState
---@field FrontendPlayerState FFrontendPlayerState
---@field VoicePitch int32
---@field CurrentFormat ECharacterNameFormat
---@field CharacterNameBytes TArray<uint8>
---@field bIsModCharacter boolean
---@field bIsPinned boolean
---@field ActiveMods TArray<int64>
---@field bEverHadActiveMods boolean
local FCharacterSaveGameInfo = {}



---@class FFrontendPlayerState
---@field Values TMap<FString, FString>
local FFrontendPlayerState = {}



---@class FMissions
---@field Missions TSet<FString>
local FMissions = {}



---@class FPersistentGameDataListInfo
---@field bIsValid boolean
---@field Filename FString
---@field AccountUserIndex int32
---@field LastEditTimeStamp FDateTime
---@field LastLoadedCharacter FCharacterSaveGameInfo
---@field CurrentCharacter FCharacterSaveGameInfo
---@field CharacterList TArray<FCharacterSaveGameInfo>
---@field SaveFileList TArray<FSaveDirectoryEntry>
---@field bCompletedIntro boolean
---@field bCompletedModIntroFlow boolean
---@field FavouriteMods TArray<int64>
---@field wizardingWorldData TMap<FString, FString>
---@field Entitlements TArray<FString>
---@field AnalyticsEvents TArray<FString>
---@field bSkippedLanguageCheck boolean
local FPersistentGameDataListInfo = {}



---@class FSaveDirectoryEntry
---@field FilenameSlot FString
---@field AccountUserIndex int32
---@field CharacterID int32
---@field SaveType ESaveType
---@field bIsUsed boolean
---@field GameTime FDateTime
---@field SaveTime FDateTime
---@field CurrentMap FString
---@field CurrentAction FString
---@field MajorVersion int32
---@field MinorVersion int32
local FSaveDirectoryEntry = {}



---@class FSaveGameInfo
---@field SlotName FString
---@field AccountUserIndex int32
---@field CharacterID int32
---@field SaveType ESaveType
---@field PlayedTime FString
---@field PlatformSaveTime FString
---@field CurrentMap FString
---@field CurrentAction FString
---@field SaveVersion FString
---@field bIsUsed boolean
local FSaveGameInfo = {}



---@class FUDSMissionTasks
---@field AvailableTasks TSet<FString>
---@field ActiveTasks TSet<FString>
---@field CompletedTasks TSet<FString>
---@field BranchStallTask FString
---@field BranchStallTaskNumber float
local FUDSMissionTasks = {}



---@class FUDSPlayerState
---@field AvailableMissions TSet<FString>
---@field ActiveMissions TSet<FString>
---@field CompletedMissions TSet<FString>
---@field HiddenMissions TMap<EUDSMissionHideReason, FMissions>
---@field MissionToTasksMap TMap<FString, FUDSMissionTasks>
---@field AvailableMechanics TSet<FString>
---@field EquippedLoadoutMechanics TSet<FString>
---@field EquippedInventoryItem FString
local FUDSPlayerState = {}



---@class UPersistentData : UObject
---@field OnGameToBeSaved FPersistentDataOnGameToBeSaved
---@field OnSaveFlushed FPersistentDataOnSaveFlushed
---@field OnPostGameToBeSaved FPersistentDataOnPostGameToBeSaved
---@field PreSaveLoaded FPersistentDataPreSaveLoaded
---@field OnSaveGameLoaded FPersistentDataOnSaveGameLoaded
---@field PreCharacterDeleted FPersistentDataPreCharacterDeleted
---@field OnDBVersionCheck FPersistentDataOnDBVersionCheck
---@field OnSaveGameComplete FPersistentDataOnSaveGameComplete
---@field OnCharacterDeleted FPersistentDataOnCharacterDeleted
---@field OnCrossGenSaveDataComplete FPersistentDataOnCrossGenSaveDataComplete
---@field OnAllCrossGenSaveDataComplete FPersistentDataOnAllCrossGenSaveDataComplete
local UPersistentData = {}

---@param CharacterID int32
---@param CharacterVoice FString
---@return boolean
function UPersistentData:UpdatePlayableCharacterVoice(CharacterID, CharacterVoice) end
---@param CharacterID int32
---@param CharacterPronoun FString
---@return boolean
function UPersistentData:UpdatePlayableCharacterPronoun(CharacterID, CharacterPronoun) end
---@param CharacterID int32
---@param CharacterPresets TArray<FName>
---@return boolean
function UPersistentData:UpdatePlayableCharacterPresets(CharacterID, CharacterPresets) end
---@param CharacterID int32
---@param CharacterName FString
---@return boolean
function UPersistentData:UpdatePlayableCharacterName(CharacterID, CharacterName) end
---@param CharacterID int32
---@param CharacterLevel int32
---@return boolean
function UPersistentData:UpdatePlayableCharacterLevel(CharacterID, CharacterLevel) end
---@param CharacterID int32
---@param CharacterHouse FString
---@return boolean
function UPersistentData:UpdatePlayableCharacterHouse(CharacterID, CharacterHouse) end
---@param CharacterID int32
---@param CharacterGender FString
---@return boolean
function UPersistentData:UpdatePlayableCharacterGender(CharacterID, CharacterGender) end
---@param CharacterID int32
---@param CharacterClothes TArray<FName>
---@param AllGearTags FString
---@return boolean
function UPersistentData:UpdatePlayableCharacterClothes(CharacterID, CharacterClothes, AllGearTags) end
---@param CharacterID int32
---@param ActiveMods TArray<int64>
---@return boolean
function UPersistentData:UpdateActiveMods(CharacterID, ActiveMods) end
---@param modId int64
function UPersistentData:TryRemoveFavouriteMod(modId) end
---@param modId int64
function UPersistentData:TryAddFavouriteMod(modId) end
---@param CharacterID int32
---@param bPinCharacter boolean
---@return boolean
function UPersistentData:SetCharacterPinState(CharacterID, bPinCharacter) end
---@param SaveType ESaveType
---@param CharacterID int32
---@param LocationName FString
---@param MissionData FString
---@param bCollectSaveData boolean
---@return boolean
function UPersistentData:SaveGameDataOfType(SaveType, CharacterID, LocationName, MissionData, bCollectSaveData) end
---@param SlotName FString
---@param SaveType ESaveType
---@param CharacterID int32
---@param LocationName FString
---@param MissionData FString
---@param bCollectSaveData boolean
---@param CloudLabel FString
---@return boolean
function UPersistentData:SaveGameDataInSlot(SlotName, SaveType, CharacterID, LocationName, MissionData, bCollectSaveData, CloudLabel) end
---@param SlotName FString
---@param CharacterID int32
---@return boolean
function UPersistentData:RemoveSaveInSlot(SlotName, CharacterID) end
---@param CharacterID int32
---@param bSaveFileListAsync boolean
---@return boolean
function UPersistentData:RemovePlayableCharacter(CharacterID, bSaveFileListAsync) end
---@param CharacterID int32
---@return boolean
function UPersistentData:RemoveAllSavesForCharacter(CharacterID) end
---@return boolean
function UPersistentData:RemoveAllSaveData() end
---@param Result boolean
function UPersistentData:OnCrossGenSaveDataLoaded(Result) end
---@param SaveType ESaveType
---@param CharacterID int32
---@return boolean
function UPersistentData:LoadLastSaveOfType(SaveType, CharacterID) end
---@param SlotName FString
---@param CharacterID int32
---@return boolean
function UPersistentData:LoadGameDataInSlot(SlotName, CharacterID) end
---@param SlotName FString
---@param OldSlotName FString
---@return boolean
function UPersistentData:LoadCrossGenSaveDataInSlot(SlotName, OldSlotName) end
---@param fromCharacterIndex int32
---@param toCharacterIndex int32
---@param SaveFileList boolean
function UPersistentData:LoadCrossGenSaveData(fromCharacterIndex, toCharacterIndex, SaveFileList) end
function UPersistentData:LoadAllCrossGenSaveData() end
---@return boolean
function UPersistentData:HasEverLaunchedGame() end
---@return boolean
function UPersistentData:HasCreatedPlayableCharacter() end
---@return boolean
function UPersistentData:HasCompletedModIntroFlow() end
---@return boolean
function UPersistentData:HasCompletedIntro() end
---@param Attribute FString
---@param OutValue FString
---@return boolean
function UPersistentData:GetWizardingWorldData(Attribute, OutValue) end
---@param CharacterID int32
---@return FCharacterSaveGameInfo
function UPersistentData:GetPlayableCharacter(CharacterID) end
---@return FString
function UPersistentData:GetLastSaveSlotLoaded() end
---@return FCharacterSaveGameInfo
function UPersistentData:GetLastLoadedPlayableCharacter() end
---@param CharacterID int32
---@return boolean
function UPersistentData:GetIsPlayableCharacterUsed(CharacterID) end
---@return UPersistentData
function UPersistentData:GetInstance() end
---@return TArray<int64>
function UPersistentData:GetFavouriteMods() end
---@return uint8
function UPersistentData:GetDefaultDifficulty() end
---@return int32
function UPersistentData:GetCurrentPlayerID() end
---@return FCharacterSaveGameInfo
function UPersistentData:GetCurrentPlayableCharacter() end
---@param CharacterInfo FCharacterSaveGameInfo
---@return FString
function UPersistentData:GetCrossGenPlayableCharacterName(CharacterInfo) end
---@return TArray<FCharacterSaveGameInfo>
function UPersistentData:GetCrossGenCharacterList() end
---@return TArray<FSaveGameInfo>
function UPersistentData:GetAvailableCrossGenSaveData() end
---@param bIncludeModded boolean
---@return TArray<FCharacterSaveGameInfo>
function UPersistentData:GetAllPlayableCharacters(bIncludeModded) end
---@param CharacterID int32
function UPersistentData:GameUserSave(CharacterID) end
---@param CharacterID int32
function UPersistentData:GameTestSaveGameList(CharacterID) end
---@param SlotName FString
---@param CharacterID int32
function UPersistentData:GameRemoveSaveSlot(SlotName, CharacterID) end
---@param CharacterID int32
function UPersistentData:GameRemovePlayableCharacter(CharacterID) end
function UPersistentData:GamePurgeAllSaveData() end
---@param CharacterID int32
function UPersistentData:GameLogSaveGameList(CharacterID) end
function UPersistentData:GameLogSaveDirList() end
function UPersistentData:GameLogPlayableCharacters() end
---@param CharacterID int32
function UPersistentData:GameLoadLastUserSave(CharacterID) end
---@param CharacterID int32
function UPersistentData:GameLoadLastSave(CharacterID) end
---@param CharacterID int32
function UPersistentData:GameLoadLastAutoSave(CharacterID) end
---@param CharacterID int32
---@param SaveNameOverride FString
function UPersistentData:GameLoad(CharacterID, SaveNameOverride) end
---@param SaveFileNameOverride FString
function UPersistentData:GameDBSave(SaveFileNameOverride) end
---@param SaveFileNameOverride FString
function UPersistentData:GameDBLoad(SaveFileNameOverride) end
---@param CharacterName FString
---@param CharacterHouse FString
function UPersistentData:GameCreatePlayableCharacter(CharacterName, CharacterHouse) end
---@param CharacterID int32
function UPersistentData:GameAutoSave(CharacterID) end
function UPersistentData:FlushAutoSaveCacheIfNecessary() end
---@return boolean
function UPersistentData:DoesCrossGenSaveDataExist() end
function UPersistentData:CrossGenSaveDataLog() end
---@param fromCharacterIndex int32
---@param toCharacterIndex int32
function UPersistentData:CrossGenSaveDataLoad(fromCharacterIndex, toCharacterIndex) end
---@param CharacterName FString
---@param CharacterHouse FString
---@param CharacterUID FString
---@param CharacterVoice FString
---@param CharacterPronoun FString
---@param bIsModdedCharacter boolean
---@return int32
function UPersistentData:CreatePlayableCharacter(CharacterName, CharacterHouse, CharacterUID, CharacterVoice, CharacterPronoun, bIsModdedCharacter) end
---@param SlotName FString
---@param CharacterID int32
---@return boolean
function UPersistentData:CreateModdedCharacterCopyFromSlot(SlotName, CharacterID) end
---@param SlotName FString
---@param CharacterID int32
---@param OutNewSlotName FString
---@param OutNewCharacterID int32
---@return boolean
function UPersistentData:CreateModdedCharacterCopy(SlotName, CharacterID, OutNewSlotName, OutNewCharacterID) end
---@param SourceSlotName FString
---@param TargetSlotName FString
---@param CharacterID int32
---@return boolean
function UPersistentData:CopyToModdedSlotFromSlot(SourceSlotName, TargetSlotName, CharacterID) end
function UPersistentData:CompletedModIntroFlow() end
function UPersistentData:CompletedIntro() end
---@return boolean
function UPersistentData:CanCreateModdedCharacter() end
---@param LocationName FString
---@return boolean
function UPersistentData:BP_SaveGame(LocationName) end
---@return boolean
function UPersistentData:BP_DoesCharacterExistYet() end
---@param CharacterName FString
---@param CharacterHouse FString
---@return boolean
function UPersistentData:BP_CreateCharacter(CharacterName, CharacterHouse) end
---@param CharacterID int32
---@return boolean
function UPersistentData:AsyncRemovePlayableCharacter(CharacterID) end


---@class UPersistentGameData : USaveGame
---@field Version int32
---@field ChangeList int32
---@field SessionTime int64
---@field Platform FString
---@field bDBC boolean
---@field bExclusiveMissionActive boolean
---@field ExclusiveVersion int32
---@field ExclusiveChangeList int32
---@field ExclusiveSessionTime int64
---@field ExclusivePlatform FString
---@field RawDatabaseImage TArray<uint8>
---@field RawExclusiveImage TArray<uint8>
---@field RawMiniMapImage TArray<uint8>
---@field CharacterSaveGameInfo FCharacterSaveGameInfo
---@field bCompletedIntro boolean
---@field bCompletedModIntroFlow boolean
---@field FavouriteMods TArray<int64>
---@field wizardingWorldData TMap<FString, FString>
---@field Entitlements TArray<FString>
---@field AnalyticsEvents TArray<FString>
---@field bSkippedLanguageCheck boolean
---@field DirectoryEntry FSaveDirectoryEntry
local UPersistentGameData = {}



---@class UPersistentGameDataList : USaveGame
---@field VersionMajor int32
---@field VersionMinor int32
---@field Info FPersistentGameDataListInfo
local UPersistentGameDataList = {}



---@class UPersistentOffline : USaveGame
---@field EpicAccountID FString
local UPersistentOffline = {}



