---@meta

---@class UABL_PickupSighted_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_PickupSighted_C = {}

---@param Context UAblAbilityContext
function UABL_PickupSighted_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_PickupSighted_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_PickupSighted_C:ExecuteUbergraph_ABL_PickupSighted(EntryPoint) end


