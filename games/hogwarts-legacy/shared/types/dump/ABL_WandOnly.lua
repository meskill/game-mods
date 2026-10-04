---@meta

---@class UABL_WandOnly_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_WandOnly_C = {}

---@param Context UAblAbilityContext
function UABL_WandOnly_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_WandOnly_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_WandOnly_C:ExecuteUbergraph_ABL_WandOnly(EntryPoint) end


