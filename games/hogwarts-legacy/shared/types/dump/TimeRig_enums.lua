---@enum EStoryGraphBranchIcon
local EStoryGraphBranchIcon = {
    None = 0,
    Info = 1,
    InfoHub = 2,
    Straight = 3,
    Special = 4,
    BackTo = 5,
    Exit = 6,
    MainMission = 7,
    SideMission = 8,
    Assignment = 9,
    Conversation = 10,
    Vendor = 11,
    EStoryGraphBranchIcon_MAX = 12,
}

---@enum EStoryGraphTriggerActive_InitializeType
local EStoryGraphTriggerActive_InitializeType = {
    InitializeWhenTriggered = 0,
    InitializeWithPrevious = 1,
    EStoryGraphTriggerActive_MAX = 2,
}

---@enum EStoryGraphTrigger_ActivateType
local EStoryGraphTrigger_ActivateType = {
    ActivatedByFinish = 0,
    ActivatedByEvent = 1,
    EStoryGraphTrigger_MAX = 2,
}

---@enum EStoryGraphTrigger_InitializeType
local EStoryGraphTrigger_InitializeType = {
    InitializeWithPrevious = 0,
    InitializeByEvent = 1,
    EStoryGraphTrigger_MAX = 2,
}

---@enum ETimeRigElement_FlagType
local ETimeRigElement_FlagType = {
    None = 0,
    Red = 1,
    Orange = 2,
    Yellow = 3,
    Green = 4,
    Cyan = 5,
    Blue = 6,
    Magenta = 7,
    White = 8,
    Grey = 9,
    Black = 10,
    ETimeRigElement_MAX = 11,
}

---@enum ETimeRigEnterExitType
local ETimeRigEnterExitType = {
    Entering = 0,
    EnteringInside = 1,
    Exiting = 2,
    Instant = 3,
    Skip = 4,
    Unknown = 5,
    ETimeRigEnterExitType_MAX = 6,
}

---@enum ETimeRigExternalEventConstraint
local ETimeRigExternalEventConstraint = {
    NotConstrained = 0,
    BeforeEvent = 1,
    AfterEvent = 2,
    ETimeRigExternalEventConstraint_MAX = 3,
}

---@enum ETimeRigFadeEventType
local ETimeRigFadeEventType = {
    None = 0,
    InitialFade = 1,
    FinalFade = 2,
    ETimeRigFadeEventType_MAX = 3,
}

---@enum ETimeRigInitializingBehavior
local ETimeRigInitializingBehavior = {
    UseSRSettings = 0,
    None = 1,
    ShowLoadingIcon = 2,
    FadeToBlackAndShowLoadingIcon = 3,
    HardToBlackAndShowLoadingIcon = 4,
    FadeToBlackHoldFade = 5,
    BehindCurtain = 6,
    ETimeRigInitializingBehavior_MAX = 7,
}

---@enum ETimeRigPlayerState
local ETimeRigPlayerState = {
    Uninitialized = 0,
    PreparingToInitialize = 1,
    Initializing = 2,
    Active = 3,
    Finishing = 4,
    Finished = 5,
    ETimeRigPlayerState_MAX = 6,
}

---@enum ETimeRigScreenFadeType
local ETimeRigScreenFadeType = {
    FadeIn = 0,
    FadeOut = 1,
    ETimeRigScreenFadeType_MAX = 2,
}

---@enum ETimeRigUpdatePhase
local ETimeRigUpdatePhase = {
    None = 0,
    HandleUpdate = 2,
    HandleExternalEvents = 3,
    LastPhase = 3,
    ETimeRigUpdatePhase_MAX = 4,
}

---@enum ETimeRig_StoryGraphEdgeActivationType
local ETimeRig_StoryGraphEdgeActivationType = {
    ActivatedByFinish = 0,
    ActivatedByEvent = 1,
    DoNotActivate = 2,
    ETimeRig_MAX = 3,
}

---@enum ETimeRig_StoryGraphEdgeEventTriggerType
local ETimeRig_StoryGraphEdgeEventTriggerType = {
    TriggerEvent = 0,
    DoNotTriggerEvent = 1,
    ETimeRig_MAX = 2,
}

---@enum ETimeRig_StoryGraphEdgeFeedbackType
local ETimeRig_StoryGraphEdgeFeedbackType = {
    NoFeedback = 0,
    FeedbackStopOnTargetStart = 1,
    FeedbackEventOnTargetStart = 2,
    ETimeRig_MAX = 3,
}

---@enum ETimeRig_StoryGraphEdgeInitType
local ETimeRig_StoryGraphEdgeInitType = {
    InitializeWhenTriggered = 0,
    InitializeWithPrevious = 1,
    InitializeByEvent = 2,
    DoNotInitialize = 3,
    ETimeRig_MAX = 4,
}

---@enum ETimeRig_StoryGraphEdgeTriggerType
local ETimeRig_StoryGraphEdgeTriggerType = {
    TriggeredByFinish = 0,
    TriggeredByParentNode = 1,
    TriggeredByEvent = 2,
    DoNotTrigger = 3,
    ETimeRig_MAX = 4,
}

