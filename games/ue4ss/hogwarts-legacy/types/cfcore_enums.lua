---@enum ECFCoreApiStatus
local ECFCoreApiStatus = {
    None = 0,
    Private = 1,
    Public = 2,
    ECFCoreApiStatus_MAX = 3,
}

---@enum ECFCoreAutoCookingType
local ECFCoreAutoCookingType = {
    All = 0,
    PCOnly = 1,
    Manual = 2,
    ECFCoreAutoCookingType_MAX = 3,
}

---@enum ECFCoreCarouselItemDestinationType
local ECFCoreCarouselItemDestinationType = {
    None = 0,
    Mod = 1,
    ThemePage = 2,
    ECFCoreCarouselItemDestinationType_MAX = 3,
}

---@enum ECFCoreCarouselItemLayout
local ECFCoreCarouselItemLayout = {
    Default = 0,
    SaleView = 1,
    SmallSaleView = 2,
    ECFCoreCarouselItemLayout_MAX = 3,
}

---@enum ECFCoreChangelogMarkupType
local ECFCoreChangelogMarkupType = {
    PlaceHolderDoNotUse = 0,
    Text = 1,
    HTML = 2,
    Markdown = 3,
    ECFCoreChangelogMarkupType_MAX = 4,
}

---@enum ECFCoreChildFileType
local ECFCoreChildFileType = {
    None = 0,
    ServerPack = 1,
    Source = 2,
    ECFCoreChildFileType_MAX = 3,
}

---@enum ECFCoreEntitlmentCampaignType
local ECFCoreEntitlmentCampaignType = {
    Unknown = 0,
    Mod = 1,
    Feature = 2,
    ECFCoreEntitlmentCampaignType_MAX = 3,
}

---@enum ECFCoreErrorCodes
local ECFCoreErrorCodes = {
    None = 0,
    ApiError = 1,
    FileSystemError = 2,
    FailedToInitialize = 3,
    AlreadyInitialized = 4,
    NotImplemented = 5,
    InvalidModParams = 6,
    InstalledModNotFound = 7,
    InstallCancelled = 8,
    DownloadCancelled = 9,
    UploadCancelled = 10,
    MissingModsDirectory = 11,
    MissingModsDirectoryMode = 12,
    MissingUserDataDirectory = 13,
    FailedToLoadModsStateFromDisk = 14,
    FailedToSaveModsStateToDisk = 15,
    MissingLatestFileInformation = 16,
    MissingFileInformation = 17,
    FileNotBelongingToMod = 18,
    NoPlatformFilesMatched = 19,
    MissingInstalledMods = 20,
    DetectedUnavailableMod = 21,
    ModAlreadyBeingInstalled = 22,
    FailedToDownloadFile = 23,
    DownloadedFileHasInvalidHash = 24,
    FailedDeletingOutputDirectory = 25,
    FailedDeletingOutputFile = 26,
    FailedToUnzip = 27,
    FailedToMoveModDirectory = 28,
    FailedSettingAuthToken = 29,
    UserNotAuthenticated = 30,
    FailedToCancelAction = 31,
    MissingParameter = 32,
    FailedToVerifySignature = 33,
    ModsNotOwnedByUser = 34,
    MissingModsDetails = 35,
    BindiffInvalidHeader = 36,
    BindiffFailedToApplyPatch = 37,
    UnsupportedStrategy = 38,
    UnsupportedSchemaVersion = 39,
    ECFCoreErrorCodes_MAX = 40,
}

---@enum ECFCoreExternalAuthProvider
local ECFCoreExternalAuthProvider = {
    None = 0,
    Steam = 1,
    PSN = 2,
    XBL = 3,
    WB = 4,
    ECFCoreExternalAuthProvider_MAX = 5,
}

---@enum ECFCoreFileDeltaDiffStatus
local ECFCoreFileDeltaDiffStatus = {
    None = 0,
    Generating = 1,
    Approved = 2,
    Deleted = 3,
    ECFCoreFileDeltaDiffStatus_MAX = 4,
}

---@enum ECFCoreFileRelationType
local ECFCoreFileRelationType = {
    None = 0,
    EmbeddedLibrary = 1,
    OptionalDependency = 2,
    RequiredDependency = 3,
    Tool = 4,
    Incompatible = 5,
    Include = 6,
    ECFCoreFileRelationType_MAX = 7,
}

---@enum ECFCoreFileReleaseType
local ECFCoreFileReleaseType = {
    None = 0,
    Release = 1,
    Beta = 2,
    Alpha = 3,
    ECFCoreFileReleaseType_MAX = 4,
}

---@enum ECFCoreFileStatus
local ECFCoreFileStatus = {
    None = 0,
    Processing = 1,
    ChangesRequired = 2,
    UnderReview = 3,
    Approved = 4,
    Rejected = 5,
    MalwareDetected = 6,
    Deleted = 7,
    Archived = 8,
    Testing = 9,
    Released = 10,
    ReadyForReview = 11,
    Deprecated = 12,
    Baking = 13,
    AwaitingPublishing = 14,
    FailedPublishing = 15,
    ECFCoreFileStatus_MAX = 16,
}

---@enum ECFCoreHashAlgo
local ECFCoreHashAlgo = {
    None = 0,
    Sha1 = 1,
    Md5 = 2,
    ECFCoreHashAlgo_MAX = 3,
}

---@enum ECFCoreInstallationCommands
local ECFCoreInstallationCommands = {
    Download = 0,
    ValidateInstalledMod = 1,
    DeltaDiffSupported = 2,
    DownloadDelta = 3,
    VerifyHash = 4,
    Unzip = 5,
    ApplyDeltaPatch = 6,
    DeleteOutputDir = 7,
    MoveToOutputDir = 8,
    Cleanup = 9,
    ECFCoreInstallationCommands_MAX = 10,
}

---@enum ECFCoreMakrupType
local ECFCoreMakrupType = {
    PlaceHolderDoNotUse = 0,
    WysiwygHtml = 1,
    PlainText = 2,
    BBCode = 3,
    Creole = 4,
    Markdown = 5,
    RawHtml = 6,
    StandardBBCode = 8,
    RawCSS = 9,
    ECFCoreMakrupType_MAX = 10,
}

---@enum ECFCoreModLoaderType
local ECFCoreModLoaderType = {
    Any = 0,
    Forge = 1,
    Cauldron = 2,
    LiteLoader = 3,
    Fabric = 4,
    ECFCoreModLoaderType_MAX = 5,
}

---@enum ECFCoreModStatus
local ECFCoreModStatus = {
    None = 0,
    New = 1,
    ChangesRequired = 2,
    UnderSoftReview = 3,
    Approved = 4,
    Rejected = 5,
    ChangesMade = 6,
    Inactive = 7,
    Abandoned = 8,
    Deleted = 9,
    UnderReview = 10,
    ECFCoreModStatus_MAX = 11,
}

---@enum ECFCoreModsSearchEnhancedFeatures
local ECFCoreModsSearchEnhancedFeatures = {
    None = 0,
    ExtractModId = 1,
    ECFCoreModsSearchEnhancedFeatures_MAX = 2,
}

---@enum ECFCoreModsSearchSortField
local ECFCoreModsSearchSortField = {
    None = 0,
    Featured = 1,
    Popularity = 2,
    LastUpdated = 3,
    Name = 4,
    Author = 5,
    TotalDownloads = 6,
    Category = 7,
    GameVersion = 8,
    EarlyAccess = 9,
    FeaturedReleased = 10,
    ReleasedDate = 11,
    ECFCoreModsSearchSortField_MAX = 12,
}

---@enum ECFCorePlatform
local ECFCorePlatform = {
    None = 0,
    Windows = 1,
    XboxOne = 2,
    XboxXS = 3,
    Linux = 4,
    PS4 = 5,
    PS5 = 6,
    Mac = 7,
    IOS = 8,
    TVOS = 9,
    Android = 10,
    Switch = 11,
    WindowsServer = 12,
    LinuxServer = 13,
    ECFCorePlatform_MAX = 14,
}

---@enum ECFCorePremiumFilterType
local ECFCorePremiumFilterType = {
    FreeAndPremium = 0,
    PremiumOnly = 1,
    FreeOnly = 2,
    ECFCorePremiumFilterType_MAX = 3,
}

---@enum ECFCoreRatingScore
local ECFCoreRatingScore = {
    NotEnoughReviews = 0,
    OverwhelminglyPositive = 1,
    VeryPositive = 2,
    Positive = 3,
    MostlyPositive = 4,
    Mixed = 5,
    MostlyNegative = 6,
    Negative = 7,
    VeryNegative = 8,
    OverwhelminglyNegative = 9,
    ECFCoreRatingScore_MAX = 10,
}

---@enum ECFCoreRatingVoteDirection
local ECFCoreRatingVoteDirection = {
    None = 0,
    UpVote = 1,
    DownVote = 2,
    ECFCoreRatingVoteDirection_MAX = 3,
}

---@enum ECFCoreSessionType
local ECFCoreSessionType = {
    Local = 0,
    Server = 1,
    ECFCoreSessionType_MAX = 2,
}

---@enum ECFCoreSortOrder
local ECFCoreSortOrder = {
    None = 0,
    Asc = 1,
    Desc = 2,
    ECFCoreSortOrder_MAX = 3,
}

---@enum ECFCoreStatus
local ECFCoreStatus = {
    None = 0,
    Draft = 1,
    Test = 2,
    PendingReview = 3,
    Rejected = 4,
    Approved = 5,
    Live = 6,
    ECFCoreStatus_MAX = 7,
}

---@enum ECompressionError
local ECompressionError = {
    None = 0,
    FailedToReadZip = 1,
    FailedToExtractFile = 2,
    FailedToWriteFile = 3,
    ECompressionError_MAX = 4,
}

---@enum EDynamicContentInstallResult
local EDynamicContentInstallResult = {
    SuccessfullyInstalled = 0,
    RequiresFullInstallation = 1,
    EDynamicContentInstallResult_MAX = 2,
}

---@enum EFileSystemError
local EFileSystemError = {
    None = 0,
    FailedToReadFromDisk = 1,
    FailedToCreateDirectory = 2,
    FailedToSaveToDisk = 3,
    FailedToOpenFileForWrite = 4,
    FailedFileToLarge = 5,
    FailedGettingDiskSpaceInfo = 6,
    FailedReadOutOfBounds = 7,
    EFileSystemError_MAX = 8,
}

---@enum EInstalledModStatus
local EInstalledModStatus = {
    Pending = 0,
    OutOfDate = 1,
    Normal = 2,
    Invalid = 3,
    WorkingCopy = 4,
    Uploading = 5,
    Modified = 6,
    Uninstalled = 7,
    EInstalledModStatus_MAX = 8,
}

---@enum ELibraryProgressState
local ELibraryProgressState = {
    Pending = 0,
    Downloading = 1,
    Uploading = 2,
    Validating = 3,
    PendingUnzipping = 4,
    Unzipping = 5,
    PendingZipping = 6,
    Zipping = 7,
    Patching = 8,
    Copying = 9,
    CleaningUp = 10,
    Cancelling = 11,
    SuccessfullyCompleted = 12,
    FailedToComplete = 13,
    ELibraryProgressState_MAX = 14,
}

---@enum EModsDirectoryMode
local EModsDirectoryMode = {
    None = 0,
    CFCore = 1,
    Flat = 2,
    EModsDirectoryMode_MAX = 3,
}

---@enum EModsUpdateProgressState
local EModsUpdateProgressState = {
    Validating = 0,
    Installing = 1,
    SuccessfullyCompleted = 2,
    FailedToComplete = 3,
    EModsUpdateProgressState_MAX = 4,
}

