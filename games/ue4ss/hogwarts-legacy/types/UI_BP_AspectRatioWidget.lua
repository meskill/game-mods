---@meta

---@class UUI_BP_AspectRatioWidget_C : UCameraAspectRatioWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlackBar_Bottom UImage
---@field BlackBar_Left UImage
---@field BlackBar_Right UImage
---@field BlackBar_Top UImage
local UUI_BP_AspectRatioWidget_C = {}

function UUI_BP_AspectRatioWidget_C:UI_HideBars() end
---@param InBarScale float
function UUI_BP_AspectRatioWidget_C:UI_UpdateLetterbox(InBarScale) end
---@param InBarScale float
function UUI_BP_AspectRatioWidget_C:UI_UpdatePillarbox(InBarScale) end
function UUI_BP_AspectRatioWidget_C:Construct() end
---@param EntryPoint int32
function UUI_BP_AspectRatioWidget_C:ExecuteUbergraph_UI_BP_AspectRatioWidget(EntryPoint) end


