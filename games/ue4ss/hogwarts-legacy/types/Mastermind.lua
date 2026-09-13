---@meta

---@class FMastermindCommandResult : FMastermindMessage
---@field bIsSuccess boolean
---@field ErrorMessage FString
---@field TestSuccess ETestSuccess
---@field Data UMastermindJsonObject
---@field Artifacts TArray<FString>
local FMastermindCommandResult = {}



---@class FMastermindMessage
local FMastermindMessage = {}


---@class FMastermindProgressUpdate : FMastermindMessage
---@field Message FString
local FMastermindProgressUpdate = {}



---@class FMastermindTestResult
---@field bIsSuccess boolean
---@field TestName FString
---@field Timestamp FDateTime
local FMastermindTestResult = {}



---@class FMastermindTestResultMessage : FMastermindMessage
---@field TestResults TArray<FMastermindTestResult>
local FMastermindTestResultMessage = {}



---@class UMastermindActorComponent : UActorComponent
local UMastermindActorComponent = {}

---@param InX float
---@param InY float
---@param InZ float
---@return FMastermindCommandResult
function UMastermindActorComponent:TeleportPlayerPawn(InX, InY, InZ) end
---@param InX float
---@param InY float
---@param InZ float
function UMastermindActorComponent:ServerTeleport(InX, InY, InZ) end
---@param InPitch float
---@param InYaw float
---@param InRoll float
function UMastermindActorComponent:ServerLookInDirection(InPitch, InYaw, InRoll) end
---@param InMastermindMessage FMastermindCommandResult
function UMastermindActorComponent:SendMastermindMessage(InMastermindMessage) end
---@param InX float
---@param InY float
---@param InZ float
function UMastermindActorComponent:QATeleport(InX, InY, InZ) end
---@param InPitch float
---@param InYaw float
---@param InRoll float
function UMastermindActorComponent:QALookInDirection(InPitch, InYaw, InRoll) end
---@param InX float
---@param InY float
---@param InZ float
---@return FMastermindCommandResult
function UMastermindActorComponent:NativeTeleportPlayerPawn(InX, InY, InZ) end
---@param InPitch float
---@param InYaw float
---@param InRoll float
---@return FMastermindCommandResult
function UMastermindActorComponent:NativeLookInDirection(InPitch, InYaw, InRoll) end
---@param InPitch float
---@param InYaw float
---@param InRoll float
---@return FMastermindCommandResult
function UMastermindActorComponent:LookInDirection(InPitch, InYaw, InRoll) end
---@return APlayerController
function UMastermindActorComponent:GetOwniningPlayerController() end
---@param InMastermindMessage FMastermindCommandResult
function UMastermindActorComponent:ClientSendMastermindMessage(InMastermindMessage) end


---@class UMastermindBPLibrary : UBlueprintFunctionLibrary
local UMastermindBPLibrary = {}

---@param InWorldContextObject UObject
---@param InInputKey FKey
function UMastermindBPLibrary:SimulateTappedInput(InWorldContextObject, InInputKey) end
---@param InWorldContextObject UObject
---@param InInputKey FKey
---@param InInputEvent EInputEvent
function UMastermindBPLibrary:SimulateInput(InWorldContextObject, InInputKey, InInputEvent) end
---@param InWorldContextObject UObject
---@param InInputKey FKey
---@param InDelta float
function UMastermindBPLibrary:SimulateAxis(InWorldContextObject, InInputKey, InDelta) end
---@param InWorldContextObject UObject
---@param InTestResults TArray<FMastermindTestResult>
function UMastermindBPLibrary:MastermindSendTestResults(InWorldContextObject, InTestResults) end
---@param InWorldContextObject UObject
---@param InResult FMastermindTestResultMessage
function UMastermindBPLibrary:MastermindSendTestResultMessage(InWorldContextObject, InResult) end
---@param InWorldContextObject UObject
---@param InName FString
---@param bInIsSuccess boolean
function UMastermindBPLibrary:MastermindSendTestResult(InWorldContextObject, InName, bInIsSuccess) end
---@param InWorldContextObject UObject
---@param InMessage FString
---@param bInIsSuccess boolean
---@param InTestSuccess ETestSuccess
---@param InArtifacts TArray<FString>
---@param InData UMastermindJsonObject
function UMastermindBPLibrary:MastermindSendStepResult(InWorldContextObject, InMessage, bInIsSuccess, InTestSuccess, InArtifacts, InData) end
---@param InWorldContextObject UObject
---@param InUpdate FMastermindProgressUpdate
function UMastermindBPLibrary:MastermindSendProgressUpdateMessage(InWorldContextObject, InUpdate) end
---@param InWorldContextObject UObject
---@param InMessage FString
function UMastermindBPLibrary:MastermindSendProgressUpdate(InWorldContextObject, InMessage) end
---@param InWorldContextObject UObject
---@param InResult FMastermindCommandResult
function UMastermindBPLibrary:MastermindSendCommandResultMessage(InWorldContextObject, InResult) end
---@param InWorldContextObject UObject
---@param InName FString
---@param bInIsSuccess boolean
---@return FMastermindTestResult
function UMastermindBPLibrary:CreateMastermindTestResult(InWorldContextObject, InName, bInIsSuccess) end
---@param InWorldContextObject UObject
---@param InMessage FString
---@return FMastermindProgressUpdate
function UMastermindBPLibrary:CreateMastermindProgressUpdate(InWorldContextObject, InMessage) end
---@param InWorldContextObject UObject
---@param InMessage FString
---@param bInIsSuccess boolean
---@param InTestSuccess ETestSuccess
---@param InArtifacts TArray<FString>
---@param InData UMastermindJsonObject
---@return FMastermindCommandResult
function UMastermindBPLibrary:CreateMastermindCommandResult(InWorldContextObject, InMessage, bInIsSuccess, InTestSuccess, InArtifacts, InData) end


---@class UMastermindDebugCommandManager : UObject
local UMastermindDebugCommandManager = {}

---@param InSessionId FString
function UMastermindDebugCommandManager:SetSessionId(InSessionId) end
---@param InBuild FString
function UMastermindDebugCommandManager:SetBuild(InBuild) end
---@param InMastermindMessage FMastermindMessage
function UMastermindDebugCommandManager:SendMastermindMessage(InMastermindMessage) end
---@param InFilename FString
function UMastermindDebugCommandManager:QATakeScreenshot(InFilename) end
function UMastermindDebugCommandManager:QAHangGame() end
function UMastermindDebugCommandManager:QAGameIsReady() end
---@param InCommand FString
---@param InDelayTime int32
function UMastermindDebugCommandManager:QADelayedConsoleCommand(InCommand, InDelayTime) end
function UMastermindDebugCommandManager:QACreateLargeLogResponse() end
---@param InData FString
---@param InFilename FString
---@param InNumArtifacts int32
function UMastermindDebugCommandManager:QACreateArtifactFolder(InData, InFilename, InNumArtifacts) end
---@param InData FString
---@param InFilename FString
function UMastermindDebugCommandManager:QACreateArtifact(InData, InFilename) end
function UMastermindDebugCommandManager:QACrashGame() end
---@param InCommand FString
function UMastermindDebugCommandManager:QAConsoleCommand(InCommand) end
---@param bInIsSuccess boolean
function UMastermindDebugCommandManager:QAAssertVerify(bInIsSuccess) end
---@param bInIsSuccess boolean
function UMastermindDebugCommandManager:QAAssertEnsure(bInIsSuccess) end
---@param bInIsSuccess boolean
function UMastermindDebugCommandManager:QAAssertCheck(bInIsSuccess) end
---@param inString FString
---@param InFilename FString
function UMastermindDebugCommandManager:QAAppendToFile(inString, InFilename) end
---@param InPlayerIndex int32
---@param InCommand FString
function UMastermindDebugCommandManager:PMMC(InPlayerIndex, InCommand) end
---@return boolean
function UMastermindDebugCommandManager:NativeIsGameReady() end
---@param InCommand FString
function UMastermindDebugCommandManager:MMC(InCommand) end
---@return boolean
function UMastermindDebugCommandManager:IsGameReady() end
---@param InCommand FString
---@param InPlayerIndex int32
function UMastermindDebugCommandManager:DoMMC(InCommand, InPlayerIndex) end


---@class UMastermindFileHelper : UBlueprintFunctionLibrary
local UMastermindFileHelper = {}

---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetVideoCaptureArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetScreenshotArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetProjectLogArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetProfilingArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetBugItArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetAutomationTransientArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetAutomationLogArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetAutomationArtifactPath(InPath, OutPath) end
---@param InPath FString
---@param OutPath FString
---@return boolean
function UMastermindFileHelper:GetArtifactAbsolutePath(InPath, OutPath) end


---@class UMastermindJsonObject : UObject
local UMastermindJsonObject = {}

---@return FString
function UMastermindJsonObject:ToJsonString() end
---@param InKey FString
---@param InValues TArray<FString>
function UMastermindJsonObject:SetStringListField(InKey, InValues) end
---@param InKey FString
---@param InValue FString
function UMastermindJsonObject:SetStringField(InKey, InValue) end
---@param InKey FString
---@param InValues TArray<UMastermindJsonObject>
function UMastermindJsonObject:SetObjectListField(InKey, InValues) end
---@param InKey FString
---@param InValue UMastermindJsonObject
function UMastermindJsonObject:SetObjectField(InKey, InValue) end
---@param InKey FString
---@param InValues TArray<float>
function UMastermindJsonObject:SetNumberListField(InKey, InValues) end
---@param InKey FString
---@param InValue float
function UMastermindJsonObject:SetNumberField(InKey, InValue) end
---@param InKey FString
function UMastermindJsonObject:SetNullField(InKey) end
---@param InKey FString
---@param InValues TArray<boolean>
function UMastermindJsonObject:SetBooleanListField(InKey, InValues) end
---@param InKey FString
---@param InValue boolean
function UMastermindJsonObject:SetBooleanField(InKey, InValue) end
---@return boolean
function UMastermindJsonObject:HasAnyFields() end
---@param InKey FString
---@param bOutHasField boolean
---@return TArray<FString>
function UMastermindJsonObject:GetStringListFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return FString
function UMastermindJsonObject:GetStringFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return TArray<UMastermindJsonObject>
function UMastermindJsonObject:GetObjectListFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return UMastermindJsonObject
function UMastermindJsonObject:GetObjectFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return TArray<float>
function UMastermindJsonObject:GetNumberListFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return float
function UMastermindJsonObject:GetNumberFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return TArray<boolean>
function UMastermindJsonObject:GetBooleanListFieldOrDefault(InKey, bOutHasField) end
---@param InKey FString
---@param bOutHasField boolean
---@return boolean
function UMastermindJsonObject:GetBooleanFieldOrDefault(InKey, bOutHasField) end


---@class UMastermindSettings : UDeveloperSettings
---@field MastermindDebugCommandManagerClass TSoftClassPtr<UMastermindDebugCommandManager>
---@field MastermindTickInterval float
---@field MastermindActorComponentClass TSoftClassPtr<UMastermindActorComponent>
---@field bIsActivatedByDefault boolean
---@field MastermindTCPPort int32
---@field MaxClientConnections int32
local UMastermindSettings = {}



