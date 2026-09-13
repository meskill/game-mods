---@meta

---@class UUI_BP_Oppugno_Indicator_OffScreen_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ArrowOverlay UOverlay
---@field ButtonPrompt UPhoenixRichTextBlock
---@field TargetArrow UImage
local UUI_BP_Oppugno_Indicator_OffScreen_C = {}

function UUI_BP_Oppugno_Indicator_OffScreen_C:Construct() end
---@param Caller UObject
---@param Vector FVector
function UUI_BP_Oppugno_Indicator_OffScreen_C:RotateIndicator(Caller, Vector) end
---@param EntryPoint int32
function UUI_BP_Oppugno_Indicator_OffScreen_C:ExecuteUbergraph_UI_BP_Oppugno_Indicator_OffScreen(EntryPoint) end


