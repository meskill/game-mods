---@enum ECustomInterpType
local ECustomInterpType = {
    None = 0,
    Constant = 1,
    Interp = 2,
    EaseIn = 3,
    EaseOut = 4,
    EaseInOut = 5,
    ECustomInterpType_MAX = 6,
}

---@enum EFacialEmotion
local EFacialEmotion = {
    NONE = 0,
    ALARM = 1,
    AMUSEMENT = 2,
    ANGRY = 3,
    ANGUISH = 4,
    ANNOYANCE = 5,
    ANTICIPATION = 6,
    ANXIETY = 7,
    CONFUSED = 8,
    DELIGHT = 9,
    DISGUST = 10,
    FEAR = 11,
    HAPPY = 12,
    IMPRESSED = 13,
    NEUTRAL = 14,
    PACIFY = 15,
    SAD = 16,
    SICK = 17,
    SLEEP = 18,
    SURPRISE = 19,
    TRUST = 20,
    VALOR = 21,
    MAX = 22,
}

---@enum EFootPlantEnum
local EFootPlantEnum = {
    FOOTPLANT_NONE = 0,
    FOOTPLANT_LEFT = 1,
    FOOTPLANT_RIGHT = 2,
    FOOTPLANT_BOTH = 3,
    FOOTPLANT_UNAVAILABLE = 4,
    FOOTPLANT_MAX = 5,
}

---@enum EIsPlayer
local EIsPlayer = {
    IsPlayer = 0,
    IsNotPlayer = 1,
    EIsPlayer_MAX = 2,
}

---@enum EManagedFacialEmotionPriority
local EManagedFacialEmotionPriority = {
    AMBIENT = 0,
    MISSION = 1,
    MECHANIC = 2,
    ABLE = 3,
    ANIM = 4,
    SCENERIG_AMBIENT = 5,
    SCENERIG = 6,
    DIALOG = 7,
    EManagedFacialEmotionPriority_MAX = 8,
}

---@enum EManagedMovementModePriority
local EManagedMovementModePriority = {
    Lowest = 0,
    PassiveCinematic = 1,
    ActiveCinematic = 2,
    Highest = 3,
    EManagedMovementModePriority_MAX = 4,
}

---@enum EManagedPriority
local EManagedPriority = {
    Lowest = 0,
    System = 1,
    AmbientBehavior = 2,
    DynamicBehavior = 3,
    BackgroundCinematic = 4,
    ForegroundCinematic = 5,
    Highest = 6,
    EManagedPriority_MAX = 7,
}

---@enum EManagedVisibilityPriority
local EManagedVisibilityPriority = {
    Lowest = 0,
    NpcShutdown = 1,
    SceneRigDefault = 2,
    PersistentVisibility = 3,
    SeatFillerStartup = 4,
    AsyncSpawn = 5,
    OutOfView = 6,
    InViewVisibility = 7,
    HideTrigger = 8,
    VisibilityTimeWindow = 9,
    ForceHidden = 10,
    WanderAndHide = 11,
    HighestSystem = 12,
    PassiveCinematic = 13,
    ActiveCinematic = 14,
    Highest = 15,
    HardDestroyPriority = 16,
    EManagedVisibilityPriority_MAX = 17,
}

---@enum EStandardManagedPriority
local EStandardManagedPriority = {
    Lowest = 0,
    AblAbility = 1,
    NPC = 2,
    Teleport = 3,
    PassiveCinematic = 4,
    ActiveCinematic = 5,
    Highest = 6,
    Debug = 7,
    EStandardManagedPriority_MAX = 8,
}

---@enum ETwoBranches
local ETwoBranches = {
    EQUAL = 0,
    NOTEQUAL = 1,
    ETwoBranches_MAX = 2,
}

