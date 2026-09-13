---@enum EGameModsEvent
local EGameModsEvent = {
    EGameModsEvent_ViewRegister = 0,
    EGameModsEvent_FinishInstalling = 1,
    EGameModsEvent_Uninstalling = 2,
    EGameModsEvent_InstallingProgress = 3,
    EGameModsEvent_InitInstalling = 4,
    EGameModsEvent_InitUninstalling = 5,
    EGameModsEvent_AlreadyInstalled = 6,
    EGameModsEvent_FinishUpdating = 7,
    EGameModsEvent_SearchMods = 8,
    EGameModsEvent_MyMods = 9,
    EGameModsEvent_CancelInstalling = 10,
    EGameModsEvent_MAX = 11,
}

---@enum EInstallStatus
local EInstallStatus = {
    EInstallStatus_Default = 0,
    EInstallStatus_Installing = 1,
    EInstallStatus_Installed = 2,
    EInstallStatus_InstalledButNeedsUpdate = 3,
    EInstallStatus_Updating = 4,
    EInstallStatus_Uninstalling = 5,
    EInstallStatus_InstalledButNeedsUpdateMyMods = 6,
    EInstallStatus_MAX = 7,
}

---@enum ETryInstallModResult
local ETryInstallModResult = {
    Installed = 0,
    NotEnoughSpace = 1,
    Error = 2,
    ETryInstallModResult_MAX = 3,
}

---@enum EViewState
local EViewState = {
    Store = 0,
    ModPage = 1,
    ScreenShot = 2,
    Dropdown = 3,
    ServerMods = 4,
    Popup = 5,
    EViewState_MAX = 6,
}

