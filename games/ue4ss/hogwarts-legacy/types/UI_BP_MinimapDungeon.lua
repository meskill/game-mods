---@meta

---@class UUI_BP_MinimapDungeon_C : UMinimapDungeon
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MinimapBackground UImage
local UUI_BP_MinimapDungeon_C = {}

function UUI_BP_MinimapDungeon_C:Construct() end
---@param Opacity float
function UUI_BP_MinimapDungeon_C:SetMapOpacity(Opacity) end
---@param Visibile boolean
function UUI_BP_MinimapDungeon_C:ShowMap(Visibile) end
---@param EntryPoint int32
function UUI_BP_MinimapDungeon_C:ExecuteUbergraph_UI_BP_MinimapDungeon(EntryPoint) end


