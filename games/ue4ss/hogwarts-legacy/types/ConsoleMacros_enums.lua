---@enum EConsoleMacroCommandMode
local EConsoleMacroCommandMode = {
    Execute = 0,
    Restore = 1,
    Query = 2,
    EConsoleMacroCommandMode_MAX = 3,
}

---@enum EConsoleMacroCommandScope
local EConsoleMacroCommandScope = {
    CookedAndEditor = 0,
    CookedOnly = 1,
    EditorOnly = 2,
    EConsoleMacroCommandScope_MAX = 3,
}

---@enum EConsoleMacrosAutomationLevelType
local EConsoleMacrosAutomationLevelType = {
    ExactMatch = 0,
    PartialMatch = 1,
    EConsoleMacrosAutomationLevelType_MAX = 2,
}

---@enum EConsoleMacrosAutomationPhase
local EConsoleMacrosAutomationPhase = {
    OnBeginPlay = 0,
    OnEndPlay = 1,
    OnBeginPlayInEditor = 2,
    OnEndPlayInEditor = 3,
    OnEditorLevelOpen = 4,
    OnEditorLevelClose = 5,
    EConsoleMacrosAutomationPhase_MAX = 6,
}

---@enum EUserConsoleVariableBuilds
local EUserConsoleVariableBuilds = {
    Editor = 0,
    Debug = 1,
    Development = 2,
    Test = 3,
    Shipping = 4,
    EUserConsoleVariableBuilds_MAX = 5,
}

---@enum EUserConsoleVariableSpecialUsage
local EUserConsoleVariableSpecialUsage = {
    BlendDomain = 0,
    EnvironmentalGlobalsMPC = 1,
    EnvironmentalGlobalsNPC = 2,
    EUserConsoleVariableSpecialUsage_MAX = 3,
}

