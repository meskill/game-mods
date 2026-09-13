---@meta

---@class UUI_BP_MinimapHogsmeade_C : UMinimapHogsmeade
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
local UUI_BP_MinimapHogsmeade_C = {}

---@param Opacity float
function UUI_BP_MinimapHogsmeade_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapHogsmeade_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapHogsmeade_C:ExecuteUbergraph_UI_BP_MinimapHogsmeade(EntryPoint) end


