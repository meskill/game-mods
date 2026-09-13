---@meta

---@class UUI_BP_SavingIcon_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field hideAutoSave UWidgetAnimation
---@field showAutoSave UWidgetAnimation
---@field Houses UImage
---@field UseManualHide boolean
local UUI_BP_SavingIcon_C = {}

function UUI_BP_SavingIcon_C:StopLoopingSave() end
function UUI_BP_SavingIcon_C:StartLoopingSave() end
function UUI_BP_SavingIcon_C:HideSave() end
function UUI_BP_SavingIcon_C:ShowSave() end
function UUI_BP_SavingIcon_C:WidgetAnimationEvt_hideAutoSave_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_SavingIcon_C:WidgetAnimationEvt_showAutoSave_K2Node_WidgetAnimationEvent_1() end
---@param EntryPoint int32
function UUI_BP_SavingIcon_C:ExecuteUbergraph_UI_BP_SavingIcon(EntryPoint) end


