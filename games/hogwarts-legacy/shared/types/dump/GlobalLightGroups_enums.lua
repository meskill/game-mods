---@enum EGlobalLightGroupsImportScheduleType
local EGlobalLightGroupsImportScheduleType = {
    Time = 0,
    Sun = 1,
    EGlobalLightGroupsImportScheduleType_MAX = 2,
}

---@enum EGlobalLightGroupsMaskLockState
local EGlobalLightGroupsMaskLockState = {
    Unlocked = 0,
    LockedOn = 1,
    LockedOff = 2,
    EGlobalLightGroupsMaskLockState_MAX = 3,
}

---@enum EGlobalLightGroupsRegionChangeOp
local EGlobalLightGroupsRegionChangeOp = {
    Add = 0,
    AddForceRefresh = 1,
    Removed = 2,
    EGlobalLightGroupsRegionChangeOp_MAX = 3,
}

---@enum EGlobalLightGroupsSunAngle
local EGlobalLightGroupsSunAngle = {
    FullBrightSky = 0,
    LowerLimbOnHorizon = 1,
    CenterOnHorizon = 2,
    UpperLimbOnHorizon = 3,
    CivilTwilight = 4,
    NauticalTwilight = 5,
    AstronomicalTwilight = 6,
    EGlobalLightGroupsSunAngle_MAX = 7,
}

---@enum EGlobalLightGroupsSunDirection
local EGlobalLightGroupsSunDirection = {
    Rise = 0,
    Set = 1,
    EGlobalLightGroupsSunDirection_MAX = 2,
}

---@enum EGlobalLightGroupsTimeSpanOnOffState
local EGlobalLightGroupsTimeSpanOnOffState = {
    TurnedOn = 0,
    TurnedOff = 1,
    EGlobalLightGroupsTimeSpanOnOffState_MAX = 2,
}

---@enum ELightOnOffFXTargetMode
local ELightOnOffFXTargetMode = {
    UseParentOnOff = 0,
    UseComponentOnOff = 1,
    ChildrenThatMatchParent = 2,
    ChildrenThatOpposeParent = 3,
    ELightOnOffFXTargetMode_MAX = 4,
}

---@enum ELightOnOffFXTargetType
local ELightOnOffFXTargetType = {
    ParentOnly = 0,
    ParentLightOnly = 1,
    ChildrenOnly = 2,
    ChildLightsOnly = 3,
    ParentAndChildren = 4,
    ParentAndChildLightsOnly = 5,
    ELightOnOffFXTargetType_MAX = 6,
}

