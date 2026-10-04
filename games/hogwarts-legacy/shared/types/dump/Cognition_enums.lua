---@enum ECalloutActions
local ECalloutActions = {
    NOT_SET = 0,
    Action_Interact = 1,
    Action_Loot = 2,
    Menu_Pickup = 3,
    Action_Steal = 4,
    Action_Open = 5,
    Action_Close = 6,
    Action_Locked = 7,
    Action_Enter = 8,
    Action_Join = 9,
    Action_Use = 10,
    Action_Search = 11,
    Action_Sleep = 12,
    Action_Place = 13,
    Action_To = 14,
    Action_ReadMail = 15,
    Action_Sit = 16,
    Action_PickPlant = 17,
    Action_ForcePlant = 18,
    Action_Empty = 19,
    Action_Pet = 20,
    ActionID_Water = 21,
    ActionID_HarvestByproduct = 22,
    Action_LightTorch = 23,
    Action_WhisperPassword = 24,
    Action_Exit = 25,
    Action_TicklePear = 26,
    Action_Collect = 27,
    Action_Rotate = 28,
    Action_Unlock = 29,
    Action_Reveal = 30,
    Action_Roll = 31,
    Action_Travel = 32,
    Action_Wait = 33,
    Action_Begin = 34,
    Action_StealthTakedown = 35,
    Action_Identify = 36,
    Action_Inspect = 37,
    Action_Equip = 38,
    Action_Investigate = 39,
    Action_Start = 40,
    Action_Invoke = 41,
    Action_PlaceToken = 42,
    Action_Talk = 43,
    Action_View = 44,
    Action_Read = 45,
    Action_Dive = 46,
    Action_ViewPensieve = 47,
    ECalloutActions_MAX = 48,
}

---@enum ECalloutBlipType
local ECalloutBlipType = {
    Diamond = 0,
    Dot = 1,
    Door = 2,
    Vendor = 3,
    FastTravel = 4,
    ECalloutBlipType_MAX = 5,
}

---@enum ECalloutType
local ECalloutType = {
    Interact = 0,
    Interact_Blip_Action = 1,
    Interact_Blip_Action_Descriptor = 2,
    Interact_Blip_Descriptor = 3,
    Interact_NoBlip_Action = 4,
    ECalloutType_MAX = 5,
}

---@enum ECognitionBackgroundSetting
local ECognitionBackgroundSetting = {
    NotInBackground = 0,
    InBackgroundNoBest = 1,
    InBackgroundShowBest = 2,
    ECognitionBackgroundSetting_MAX = 3,
}

---@enum EProcessBestFlag
local EProcessBestFlag = {
    TargetSighted = 0,
    TargetLost = 1,
    EProcessBestFlag_MAX = 2,
}

---@enum ESocialCombatMode
local ESocialCombatMode = {
    AllModes = 0,
    Social = 1,
    Combat = 2,
    Adventure = 3,
    Duress = 4,
    Transfiguration = 5,
    ESocialCombatMode_MAX = 6,
}

