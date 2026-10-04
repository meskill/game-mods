---@meta

---@class IUI_BPI_TargetCalloutInterface_C : IInterface
local IUI_BPI_TargetCalloutInterface_C = {}

---@param CreatureActor AActor
---@param IsTamed boolean
function IUI_BPI_TargetCalloutInterface_C:SetupCreatureUI(CreatureActor, IsTamed) end
---@param IsVisible boolean
function IUI_BPI_TargetCalloutInterface_C:SetCalloutVisibility(IsVisible) end


