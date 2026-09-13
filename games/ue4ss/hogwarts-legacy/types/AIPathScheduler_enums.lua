---@enum EBehaviorState
local EBehaviorState = {
    Simulated = 0,
    Restarting = 1,
    Alive = 2,
    Reacting_MoveToStation = 3,
    Reacting_MoveToSpline = 4,
    Reacting = 5,
    Dormant = 6,
    Paused = 7,
    WalkToStation = 8,
    WalkToSpline = 9,
    RefreshSplineData = 10,
    Spawning = 11,
    Destroyed = 12,
    RenderShutdown = 13,
    FormGroup = 14,
    Transferred = 15,
    EBehaviorState_MAX = 16,
}

---@enum EHoboType
local EHoboType = {
    AnyType = 0,
    DarkWizards = 1,
    Ghosts = 2,
    Students = 3,
    TownsPeople = 4,
    HouseElf = 5,
    Authority = 6,
    Worker = 7,
    Child = 8,
    YoungStudent = 9,
    AzkabanPrisoner = 10,
    Custom = 11,
    EHoboType_MAX = 12,
}

---@enum EHouseAndGender
local EHouseAndGender = {
    Any = 0,
    Male = 1,
    Female = 2,
    Gryffindor = 3,
    Hufflepuff = 4,
    Ravenclaw = 5,
    Slytherin = 6,
    EHouseAndGender_MAX = 7,
}

---@enum ETagType
local ETagType = {
    TagNone = 0,
    TagBranch = 1,
    TagStation = 2,
    ETagType_MAX = 3,
}

---@enum ETrafficFlow
local ETrafficFlow = {
    Forward = 0,
    Backwards = 1,
    Bidirectional = 2,
    Blocked = 3,
    Random = 4,
    ETrafficFlow_MAX = 5,
}

