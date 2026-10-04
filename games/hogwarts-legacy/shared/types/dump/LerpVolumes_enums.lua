---@enum ELerpVolumesApplyWorldContextMode
local ELerpVolumesApplyWorldContextMode = {
    SetRTPCs = 0,
    SendHermes = 1,
    SetNPCs = 2,
    SetMPCs = 3,
    ELerpVolumesApplyWorldContextMode_MAX = 4,
}

---@enum ELerpVolumesGetTagValueMode
local ELerpVolumesGetTagValueMode = {
    Default = 0,
    FinalValue = 1,
    FullList = 2,
    ELerpVolumesGetTagValueMode_MAX = 3,
}

---@enum ELerpVolumesInterpolantType
local ELerpVolumesInterpolantType = {
    Unknown = 0,
    Scalar = 1,
    Integer = 2,
    Vector = 3,
    UnitDirection = 4,
    Color = 5,
    Tag = 6,
    ELerpVolumesInterpolantType_MAX = 7,
}

---@enum ELerpVolumesTagValueMode
local ELerpVolumesTagValueMode = {
    FinalValue = 0,
    FullList = 1,
    ELerpVolumesTagValueMode_MAX = 2,
}

---@enum EVolumeCenterlineMode
local EVolumeCenterlineMode = {
    None = 0,
    XAxis = 1,
    YAxis = 2,
    ZAxis = 3,
    EVolumeCenterlineMode_MAX = 4,
}

