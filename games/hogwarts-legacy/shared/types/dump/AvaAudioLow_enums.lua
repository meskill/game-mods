---@enum EAvaAudioDialogueConditionFailedLineHandling
local EAvaAudioDialogueConditionFailedLineHandling = {
    CFH_Suppress_Display = 0,
    CFH_Show_Disabled_Unknown_Reason = 1,
    CFH_Show_Disabled_Not_Enough_Money = 2,
    CFH_Show_Disabled_Social_Capital_Too_Low = 3,
    CFH_Show_Disabled_Faction_Capital_Too_Low = 4,
    CFH_Show_Disabled_Knowledge_Too_Low = 5,
    CFH_Show_Disabled_Curriculum_Level_Too_Low = 6,
    CFH_Show_Disabled_Missing_Inventory = 7,
    CFH_Show_Disabled_Not_Equipped = 8,
    CFH_Show_Disabled_SanctElf_Task_Cooldown = 9,
    CFH_MAX = 10,
}

---@enum EAvaAudioDialogueEmotionHint
local EAvaAudioDialogueEmotionHint = {
    DEH_None = 0,
    DEH_Alarm = 1,
    DEH_Amusement = 2,
    DEH_Angry = 3,
    DEH_Anguish = 4,
    DEH_Annoyance = 5,
    DEH_Anticipation = 6,
    DEH_Anxiety = 7,
    DEH_Confused = 8,
    DEH_Dead = 9,
    DEH_Delight = 10,
    DEH_Disgust = 11,
    DEH_Fear = 12,
    DEH_Happy = 13,
    DEH_Impressed = 14,
    DEH_Neutral = 15,
    DEH_Pacify = 16,
    DEH_Sad = 17,
    DEH_Sick = 18,
    DEH_Sleep = 19,
    DEH_Surprise = 20,
    DEH_Trust = 21,
    DEH_Valor = 22,
    DEH_MAX = 23,
}

---@enum EAvaAudioDialogueMenuItemType
local EAvaAudioDialogueMenuItemType = {
    MIT_None = 0,
    MIT_Info = 1,
    MIT_InfoHub = 2,
    MIT_StraightPath = 3,
    MIT_Special = 4,
    MIT_BackTo = 5,
    MIT_Exit = 6,
    MIT_MainMission = 7,
    MIT_SideMission = 8,
    MIT_Assignment = 9,
    MIT_Conversation = 10,
    MIT_Vendor = 11,
    MIT_MAX = 12,
}

