---@meta

---@class UUI_BP_ErrorMessage_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowErrorMessage UWidgetAnimation
---@field ErrorImage UImage
---@field ErrorMessage UPhoenixTextBlock
local UUI_BP_ErrorMessage_C = {}

---@param Key FString
---@param DisplayTime float
function UUI_BP_ErrorMessage_C:DisplayErrorMessage(Key, DisplayTime) end
function UUI_BP_ErrorMessage_C:Construct() end
---@param Caller UObject
---@param String FString
function UUI_BP_ErrorMessage_C:HermesDisplayErrorMessage(Caller, String) end
function UUI_BP_ErrorMessage_C:WidgetAnimationEvt_ShowErrorMessage_K2Node_WidgetAnimationEvent_0() end
---@param EntryPoint int32
function UUI_BP_ErrorMessage_C:ExecuteUbergraph_UI_BP_ErrorMessage(EntryPoint) end


