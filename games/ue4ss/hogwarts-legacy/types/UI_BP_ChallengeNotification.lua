---@meta

---@class UUI_BP_ChallengeNotification_C : UNotificationWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NotificationIN UWidgetAnimation
---@field NotificationOUT UWidgetAnimation
---@field challengeIcon UImage
---@field CurrentCount UPhoenixTextBlock
---@field MaxCount UPhoenixTextBlock
---@field OutAnimationStarted FUI_BP_ChallengeNotification_COutAnimationStarted
---@field LifetimeHandle FTimerHandle
local UUI_BP_ChallengeNotification_C = {}

---@param NewCount int32
function UUI_BP_ChallengeNotification_C:IncrementNotification(NewCount) end
---@param ChallengeID FName
---@param Category FName
---@param CurrentCount int32
---@param MaxCount int32
function UUI_BP_ChallengeNotification_C:SetNotificationData(ChallengeID, Category, CurrentCount, MaxCount) end
function UUI_BP_ChallengeNotification_C:ClearKnowledgeFlag() end
function UUI_BP_ChallengeNotification_C:WidgetAnimationEvt_NotificationIN_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_ChallengeNotification_C:WidgetAnimationEvt_NotificationIN_K2Node_WidgetAnimationEvent_1() end
function UUI_BP_ChallengeNotification_C:ShowNotification() end
function UUI_BP_ChallengeNotification_C:WidgetAnimationEvt_NotificationOUT_K2Node_WidgetAnimationEvent_2() end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_ChallengeNotification_C:ChallengeNotificationIconLoaded(LoadedTexture, CallbackParam) end
function UUI_BP_ChallengeNotification_C:LifetimeComplete() end
---@param EntryPoint int32
function UUI_BP_ChallengeNotification_C:ExecuteUbergraph_UI_BP_ChallengeNotification(EntryPoint) end
function UUI_BP_ChallengeNotification_C:OutAnimationStarted__DelegateSignature() end


