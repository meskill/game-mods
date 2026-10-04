---@meta

---@class UUI_BP_MenuCursor_C : UUI_BP_BaseCursor_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UUI_BP_MenuCursor_C = {}

function UUI_BP_MenuCursor_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_MenuCursor_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UUI_BP_MenuCursor_C:ExecuteUbergraph_UI_BP_MenuCursor(EntryPoint) end


