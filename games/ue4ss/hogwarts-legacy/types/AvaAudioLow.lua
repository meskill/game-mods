---@meta

---@class FAvaAudioDialogueMetaData
---@field DurationSeconds float
---@field LipsyncPrerollSeconds float
---@field SocialSemanticEmotionHint int32
---@field EmotionHint EAvaAudioDialogueEmotionHint
---@field bIsLanguageSpecific boolean
---@field bIsEmote boolean
---@field bForceSubtitle boolean
---@field bSuppressSubtitle boolean
---@field bSuppressSubtitleCharacterName boolean
---@field MetaDataMap TMap<FString, FString>
local FAvaAudioDialogueMetaData = {}



---@class FAvaAudioPrepareDialogueSequenceResult
---@field Parameters TMap<FString, FString>
---@field MetaData FAvaAudioDialogueMetaData
---@field LineActor AActor
---@field LineActorID FName
local FAvaAudioPrepareDialogueSequenceResult = {}



---@class UAvaAudioLowBPLibrary : UBlueprintFunctionLibrary
local UAvaAudioLowBPLibrary = {}

---@param Param float
---@return float
function UAvaAudioLowBPLibrary:AvaAudioLowSampleFunction(Param) end


