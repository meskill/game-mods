---@meta

---@class UUI_BP_Oppugno_Indicator_C : UUserWidget_LockOnReticle
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ButtonPrompt UPhoenixRichTextBlock
local UUI_BP_Oppugno_Indicator_C = {}

function UUI_BP_Oppugno_Indicator_C:Construct() end
---@param Caller UObject
---@param int int32
function UUI_BP_Oppugno_Indicator_C:ShowButtonGraphicsFlagChanged(Caller, int) end
---@param EntryPoint int32
function UUI_BP_Oppugno_Indicator_C:ExecuteUbergraph_UI_BP_Oppugno_Indicator(EntryPoint) end


