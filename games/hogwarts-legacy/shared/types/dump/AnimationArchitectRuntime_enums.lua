---@enum ArchitectType
local ArchitectType = {
    ANIMATION_ARCHITECT = 0,
    INTERACTION_ARCHITECT = 1,
    SOUND_ARCHITECT = 2,
    STATION_ARCHITECT = 3,
    OBJECT_ARCHITECT = 4,
    ArchitectType_MAX = 5,
}

---@enum EAsyncLoadAnimationState
local EAsyncLoadAnimationState = {
    NOT_REQUESTED = 0,
    REQUEST_IN_PROGRESS = 1,
    REQUEST_COMPLETED = 2,
    EAsyncLoadAnimationState_MAX = 3,
}

---@enum EInteractionProject
local EInteractionProject = {
    Reactions = 0,
    Creatures = 1,
    NPC = 2,
    EInteractionProject_MAX = 3,
}

---@enum TagsChangedEvent
local TagsChangedEvent = {
    TagAdded = 0,
    TagRemoved = 1,
    TagsChangedEvent_MAX = 2,
}

