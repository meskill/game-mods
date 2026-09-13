---@enum EImpactReactionStrength
local EImpactReactionStrength = {
    None = 0,
    Hitch = 1,
    Knockdown = 2,
    Levioso = 3,
    DeathBlows = 4,
    Slam = 5,
    EImpactReactionStrength_MAX = 6,
}

---@enum EPhysicsVirtualForceApplication
local EPhysicsVirtualForceApplication = {
    PartialBodyOnly = 0,
    FullBodyOnly = 1,
    Always = 2,
    Never = 3,
    EPhysicsVirtualForceApplication_MAX = 4,
}

---@enum ERagdollBodyLineUprightEnum
local ERagdollBodyLineUprightEnum = {
    RBLUE_SpineLineUpright = 0,
    RBLUE_ShoulderLineUpright = 1,
    RBLUE_HipLineUpright = 2,
    RBLUE_ChestUpright = 3,
    RBLUE_PelvisUpright = 4,
    RBLUE_MAX = 5,
}

---@enum ERagdollCOMLocationDrivingMode
local ERagdollCOMLocationDrivingMode = {
    NoDriving = 0,
    DriveToCapsuleLocation = 1,
    DriveToCapsuleHeight = 2,
    DriveToCapsuleLocationAndKeepMoving = 3,
    DriveToCapsuleHorizontalLocation = 4,
    DampVelocity = 5,
    ERagdollCOMLocationDrivingMode_MAX = 6,
}

---@enum ERagdollCOMRotationDrivingMode
local ERagdollCOMRotationDrivingMode = {
    NoDriving = 0,
    DriveToCapsuleRotation = 1,
    DriveToKeepUpright = 2,
    ERagdollCOMRotationDrivingMode_MAX = 3,
}

---@enum ERagdollDriveAnimEnum
local ERagdollDriveAnimEnum = {
    DriveHoldPriorLastPose = 0,
    DriveKeepPrior = 1,
    DriveToAnim = 2,
    DriveToGetupPose = 3,
    ERagdollDriveAnimEnum_MAX = 4,
}

---@enum ERagdollPoseDrivingMode
local ERagdollPoseDrivingMode = {
    Strong = 0,
    Weak = 1,
    Inactive = 2,
    Dead = 3,
    Petrified = 4,
    ERagdollPoseDrivingMode_MAX = 5,
}

---@enum ERagdollSensoryBehaviorEnum
local ERagdollSensoryBehaviorEnum = {
    RSBE_CurrentlyActive = 0,
    RSBE_PriorActive = 1,
    RSBE_HadActive = 2,
    RSBE_MAX = 3,
}

---@enum ERagdollSensoryRangeValueEnum
local ERagdollSensoryRangeValueEnum = {
    RSRVE_HeightAboveGround = 0,
    RSRVE_Velocity = 1,
    RSRVE_HorizontalVelocity = 2,
    RSRVE_VerticalVelocity = 3,
    RSRVE_TotalTimeRagdolling = 4,
    RSRVE_TimeOnGround = 5,
    RSRVE_TimeInAir = 6,
    RSRVE_TimeHovering = 7,
    RSRVE_TimeGetupObstructed = 8,
    RSRVE_TimeInCurBehavior = 9,
    RSRVE_TimeDead = 10,
    RSRVE_TimeToImminentCollision = 11,
    RSRVE_TimeInCurAudioBehavior = 12,
    RSRVE_LastNavmeshSeperation = 13,
    RSRVE_MAX = 14,
}

---@enum ERagdollSensoryStatusValueEnum
local ERagdollSensoryStatusValueEnum = {
    RSSVE_OnGround = 0,
    RSSVE_InAir = 1,
    RSSVE_Hovering = 2,
    RSSVE_Dead = 3,
    RSSVE_GetupObstructed = 4,
    RSSVE_NearDeathKneeling = 5,
    RSSVE_Frozen = 6,
    RSSVE_OnFire = 7,
    RSSVE_Charred = 8,
    RSSVE_Petrified = 9,
    RSSVE_Resurrecting = 10,
    RSSVE_MAX = 11,
}

