---@meta

---@class UUI_BP_MinimapTutorial_C : UMinimapTutorial
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
local UUI_BP_MinimapTutorial_C = {}

---@param Opacity float
function UUI_BP_MinimapTutorial_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapTutorial_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapTutorial_C:ExecuteUbergraph_UI_BP_MinimapTutorial(EntryPoint) end


