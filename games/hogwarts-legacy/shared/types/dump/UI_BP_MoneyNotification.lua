---@meta

---@class UUI_BP_MoneyNotification_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimateOut UWidgetAnimation
---@field AnimateIn UWidgetAnimation
---@field UI_BP_MoneyBar UUI_BP_MoneyBar_C
---@field Duration float
---@field DurationHandle FTimerHandle
---@field CurrentAmount int32
---@field NotificationComplete FUI_BP_MoneyNotification_CNotificationComplete
---@field AnimatingOut FUI_BP_MoneyNotification_CAnimatingOut
local UUI_BP_MoneyNotification_C = {}

---@param AddVal int32
---@param Success boolean
function UUI_BP_MoneyNotification_C:Increment(AddVal, Success) end
---@param Amount int32
function UUI_BP_MoneyNotification_C:Show(Amount) end
function UUI_BP_MoneyNotification_C:WidgetAnimationEvt_AnimateIn_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_MoneyNotification_C:WidgetAnimationEvt_AnimateOut_K2Node_WidgetAnimationEvent_1() end
function UUI_BP_MoneyNotification_C:DurationComplete() end
---@param EntryPoint int32
function UUI_BP_MoneyNotification_C:ExecuteUbergraph_UI_BP_MoneyNotification(EntryPoint) end
function UUI_BP_MoneyNotification_C:AnimatingOut__DelegateSignature() end
function UUI_BP_MoneyNotification_C:NotificationComplete__DelegateSignature() end


