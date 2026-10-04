---@meta

---@class UUI_BP_TextNotificationPanel_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Container UVerticalBox
---@field DefaultTimeToLive float
---@field PendingNotifications TArray<FString>
local UUI_BP_TextNotificationPanel_C = {}

function UUI_BP_TextNotificationPanel_C:Construct() end
---@param NotificationText FString
function UUI_BP_TextNotificationPanel_C:AddNotification(NotificationText) end
---@param Caller UObject
function UUI_BP_TextNotificationPanel_C:OnDisplayTextTickerNotification(Caller) end
---@param EntryPoint int32
function UUI_BP_TextNotificationPanel_C:ExecuteUbergraph_UI_BP_TextNotificationPanel(EntryPoint) end


