---@enum EApplyModsResult
local EApplyModsResult = {
    OK = 0,
    Error_InstalledVersionNotFound = 1,
    Error_StagedVersionNotFound = 2,
    Error_ModStageFailed = 3,
    Error_ModUnstageFailed = 4,
    Error_ModConfigInvalid = 5,
    Error_RemoveExternalModFailed = 6,
    EApplyModsResult_MAX = 7,
}

