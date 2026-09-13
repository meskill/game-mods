---@meta

---@class UUI_BP_MinimapSanctuary_C : UMinimapSanctuary
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
local UUI_BP_MinimapSanctuary_C = {}

---@param Opacity float
function UUI_BP_MinimapSanctuary_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapSanctuary_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapSanctuary_C:ExecuteUbergraph_UI_BP_MinimapSanctuary(EntryPoint) end


