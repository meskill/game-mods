---@meta

---@class UABL_WandEquip_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_WandEquip_C = {}

---@param Context UAblAbilityContext
function UABL_WandEquip_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_WandEquip_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_WandEquip_C:ExecuteUbergraph_ABL_WandEquip(EntryPoint) end


