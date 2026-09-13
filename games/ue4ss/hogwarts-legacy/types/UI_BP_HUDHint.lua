---@meta

---@class UUI_BP_HUDHint_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hint_Intro UWidgetAnimation
---@field Hint_Outro UWidgetAnimation
---@field HintText UPhoenixRichTextBlock
---@field TopOverlay UOverlay
---@field HintShown boolean
local UUI_BP_HUDHint_C = {}

function UUI_BP_HUDHint_C:ClearHint() end
---@param HintKey FString
---@param MaxDuration float
function UUI_BP_HUDHint_C:SetAndShowHint(HintKey, MaxDuration) end
function UUI_BP_HUDHint_C:WidgetAnimationEvt_Hint_Outro_K2Node_WidgetAnimationEvent_0() end
---@param MaxDuration float
function UUI_BP_HUDHint_C:ResetAutoHideTimer(MaxDuration) end
---@param EntryPoint int32
function UUI_BP_HUDHint_C:ExecuteUbergraph_UI_BP_HUDHint(EntryPoint) end


