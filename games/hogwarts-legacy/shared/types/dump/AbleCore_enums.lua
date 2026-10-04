---@enum EAblAbilityPassiveBehavior
local EAblAbilityPassiveBehavior = {
    CannotBePassive = 0,
    RefreshDuration = 1,
    IncreaseStackCount = 2,
    IncreaseAndRefresh = 3,
    EAblAbilityPassiveBehavior_MAX = 4,
}

---@enum EAblAbilityStartResult
local EAblAbilityStartResult = {
    InvalidTarget = 0,
    FailedCustomCheck = 1,
    CooldownNotExpired = 2,
    CannotInterruptCurrentAbility = 3,
    NotAllowedAsPassive = 4,
    PassiveMaxStacksReached = 5,
    InternalSystemsError = 6,
    AsyncProcessing = 7,
    ForwardedToServer = 8,
    InvalidParameter = 9,
    Success = 10,
    EAblAbilityStartResult_MAX = 11,
}

---@enum EAblAbilityTargetType
local EAblAbilityTargetType = {
    Self = 0,
    Owner = 1,
    Instigator = 2,
    TargetActor = 3,
    Camera = 4,
    EnemyWeapon = 5,
    EAblAbilityTargetType_MAX = 6,
}

---@enum EAblAbilityTaskRealm
local EAblAbilityTaskRealm = {
    Client = 0,
    Server = 1,
    ClientAndServer = 2,
    TotalRealms = 3,
    EAblAbilityTaskRealm_MAX = 4,
}

---@enum EAblAbilityTaskResult
local EAblAbilityTaskResult = {
    Successful = 0,
    Branched = 1,
    Interrupted = 2,
    EAblAbilityTaskResult_MAX = 3,
}

---@enum EAblCollisionFilterSort
local EAblCollisionFilterSort = {
    AblFitlerSort_Ascending = 0,
    AblFilterSort_Descending = 1,
    EAblCollisionFilterSort_MAX = 2,
}

---@enum EAblNpcReactChannelType
local EAblNpcReactChannelType = {
    Fullbody = 0,
    Additive = 1,
    PartialBody = 2,
    EAblNpcReactChannelType_MAX = 3,
}

---@enum EAblNpcReactEventAction
local EAblNpcReactEventAction = {
    Ignore = 0,
    Enable = 1,
    Disable = 2,
    EAblNpcReactEventAction_MAX = 3,
}

---@enum EAblPlayAnimationTaskAnimMode
local EAblPlayAnimationTaskAnimMode = {
    SingleNode = 0,
    AbilityAnimationNode = 1,
    DynamicMontage = 2,
    EAblPlayAnimationTaskAnimMode_MAX = 3,
}

---@enum EAblReactionState
local EAblReactionState = {
    Queued = 0,
    Active = 1,
    Ending = 2,
    Inactive = 3,
    Finished = 4,
    EAblReactionState_MAX = 5,
}

---@enum EAblTargetingFilterSort
local EAblTargetingFilterSort = {
    AblTargetFilterSort_Ascending = 0,
    AblTargetFilterSort_Descending = 1,
    AblTargetFilterSort_MAX = 2,
}

---@enum EAnimBlendTickStyle
local EAnimBlendTickStyle = {
    BlendTickBoth = 0,
    BlendTickDest = 1,
    EAnimBlendTickStyle_MAX = 2,
}

---@enum EFKIKBranchType
local EFKIKBranchType = {
    LeftLeg = 0,
    RightLeg = 1,
    EFKIKBranchType_MAX = 2,
}

---@enum EOffsetTypeEnum
local EOffsetTypeEnum = {
    OFFSETTYPE_SECONDS = 0,
    OFFSETTYPE_PERCENT = 1,
    OFFSETTYPE_FRAMES = 2,
    OFFSETTYPE_MAX = 3,
}

---@enum EPhysicalBodyBlendState
local EPhysicalBodyBlendState = {
    None = 0,
    BlendIn = 1,
    BlendOut = 2,
    Destroy = 3,
    EPhysicalBodyBlendState_MAX = 4,
}

---@enum ERelativeToEnum
local ERelativeToEnum = {
    RELATIVETO_START = 0,
    RELATIVETO_END = 1,
    RELATIVETO_MAX = 2,
}

---@enum ERootMotionModifierOrder
local ERootMotionModifierOrder = {
    Primary = 0,
    Secondary = 1,
    RankAndFile = 2,
    Penultimate = 3,
    Ultimate = 4,
    ERootMotionModifierOrder_MAX = 5,
}

---@enum ETimeDilationTarget
local ETimeDilationTarget = {
    World = 0,
    Self = 1,
    Owner = 2,
    Instigator = 3,
    TargetActor = 4,
    ETimeDilationTarget_MAX = 5,
}

