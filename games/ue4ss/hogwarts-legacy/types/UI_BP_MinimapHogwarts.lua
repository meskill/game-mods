---@meta

---@class UUI_BP_MinimapHogwarts_C : UMinimapHogwarts
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
local UUI_BP_MinimapHogwarts_C = {}

function UUI_BP_MinimapHogwarts_C:Construct() end
---@param Opacity float
function UUI_BP_MinimapHogwarts_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapHogwarts_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapHogwarts_C:ExecuteUbergraph_UI_BP_MinimapHogwarts(EntryPoint) end


