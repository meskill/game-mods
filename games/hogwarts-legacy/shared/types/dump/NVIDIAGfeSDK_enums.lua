---@enum EGfeSDKHighlightSignificance
local EGfeSDKHighlightSignificance = {
    NONE = 0,
    ExtremelyBad = 1,
    VeryBad = 2,
    Bad = 4,
    Neutral = 8,
    Good = 16,
    VeryGood = 32,
    ExtremelyGood = 64,
    MAX = 128,
}

---@enum EGfeSDKHighlightType
local EGfeSDKHighlightType = {
    NONE = 0,
    Milestone = 1,
    Achievement = 2,
    Incident = 4,
    StateChange = 8,
    Unannounced = 16,
    MAX = 32,
}

---@enum EGfeSDKPermission
local EGfeSDKPermission = {
    Granted = 0,
    Denied = 1,
    MustAsk = 2,
    Unknown = 3,
    MAX = 4,
}

---@enum EGfeSDKReturnCode
local EGfeSDKReturnCode = {
    Success = 0,
    SuccessIpcOldSdk = 1,
    SuccessIpcOldGfe = 2,
    Error = 3,
    ErrorGfeVersion = 4,
    ErrorSdkVersion = 5,
    ErrorModuleNotLoaded = 6,
    ErrorWrongTimeRangeSet = 7,
    ErrorGeneric = 8,
    ErrorNotImplemented = 9,
    ErrorInvalidParameter = 10,
    ErrorNotSet = 11,
    ErrorShadowplayIRDisabled = 12,
    ErrorSDKInUse = 13,
    ErrorGroupNotFound = 14,
    ErrorFileNotFound = 15,
    ErrorHighlightsSetupFailed = 16,
    ErrorHighlightsNotConfigured = 17,
    ErrorHighlightSaveFailed = 18,
    ErrorUnexpectedException = 19,
    ErrorNoHighlights = 20,
    ErrorNoConnection = 21,
    ErrorPermissionNotGranted = 22,
    ErrorPermissionDenied = 23,
    ErrorInvalidHandle = 24,
    ErrorUnhandledException = 25,
    ErrorOutOfMemory = 26,
    ErrorLoadLibrary = 27,
    ErrorLibraryCallFailed = 28,
    ErrorIPCFailed = 29,
    ErrorConnection = 30,
    ErrorLibCallTimeout = 32,
    ErrorApplicationLookupFailed = 33,
    ErrorApplicationNotKnown = 34,
    ErrorFeatureDisabled = 35,
    ErrorAppNoOptimization = 36,
    ErrorAppSettingsRead = 37,
    ErrorAppSettingsWrite = 38,
    EGfeSDKReturnCode_MAX = 39,
}

---@enum EGfeSDKScope
local EGfeSDKScope = {
    Highlights = 0,
    HighlightsRecordVideo = 1,
    HighlightsRecordScreenshot = 2,
    MAX = 3,
}

