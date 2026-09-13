---@meta

---@class UABL_Loot_PickupCrawl_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Loot_PickupCrawl_C = {}

---@param Context UAblAbilityContext
function UABL_Loot_PickupCrawl_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Loot_PickupCrawl_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Loot_PickupCrawl_C:ExecuteUbergraph_ABL_Loot_PickupCrawl(EntryPoint) end


