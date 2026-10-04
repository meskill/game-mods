---@enum EHardSwapBatchComponentState
local EHardSwapBatchComponentState = {
    Startup = 0,
    Building = 1,
    Swapping = 2,
    Done = 3,
    EHardSwapBatchComponentState_MAX = 4,
}

---@enum EMaterialPermuterLoadType
local EMaterialPermuterLoadType = {
    Preload = 0,
    Manual = 1,
    Auto = 2,
    TriggerOnly = 3,
    TriggerAndAuto = 4,
    TriggerAndManual = 5,
    EMaterialPermuterLoadType_MAX = 6,
}

---@enum EMaterialPermuterLoadingBundleAndSwapState
local EMaterialPermuterLoadingBundleAndSwapState = {
    Uninitialized = 0,
    Loading = 1,
    LoadedPendingSwaps = 2,
    Swapped = 3,
    SwapFailed = 4,
    EMaterialPermuterLoadingBundleAndSwapState_MAX = 5,
}

---@enum EMaterialPermuterLoadingBundleAndSwapType
local EMaterialPermuterLoadingBundleAndSwapType = {
    SwapComponent = 0,
    SwapComponentAutoRefresh = 1,
    Raw = 2,
    Hard = 3,
    HardBatched = 4,
    EMaterialPermuterLoadingBundleAndSwapType_MAX = 5,
}

---@enum EMaterialPermuterLoadingBundleState
local EMaterialPermuterLoadingBundleState = {
    Init = 0,
    WaitingOnLoad = 1,
    SignalLoaded = 2,
    Loaded = 3,
    EMaterialPermuterLoadingBundleState_MAX = 4,
}

---@enum EMaterialPermuterLoadingPriority
local EMaterialPermuterLoadingPriority = {
    VeryLow = 0,
    Low = 1,
    Normal = 2,
    AboveNormal = 3,
    High = 4,
    Critical = 5,
    EMaterialPermuterLoadingPriority_MAX = 6,
}

---@enum EMaterialPermuterParameterCopy
local EMaterialPermuterParameterCopy = {
    Default = 0,
    AutoDetect = 1,
    InterpParameters = 2,
    UniformParameters = 3,
    Exhaustive = 4,
    FullDeep = 5,
    NoCopy = 6,
    EMaterialPermuterParameterCopy_MAX = 7,
}

---@enum EMaterialSwapInfoTyoe
local EMaterialSwapInfoTyoe = {
    UseMaterialPermuter = 0,
    InPlaceMIDs = 1,
    MaterialOverride = 2,
    MaterialOverrides = 3,
    EMaterialSwapInfoTyoe_MAX = 4,
}

---@enum EMaterialSwapInvert
local EMaterialSwapInvert = {
    MeshObjectFilter = 0,
    MeshTypeFilter = 1,
    MeshTagFilter = 2,
    ActorObjectFilter = 3,
    ActorTypeFilter = 4,
    ActorTagFilter = 5,
    DependentSelection = 6,
    DependentSelectionAttached = 7,
    DependentActorObjectFilter = 8,
    DependentActorTypeFilter = 9,
    DependentActorTagFilter = 10,
    EMaterialSwapInvert_MAX = 11,
}

---@enum EMaterialSwapPriority
local EMaterialSwapPriority = {
    AlwaysInterrupt = 0,
    VeryLow = 1,
    Low = 2,
    Normal = 3,
    Important = 4,
    VeryImportant = 5,
    NeverInterrupt = 6,
    Fundamental = 7,
    EMaterialSwapPriority_MAX = 8,
}

---@enum EMaterialSwapRefreshType
local EMaterialSwapRefreshType = {
    Unsupported = 0,
    Key = 1,
    MIDOnly = 2,
    EMaterialSwapRefreshType_MAX = 3,
}

---@enum EMaterialSwapRulesObjectMatchMode
local EMaterialSwapRulesObjectMatchMode = {
    Exact = 0,
    SubStringCaseSensitve = 1,
    SubStringIgnoreCase = 2,
    EMaterialSwapRulesObjectMatchMode_MAX = 3,
}

---@enum EMaterialSwapRulesObjects
local EMaterialSwapRulesObjects = {
    Ignore = 0,
    SwapOnly = 1,
    EMaterialSwapRulesObjects_MAX = 2,
}

---@enum EMaterialSwapRulesTypeMode
local EMaterialSwapRulesTypeMode = {
    Default = 0,
    OnlySwap = 1,
    NeverSwap = 2,
    EMaterialSwapRulesTypeMode_MAX = 3,
}

---@enum EMaterialSwapSphereSelectionActorEventType
local EMaterialSwapSphereSelectionActorEventType = {
    ActorAdded = 0,
    ActorRemoved = 1,
    EMaterialSwapSphereSelectionActorEventType_MAX = 2,
}

---@enum EMaterialSwapSphereSelectionType
local EMaterialSwapSphereSelectionType = {
    UseComponentLocation = 0,
    UseCameraLocation = 1,
    UseManualLocation = 2,
    EMaterialSwapSphereSelectionType_MAX = 3,
}

---@enum ESimpleDataSetPreloadState
local ESimpleDataSetPreloadState = {
    Idle = 0,
    BuildingPreloadList = 1,
    Preloading = 2,
    Done = 3,
    Cancelling = 4,
    ESimpleDataSetPreloadState_MAX = 5,
}

---@enum ETransformedParameterSource
local ETransformedParameterSource = {
    Actor = 0,
    BoneOrSocket = 1,
    Component = 2,
    None = 3,
    ETransformedParameterSource_MAX = 4,
}

---@enum ETransformedParameterSpace
local ETransformedParameterSpace = {
    InWorld = 0,
    InLocal = 1,
    ETransformedParameterSpace_MAX = 2,
}

