---@meta

---@class FAPIInfoResponse
---@field HttpRoutes TArray<FRemoteControlRouteDescription>
---@field ActivePreset FRCShortPresetDescription
local FAPIInfoResponse = {}



---@class FDescribeObjectRequest : FRCRequest
---@field ObjectPath FString
local FDescribeObjectRequest = {}



---@class FDescribeObjectResponse
---@field Name FString
---@field Class UClass
---@field Properties TArray<FRCPropertyDescription>
---@field Functions TArray<FRCFunctionDescription>
local FDescribeObjectResponse = {}



---@class FGetMetadataFieldResponse
---@field Value FString
local FGetMetadataFieldResponse = {}



---@class FGetMetadataResponse
---@field MetaData TMap<FString, FString>
local FGetMetadataResponse = {}



---@class FGetObjectThumbnailRequest : FRCRequest
---@field ObjectPath FString
local FGetObjectThumbnailRequest = {}



---@class FGetPresetResponse
---@field Preset FRCPresetDescription
local FGetPresetResponse = {}



---@class FListPresetsResponse
---@field Presets TArray<FRCShortPresetDescription>
local FListPresetsResponse = {}



---@class FRCAssetDescription
---@field Name FName
---@field Class FName
---@field Path FName
---@field MetaData TMap<FName, FString>
local FRCAssetDescription = {}



---@class FRCAssetFilter
---@field PackageNames TArray<FName>
---@field PackagePaths TArray<FName>
---@field ClassNames TArray<FName>
---@field RecursiveClassesExclusionSet TSet<FName>
---@field RecursiveClasses boolean
---@field RecursivePaths boolean
local FRCAssetFilter = {}



---@class FRCBatchRequest : FRCRequest
---@field Requests TArray<FRCRequestWrapper>
local FRCBatchRequest = {}



---@class FRCCallRequest : FRCRequest
---@field ObjectPath FString
---@field FunctionName FString
---@field GenerateTransaction boolean
local FRCCallRequest = {}



---@class FRCExposedActorDescription
---@field DisplayName FName
---@field ID FString
---@field UnderlyingActor FRCObjectDescription
local FRCExposedActorDescription = {}



---@class FRCExposedFunctionDescription
---@field DisplayName FName
---@field ID FString
---@field UnderlyingFunction FRCFunctionDescription
---@field OwnerObjects TArray<FRCObjectDescription>
local FRCExposedFunctionDescription = {}



---@class FRCExposedPropertyDescription
---@field DisplayName FName
---@field ID FString
---@field UnderlyingProperty FRCPropertyDescription
---@field MetaData TMap<FName, FString>
---@field OwnerObjects TArray<FRCObjectDescription>
local FRCExposedPropertyDescription = {}



---@class FRCFunctionDescription
---@field Name FString
---@field Description FString
---@field Arguments TArray<FRCPropertyDescription>
local FRCFunctionDescription = {}



---@class FRCObjectDescription
---@field Name FString
---@field Class FString
---@field Path FString
local FRCObjectDescription = {}



---@class FRCObjectRequest : FRCRequest
---@field ObjectPath FString
---@field PropertyName FString
---@field ResetToDefault boolean
---@field GenerateTransaction boolean
---@field Access ERCAccess
local FRCObjectRequest = {}



---@class FRCPresetCallRequest : FRCRequest
---@field GenerateTransaction boolean
local FRCPresetCallRequest = {}



---@class FRCPresetDescription
---@field Name FString
---@field Path FString
---@field ID FString
---@field Groups TArray<FRCPresetLayoutGroupDescription>
local FRCPresetDescription = {}



---@class FRCPresetEntitiesModifiedEvent
---@field Type FString
---@field PresetName FName
---@field PresetId FString
---@field ModifiedEntities FRCPresetModifiedEntitiesDescription
local FRCPresetEntitiesModifiedEvent = {}



---@class FRCPresetFieldRenamed
---@field OldFieldLabel FName
---@field NewFieldLabel FName
local FRCPresetFieldRenamed = {}



---@class FRCPresetFieldsAddedEvent
---@field Type FString
---@field PresetName FName
---@field PresetId FString
---@field Description FRCPresetDescription
local FRCPresetFieldsAddedEvent = {}



---@class FRCPresetFieldsRemovedEvent
---@field Type FString
---@field PresetName FName
---@field PresetId FString
---@field RemovedFields TArray<FName>
---@field RemovedFieldIds TArray<FString>
local FRCPresetFieldsRemovedEvent = {}



---@class FRCPresetFieldsRenamedEvent
---@field Type FString
---@field PresetName FName
---@field PresetId FString
---@field RenamedFields TArray<FRCPresetFieldRenamed>
local FRCPresetFieldsRenamedEvent = {}



---@class FRCPresetLayoutGroupDescription
---@field Name FName
---@field ExposedProperties TArray<FRCExposedPropertyDescription>
---@field ExposedFunctions TArray<FRCExposedFunctionDescription>
---@field ExposedActors TArray<FRCExposedActorDescription>
local FRCPresetLayoutGroupDescription = {}



---@class FRCPresetLayoutModified
---@field Type FString
---@field Preset FRCPresetDescription
local FRCPresetLayoutModified = {}



---@class FRCPresetMetadataModified
---@field Type FString
---@field PresetName FName
---@field PresetId FString
---@field MetaData TMap<FString, FString>
local FRCPresetMetadataModified = {}



---@class FRCPresetModifiedEntitiesDescription
---@field ModifiedRCProperties TArray<FRCExposedPropertyDescription>
---@field ModifiedRCFunctions TArray<FRCExposedFunctionDescription>
---@field ModifiedRCActors TArray<FRCExposedActorDescription>
local FRCPresetModifiedEntitiesDescription = {}



---@class FRCPresetSetPropertyRequest : FRCRequest
---@field GenerateTransaction boolean
---@field ResetToDefault boolean
local FRCPresetSetPropertyRequest = {}



---@class FRCPropertyDescription
---@field Name FString
---@field Description FString
---@field Type FString
---@field ContainerType FString
---@field KeyType FString
---@field MetaData TMap<FName, FString>
local FRCPropertyDescription = {}



---@class FRCRequest
local FRCRequest = {}


---@class FRCRequestWrapper : FRCRequest
---@field URL FString
---@field Verb FName
---@field RequestID int32
local FRCRequestWrapper = {}



---@class FRCShortPresetDescription
---@field Name FName
---@field ID FString
---@field Path FName
local FRCShortPresetDescription = {}



---@class FRCWebSocketPresetRegisterBody : FRCRequest
---@field PresetName FString
---@field IgnoreRemoteChanges boolean
local FRCWebSocketPresetRegisterBody = {}



---@class FRCWebSocketRequest : FRCRequest
---@field MessageName FString
---@field ID int32
local FRCWebSocketRequest = {}



---@class FRemoteControlObjectEventHookRequest : FRCRequest
---@field EventType ERemoteControlEvent
---@field ObjectPath FString
---@field PropertyName FString
local FRemoteControlObjectEventHookRequest = {}



---@class FRemoteControlRouteDescription
---@field Path FString
---@field Verb ERemoteControlHttpVerbs
---@field Description FString
local FRemoteControlRouteDescription = {}



---@class FSearchActorRequest : FRCRequest
---@field Query FString
---@field Class FString
---@field Limit int32
local FSearchActorRequest = {}



---@class FSearchActorResponse
---@field Actors TArray<FRCObjectDescription>
local FSearchActorResponse = {}



---@class FSearchAssetRequest : FRCRequest
---@field Query FString
---@field Filter FRCAssetFilter
---@field Limit int32
local FSearchAssetRequest = {}



---@class FSearchAssetResponse
---@field assets TArray<FRCAssetDescription>
local FSearchAssetResponse = {}



---@class FSearchObjectRequest : FRCRequest
---@field Query FString
---@field Class FString
---@field Outer FString
---@field Limit int32
local FSearchObjectRequest = {}



---@class FSetEntityLabelRequest : FRCRequest
---@field NewLabel FString
local FSetEntityLabelRequest = {}



---@class FSetEntityLabelResponse
---@field AssignedLabel FString
local FSetEntityLabelResponse = {}



---@class FSetEntityMetadataRequest : FRCRequest
---@field Value FString
local FSetEntityMetadataRequest = {}



---@class FSetPresetMetadataRequest : FRCRequest
---@field Value FString
local FSetPresetMetadataRequest = {}



