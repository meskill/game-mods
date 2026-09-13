---@meta

---@class UUI_BP_ScreenFade_C : UScreenFadeWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeAnim UWidgetAnimation
---@field Image_0 UImage
---@field TargetColor FLinearColor
local UUI_BP_ScreenFade_C = {}

---@return float
function UUI_BP_ScreenFade_C:UI_GetCurrentFade() end
function UUI_BP_ScreenFade_C:CheckFadeFinished() end
function UUI_BP_ScreenFade_C:FadeOut() end
function UUI_BP_ScreenFade_C:FadeIn() end
function UUI_BP_ScreenFade_C:Construct() end
function UUI_BP_ScreenFade_C:Destruct() end
function UUI_BP_ScreenFade_C:UI_FadeOut() end
function UUI_BP_ScreenFade_C:UI_FadeIn() end
function UUI_BP_ScreenFade_C:WidgetAnimationEvt_FadeAnim_K2Node_WidgetAnimationEvent_1() end
---@param Opacity float
function UUI_BP_ScreenFade_C:UI_SetManualFade(Opacity) end
---@param TargetColor FLinearColor
function UUI_BP_ScreenFade_C:SetFadeColor(TargetColor) end
---@param EntryPoint int32
function UUI_BP_ScreenFade_C:ExecuteUbergraph_UI_BP_ScreenFade(EntryPoint) end


