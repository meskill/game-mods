---@meta

---@class FDbAssetMapStruct : FTableRowBase
---@field m_actorClass TSoftClassPtr<AActor>
local FDbAssetMapStruct = {}



---@class FNPC_DBGroupInfo
local FNPC_DBGroupInfo = {}


---@class FNPC_DBNamedInfo
local FNPC_DBNamedInfo = {}


---@class FNPC_DbIdChangeState
local FNPC_DbIdChangeState = {}


---@class FNPC_DbIdInfo
local FNPC_DbIdInfo = {}


---@class FNPC_DbIdState
local FNPC_DbIdState = {}


---@class FNPC_DbObjectInstanceData
local FNPC_DbObjectInstanceData = {}


---@class FRestrictionInfo
local FRestrictionInfo = {}


---@class IDbAssetMapperSpawn_Interface : IInterface
local IDbAssetMapperSpawn_Interface = {}

---@param InAssetPtr AActor
---@return boolean
function IDbAssetMapperSpawn_Interface:UnregisterSpawnWhenDestroyed(InAssetPtr) end
---@param InWorld UWorld
---@param InTransform FTransform
---@param InRegistryID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@param inIsPersistent boolean
---@param InCollisionMethod ESpawnActorCollisionHandlingMethod
---@param InOverrideLevel ULevel
---@param InParentContainer UObject
---@return AActor
function IDbAssetMapperSpawn_Interface:SpawnStart(InWorld, InTransform, InRegistryID, inParentUID, inOverrideUID, inIsPersistent, InCollisionMethod, InOverrideLevel, InParentContainer) end
---@param InWorld UWorld
---@param InTransform FTransform
---@param InRegistryID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@param inIsPersistent boolean
---@param InCollisionMethod ESpawnActorCollisionHandlingMethod
---@param InOverrideLevel ULevel
---@return AActor
function IDbAssetMapperSpawn_Interface:SpawnShell(InWorld, InTransform, InRegistryID, inParentUID, inOverrideUID, inIsPersistent, InCollisionMethod, InOverrideLevel) end
---@param InWorld UWorld
---@param InTransform FTransform
---@param InRegistryID FString
---@param inOverrideScheduleName FString
---@param inOverrideScheduleTable FString
---@param inOverrideWorldID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@param inIsPersistent boolean
---@param InCollisionMethod ESpawnActorCollisionHandlingMethod
---@param InOverrideLevel ULevel
---@return AActor
function IDbAssetMapperSpawn_Interface:SpawnSEAsset(InWorld, InTransform, InRegistryID, inOverrideScheduleName, inOverrideScheduleTable, inOverrideWorldID, inParentUID, inOverrideUID, inIsPersistent, InCollisionMethod, InOverrideLevel) end
---@param InWorld UWorld
---@param SpawnedActor AActor
---@param InRegistryID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@return AActor
function IDbAssetMapperSpawn_Interface:SpawnFinalize(InWorld, SpawnedActor, InRegistryID, inParentUID, inOverrideUID) end
---@param InWorld UWorld
---@param InTransform FTransform
---@param InRegistryID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@param inIsPersistent boolean
---@param InCollisionMethod ESpawnActorCollisionHandlingMethod
---@param InOverrideLevel ULevel
---@return AActor
function IDbAssetMapperSpawn_Interface:SpawnAsync(InWorld, InTransform, InRegistryID, inParentUID, inOverrideUID, inIsPersistent, InCollisionMethod, InOverrideLevel) end
---@param InWorld UWorld
---@param InTransform FTransform
---@param InRegistryID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@param inIsPersistent boolean
---@param InCollisionMethod ESpawnActorCollisionHandlingMethod
---@param InOverrideLevel ULevel
---@param InParentContainer UObject
---@return AActor
function IDbAssetMapperSpawn_Interface:Spawn(InWorld, InTransform, InRegistryID, inParentUID, inOverrideUID, inIsPersistent, InCollisionMethod, InOverrideLevel, InParentContainer) end
---@param InItemID FString
---@param TargetActor AActor
---@param inParentUID uint32
---@param inOverrideUID uint32
function IDbAssetMapperSpawn_Interface:SaveData(InItemID, TargetActor, inParentUID, inOverrideUID) end
---@param InItemID FString
---@param TargetActor AActor
---@param inParentUID uint32
---@param inOverrideUID uint32
function IDbAssetMapperSpawn_Interface:RestoreData(InItemID, TargetActor, inParentUID, inOverrideUID) end
---@param InAssetPtr AActor
---@return boolean
function IDbAssetMapperSpawn_Interface:RegisterNewSpawn(InAssetPtr) end
---@param InRegistryID FString
---@return FString
function IDbAssetMapperSpawn_Interface:RedirectObjectToInstance(InRegistryID) end
---@param InRegistryID FName
---@param inTableName FString
---@return FName
function IDbAssetMapperSpawn_Interface:RedirectObjectClass(InRegistryID, inTableName) end
---@param InRegistryID FName
---@param inTableName FString
---@param outClassID FString
---@param outLootID FString
---@return boolean
function IDbAssetMapperSpawn_Interface:RedirectNamedObject(InRegistryID, inTableName, outClassID, outLootID) end
---@param InRegistryID FName
---@return FName
function IDbAssetMapperSpawn_Interface:RedirectInstanceToObject(InRegistryID) end
---@param InRegistryID FName
---@return boolean
function IDbAssetMapperSpawn_Interface:IsObjectInDefinitionTable(InRegistryID) end
---@param InItemID FString
---@return uint32
function IDbAssetMapperSpawn_Interface:GetUniqueObjectID(InItemID) end
---@return FName
function IDbAssetMapperSpawn_Interface:GetTableName() end
---@param InItemID FString
---@param inCategory FString
---@param OutQueryResultMap FSQLiteQueryResultMap
---@return boolean
function IDbAssetMapperSpawn_Interface:GetSpawnRestrictionsByCategory(InItemID, inCategory, OutQueryResultMap) end
---@param InItemID FString
---@param OutQueryResultMap FSQLiteQueryResultMap
---@return boolean
function IDbAssetMapperSpawn_Interface:GetSpawnRestrictions(InItemID, OutQueryResultMap) end
---@param InItemID FString
---@param OutPath FSoftObjectPath
---@return boolean
function IDbAssetMapperSpawn_Interface:GetSpawnPath(InItemID, OutPath) end
---@param InItemID FString
---@param OutAsset TSubclassOf<AActor>
---@return boolean
function IDbAssetMapperSpawn_Interface:GetSpawnAsset(InItemID, OutAsset) end
---@param InItemID FString
---@param OutPath FSoftObjectPath
---@return boolean
function IDbAssetMapperSpawn_Interface:GetShellSpawnPath(InItemID, OutPath) end
---@return int32
function IDbAssetMapperSpawn_Interface:GetPlayerExperienceLevel() end
---@param InRegistryID FName
---@param outInstanceData TArray<FNPC_DbObjectInstanceData>
---@return boolean
function IDbAssetMapperSpawn_Interface:GetObjectInstanceData(InRegistryID, outInstanceData) end
---@param InItemID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@return float
function IDbAssetMapperSpawn_Interface:GetHealth(InItemID, inParentUID, inOverrideUID) end
---@return FName
function IDbAssetMapperSpawn_Interface:GetDynamicTableName() end
---@return FName
function IDbAssetMapperSpawn_Interface:GetDynamicPersistenceTableName() end
---@param OutFirstColumnName FName
---@return boolean
function IDbAssetMapperSpawn_Interface:GetDefinitionIdentifyingColumnName(OutFirstColumnName) end
---@param InRegistryID FName
---@return FName
function IDbAssetMapperSpawn_Interface:GetCharacterDerivedClass(InRegistryID) end
---@param InRegistryID FString
---@param outGenderID FName
---@param OutVoiceID FName
---@param outEmoteID FName
---@return boolean
function IDbAssetMapperSpawn_Interface:GetActorDefinitionData(InRegistryID, outGenderID, OutVoiceID, outEmoteID) end
---@param InItemID FString
---@return boolean
function IDbAssetMapperSpawn_Interface:CreateItemAsScheduledEntity(InItemID) end
---@param ioRestrictionInfo FRestrictionInfo
---@return ESpawnRestrictionResponse
function IDbAssetMapperSpawn_Interface:CheckSpawnRestrictions(ioRestrictionInfo) end
---@return boolean
function IDbAssetMapperSpawn_Interface:AllowsSplitFrameDeferredSpawn() end
---@param InItemID FString
---@param inParentUID uint32
---@param inOverrideUID uint32
---@param inIsPersistent boolean
---@return ESpawnAllowedResponse
function IDbAssetMapperSpawn_Interface:AllowSpawn(InItemID, inParentUID, inOverrideUID, inIsPersistent) end


---@class UDbAssetMapper : UObject
local UDbAssetMapper = {}

---@param WorldContextObject UObject
---@param InTransform FTransform
---@param InItemName FString
---@param inParentUID int32
---@param inOverrideUID int32
---@param bSpawnOnlyShell boolean
---@return AActor
function UDbAssetMapper:SpawnAssetFromDbIdForAutomation(WorldContextObject, InTransform, InItemName, inParentUID, inOverrideUID, bSpawnOnlyShell) end
---@param WorldContextObject UObject
---@param InTransform FTransform
---@param InItemName FString
---@param bSpawnOnlyShell boolean
---@param FinishDelegate FSpawnAssetFromDbIdAsyncFinishDelegate
---@return boolean
function UDbAssetMapper:SpawnAssetFromDbIdAsync(WorldContextObject, InTransform, InItemName, bSpawnOnlyShell, FinishDelegate) end
---@param WorldContextObject UObject
---@param InTransform FTransform
---@param InItemName FString
---@param bSpawnOnlyShell boolean
---@return AActor
function UDbAssetMapper:SpawnAssetFromDbId(WorldContextObject, InTransform, InItemName, bSpawnOnlyShell) end
---@param inDbColInfo FDbSingleColumnInfo
---@param outDbColInfo FDbSingleColumnInfo
---@param inTableName FString
---@param inColumnName FString
---@param inEmpty boolean
---@param inAddNone boolean
---@return boolean
function UDbAssetMapper:SetTableColumnInfo(inDbColInfo, outDbColInfo, inTableName, inColumnName, inEmpty, inAddNone) end
---@param inRegistryName FString
---@return boolean
function UDbAssetMapper:IsValidRegistryID(inRegistryName) end
---@param RegistryId FName
---@return FName
function UDbAssetMapper:GetSubtypeID(RegistryId) end
---@param RegistryId FName
---@return FName
function UDbAssetMapper:GetSkeletonTypeID(RegistryId) end
---@param inTypeName FName
---@return FString
function UDbAssetMapper:GetRegistryTypeID(inTypeName) end
---@param RegistryId FName
---@return FName
function UDbAssetMapper:GetRegistryTypeDef(RegistryId) end
---@param InItemName FString
---@return TSoftObjectPtr<UObject>
function UDbAssetMapper:GetItemSpawnAssetFromDbId(InItemName) end
---@param RegistryId FName
---@return FName
function UDbAssetMapper:GetEmoteVoiceID(RegistryId) end
---@return UDbAssetMapper
function UDbAssetMapper:GetDbAssetMapper() end
---@return TArray<FString>
function UDbAssetMapper:GetAllRegistryTypeIDs() end
---@param RegistryTypeID FString
---@return TArray<FString>
function UDbAssetMapper:GetAllRegistrySubtypeIDs(RegistryTypeID) end
---@param SubtypeID FString
---@return TArray<FString>
function UDbAssetMapper:GetAllRegistryIDsOfType(SubtypeID) end
---@param RegistryId FName
---@return FName
function UDbAssetMapper:GetAdditionalVoiceID(RegistryId) end


