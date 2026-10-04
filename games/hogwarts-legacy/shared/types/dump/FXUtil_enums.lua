---@enum EAttachCFAttachCameraComponentDelegateEvent
local EAttachCFAttachCameraComponentDelegateEvent = {
    PositionChanged = 0,
    RotationChanged = 1,
    PositionAndRotationChanged = 2,
    EAttachCFAttachCameraComponentDelegateEvent_MAX = 3,
}

---@enum EAttachCameraBillBoardType
local EAttachCameraBillBoardType = {
    ACBBT_ZX = 0,
    ACBBT_YX = 1,
    ACBBT_XZ = 2,
    ACBBT_XY = 3,
    ACBBT_X = 4,
    ACBBT_MAX = 5,
}

---@enum EAttachCameraType
local EAttachCameraType = {
    ACT_FULL = 0,
    ACT_XYZ = 1,
    ACT_XYONLY = 2,
    ACT_BILLBOARD = 3,
    ACT_ROTATION = 4,
    ACT_MAX = 5,
}

---@enum ECharacterDynamicClothingType
local ECharacterDynamicClothingType = {
    None = 0,
    Tight = 1,
    Loose = 2,
    CapeOrRobe = 3,
    ECharacterDynamicClothingType_MAX = 4,
}

---@enum ECharacterDynamicClothingTypes
local ECharacterDynamicClothingTypes = {
    Tight = 0,
    Loose = 1,
    CapeOrRobe = 2,
    ECharacterDynamicClothingTypes_MAX = 3,
}

---@enum EFXAutoTriggerConditionResult
local EFXAutoTriggerConditionResult = {
    None = 0,
    End = 1,
    Start = 2,
    EFXAutoTriggerConditionResult_MAX = 3,
}

---@enum EFXAutoTriggerConditionType
local EFXAutoTriggerConditionType = {
    StartAndEnd = 0,
    StartOnly = 1,
    EndOnly = 2,
    EFXAutoTriggerConditionType_MAX = 3,
}

---@enum EFollowCameraType
local EFollowCameraType = {
    FCT_OFF = 0,
    FCT_FULL = 1,
    FCT_XYONLY = 2,
    FCT_FIXEDZ = 3,
    FCT_OFFSETZ = 4,
    FCT_MAX = 5,
}

---@enum EObjectFadeCompletedAction
local EObjectFadeCompletedAction = {
    Default = 0,
    HoldInSystem = 1,
    ReleaseFromSystem = 2,
    FadeOut_HideObject = 3,
    FadeOut_KillObject = 4,
    EObjectFadeCompletedAction_MAX = 5,
}

---@enum EObjectFadeDirection
local EObjectFadeDirection = {
    FadeIn = 0,
    FadeOut = 1,
    EObjectFadeDirection_MAX = 2,
}

---@enum EObjectFadeMasterState
local EObjectFadeMasterState = {
    NotFound = 0,
    FadingIn = 1,
    FadingOut = 2,
    EObjectFadeMasterState_MAX = 3,
}

---@enum EObjectFadeSpeed
local EObjectFadeSpeed = {
    VeryFast = 0,
    Fast = 1,
    Default = 2,
    Slow = 3,
    VerySlow = 4,
    EObjectFadeSpeed_MAX = 5,
}

---@enum EOverlapEffectsAttachment
local EOverlapEffectsAttachment = {
    Instigator = 0,
    Victim = 1,
    PreferVictimOverInstigator = 2,
    PreferInstigatorOverVictim = 3,
    EOverlapEffectsAttachment_MAX = 4,
}

---@enum EOverlapEffectsEvent
local EOverlapEffectsEvent = {
    BeginOverlap = 0,
    EndOverlap = 1,
    Hit = 2,
    Tick = 3,
    EOverlapEffectsEvent_MAX = 4,
}

---@enum EOverlapEffectsHandlerConditionLogic
local EOverlapEffectsHandlerConditionLogic = {
    And = 0,
    Or = 1,
    ExclusiveOr = 2,
    EOverlapEffectsHandlerConditionLogic_MAX = 3,
}

---@enum EOverlapEffectsHitPoint
local EOverlapEffectsHitPoint = {
    Default = 0,
    Instigator = 1,
    InstigatorCenter = 2,
    InstigatorBase = 3,
    InstigatorTop = 4,
    Victim = 5,
    VictimCenter = 6,
    VictimBase = 7,
    VictimTop = 8,
    Intersection = 9,
    EOverlapEffectsHitPoint_MAX = 10,
}

---@enum EUpdatePumpComponentMode
local EUpdatePumpComponentMode = {
    UPM_ALWAYS = 0,
    UPM_EDITORONLY = 1,
    UPM_GAMEONLY = 2,
    UPM_NEVER = 3,
    UPM_MAX = 4,
}

---@enum EWindSpeedOverlapEffectsMode
local EWindSpeedOverlapEffectsMode = {
    IndoorsAndOutdoors = 0,
    IndoorsOnly = 1,
    OutdoorsOnly = 2,
    EWindSpeedOverlapEffectsMode_MAX = 3,
}

