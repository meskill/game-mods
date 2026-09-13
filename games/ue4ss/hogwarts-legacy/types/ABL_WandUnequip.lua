---@meta

---@class UABL_WandUnequip_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_WandUnequip_C = {}

---@param Context UAblAbilityContext
function UABL_WandUnequip_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_WandUnequip_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_WandUnequip_C:ExecuteUbergraph_ABL_WandUnequip(EntryPoint) end


