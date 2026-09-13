---@meta

---@class UUI_BP_FG_VortexPanelBack_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AppearPannelBack_Gold UWidgetAnimation
---@field AppearPannelBack UWidgetAnimation
---@field detailsPanelVortex_0 UImage
---@field detailsPanelVortex_1 UImage
---@field detailsPanelVortex_2 UImage
---@field detailsPanelVortex_3 UImage
---@field overlayStarGlow UImage
local UUI_BP_FG_VortexPanelBack_C = {}

function UUI_BP_FG_VortexPanelBack_C:PannelVortexDisAppearAnim() end
function UUI_BP_FG_VortexPanelBack_C:PannelVortexAppearGold() end
function UUI_BP_FG_VortexPanelBack_C:PannelVortexAppearAnim() end
function UUI_BP_FG_VortexPanelBack_C:PannelVortexDisAppearGold() end
---@param EntryPoint int32
function UUI_BP_FG_VortexPanelBack_C:ExecuteUbergraph_UI_BP_FG_VortexPanelBack(EntryPoint) end


