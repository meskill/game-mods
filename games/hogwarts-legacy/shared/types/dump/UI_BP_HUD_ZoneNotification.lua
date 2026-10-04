---@meta

---@class UUI_BP_HUD_ZoneNotification_C : UZoneNotification
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideNotification UWidgetAnimation
---@field ShowNotification_New UWidgetAnimation
---@field textBorder UBorder
local UUI_BP_HUD_ZoneNotification_C = {}

function UUI_BP_HUD_ZoneNotification_C:Construct() end
---@param PlaySound boolean
function UUI_BP_HUD_ZoneNotification_C:DisplayNotificationBP(PlaySound) end
function UUI_BP_HUD_ZoneNotification_C:HideNotificationBP() end
function UUI_BP_HUD_ZoneNotification_C:HideAnimationFinished() end
---@param EntryPoint int32
function UUI_BP_HUD_ZoneNotification_C:ExecuteUbergraph_UI_BP_HUD_ZoneNotification(EntryPoint) end


