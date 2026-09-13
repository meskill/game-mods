---@meta

---@class UABL_Loot_Pickup_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Loot_Pickup_C = {}

---@param Context UAblAbilityContext
function UABL_Loot_Pickup_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Loot_Pickup_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Loot_Pickup_C:ExecuteUbergraph_ABL_Loot_Pickup(EntryPoint) end


