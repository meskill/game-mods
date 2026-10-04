---@enum AnimationMatchFlags
local AnimationMatchFlags = {
    MATCH_FIRST_FRAME = 0,
    MATCH_LAST_FRAME = 1,
    MATCH_MAX = 2,
}

---@enum AnimationValidatedInWorld
local AnimationValidatedInWorld = {
    INWORLD_UNTESTED = 0,
    INWORLD_OBSTRUCTED = 1,
    INWORLD_VALIDATED = 2,
    INWORLD_MAX = 3,
}

---@enum EAnimTrackPlaybackRange
local EAnimTrackPlaybackRange = {
    FullClipRange = 0,
    StartEndOffsets = 1,
    StartEndFractions = 2,
    StartOffsetWithDuration = 3,
    EAnimTrackPlaybackRange_MAX = 4,
}

---@enum EAnimTrackPlaybackSpeed
local EAnimTrackPlaybackSpeed = {
    NaturalSpeed = 0,
    UseForcedDuration = 1,
    UseForcedPlayRate = 2,
    EAnimTrackPlaybackSpeed_MAX = 3,
}

---@enum EAnimTrackRootMode
local EAnimTrackRootMode = {
    CompletelyIgnoreRoot = 0,
    EnableRootMotion = 1,
    KeepRootAnimationWithoutRootMotion = 2,
    UseContentSetting = 3,
    EAnimTrackRootMode_MAX = 4,
}

---@enum EAnimTypeEnum
local EAnimTypeEnum = {
    FACEFX = 0,
    SPEECHGRAPHICS = 1,
    FACEWARE = 2,
    EAnimTypeEnum_MAX = 3,
}

---@enum EAnimationDirectionSource
local EAnimationDirectionSource = {
    Gameplay = 0,
    TargetTracker = 1,
    PickupObject = 2,
    CharacterOptions = 3,
    SceneRig = 4,
    SceneRigActive = 5,
    Highest = 6,
    SourceCount = 7,
    EAnimationDirectionSource_MAX = 8,
}

---@enum EAnimationDirections
local EAnimationDirections = {
    MovingDirection = 0,
    FacingDirection = 1,
    AimingDirection = 2,
    LookingDirection = 3,
    GazingDirection = 4,
    kDirectionCount = 5,
    EAnimationDirections_MAX = 6,
}

---@enum EAnimationRequestLayerBlendType
local EAnimationRequestLayerBlendType = {
    Replacement = 0,
    Additive = 1,
    BlendAndReplace = 2,
    BlendAndAdd = 3,
    Modify = 4,
    EAnimationRequestLayerBlendType_MAX = 5,
}

---@enum EAxisMapping
local EAxisMapping = {
    PositiveX = 0,
    NegativeX = 1,
    PositiveY = 2,
    NegativeY = 3,
    PositiveZ = 4,
    NegativeZ = 5,
    EAxisMapping_MAX = 6,
}

---@enum EBoneEvaluationRootMode
local EBoneEvaluationRootMode = {
    UseContentSetting = 0,
    IgnoreRoot = 1,
    IncludeRoot = 2,
    EBoneEvaluationRootMode_MAX = 3,
}

---@enum ECameraFixupLayer
local ECameraFixupLayer = {
    Lowest = 0,
    Passive = 1,
    Active = 2,
    Highest = 3,
    ECameraFixupLayer_MAX = 4,
}

---@enum EComponentToUse
local EComponentToUse = {
    RootComponent = 0,
    FirstFoundMesh = 1,
    EComponentToUse_MAX = 2,
}

---@enum EConversationPreset_LocationDistanceCheckType
local EConversationPreset_LocationDistanceCheckType = {
    CheckAll = 0,
    IdealOnly = 1,
    NearOnly = 2,
    TooCloseOnly = 3,
    EConversationPreset_MAX = 4,
}

---@enum EConversationPreset_ProximityType
local EConversationPreset_ProximityType = {
    Ideal = 0,
    Near = 1,
    TooClose = 2,
    EConversationPreset_MAX = 3,
}

---@enum EExternalActorRole
local EExternalActorRole = {
    NONE = 0,
    Foreground = 1,
    Background = 2,
    Extra = 3,
    EExternalActorRole_MAX = 4,
}

---@enum EIKDriver_GroundAdjustment_TraceShape
local EIKDriver_GroundAdjustment_TraceShape = {
    Line = 0,
    Box = 1,
    Sphere = 2,
    Capsule = 3,
    EIKDriver_GroundAdjustment_MAX = 4,
}

---@enum EManagedEyeStatePriority
local EManagedEyeStatePriority = {
    EMOTION = 0,
    CHARACTEROPTIONS = 1,
    SCENERIG = 2,
    SCENERIG_ACTIVE = 3,
    DIALOG = 4,
    EManagedEyeStatePriority_MAX = 5,
}

---@enum EManagedFacialAnimationPriority
local EManagedFacialAnimationPriority = {
    MECHANIC = 0,
    ABLE = 1,
    ANIM = 2,
    EManagedFacialAnimationPriority_MAX = 3,
}

---@enum EOrientationTargetKind
local EOrientationTargetKind = {
    Direction = 0,
    Location = 1,
    EOrientationTargetKind_MAX = 2,
}

---@enum EOrientationTargetKind2
local EOrientationTargetKind2 = {
    Direction = 0,
    Location = 1,
    EOrientationTargetKind2_MAX = 2,
}

---@enum ESplineIKBoneAxis
local ESplineIKBoneAxis = {
    None = 0,
    X = 1,
    Y = 2,
    Z = 3,
    ESplineIKBoneAxis_MAX = 4,
}

---@enum FCEShape
local FCEShape = {
    Line = 0,
    Box = 1,
    Sphere = 2,
    Capsule = 3,
    FCEShape_MAX = 4,
}

---@enum FCPMovementType
local FCPMovementType = {
    Ignore = 0,
    None = 1,
    Upward = 2,
    Downward = 3,
    FCPMovementType_MAX = 4,
}

---@enum FCPSupportType
local FCPSupportType = {
    Ignore = 0,
    None = 1,
    Stairs = 2,
    Slope = 3,
    FCPSupportType_MAX = 4,
}

---@enum GazeStatesEnum
local GazeStatesEnum = {
    RANDOM_BY_WEIGHT = 0,
    CENTRAL_FOCUS = 1,
    INTERNAL_MEMORY_NW = 2,
    AUDITORY_MEMORY_W = 3,
    EMOTIONAL_MEMORY_SW = 4,
    VISUAL_CONSTRUCTION_NE = 5,
    AUDITORY_CONSTRUCTION_E = 6,
    BODY_SENSATION_RECALL_SE = 7,
    SMELL_N = 8,
    TASTE_S = 9,
    GazeStatesEnum_MAX = 10,
}

