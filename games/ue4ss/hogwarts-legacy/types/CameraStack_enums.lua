---@enum ECameraStackAnimationFrame
local ECameraStackAnimationFrame = {
    World = 0,
    RelativeToTarget = 1,
    RelativeToTargetInitialTransform = 2,
    RelativeToTargetWorldRotation = 3,
    RelativeToCameraYaw = 4,
    RelativeToCameraRotation = 5,
    Additive = 6,
    RelativeToSecondaryTarget = 7,
    ECameraStackAnimationFrame_MAX = 8,
}

---@enum ECameraStackAnimationLoopMode
local ECameraStackAnimationLoopMode = {
    Loop = 0,
    Remove = 1,
    Pause = 2,
    ECameraStackAnimationLoopMode_MAX = 3,
}

---@enum ECameraStackBehaviorFilterFlags
local ECameraStackBehaviorFilterFlags = {
    DontListInactiveBehaviors = 0,
    ListBehaviorsAboveCoreBehaviors = 1,
    ECameraStackBehaviorFilterFlags_MAX = 2,
}

---@enum ECameraStackBehaviorSorting
local ECameraStackBehaviorSorting = {
    Oldest = 0,
    Newest = 1,
    Bottommost = 2,
    Topmost = 3,
    ECameraStackBehaviorSorting_MAX = 4,
}

---@enum ECameraStackLookAtStrength
local ECameraStackLookAtStrength = {
    None = 0,
    SoftPitchHint = 1,
    SoftHint = 2,
    Strong = 3,
    StrongOverTheShoulder = 4,
    PlayerInitiated = 5,
    NUM = 6,
    ECameraStackLookAtStrength_MAX = 7,
}

---@enum ECameraStackOperationInsertLocation
local ECameraStackOperationInsertLocation = {
    TopOfStack = 0,
    TopOfBaseStack = 1,
    BeforeBehavior = 2,
    AfterBehavior = 3,
    ECameraStackOperationInsertLocation_MAX = 4,
}

---@enum ECameraStackResetType
local ECameraStackResetType = {
    NoReset = 0,
    FullReset = 1,
    CurrentCameraDirection = 2,
    CurrentCameraYawAndDefaultPitch = 3,
    LookAtLocation = 4,
    FixedArmRotation = 5,
    FullResetWithOffset = 6,
    ECameraStackResetType_MAX = 7,
}

---@enum ECameraStackSplineType
local ECameraStackSplineType = {
    LookAheadSpline = 0,
    RailCameraSpline = 1,
    RailTargetSpline = 2,
    None = 3,
    ECameraStackSplineType_MAX = 4,
}

---@enum ECameraStackVolumeOperation
local ECameraStackVolumeOperation = {
    AddOnTop = 0,
    InsertBefore = 1,
    InsertAfter = 2,
    Replace = 3,
    ECameraStackVolumeOperation_MAX = 4,
}

---@enum ELastCameraInput
local ELastCameraInput = {
    None = 0,
    Look = 1,
    MouseLook = 2,
    Tilt = 3,
    ELastCameraInput_MAX = 4,
}

