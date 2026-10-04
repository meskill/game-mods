---@enum EGameLogicEditorPanel
local EGameLogicEditorPanel = {
    BoolVars = 0,
    Int32Vars = 1,
    Int32Props = 2,
    FloatVars = 3,
    FloatProps = 4,
    Expressions = 5,
    TimerVars = 6,
    EnumVars = 7,
    EnumPropz = 8,
    StringVars = 9,
    StringProps = 10,
    BitfieldVars = 11,
    BitfieldProps = 12,
    EGameLogicEditorPanel_MAX = 13,
}

---@enum EGameLogicElementSize
local EGameLogicElementSize = {
    Smallest = 0,
    Small = 1,
    Normal = 2,
    Large = 3,
    Largest = 4,
    MAX_SIZE = 5,
    EGameLogicElementSize_MAX = 6,
}

---@enum EGameLogicPanelOrientation
local EGameLogicPanelOrientation = {
    LeftSide = 0,
    Top = 1,
    TopRight = 2,
    Bottom = 3,
    EGameLogicPanelOrientation_MAX = 4,
}

---@enum EGameLogicRealmPrivacy
local EGameLogicRealmPrivacy = {
    Public = 0,
    Private = 1,
    EGameLogicRealmPrivacy_MAX = 2,
}

