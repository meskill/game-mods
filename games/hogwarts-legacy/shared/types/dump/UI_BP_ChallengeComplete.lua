---@meta

---@class UUI_BP_ChallengeComplete_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideChallengeUnlock_Anim UWidgetAnimation
---@field ShowChallengeUnlock_Anim UWidgetAnimation
---@field challengeIcon UImage
---@field CompleteMissionName UPhoenixTextBlock
---@field pulseCloud UImage
---@field pulseRing UImage
---@field shieldCloud UImage
---@field shieldSparks_1 UImage
---@field Duration float
---@field NotificationData TArray<FChallengeNotificationData>
local UUI_BP_ChallengeComplete_C = {}

function UUI_BP_ChallengeComplete_C:SequenceEvent__ENTRYPOINTUI_BP_ChallengeComplete_2() end
function UUI_BP_ChallengeComplete_C:SequenceEvent__ENTRYPOINTUI_BP_ChallengeComplete_1() end
function UUI_BP_ChallengeComplete_C:SequenceEvent__ENTRYPOINTUI_BP_ChallengeComplete_0() end
---@param ChallengeID FName
---@param TotalRequired int32
function UUI_BP_ChallengeComplete_C:SetChallengeDisplayText(ChallengeID, TotalRequired) end
function UUI_BP_ChallengeComplete_C:ClearNotification() end
function UUI_BP_ChallengeComplete_C:PlayHideAnimation() end
function UUI_BP_ChallengeComplete_C:IntroAnimationStart() end
function UUI_BP_ChallengeComplete_C:IntroAnimationEnd() end
function UUI_BP_ChallengeComplete_C:OutroAnimationEnded() end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedTier int32
---@param TotalTiers int32
---@param TotalInstancesForLevel int32
function UUI_BP_ChallengeComplete_C:RequestChallengeComplete(ChallengeID, ChallengeCategory, CompletedTier, TotalTiers, TotalInstancesForLevel) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_ChallengeComplete_C:IconLoaded(LoadedTexture, CallbackParam) end
function UUI_BP_ChallengeComplete_C:WidgetAnimationEvt_ShowChallengeUnlock_Anim_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_ChallengeComplete_C:WidgetAnimationEvt_HideChallengeUnlock_Anim_K2Node_WidgetAnimationEvent_1() end
---@param Caller UObject
function UUI_BP_ChallengeComplete_C:OnShowNotification(Caller) end
function UUI_BP_ChallengeComplete_C:OnInitialized() end
---@param EntryPoint int32
function UUI_BP_ChallengeComplete_C:ExecuteUbergraph_UI_BP_ChallengeComplete(EntryPoint) end


