---@meta

---@class IDbDynamicTableConnector_Interface : IInterface
local IDbDynamicTableConnector_Interface = {}


---@class UDbGateway : UObject
local UDbGateway = {}

---@param InOwner FString
---@param InName FString
---@param InValue FString
---@param InBackupNow boolean
---@return boolean
function UDbGateway:DbWriteMiscSaveDataItem(InOwner, InName, InValue, InBackupNow) end
---@param InOwner FString
---@param InName FString
---@param InCallerName FString
---@return boolean
function UDbGateway:DbRemoveMiscSaveDataItem(InOwner, InName, InCallerName) end
---@param InOwner FString
---@param InCallerName FString
---@return boolean
function UDbGateway:DbRemoveAllMiscSaveDataItems(InOwner, InCallerName) end
---@return boolean
function UDbGateway:DbReloadDynDB() end
---@param InOwner FString
---@param InName FString
---@param OutValue FString
---@return boolean
function UDbGateway:DbReadMiscSaveDataItem(InOwner, InName, OutValue) end
---@param InOwner FString
---@param OutQueryResults FSQLiteQueryResult
---@return boolean
function UDbGateway:DbReadMiscSaveDataForOwner(InOwner, OutQueryResults) end
---@param InQuery FString
---@param OutQueryResults TArray<FString>
---@return boolean
function UDbGateway:DbQuerySingleColumnStrings(InQuery, OutQueryResults) end
---@param InQuery FString
---@param OutQueryResults FSQLiteQueryResultMap
---@param inIgnoreDUPs boolean
---@return boolean
function UDbGateway:DbQueryMap(InQuery, OutQueryResults, inIgnoreDUPs) end
---@param InQuery FString
---@param OutQueryResults FSQLiteQueryResult
---@return boolean
function UDbGateway:DbQuery(InQuery, OutQueryResults) end
---@param RawDbImage TArray<uint8>
---@return boolean
function UDbGateway:DbPutDynDBImage(RawDbImage) end
---@param InTransaction FString
---@param InBackupNow boolean
---@return boolean
function UDbGateway:DbOperate(InTransaction, InBackupNow) end
---@param RawDbImage TArray<uint8>
---@return boolean
function UDbGateway:DbGetDynDBImage(RawDbImage) end
---@param InQuery FString
---@param OutQueryResults FSQLiteQueryResultMap
---@param inIgnoreDUPs boolean
---@return boolean
function UDbGateway:DbEditorQueryMap(InQuery, OutQueryResults, inIgnoreDUPs) end
---@param InQuery FString
---@param OutQueryResults FSQLiteQueryResult
---@return boolean
function UDbGateway:DbEditorQuery(InQuery, OutQueryResults) end
---@param InTransaction FString
---@param outNumRowsChanged int32
---@param inTableName FString
---@return boolean
function UDbGateway:DbEditorOperate(InTransaction, outNumRowsChanged, inTableName) end


