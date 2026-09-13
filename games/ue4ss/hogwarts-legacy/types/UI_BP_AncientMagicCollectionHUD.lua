---@meta

---@class UUI_BP_AncientMagicCollectionHUD_C : UHUDElementGroup
---@field AncientMagicMeter UUI_BP_AncientMagicMeter_C
---@field FillPct float
local UUI_BP_AncientMagicCollectionHUD_C = {}

function UUI_BP_AncientMagicCollectionHUD_C:HideAncientMagicMeter() end
---@param pct float
function UUI_BP_AncientMagicCollectionHUD_C:UpdateAncientMagic(pct) end


