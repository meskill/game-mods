---@meta

---@class UUI_BP_BeaconHUDPanel_C : UHUDElementGroup
---@field Root UCanvasPanel
local UUI_BP_BeaconHUDPanel_C = {}

---@param HUDCompassIcon UHUDCompassIcon
---@param NewSlot UCanvasPanelSlot
function UUI_BP_BeaconHUDPanel_C:AddBeacon(HUDCompassIcon, NewSlot) end
---@param Beacon UHUDCompassIcon
function UUI_BP_BeaconHUDPanel_C:RemoveBeacon(Beacon) end


