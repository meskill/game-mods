---@meta

---@class UABL_HitStumble_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitStumble_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitStumble_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitStumble_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitStumble_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitStumble_C:ExecuteUbergraph_ABL_HitStumble(EntryPoint) end


