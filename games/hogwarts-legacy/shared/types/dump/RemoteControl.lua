---@meta

---@class ARemoteControlPresetActor : AActor
---@field Preset URemoteControlPreset
local ARemoteControlPresetActor = {}



---@class FRCCachedFieldData
---@field LayoutGroupId FGuid
---@field OwnerObjectAlias FName
local FRCCachedFieldData = {}



---@class FRCEntityWrapper
local FRCEntityWrapper = {}


---@class FRCFieldMetadata
local FRCFieldMetadata = {}


---@class FRCFieldPathInfo
---@field Segments TArray<FRCFieldPathSegment>
---@field PathHash uint32
local FRCFieldPathInfo = {}



---@class FRCFieldPathSegment
---@field Name FName
---@field ArrayIndex int32
---@field ValuePropertyName FString
---@field MapKey FString
local FRCFieldPathSegment = {}



---@class FRCMetadata_FName : FRCFieldMetadata
---@field DefaultValue FName
local FRCMetadata_FName = {}



---@class FRCMetadata_FString : FRCFieldMetadata
---@field DefaultValue FString
local FRCMetadata_FString = {}



---@class FRCMetadata_FVector : FRCFieldMetadata
---@field DefaultValue FVector
---@field MinimumValue FVector
---@field MaximumValue FVector
local FRCMetadata_FVector = {}



---@class FRCMetadata_UClass : FRCFieldMetadata
---@field DefaultValue TSoftClassPtr<UClass>
local FRCMetadata_UClass = {}



---@class FRCMetadata_UObject : FRCFieldMetadata
---@field DefaultValue TSoftObjectPtr<UObject>
local FRCMetadata_UObject = {}



---@class FRCMetadata_UScriptStruct : FRCFieldMetadata
---@field DefaultValue TSoftObjectPtr<UScriptStruct>
local FRCMetadata_UScriptStruct = {}



---@class FRCMetadata_bool : FRCFieldMetadata
---@field DefaultValue boolean
local FRCMetadata_bool = {}



---@class FRCMetadata_byte : FRCFieldMetadata
---@field Min uint8
---@field Max uint8
---@field DefaultValue uint8
local FRCMetadata_byte = {}



---@class FRCMetadata_double : FRCFieldMetadata
---@field Min double
---@field Max double
---@field DefaultValue double
local FRCMetadata_double = {}



---@class FRCMetadata_float : FRCFieldMetadata
---@field Min float
---@field Max float
---@field DefaultValue float
local FRCMetadata_float = {}



---@class FRCMetadata_int16 : FRCFieldMetadata
---@field Min int16
---@field Max int16
---@field DefaultValue int16
local FRCMetadata_int16 = {}



---@class FRCMetadata_int32 : FRCFieldMetadata
---@field Min int32
---@field Max int32
---@field DefaultValue int32
local FRCMetadata_int32 = {}



---@class FRCMetadata_int64 : FRCFieldMetadata
---@field Min int64
---@field Max int64
---@field DefaultValue int64
local FRCMetadata_int64 = {}



---@class FRCMetadata_int8 : FRCFieldMetadata
---@field Min int8
---@field Max int8
---@field DefaultValue int8
local FRCMetadata_int8 = {}



---@class FRCMetadata_uint16 : FRCFieldMetadata
---@field Min uint16
---@field Max uint16
---@field DefaultValue uint16
local FRCMetadata_uint16 = {}



---@class FRCMetadata_uint32 : FRCFieldMetadata
---@field Min uint32
---@field Max uint32
---@field DefaultValue uint32
local FRCMetadata_uint32 = {}



---@class FRCMetadata_uint64 : FRCFieldMetadata
---@field Min uint64
---@field Max uint64
---@field DefaultValue uint64
local FRCMetadata_uint64 = {}



---@class FRemoteControlActor : FRemoteControlEntity
---@field Path FSoftObjectPath
local FRemoteControlActor = {}



---@class FRemoteControlEntity
---@field UserMetadata TMap<FName, FString>
---@field Bindings TArray<TWeakObjectPtr<URemoteControlBinding>>
---@field Owner TWeakObjectPtr<URemoteControlPreset>
---@field Label FName
---@field ID FGuid
local FRemoteControlEntity = {}



---@class FRemoteControlField : FRemoteControlEntity
---@field FieldType EExposedFieldType
---@field FieldName FName
---@field FieldPathInfo FRCFieldPathInfo
---@field ProtocolBindings TSet<FRemoteControlProtocolBinding>
---@field OwnerClass FSoftClassPath
---@field bIsEditorOnly boolean
local FRemoteControlField = {}



---@class FRemoteControlFunction : FRemoteControlField
---@field bIsCallableInPackaged boolean
---@field FunctionPath FSoftObjectPath
local FRemoteControlFunction = {}



---@class FRemoteControlInterceptionFunctionParamStruct
---@field Int32Value int32
---@field IntArray TArray<int32>
---@field IntString FString
local FRemoteControlInterceptionFunctionParamStruct = {}



---@class FRemoteControlInterceptionTestStruct
---@field Int32Value int32
local FRemoteControlInterceptionTestStruct = {}



---@class FRemoteControlOptionalExposeArgs
---@field DisplayName FString
---@field GroupName FString
local FRemoteControlOptionalExposeArgs = {}



---@class FRemoteControlPresetGroup
---@field Name FName
---@field ID FGuid
---@field Fields TArray<FGuid>
local FRemoteControlPresetGroup = {}



---@class FRemoteControlPresetLayout
---@field Groups TArray<FRemoteControlPresetGroup>
---@field Owner TWeakObjectPtr<URemoteControlPreset>
local FRemoteControlPresetLayout = {}



---@class FRemoteControlProperty : FRemoteControlField
---@field bIsEditableInPackaged boolean
local FRemoteControlProperty = {}



---@class FRemoteControlProtocolBinding
---@field ID FGuid
---@field ProtocolName FName
---@field PropertyId FGuid
---@field MappingPropertyName FName
local FRemoteControlProtocolBinding = {}



---@class FRemoteControlProtocolEntity
---@field Owner TWeakObjectPtr<URemoteControlPreset>
---@field PropertyId FGuid
---@field Mappings TSet<FRemoteControlProtocolMapping>
---@field BindingStatus ERCBindingStatus
local FRemoteControlProtocolEntity = {}



---@class FRemoteControlProtocolMapping
---@field ID FGuid
---@field InterpolationRangePropertyData TArray<uint8>
---@field InterpolationMappingPropertyData TArray<uint8>
---@field InterpolationRangePropertyDataCache TArray<uint8>
---@field InterpolationMappingPropertyDataCache TArray<uint8>
---@field InterpolationMappingPropertyElementNum int32
---@field BoundPropertyPath TFieldPath<FProperty>
local FRemoteControlProtocolMapping = {}



---@class FRemoteControlTarget
---@field Class UClass
---@field ExposedFunctions TSet<FRemoteControlFunction>
---@field ExposedProperties TSet<FRemoteControlProperty>
---@field Alias FName
---@field Bindings TArray<FSoftObjectPath>
---@field Owner TWeakObjectPtr<URemoteControlPreset>
local FRemoteControlTarget = {}



---@class FRemoteControlTestInnerStruct
---@field Color FColor
---@field FloatArray TArray<float>
---@field ArrayOfVectors TArray<FVector>
local FRemoteControlTestInnerStruct = {}



---@class FRemoteControlTestStruct
---@field bSomeBool boolean
---@field SomeUInt32 uint32
---@field SomeFloat float
---@field SomeVector FVector
---@field SomeRotator FRotator
---@field SomeClampedInt int32
---@field SomeClampedFloat float
local FRemoteControlTestStruct = {}



---@class FRemoteControlTestStructInner
---@field Int8Value int8
---@field InnerSimle FRemoteControlTestStructInnerSimle
---@field Int32Value int32
local FRemoteControlTestStructInner = {}



---@class FRemoteControlTestStructInnerSimle
---@field Int32Value int32
local FRemoteControlTestStructInnerSimle = {}



---@class FRemoteControlTestStructOuter
---@field Int8Value int8
---@field StructInnerSet TSet<FRemoteControlTestStructInner>
---@field Int32Value int32
---@field RemoteControlTestStructInner FRemoteControlTestStructInner
local FRemoteControlTestStructOuter = {}



---@class URemoteControlAPITestObject : UObject
---@field CStyleIntArray int32
---@field IntArray TArray<int32>
---@field StructOuterArray TArray<FRemoteControlTestStructOuter>
---@field IntSet TSet<int32>
---@field IntMap TMap<int32, int32>
---@field StructOuterMap TMap<int32, FRemoteControlTestStructOuter>
---@field StringColorMap TMap<FString, FColor>
---@field ArrayOfVectors TArray<FVector>
---@field Int8Value int8
---@field Int16Value int16
---@field Int32Value int32
---@field FloatValue float
---@field DoubleValue double
---@field RemoteControlTestStructOuter FRemoteControlTestStructOuter
---@field StringValue FString
---@field NameValue FName
---@field TextValue FText
---@field bValue boolean
---@field ByteValue uint8
---@field RemoteControlEnumByteValue ERemoteControlEnum::Type
---@field RemoteControlEnumValue ERemoteControlEnumClass
---@field VectorValue FVector
---@field RotatorValue FRotator
local URemoteControlAPITestObject = {}



---@class URemoteControlBinding : UObject
---@field Name FString
local URemoteControlBinding = {}



---@class URemoteControlExposeRegistry : UObject
---@field ExposedEntities TSet<FRCEntityWrapper>
---@field LabelToIdCache TMap<FName, FGuid>
local URemoteControlExposeRegistry = {}



---@class URemoteControlFunctionLibrary : UBlueprintFunctionLibrary
local URemoteControlFunctionLibrary = {}

---@param Preset URemoteControlPreset
---@param SourceObject UObject
---@param Property FString
---@param Args FRemoteControlOptionalExposeArgs
---@return boolean
function URemoteControlFunctionLibrary:ExposeProperty(Preset, SourceObject, Property, Args) end
---@param Preset URemoteControlPreset
---@param SourceObject UObject
---@param Function FString
---@param Args FRemoteControlOptionalExposeArgs
---@return boolean
function URemoteControlFunctionLibrary:ExposeFunction(Preset, SourceObject, Function, Args) end
---@param Preset URemoteControlPreset
---@param Actor AActor
---@param Args FRemoteControlOptionalExposeArgs
---@return boolean
function URemoteControlFunctionLibrary:ExposeActor(Preset, Actor, Args) end


---@class URemoteControlInterceptionTestObject : UObject
---@field CustomStruct FRemoteControlInterceptionTestStruct
---@field FunctionParamStruct FRemoteControlInterceptionFunctionParamStruct
local URemoteControlInterceptionTestObject = {}

---@param InStruct FRemoteControlInterceptionFunctionParamStruct
---@param InTestFactor int32
---@return FRemoteControlInterceptionFunctionParamStruct
function URemoteControlInterceptionTestObject:TestFunction(InStruct, InTestFactor) end


---@class URemoteControlLevelDependantBinding : URemoteControlBinding
---@field BoundObjectMap TMap<TSoftObjectPtr<ULevel>, TSoftObjectPtr<UObject>>
---@field LevelWithLastSuccessfulResolve TSoftObjectPtr<ULevel>
local URemoteControlLevelDependantBinding = {}



---@class URemoteControlLevelIndependantBinding : URemoteControlBinding
---@field BoundObject TSoftObjectPtr<UObject>
local URemoteControlLevelIndependantBinding = {}



---@class URemoteControlPreset : UObject
---@field layout FRemoteControlPresetLayout
---@field MetaData TMap<FString, FString>
---@field Bindings TArray<URemoteControlBinding>
---@field PresetId FGuid
---@field RemoteControlTargets TMap<FName, FRemoteControlTarget>
---@field FieldCache TMap<FGuid, FRCCachedFieldData>
---@field NameToGuidMap TMap<FName, FGuid>
---@field Registry URemoteControlExposeRegistry
local URemoteControlPreset = {}



---@class URemoteControlTestObject : UObject
---@field CStyleIntArray int32
---@field IntArray TArray<int32>
---@field FloatArray TArray<float>
---@field IntSet TSet<int32>
---@field IntMap TMap<int32, int32>
---@field IntInnerStructMap TMap<int32, FRemoteControlTestInnerStruct>
---@field StringColorMap TMap<FString, FColor>
local URemoteControlTestObject = {}



