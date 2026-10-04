---@enum EAnimMechanicType
local EAnimMechanicType = {
    Undetermined = 0,
    Idle = 1,
    TurnStart = 2,
    MoveFwdLoop = 3,
    TurnStop = 4,
    Pivot = 5,
    ShortStep = 6,
    TurnInPlace = 7,
    StrafeStart = 8,
    StrafeLoop = 9,
    StrafeStop = 10,
    Jump = 11,
    Land = 12,
    EAnimMechanicType_MAX = 13,
}

---@enum EAnimSpeedType
local EAnimSpeedType = {
    Stopped = 0,
    Undetermined = 1,
    WalkSlow = 2,
    Walk = 3,
    Jog = 4,
    Sprint = 5,
    EAnimSpeedType_MAX = 6,
}

---@enum EAvaMotionWarpingModifierState
local EAvaMotionWarpingModifierState = {
    Waiting = 0,
    Active = 1,
    MarkedForRemoval = 2,
    Disabled = 3,
    EAvaMotionWarpingModifierState_MAX = 4,
}

---@enum EBasicMobilityFootState
local EBasicMobilityFootState = {
    Undetermined = 0,
    Left = 1,
    Right = 2,
    EBasicMobilityFootState_MAX = 3,
}

---@enum EClimbingLadderState
local EClimbingLadderState = {
    None = 0,
    Mount = 1,
    MountDown = 2,
    ClimbingLadder = 3,
    DescendingLadder = 4,
    Paused = 5,
    DismountTop = 6,
    DismountBottom = 7,
    MountJump = 8,
    EClimbingLadderState_MAX = 9,
}

---@enum EClimbingLedgeState
local EClimbingLedgeState = {
    None = 0,
    ClimbingLedge_StepUp = 1,
    ClimbingLedge_HalfM = 2,
    ClimbingLedge_1M = 3,
    ClimbingLedge_2M = 4,
    ClimbingLedge_3M = 5,
    ClimbingLedge_LandClimb = 6,
    ClimbingLedge_LandHands = 7,
    ClimbingLedge_LandHands_Outcrop = 8,
    ClimbingLedge_LandWaist = 9,
    ClimbingLedge_LandWaist_Outcrop = 10,
    ClimbingLedge_JumpHands = 11,
    ClimbingLedge_JumpHandsPullUp = 12,
    ClimbingLedge_FallHands = 13,
    ClimbingLedge_Leapfrog = 14,
    ClimbingLedge_Swim = 15,
    NUM = 16,
    EClimbingLedgeState_MAX = 17,
}

---@enum EFacingTargetMode
local EFacingTargetMode = {
    None = 0,
    TargetLocation = 1,
    TargetActor = 2,
    CameraDirection = 3,
    EFacingTargetMode_MAX = 4,
}

---@enum EJumpingType
local EJumpingType = {
    None = 0,
    IdleJump = 1,
    WalkingJump = 2,
    JoggingJump = 3,
    SprintingJump = 4,
    Falling = 5,
    Dropping = 6,
    ClimbFail = 7,
    JumpVault = 8,
    JumpLedge2Vault = 9,
    LadderSlide = 10,
    LadderJumpBottom = 11,
    Buttslide = 12,
    SwimDive = 13,
    SwimHighDive = 14,
    JogJumpDown = 15,
    SprintJumpDown = 16,
    EJumpingType_MAX = 17,
}

---@enum ELandingType
local ELandingType = {
    None = 0,
    IdleLand = 1,
    WalkingLand = 2,
    JoggingLand = 3,
    SprintingLand = 4,
    LadderSlideLand = 5,
    LadderJumpBottomLand = 6,
    ELandingType_MAX = 7,
}

---@enum ELastWandCastState
local ELastWandCastState = {
    None = 0,
    Base = 1,
    FromLeft = 2,
    FromRight = 3,
    Transition = 4,
    LeftFoot = 5,
    LeftFoot_Transition = 6,
    ELastWandCastState_MAX = 7,
}

---@enum ELookAtTargetMode
local ELookAtTargetMode = {
    None = 0,
    TargetLocation = 1,
    TargetActor = 2,
    CameraDirection = 3,
    ELookAtTargetMode_MAX = 4,
}

---@enum EMobilityActionState
local EMobilityActionState = {
    IsIdle = 0,
    IsWalking = 1,
    IsJogging = 2,
    IsSprinting = 3,
    IsJumping = 4,
    IsFalling = 5,
    IsSideStepping = 6,
    EMobilityActionState_MAX = 7,
}

---@enum EMobilityModeState
local EMobilityModeState = {
    Invalid = 0,
    FreeRoam = 1,
    FreeRoamCombat = 2,
    Strafe = 3,
    StrafeCombat = 4,
    Crawling = 5,
    StrafeCombatAttack = 6,
    StrafeCombatAttack2 = 7,
    StrafeCombatAttack3 = 8,
    Combat = 9,
    Num_MobilityModes = 10,
    EMobilityModeState_MAX = 11,
}

---@enum EMotionWarpRotationType
local EMotionWarpRotationType = {
    Default = 0,
    Facing = 1,
    EMotionWarpRotationType_MAX = 2,
}

---@enum EMovementSensorType
local EMovementSensorType = {
    BlockingCollision = 0,
    JumpOn = 1,
    JumpDown = 2,
    JumpOver = 3,
    Landing = 4,
    GroundHit = 5,
    None = 6,
    EMovementSensorType_MAX = 7,
}

---@enum EMovementSuspensionPriority
local EMovementSuspensionPriority = {
    Lowest = 0,
    SE_RenderShutdown = 1,
    NPC_Shutdown = 2,
    StationEnter = 3,
    BroomFlight = 4,
    PassiveCinematic = 5,
    ActiveCinematic = 6,
    Highest = 7,
    EMovementSuspensionPriority_MAX = 8,
}

---@enum EPreWandCastState
local EPreWandCastState = {
    None = 0,
    FromLeft = 1,
    FromRight = 2,
    EPreWandCastState_MAX = 3,
}

---@enum ESpeedModifierType
local ESpeedModifierType = {
    None = 0,
    SprintFromButton = 1,
    SprintFromKeyboard = 2,
    ESpeedModifierType_MAX = 3,
}

---@enum EStairsDirectionState
local EStairsDirectionState = {
    None = 0,
    GoingDown = 1,
    GoingUp = 2,
    EStairsDirectionState_MAX = 3,
}

---@enum EStairsOrientationState
local EStairsOrientationState = {
    None = 0,
    StairsLeft = 1,
    StairsRight = 2,
    EStairsOrientationState_MAX = 3,
}

---@enum EStairsState
local EStairsState = {
    None = 0,
    OnStairs = 1,
    OnSlopes = 2,
    EStairsState_MAX = 3,
}

---@enum ETargetID
local ETargetID = {
    None = 0,
    LowestPriority = 1,
    AimModeFace = 2,
    LockOnTarget = 3,
    FocusTriggerOpenWorld = 4,
    FocusTriggerOtherNPC = 5,
    FocusTriggerPlayer = 6,
    FocusTriggerWorldEvent = 7,
    LookAtDesiredDirection = 8,
    LookAtInteractTargetsBlip = 9,
    LookAtAutoTargets = 10,
    LookAtInteractTargets = 11,
    LookAtTargetsOfInterest = 12,
    LookAtDanger = 13,
    TargetOfInterest = 14,
    TemporaryTarget = 15,
    ImpactTarget = 16,
    LootTarget = 17,
    AimMode = 18,
    ChannelSpell = 19,
    ConjureSpell = 20,
    ProtegoTarget = 21,
    HighPriority = 22,
    HighestPriority = 23,
    ETargetID_MAX = 24,
}

---@enum ETargetMethod
local ETargetMethod = {
    None = 0,
    Replace = 1,
    Stack = 2,
    ETargetMethod_MAX = 3,
}

---@enum ETargetSpeedMode
local ETargetSpeedMode = {
    None = 0,
    IsIdling = 1,
    IsSlowWalking = 2,
    IsWalking = 3,
    IsWalkingOnly = 4,
    IsFastWalking = 5,
    IsFastWalkingOnly = 6,
    IsJogging = 7,
    IsJoggingOnly = 8,
    IsSprinting = 9,
    ETargetSpeedMode_MAX = 10,
}

---@enum ETargetSpeedPriority
local ETargetSpeedPriority = {
    None = 0,
    LowestPriority = 1,
    FromWaterVolume = 2,
    FromMechanic = 3,
    FromReaction = 4,
    FromTrigger = 5,
    HighestPriority = 6,
    ETargetSpeedPriority_MAX = 7,
}

---@enum ETargetType
local ETargetType = {
    None = 0,
    Actor = 1,
    Location = 2,
    Camera = 3,
    DesiredDirection = 4,
    StaticDirection = 5,
    Custom = 6,
    ETargetType_MAX = 7,
}

---@enum EWandCastType
local EWandCastType = {
    None = 0,
    LightAttack = 1,
    HeavyAttack = 2,
    MeleeAttack = 3,
    ComboFinisherAttack = 4,
    EWandCastType_MAX = 5,
}

