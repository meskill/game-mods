---@enum ECompositeLevelBoundsDraw
local ECompositeLevelBoundsDraw = {
    None = 0,
    OverallBounds = 1,
    ActorBounds = 2,
    LandscapeBounds = 3,
    LevelBoundsActors = 4,
    CalculatedActorBounds = 5,
    ECompositeLevelBoundsDraw_MAX = 6,
}

---@enum EGameFriendlyLevelNameFormat
local EGameFriendlyLevelNameFormat = {
    Game = 0,
    Raw = 1,
    GameAndRaw = 2,
    RawAndGame = 3,
    EGameFriendlyLevelNameFormat_MAX = 4,
}

---@enum ELevelBoundsBestHeuristic
local ELevelBoundsBestHeuristic = {
    SmallestVolume = 0,
    LargestVolume = 1,
    ClosestDistance = 2,
    FarthestDistance = 3,
    SmallestAreaXY = 4,
    LargestAreaXY = 5,
    First = 6,
    Oldest = 7,
    Youngest = 8,
    ELevelBoundsBestHeuristic_MAX = 9,
}

---@enum ELevelBoundsSource
local ELevelBoundsSource = {
    Actors = 0,
    Landscape = 1,
    AllowUnloaded = 2,
    ELevelBoundsSource_MAX = 3,
}

