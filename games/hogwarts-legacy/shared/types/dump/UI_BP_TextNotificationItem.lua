---@meta

---@class UUI_BP_TextNotificationItem_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideNotification UWidgetAnimation
---@field ShowNotification UWidgetAnimation
---@field NotificationText UPhoenixTextBlock
---@field TimeToLive float
---@field CurrentLifespan float
---@field TextKey FString
---@field IsCompleted boolean
local UUI_BP_TextNotificationItem_C = {}

---@param newText FString
function UUI_BP_TextNotificationItem_C:SetText(newText) end
function UUI_BP_TextNotificationItem_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_TextNotificationItem_C:Tick(MyGeometry, InDeltaTime) end
---@param NotificationText FString
---@param TimeToLive float
function UUI_BP_TextNotificationItem_C:Initialize(NotificationText, TimeToLive) end
function UUI_BP_TextNotificationItem_C:WidgetAnimationEvt_hideNotification_K2Node_WidgetAnimationEvent_0() end
---@param EntryPoint int32
function UUI_BP_TextNotificationItem_C:ExecuteUbergraph_UI_BP_TextNotificationItem(EntryPoint) end


