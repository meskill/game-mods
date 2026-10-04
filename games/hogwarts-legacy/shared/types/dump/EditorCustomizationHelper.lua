---@meta

---@class FCreatorValidationData
---@field bCreatorReady boolean
---@field bHasUniqueCreatorName boolean
---@field bHasScheduleFilter boolean
---@field bHasDesiredLocations boolean
---@field bHasValidLocationIDs boolean
---@field bHasLocationData boolean
---@field bHasScheduleData boolean
---@field bHasEncounterData boolean
---@field DesiredLocations TArray<FDesiredLocationValidationData>
local FCreatorValidationData = {}



---@class FCustomButtonWidget
local FCustomButtonWidget = {}


---@class FDbDoubleColumnInfo
---@field SelectedDataColumn1 FString
---@field SelectedDataColumn2 FString
---@field Column1DataList TArray<FString>
---@field Column2DataList TArray<FString>
local FDbDoubleColumnInfo = {}



---@class FDbEditorButtonWidget
local FDbEditorButtonWidget = {}


---@class FDbEditorColumnDefault
local FDbEditorColumnDefault = {}


---@class FDbSingleColumnInfo
---@field SelectedData FString
---@field ColumnDataList TArray<FString>
---@field WidgetItemName FString
local FDbSingleColumnInfo = {}



---@class FDesiredLocationValidationData
---@field DesiredLocation FString
---@field bLocationAvailable boolean
local FDesiredLocationValidationData = {}



---@class FKnowledgeInfo
---@field ObjectGroup FString
---@field AllowedObjectGroupList TArray<FString>
local FKnowledgeInfo = {}



---@class FLootDropInfo
---@field ObjectGroup FString
---@field AllowedObjectGroupList TArray<FString>
local FLootDropInfo = {}



---@class FNavAgent
---@field AgentName FName
local FNavAgent = {}



---@class FSelectableSubobjectName
---@field Name FName
local FSelectableSubobjectName = {}



---@class FSpawnSelectInfo
---@field ObjectType FString
---@field ObjectToSpawn FString
---@field AllowedObjectTypeList TArray<FString>
---@field FilteredObjectList TArray<FString>
---@field MyIndex int32
---@field bIsIndexed boolean
---@field bIsRedirected boolean
---@field bIsExpanded boolean
---@field GroupName FString
local FSpawnSelectInfo = {}



