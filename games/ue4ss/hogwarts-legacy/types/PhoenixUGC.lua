---@meta

---@class FDataTableExtension
---@field AdditionalData UDataTable
---@field TableToAddTo UDataTable
local FDataTableExtension = {}



---@class FRemovableCharacterPieceSlotsMask
---@field BitMask int32
local FRemovableCharacterPieceSlotsMask = {}



---@class FUGCPackage
---@field Name FString
---@field ContentDir FString
---@field PackagePath FString
---@field BaseDir FString
---@field EngineVersion FString
---@field Author FString
---@field Description FString
---@field modId int64
---@field Version int32
local FUGCPackage = {}



---@class UCVarModifier : UObject
---@field ConsoleVariableName FString
---@field ConsoleVariableValue FString
local UCVarModifier = {}

---@return TArray<FString>
function UCVarModifier:GetAllowedCVarNames() end


---@class UMakeReplaceableActorComponent : UActorComponent
---@field CompatibleReplacement TSubclassOf<AActor>
local UMakeReplaceableActorComponent = {}



---@class UModCompositeDataTable : UCompositeDataTable
---@field BaseParentTable UDataTable
local UModCompositeDataTable = {}



---@class UModMutator : UActorComponent
---@field DataTableExtensions TArray<FDataTableExtension>
---@field WidgetsToOverride TArray<TSubclassOf<UUserWidget>>
---@field WidgetTypesForCreationNotification TArray<TSubclassOf<UUserWidget>>
---@field ActorTypesToOverride TArray<TSubclassOf<AActor>>
---@field ActorTypesForSpawnNotifications TArray<TSubclassOf<AActor>>
---@field CustomCharDefsToModify TArray<UCustomizableCharacterDefinition>
---@field CustomCharDefsToOverride TArray<FSoftObjectPath>
local UModMutator = {}

---@param OriginalWidgetType TSubclassOf<UUserWidget>
---@param NewWidgetType TSubclassOf<UUserWidget>
function UModMutator:RequestWidgetOverride(OriginalWidgetType, NewWidgetType) end
---@param OriginalActorType TSubclassOf<AActor>
---@param NewWidgetType TSubclassOf<AActor>
function UModMutator:RequestActorOverride(OriginalActorType, NewWidgetType) end
---@param NewWidget UUserWidget
function UModMutator:ReceiveWidgetCreatedNotification_Internal(NewWidget) end
---@param NewWidget UUserWidget
---@param OwningPlayer APlayerController
function UModMutator:ReceiveWidgetCreatedNotification(NewWidget, OwningPlayer) end
---@param OriginalPath FSoftObjectPath
---@param NewPath FSoftObjectPath
function UModMutator:ReceiveCustomCharacterDefOverrideNotification(OriginalPath, NewPath) end
---@param CCD UCustomizableCharacterDefinition
function UModMutator:ReceiveCustomCharacterDefModificationNotification(CCD) end
---@param SpawnedActor AActor
function UModMutator:ReceiveActorSpawnedNotification(SpawnedActor) end


---@class UReplacementActorComponent : UActorComponent
---@field ActorClassesToReplace TArray<TSubclassOf<AActor>>
local UReplacementActorComponent = {}



---@class UUGCBaseGameInstance : UGameInstance
---@field UGCRegistry UUGCRegistry
local UUGCBaseGameInstance = {}



---@class UUGCBlueprintLibrary : UBlueprintFunctionLibrary
local UUGCBlueprintLibrary = {}

---@param NewCCD UCustomizableCharacterDefinition
---@param TargetCCD UCustomizableCharacterDefinition
---@param SlotsToRemove FRemovableCharacterPieceSlotsMask
---@param bIncludeHead boolean
function UUGCBlueprintLibrary:LayerCCDOverTarget(NewCCD, TargetCCD, SlotsToRemove, bIncludeHead) end
---@param WorldContextObject UObject
---@return UUGCRegistry
function UUGCBlueprintLibrary:GetUGCRegistry(WorldContextObject) end
---@param BaseTable UDataTable
---@return UDataTable
function UUGCBlueprintLibrary:GetUGCDataTable(BaseTable) end
---@param ParentWidget UUserWidget
---@param WidgetName FName
---@return UWidget
function UUGCBlueprintLibrary:GetChildWidgetByName(ParentWidget, WidgetName) end


---@class UUGCRegistry : UObject
---@field UGCPackages TArray<FUGCPackage>
---@field RegisteredMutators TArray<UModMutator>
---@field RegisteredModifiedCCDs TMap<UCustomizableCharacterDefinition, UCustomizableCharacterDefinition>
---@field ModdedTables TMap<UDataTable, UModCompositeDataTable>
---@field GearAppearanceIDsToModNameMap TMap<FName, FName>
---@field CustomizableCharacterDefNamesToModNameMap TMap<FName, FName>
local UUGCRegistry = {}

---@param BaseTable UDataTable
---@return UCompositeDataTable
function UUGCRegistry:GetModTableForBaseTable(BaseTable) end
---@param Package FUGCPackage
---@return boolean
function UUGCRegistry:ApplyAllOverridesInPackage(Package) end
---@param Package FUGCPackage
function UUGCRegistry:ApplyAllCVarModifiersInPackage(Package) end


