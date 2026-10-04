---@meta

---@class FRCPropertyContainerKey
---@field ValueTypeName FName
local FRCPropertyContainerKey = {}



---@class UPropertyContainerTestObject : UObject
---@field bSomeBool boolean
---@field SomeUInt32 uint32
---@field SomeFloat float
---@field SomeVector FVector
---@field SomeRotator FRotator
---@field SomeClampedInt int32
---@field SomeClampedInt2 int32
---@field SomeUIClampedInt int32
---@field SomeClampedFloat float
---@field SomeUIClampedFloat float
---@field SomeClampedFloat2 float
---@field SomeString FString
---@field SomeText FText
---@field SomeFloatArray TArray<float>
local UPropertyContainerTestObject = {}



---@class URCPropertyContainerBase : UObject
local URCPropertyContainerBase = {}


---@class URCPropertyContainerRegistry : UEngineSubsystem
---@field CachedContainerClasses TMap<FRCPropertyContainerKey, TSubclassOf<URCPropertyContainerBase>>
local URCPropertyContainerRegistry = {}



---@class URemoteControlSettings : UDeveloperSettings
---@field bProtocolsGenerateTransactions boolean
---@field RemoteControlWebInterfacePort uint32
---@field bForceWebAppBuildAtStartup boolean
---@field bAutoStartWebServer boolean
---@field bAutoStartWebSocketServer boolean
---@field RemoteControlHttpServerPort uint32
---@field RemoteControlWebSocketServerPort uint32
---@field bDisplayInEditorOnlyWarnings boolean
---@field TreeBindingSplitRatio float
local URemoteControlSettings = {}



