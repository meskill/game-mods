---@meta

---@class UUI_BP_SpecialChallengeNotification_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideChallengeUnlock_Anim UWidgetAnimation
---@field ShowChallengeUnlock_Anim UWidgetAnimation
---@field challengeIcon UImage
---@field CompleteMissionName UPhoenixTextBlock
---@field pulseCloud UImage
---@field pulseRing UImage
---@field shieldSparks_1 UImage
---@field Duration float
---@field NotificationData TArray<FChallengeNotificationData>
---@field ChallengeName FString
local UUI_BP_SpecialChallengeNotification_C = {}

---@param ChallengeID FName
---@param TotalRequired int32
function UUI_BP_SpecialChallengeNotification_C:SetChallengeDisplayText(ChallengeID, TotalRequired) end
function UUI_BP_SpecialChallengeNotification_C:ClearNotification() end
function UUI_BP_SpecialChallengeNotification_C:HideChallengeUnlock() end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param TotalRequired int32
function UUI_BP_SpecialChallengeNotification_C:RequestChallengeUnlock(ChallengeID, ChallengeCategory, TotalRequired) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_SpecialChallengeNotification_C:IconLoaded(LoadedTexture, CallbackParam) end
function UUI_BP_SpecialChallengeNotification_C:WidgetAnimationEvt_ShowChallengeUnlock_Anim_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_SpecialChallengeNotification_C:WidgetAnimationEvt_HideChallengeUnlock_Anim_K2Node_WidgetAnimationEvent_1() end
---@param Caller UObject
function UUI_BP_SpecialChallengeNotification_C:OnShowNotification(Caller) end
function UUI_BP_SpecialChallengeNotification_C:OnInitialized() end
function UUI_BP_SpecialChallengeNotification_C:Construct() end
---@param EntryPoint int32
function UUI_BP_SpecialChallengeNotification_C:ExecuteUbergraph_UI_BP_SpecialChallengeNotification(EntryPoint) end


