---@meta

---@class UUI_BP_AncientMagicMeter_C : UUserWidget
---@field AncientMagicProgressBar UProgressBar
---@field DeltaPct float
---@field TargetFillPct float
---@field FillTimerHandle FTimerHandle
local UUI_BP_AncientMagicMeter_C = {}

function UUI_BP_AncientMagicMeter_C:SetPctDelta() end
---@param NewPct float
function UUI_BP_AncientMagicMeter_C:SetMagicPct(NewPct) end


