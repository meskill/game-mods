---@meta

---@class AConsoleVariableWatcher : AActor
---@field BoolVariables TArray<UWatchedConsoleVariableBool>
---@field FloatVariables TArray<UWatchedConsoleVariableFloat>
---@field IntVariables TArray<UWatchedConsoleVariableInt>
local AConsoleVariableWatcher = {}

---@param WorldContextObject UObject
---@param ConsoleVariable FString
---@param Variable UWatchedConsoleVariableInt
function AConsoleVariableWatcher:WatchIntConsoleVariable(WorldContextObject, ConsoleVariable, Variable) end
---@param WorldContextObject UObject
---@param ConsoleVariable FString
---@param Variable UWatchedConsoleVariableFloat
function AConsoleVariableWatcher:WatchFloatConsoleVariable(WorldContextObject, ConsoleVariable, Variable) end
---@param WorldContextObject UObject
---@param ConsoleVariable FString
---@param Variable UWatchedConsoleVariableBool
function AConsoleVariableWatcher:WatchBoolConsoleVariable(WorldContextObject, ConsoleVariable, Variable) end
---@param ConsoleVariable FString
---@param Value int32
---@param bExists boolean
function AConsoleVariableWatcher:SetConsoleVariableAsInt(ConsoleVariable, Value, bExists) end
---@param ConsoleVariable FString
---@param Value float
---@param bExists boolean
function AConsoleVariableWatcher:SetConsoleVariableAsFloat(ConsoleVariable, Value, bExists) end
---@param ConsoleVariable FString
---@param Value boolean
---@param bExists boolean
function AConsoleVariableWatcher:SetConsoleVariableAsBool(ConsoleVariable, Value, bExists) end
---@param ConsoleVariable FString
---@param Value int32
---@param bExists boolean
---@param DefaultValue int32
function AConsoleVariableWatcher:GetConsoleVariableAsInt(ConsoleVariable, Value, bExists, DefaultValue) end
---@param ConsoleVariable FString
---@param Value float
---@param bExists boolean
---@param DefaultValue float
function AConsoleVariableWatcher:GetConsoleVariableAsFloat(ConsoleVariable, Value, bExists, DefaultValue) end
---@param ConsoleVariable FString
---@param bValue boolean
---@param bExists boolean
---@param bDefaultValue boolean
function AConsoleVariableWatcher:GetConsoleVariableAsBool(ConsoleVariable, bValue, bExists, bDefaultValue) end
---@param ConsoleVariable FString
---@param DefaultValue int32
---@param Help FString
---@param bSuccess boolean
function AConsoleVariableWatcher:CreateConsoleVariableAsInt(ConsoleVariable, DefaultValue, Help, bSuccess) end
---@param ConsoleVariable FString
---@param DefaultValue float
---@param Help FString
---@param bSuccess boolean
function AConsoleVariableWatcher:CreateConsoleVariableAsFloat(ConsoleVariable, DefaultValue, Help, bSuccess) end
---@param ConsoleVariable FString
---@param DefaultValue boolean
---@param Help FString
---@param bSuccess boolean
function AConsoleVariableWatcher:CreateConsoleVariableAsBool(ConsoleVariable, DefaultValue, Help, bSuccess) end
---@param ConsoleVariable FString
---@param bExists boolean
function AConsoleVariableWatcher:ConsoleVariableExists(ConsoleVariable, bExists) end


---@class FConsoleMacro : FConsoleMacroCommandBase
---@field Commands TArray<FName>
local FConsoleMacro = {}



---@class FConsoleMacroAnyName : FConsoleMacroNameBase
local FConsoleMacroAnyName = {}


---@class FConsoleMacroAnyNameWithRestore : FConsoleMacroNameBase
local FConsoleMacroAnyNameWithRestore = {}


---@class FConsoleMacroCommandBase
---@field ConsoleDelegate UConsoleMacroConsoleDelegate
local FConsoleMacroCommandBase = {}



---@class FConsoleMacroEntry
---@field Name FName
---@field Commands TArray<FConsoleMacroAnyName>
---@field Scope EConsoleMacroCommandScope
local FConsoleMacroEntry = {}



---@class FConsoleMacroGroup : FConsoleMacroCommandBase
---@field Commands TArray<FConsoleMacroShortcut>
local FConsoleMacroGroup = {}



---@class FConsoleMacroGroupEntry
---@field Name FName
---@field Commands TArray<FConsoleMacroShortcutEntry>
local FConsoleMacroGroupEntry = {}



---@class FConsoleMacroLevelName
---@field Name FName
local FConsoleMacroLevelName = {}



---@class FConsoleMacroName : FConsoleMacroNameBase
local FConsoleMacroName = {}


---@class FConsoleMacroNameBase
---@field Name FName
local FConsoleMacroNameBase = {}



---@class FConsoleMacroShortcut : FConsoleMacroCommandBase
---@field BaseName FName
---@field Command FName
---@field Value FName
---@field RestoreValue FName
---@field bNoQuery boolean
local FConsoleMacroShortcut = {}



---@class FConsoleMacroShortcutEntry : FConsoleMacroShortcutEntryNameBase
---@field Name FName
---@field bUseName boolean
local FConsoleMacroShortcutEntry = {}



---@class FConsoleMacroShortcutEntryNameBase
---@field Command FName
---@field Value FName
---@field RestoreValue FName
---@field AutoRestoreValue FName
---@field Scope EConsoleMacroCommandScope
---@field bNoQuery boolean
---@field bAutoRestoreValue boolean
local FConsoleMacroShortcutEntryNameBase = {}



---@class FConsoleMacroShortcutEntryNameRequired : FConsoleMacroShortcutEntryNameBase
---@field Name FName
local FConsoleMacroShortcutEntryNameRequired = {}



---@class FConsoleMacroShortcutName : FConsoleMacroNameBase
local FConsoleMacroShortcutName = {}


---@class FConsoleMacros
---@field Groups TMap<FName, FConsoleMacroGroup>
---@field GeneralCommands TMap<FName, FConsoleMacroShortcut>
---@field GeneralMacros TMap<FName, FConsoleMacro>
local FConsoleMacros = {}



---@class FConsoleMacrosAutomation
---@field OnBeginPlay TArray<FConsoleMacroAnyNameWithRestore>
---@field OnEndPlay TArray<FConsoleMacroAnyNameWithRestore>
local FConsoleMacrosAutomation = {}



---@class FConsoleMacrosAutomationLevel
---@field Level FConsoleMacrosAutomationLevelSelect
---@field Automation FConsoleMacrosAutomation
---@field BlockEveryLevelAutomations int32
local FConsoleMacrosAutomationLevel = {}



---@class FConsoleMacrosAutomationLevelSelect
---@field Type EConsoleMacrosAutomationLevelType
---@field LevelName FConsoleMacroLevelName
---@field PartialLevelName FString
---@field bUseLevelName boolean
local FConsoleMacrosAutomationLevelSelect = {}



---@class FConsoleMacrosBlockAutomationLevel
---@field Level FConsoleMacrosAutomationLevelSelect
---@field BlockPhases int32
local FConsoleMacrosBlockAutomationLevel = {}



---@class FConsoleVariableBoolValue
---@field bBool boolean
---@field bValid boolean
local FConsoleVariableBoolValue = {}



---@class FConsoleVariableFlexValue
---@field Integer int32
---@field float float
---@field String FString
---@field bValidInteger boolean
---@field bValidFloat boolean
---@field bValidString boolean
local FConsoleVariableFlexValue = {}



---@class FConsoleVariableFloatValue
---@field float float
---@field bValid boolean
local FConsoleVariableFloatValue = {}



---@class FConsoleVariableIntegerValue
---@field Integer int32
---@field bValid boolean
local FConsoleVariableIntegerValue = {}



---@class FConsoleVariableLienEntry
---@field Variable FString
---@field Value FConsoleVariableFlexValue
---@field Priority float
local FConsoleVariableLienEntry = {}



---@class FConsoleVariableStringValue
---@field String FString
---@field bValid boolean
local FConsoleVariableStringValue = {}



---@class FUserConsoleVariable
---@field Variable FString
---@field Help FString
---@field Builds int32
---@field SpecialUsage int32
---@field SpecialUsageName FName
local FUserConsoleVariable = {}



---@class FUserConsoleVariableBool : FUserConsoleVariable
---@field bDefaultValue boolean
local FUserConsoleVariableBool = {}



---@class FUserConsoleVariableFloat : FUserConsoleVariable
---@field DefaultValue float
local FUserConsoleVariableFloat = {}



---@class FUserConsoleVariableInt : FUserConsoleVariable
---@field DefaultValue int32
local FUserConsoleVariableInt = {}



---@class UConsoleMacroConsoleDelegate : UObject
---@field CommandKey FName
---@field Command FString
---@field Help FString
---@field bHasExecuted boolean
local UConsoleMacroConsoleDelegate = {}



---@class UConsoleMacroConsoleDelegateGroup : UConsoleMacroConsoleDelegate
local UConsoleMacroConsoleDelegateGroup = {}


---@class UConsoleMacroConsoleDelegateMacro : UConsoleMacroConsoleDelegate
local UConsoleMacroConsoleDelegateMacro = {}


---@class UConsoleMacroConsoleDelegateShortcut : UConsoleMacroConsoleDelegate
local UConsoleMacroConsoleDelegateShortcut = {}


---@class UConsoleMacrosPluginDefinitions : UObject
---@field Groups TArray<FConsoleMacroGroupEntry>
---@field Commands TArray<FConsoleMacroShortcutEntryNameRequired>
---@field Macros TArray<FConsoleMacroEntry>
local UConsoleMacrosPluginDefinitions = {}



---@class UConsoleMacrosUserDefinitions : UObject
---@field Groups TArray<FConsoleMacroGroupEntry>
---@field Commands TArray<FConsoleMacroShortcutEntryNameRequired>
---@field Macros TArray<FConsoleMacroEntry>
---@field OnGameStartup TArray<FConsoleMacroAnyName>
---@field EveryLevelAutomation FConsoleMacrosAutomation
---@field PerLevelAutomation TArray<FConsoleMacrosAutomationLevel>
---@field BlockLevelAutomation TArray<FConsoleMacrosBlockAutomationLevel>
---@field bRunOnGameStartup boolean
---@field bRunEveryLevelAutomation boolean
---@field bRunPerLevelAutomation boolean
---@field bBlockAllAutomation boolean
---@field LiveMacros FConsoleMacros
local UConsoleMacrosUserDefinitions = {}



---@class UConsoleVariableLienAsset : UDataAsset
---@field ConsoleVariables TArray<FConsoleVariableLienEntry>
local UConsoleVariableLienAsset = {}



---@class UConsoleVariableLienFunctionLibrary : UBlueprintFunctionLibrary
local UConsoleVariableLienFunctionLibrary = {}

---@param LienHolder UObject
---@param bSuccess boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableRemoveLiens(LienHolder, bSuccess) end
---@param LienHolder UObject
---@param Variable FString
---@param bSuccess boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableRemoveLien(LienHolder, Variable, bSuccess) end
---@param LienHolder UObject
---@param LienAsset UConsoleVariableLienAsset
---@param bSuccess boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableRemoveAssetLiens(LienHolder, LienAsset, bSuccess) end
---@param LienHolder UObject
---@param Variable FString
---@param bHasALien boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableHasLien(LienHolder, Variable, bHasALien) end
---@param LienHolder UObject
---@param bHasALien boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableHasAnyLiens(LienHolder, bHasALien) end
---@param LienHolder UObject
---@param LienAsset UConsoleVariableLienAsset
---@param bSuccess boolean
---@param bActivate boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableAssetLiensActivate(LienHolder, LienAsset, bSuccess, bActivate) end
---@param LienHolder UObject
---@param Variable FString
---@param Value FString
---@param bSuccess boolean
---@param Priority float
function UConsoleVariableLienFunctionLibrary:ConsoleVariableAddStringLien(LienHolder, Variable, Value, bSuccess, Priority) end
---@param LienHolder UObject
---@param Variable FString
---@param Value int32
---@param bSuccess boolean
---@param Priority float
function UConsoleVariableLienFunctionLibrary:ConsoleVariableAddIntegerLien(LienHolder, Variable, Value, bSuccess, Priority) end
---@param LienHolder UObject
---@param Variable FString
---@param Value float
---@param bSuccess boolean
---@param Priority float
function UConsoleVariableLienFunctionLibrary:ConsoleVariableAddFloatLien(LienHolder, Variable, Value, bSuccess, Priority) end
---@param LienHolder UObject
---@param Variable FString
---@param bSuccess boolean
---@param Priority float
function UConsoleVariableLienFunctionLibrary:ConsoleVariableAddDefaultLien(LienHolder, Variable, bSuccess, Priority) end
---@param LienHolder UObject
---@param LienAsset UConsoleVariableLienAsset
---@param bSuccess boolean
function UConsoleVariableLienFunctionLibrary:ConsoleVariableAddAssetLiens(LienHolder, LienAsset, bSuccess) end


---@class UConsoleVariableLienSystem : UObject
local UConsoleVariableLienSystem = {}


---@class UUserConsoleVariables : UDataAsset
---@field Bools TArray<FUserConsoleVariableBool>
---@field Floats TArray<FUserConsoleVariableFloat>
---@field Ints TArray<FUserConsoleVariableInt>
local UUserConsoleVariables = {}



---@class UWatchedConsoleVariable : UObject
---@field Variable FString
local UWatchedConsoleVariable = {}



---@class UWatchedConsoleVariableBool : UWatchedConsoleVariable
---@field ChangedEvent FWatchedConsoleVariableBoolChangedEvent
---@field bValue boolean
local UWatchedConsoleVariableBool = {}



---@class UWatchedConsoleVariableFloat : UWatchedConsoleVariable
---@field ChangedEvent FWatchedConsoleVariableFloatChangedEvent
---@field Value float
local UWatchedConsoleVariableFloat = {}



---@class UWatchedConsoleVariableInt : UWatchedConsoleVariable
---@field ChangedEvent FWatchedConsoleVariableIntChangedEvent
---@field Value int32
local UWatchedConsoleVariableInt = {}



