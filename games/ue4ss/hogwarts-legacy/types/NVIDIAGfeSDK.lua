---@meta

---@class FGfeSDKCreateInputParams
---@field AppName FString
---@field RequiredScopes TArray<EGfeSDKScope>
---@field PollForCallbacks boolean
local FGfeSDKCreateInputParams = {}



---@class FGfeSDKCreateResponse
---@field VersionMajor uint16
---@field VersionMinor uint16
---@field NVIDIAGfeVersion FString
---@field ScopePermissions TMap<EGfeSDKScope, EGfeSDKPermission>
local FGfeSDKCreateResponse = {}



---@class FGfeSDKHighlightCloseGroupParams
---@field GroupId FString
---@field DestroyHighlights boolean
local FGfeSDKHighlightCloseGroupParams = {}



---@class FGfeSDKHighlightConfigParams
---@field HighlightDefinitions TArray<FGfeSDKHighlightDefinition>
---@field DefaultLocale FString
local FGfeSDKHighlightConfigParams = {}



---@class FGfeSDKHighlightDefinition
---@field ID FString
---@field UserDefaultInterest boolean
---@field HighlightTags EGfeSDKHighlightType
---@field Significance EGfeSDKHighlightSignificance
---@field NameTranslationTable TMap<FString, FString>
local FGfeSDKHighlightDefinition = {}



---@class FGfeSDKHighlightGroupView
---@field GroupId FString
---@field TagsFilter EGfeSDKHighlightType
---@field SignificanceFilter EGfeSDKHighlightSignificance
local FGfeSDKHighlightGroupView = {}



---@class FGfeSDKHighlightOpenGroupParams
---@field GroupId FString
---@field GroupDescriptionTranslationTable TMap<FString, FString>
local FGfeSDKHighlightOpenGroupParams = {}



---@class FGfeSDKHighlightScreenshotParams
---@field GroupId FString
---@field HighlightId FString
local FGfeSDKHighlightScreenshotParams = {}



---@class FGfeSDKHighlightSummaryParams
---@field GroupViews TArray<FGfeSDKHighlightGroupView>
local FGfeSDKHighlightSummaryParams = {}



---@class FGfeSDKHighlightVideoParams
---@field GroupId FString
---@field HighlightId FString
---@field StartDelta int32
---@field EndDelta int32
local FGfeSDKHighlightVideoParams = {}



---@class FGfeSDKPermissionsChangedData
---@field ScopePermissions TMap<EGfeSDKScope, EGfeSDKPermission>
local FGfeSDKPermissionsChangedData = {}



---@class FGfeSDKRequestPermissionsParams
---@field Scopes TArray<EGfeSDKScope>
local FGfeSDKRequestPermissionsParams = {}



---@class UHighlightsCloseGroupAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsCloseGroupAsyncOnSuccess
---@field OnFailure FHighlightsCloseGroupAsyncOnFailure
local UHighlightsCloseGroupAsync = {}

---@param WorldContextObject UObject
---@param GroupId FString
---@param DestroyHighlights boolean
---@return UHighlightsCloseGroupAsync
function UHighlightsCloseGroupAsync:HighlightsCloseGroup(WorldContextObject, GroupId, DestroyHighlights) end


---@class UHighlightsConfigureAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsConfigureAsyncOnSuccess
---@field OnFailure FHighlightsConfigureAsyncOnFailure
local UHighlightsConfigureAsync = {}

---@param WorldContextObject UObject
---@param ConfigParams FGfeSDKHighlightConfigParams
---@return UHighlightsConfigureAsync
function UHighlightsConfigureAsync:HighlightsConfigure(WorldContextObject, ConfigParams) end


---@class UHighlightsFunctionLibrary : UBlueprintFunctionLibrary
local UHighlightsFunctionLibrary = {}

function UHighlightsFunctionLibrary:Poll() end
---@param InitProperties FGfeSDKCreateResponse
---@param VideoGranted boolean
---@param ScreenshotsGranted boolean
---@param Video EGfeSDKPermission
---@param screenshots EGfeSDKPermission
function UHighlightsFunctionLibrary:ChekIfHighlightsAvailable(InitProperties, VideoGranted, ScreenshotsGranted, Video, screenshots) end


---@class UHighlightsGetNumberAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsGetNumberAsyncOnSuccess
---@field OnFailure FHighlightsGetNumberAsyncOnFailure
local UHighlightsGetNumberAsync = {}

---@param WorldContextObject UObject
---@param GroupId FString
---@param TagFilter EGfeSDKHighlightType
---@param SignificanceFilter EGfeSDKHighlightSignificance
---@return UHighlightsGetNumberAsync
function UHighlightsGetNumberAsync:HighlightsGetNumberOfHighlights(WorldContextObject, GroupId, TagFilter, SignificanceFilter) end


---@class UHighlightsOpenGroupAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsOpenGroupAsyncOnSuccess
---@field OnFailure FHighlightsOpenGroupAsyncOnFailure
local UHighlightsOpenGroupAsync = {}

---@param WorldContextObject UObject
---@param Params FGfeSDKHighlightOpenGroupParams
---@return UHighlightsOpenGroupAsync
function UHighlightsOpenGroupAsync:HighlightsOpenGroup(WorldContextObject, Params) end


---@class UHighlightsSetScreenshotAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsSetScreenshotAsyncOnSuccess
---@field OnFailure FHighlightsSetScreenshotAsyncOnFailure
local UHighlightsSetScreenshotAsync = {}

---@param WorldContextObject UObject
---@param GroupId FString
---@param HighlightId FString
---@return UHighlightsSetScreenshotAsync
function UHighlightsSetScreenshotAsync:HighlightsSetScreenshot(WorldContextObject, GroupId, HighlightId) end


---@class UHighlightsSetVideoAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsSetVideoAsyncOnSuccess
---@field OnFailure FHighlightsSetVideoAsyncOnFailure
local UHighlightsSetVideoAsync = {}

---@param WorldContextObject UObject
---@param GroupId FString
---@param HighlightId FString
---@param StartDelta int32
---@param EndDelta int32
---@return UHighlightsSetVideoAsync
function UHighlightsSetVideoAsync:HighlightsSetVideo(WorldContextObject, GroupId, HighlightId, StartDelta, EndDelta) end


---@class UHighlightsSummaryAsync : UBlueprintAsyncActionBase
---@field OnSuccess FHighlightsSummaryAsyncOnSuccess
---@field OnFailure FHighlightsSummaryAsyncOnFailure
local UHighlightsSummaryAsync = {}

---@param WorldContextObject UObject
---@param Params FGfeSDKHighlightSummaryParams
---@return UHighlightsSummaryAsync
function UHighlightsSummaryAsync:HighlightsOpenSummary(WorldContextObject, Params) end


---@class UInitHighlights : UBlueprintAsyncActionBase
---@field OnSuccess FInitHighlightsOnSuccess
---@field OnFailure FInitHighlightsOnFailure
local UInitHighlights = {}

---@param WorldContextObject UObject
---@param InGameName FString
---@param Video boolean
---@param screenshots boolean
---@return UInitHighlights
function UInitHighlights:InitHighlights(WorldContextObject, InGameName, Video, screenshots) end


---@class URequestPermissionsAsync : UBlueprintAsyncActionBase
---@field OnSuccess FRequestPermissionsAsyncOnSuccess
---@field OnFailure FRequestPermissionsAsyncOnFailure
local URequestPermissionsAsync = {}

---@param WorldContextObject UObject
---@param Video boolean
---@param screenshots boolean
---@return URequestPermissionsAsync
function URequestPermissionsAsync:GFERequestPermissions(WorldContextObject, Video, screenshots) end


