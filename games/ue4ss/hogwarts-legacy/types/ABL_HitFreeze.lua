---@meta

---@class UABL_HitFreeze_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitFreeze_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitFreeze_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitFreeze_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitFreeze_C:ExecuteUbergraph_ABL_HitFreeze(EntryPoint) end


