---@meta

---@class UABL_HitStumbleHvy_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitStumbleHvy_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitStumbleHvy_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitStumbleHvy_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitStumbleHvy_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitStumbleHvy_C:ExecuteUbergraph_ABL_HitStumbleHvy(EntryPoint) end


