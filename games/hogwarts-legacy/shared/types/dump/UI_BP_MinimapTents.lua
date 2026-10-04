---@meta

---@class UUI_BP_MinimapTents_C : UMinimapTents
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
local UUI_BP_MinimapTents_C = {}

---@param Opacity float
function UUI_BP_MinimapTents_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapTents_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapTents_C:ExecuteUbergraph_UI_BP_MinimapTents(EntryPoint) end


