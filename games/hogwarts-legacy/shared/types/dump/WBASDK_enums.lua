---@enum EWBASDKError
local EWBASDKError = {
    Config_LoadFailed = 0,
    Promotion_NotReady = 1,
    Promotion_Unsupported = 2,
    Promotion_Disabled = 3,
    Promotion_AlreadyActive = 4,
    Promotion_Purchase_Failed = 5,
    EWBASDKError_MAX = 6,
}

---@enum EWBASDKInputIconType
local EWBASDKInputIconType = {
    AUTO = 0,
    KEYBOARD = 1,
    GAMEPAD_AUTO = 2,
    GAMEPAD_VALVE = 3,
    GAMEPAD_XB1 = 4,
    GAMEPAD_XSX = 5,
    GAMEPAD_PS4 = 6,
    GAMEPAD_PS5 = 7,
    GAMEPAD_SWITCH = 8,
    COUNT = 9,
    EWBASDKInputIconType_MAX = 10,
}

---@enum EWBASDKPromotionStatus
local EWBASDKPromotionStatus = {
    Ready = 0,
    NotReady = 1,
    Unavailable = 2,
    EWBASDKPromotionStatus_MAX = 3,
}

---@enum EWBASDKTakeoverFlags
local EWBASDKTakeoverFlags = {
    None = 0,
    Has_Audio = 1,
    EWBASDKTakeoverFlags_MAX = 2,
}

