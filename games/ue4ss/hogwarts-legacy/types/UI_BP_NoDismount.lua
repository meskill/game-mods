---@meta

---@class UUI_BP_NoDismount_C : UNoMountHUDBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field fade UWidgetAnimation
---@field NoDismount UImage
---@field NoFly UImage
---@field Root UCanvasPanel
local UUI_BP_NoDismount_C = {}

function UUI_BP_NoDismount_C:GetIcon() end
---@param CanDismount boolean
---@param CanFly boolean
function UUI_BP_NoDismount_C:SetIconVisible(CanDismount, CanFly) end
function UUI_BP_NoDismount_C:Construct() end
function UUI_BP_NoDismount_C:WidgetAnimationEvt_Fade_K2Node_WidgetAnimationEvent_0() end
---@param Show boolean
function UUI_BP_NoDismount_C:OnUseStateChanged(Show) end
---@param CanDismount boolean
---@param CanFly boolean
function UUI_BP_NoDismount_C:HideNoDismount(CanDismount, CanFly) end
---@param EntryPoint int32
function UUI_BP_NoDismount_C:ExecuteUbergraph_UI_BP_NoDismount(EntryPoint) end


