---@meta

---@class UUI_BP_OutOfAreaNotification_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PulseCountdownText UWidgetAnimation
---@field hideNotification UWidgetAnimation
---@field PulseText UWidgetAnimation
---@field ShowNotification UWidgetAnimation
---@field countdown UPhoenixTextBlock
---@field notificationMessage UPhoenixTextBlock
---@field redScrim UImage
---@field isReadyForCountdown boolean
---@field HasCountdownStarted boolean
---@field CountTime int32
---@field currentCountTime int32
---@field CountdownTimer FTimerHandle
---@field DesiredActiveState boolean
local UUI_BP_OutOfAreaNotification_C = {}

function UUI_BP_OutOfAreaNotification_C:StopNotification() end
---@param NewTime float
function UUI_BP_OutOfAreaNotification_C:UpdateNotificationTime(NewTime) end
---@param ErrorMessage FString
---@param CountdownTime float
function UUI_BP_OutOfAreaNotification_C:StartNotification(ErrorMessage, CountdownTime) end
function UUI_BP_OutOfAreaNotification_C:WidgetAnimationEvt_showNotification_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_OutOfAreaNotification_C:Destruct() end
---@param EntryPoint int32
function UUI_BP_OutOfAreaNotification_C:ExecuteUbergraph_UI_BP_OutOfAreaNotification(EntryPoint) end


