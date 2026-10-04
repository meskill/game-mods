---@meta

---@class UUI_BP_CreatureNurturingHUD_Socket_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SlideOut UWidgetAnimation
---@field SlideIn UWidgetAnimation
---@field beastManagement UCanvasPanel
---@field ButtonCallout UPhoenixRichTextBlock
---@field manageText UPhoenixTextBlock
local UUI_BP_CreatureNurturingHUD_Socket_C = {}

---@param Hide boolean
function UUI_BP_CreatureNurturingHUD_Socket_C:ForceHide(Hide) end
function UUI_BP_CreatureNurturingHUD_Socket_C:Construct() end
---@param EntryPoint int32
function UUI_BP_CreatureNurturingHUD_Socket_C:ExecuteUbergraph_UI_BP_CreatureNurturingHUD_Socket(EntryPoint) end


