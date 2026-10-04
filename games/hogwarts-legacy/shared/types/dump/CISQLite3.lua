---@meta

---@class FSQLiteDatabaseReference
---@field DatabaseName FString
---@field Tables TArray<FString>
local FSQLiteDatabaseReference = {}



---@class FSQLiteIndex
---@field ResultStr FString
---@field IndexName FString
local FSQLiteIndex = {}



---@class FSQLiteKeyValuePair
---@field Key FString
---@field Value FString
local FSQLiteKeyValuePair = {}



---@class FSQLitePrimaryKey
---@field ResultStr FString
local FSQLitePrimaryKey = {}



---@class FSQLiteQueryFinalizedQuery
---@field Query FString
local FSQLiteQueryFinalizedQuery = {}



---@class FSQLiteQueryLogicExpectedNode
---@field Query FString
local FSQLiteQueryLogicExpectedNode = {}



---@class FSQLiteQueryResult
---@field ResultRows TArray<FSQLiteQueryResultRow>
---@field Success boolean
---@field ErrorMessage FString
local FSQLiteQueryResult = {}



---@class FSQLiteQueryResultMap
local FSQLiteQueryResultMap = {}


---@class FSQLiteQueryResultRow
---@field Fields TArray<FSQLiteKeyValuePair>
local FSQLiteQueryResultRow = {}



---@class FSQLiteQueryTermExpectedNode
---@field Query FString
local FSQLiteQueryTermExpectedNode = {}



---@class FSQLiteTable
---@field DatabaseName FString
---@field TableName FString
---@field Fields TArray<FSQLiteTableField>
---@field PK FSQLitePrimaryKey
---@field Created boolean
local FSQLiteTable = {}



---@class FSQLiteTableField
---@field ResultStr FString
---@field FieldName FString
---@field FieldType FString
---@field FieldValue FString
local FSQLiteTableField = {}



---@class FSQLiteTableRowSimulator
---@field rowsOfFields TArray<FSQLiteTableField>
local FSQLiteTableRowSimulator = {}



---@class USQLiteBlueprintFunctionLibrary : UBlueprintFunctionLibrary
local USQLiteBlueprintFunctionLibrary = {}

---@param FieldName FString
---@param PK boolean
---@param Unique boolean
---@return FSQLiteTableField
function USQLiteBlueprintFunctionLibrary:SQLiteTEXT(FieldName, PK, Unique) end
---@param FieldName FString
---@param PK boolean
---@param Unique boolean
---@return FSQLiteTableField
function USQLiteBlueprintFunctionLibrary:SQLiteREAL(FieldName, PK, Unique) end
---@param Fields TArray<FSQLiteTableField>
---@return FSQLitePrimaryKey
function USQLiteBlueprintFunctionLibrary:SQLitePrimaryKey(Fields) end
---@param FieldName FString
---@param PK boolean
---@param Unique boolean
---@return FSQLiteTableField
function USQLiteBlueprintFunctionLibrary:SQLiteNUMERIC(FieldName, PK, Unique) end
---@param FieldName FString
---@param PK boolean
---@param AI boolean
---@param Unique boolean
---@return FSQLiteTableField
function USQLiteBlueprintFunctionLibrary:SQLiteINTEGER(FieldName, PK, AI, Unique) end
---@param Fields TArray<FSQLiteTableField>
---@param idxName FString
---@param Unique boolean
---@return FSQLiteIndex
function USQLiteBlueprintFunctionLibrary:SQLiteIndexFunction(Fields, idxName, Unique) end
---@param LogicOperation FSQLiteQueryTermExpectedNode
---@param Field FString
---@param Operator FString
---@param Value FString
---@return FSQLiteQueryLogicExpectedNode
function USQLiteBlueprintFunctionLibrary:QueryTerm(LogicOperation, Field, Operator, Value) end
---@param LogicOperationOrNone FSQLiteQueryTermExpectedNode
---@return FSQLiteQueryTermExpectedNode
function USQLiteBlueprintFunctionLibrary:QueryStart(LogicOperationOrNone) end
---@param LHS FSQLiteQueryLogicExpectedNode
---@return FSQLiteQueryTermExpectedNode
function USQLiteBlueprintFunctionLibrary:QueryLogicOr(LHS) end
---@param LHS FSQLiteQueryLogicExpectedNode
---@return FSQLiteQueryTermExpectedNode
function USQLiteBlueprintFunctionLibrary:QueryLogicAnd(LHS) end
---@param QueryEndNode FSQLiteQueryLogicExpectedNode
---@return FSQLiteQueryFinalizedQuery
function USQLiteBlueprintFunctionLibrary:QueryFinal(QueryEndNode) end
---@param LastQueryTerm FSQLiteQueryLogicExpectedNode
---@return FSQLiteQueryLogicExpectedNode
function USQLiteBlueprintFunctionLibrary:QueryEnd(LastQueryTerm) end
---@param SQLiteResultValue FString
---@return int32
function USQLiteBlueprintFunctionLibrary:CastToInt(SQLiteResultValue) end
---@param SQLiteResultValue FString
---@return float
function USQLiteBlueprintFunctionLibrary:CastToFloat(SQLiteResultValue) end
---@param SQLiteResultValue FString
---@return boolean
function USQLiteBlueprintFunctionLibrary:CastToBoolean(SQLiteResultValue) end


---@class USQLiteDatabase : UObject
local USQLiteDatabase = {}

---@param DatabaseName FString
---@return boolean
function USQLiteDatabase:Vacuum(DatabaseName) end
---@param DatabaseName FString
---@param TableName FString
---@return boolean
function USQLiteDatabase:TruncateTable(DatabaseName, TableName) end
---@param Name FString
---@param Filename FString
---@param RelativeToGameContentDirectory boolean
---@param InMemoryDatabase boolean
---@return boolean
function USQLiteDatabase:RegisterDatabase(Name, Filename, RelativeToGameContentDirectory, InMemoryDatabase) end
---@param DatabaseName FString
---@param TableName FString
---@return boolean
function USQLiteDatabase:IsTableExists(DatabaseName, TableName) end
---@param DatabaseName FString
---@return boolean
function USQLiteDatabase:IsDatabaseRegistered(DatabaseName) end
---@param DatabaseName FString
---@param TableName FString
---@param rowsOfFields TArray<FSQLiteTableRowSimulator>
function USQLiteDatabase:InsertRowsIntoTable(DatabaseName, TableName, rowsOfFields) end
---@param DataSource FSQLiteDatabaseReference
---@param Fields TArray<FString>
---@param Query FSQLiteQueryFinalizedQuery
---@param ObjectToPopulate UObject
---@return boolean
function USQLiteDatabase:GetDataIntoObjectBP(DataSource, Fields, Query, ObjectToPopulate) end
---@param DatabaseName FString
---@param Query FString
---@param ObjectToPopulate UObject
---@return boolean
function USQLiteDatabase:GetDataIntoObject(DatabaseName, Query, ObjectToPopulate) end
---@param DataSource FSQLiteDatabaseReference
---@param Fields TArray<FString>
---@param Query FSQLiteQueryFinalizedQuery
---@param MaxResults int32
---@param ResultOffset int32
---@return FSQLiteQueryResult
function USQLiteDatabase:GetDataBP(DataSource, Fields, Query, MaxResults, ResultOffset) end
---@param DatabaseName FString
---@param Query FString
---@return FSQLiteQueryResult
function USQLiteDatabase:GetData(DatabaseName, Query) end
---@param DatabaseName FString
---@param Query FString
---@return boolean
function USQLiteDatabase:ExecSql(DatabaseName, Query) end
---@param DatabaseName FString
---@param TableName FString
---@return boolean
function USQLiteDatabase:DropTable(DatabaseName, TableName) end
---@param DatabaseName FString
---@param IndexName FString
---@return boolean
function USQLiteDatabase:DropIndex(DatabaseName, IndexName) end
---@param DatabaseName FString
---@param TableName FString
---@param Fields TArray<FSQLiteTableField>
---@param PK FSQLitePrimaryKey
---@return FSQLiteTable
function USQLiteDatabase:CreateTable(DatabaseName, TableName, Fields, PK) end
---@param DatabaseName FString
---@param TableName FString
---@param Indexes TArray<FSQLiteIndex>
---@return boolean
function USQLiteDatabase:CreateIndexes(DatabaseName, TableName, Indexes) end
---@param DatabaseName FString
---@param TableName FString
---@param Index FSQLiteIndex
---@return boolean
function USQLiteDatabase:CreateIndex(DatabaseName, TableName, Index) end


