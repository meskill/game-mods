---@meta

---@class UABL_HitStumbleFlash_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitStumbleFlash_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitStumbleFlash_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitStumbleFlash_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitStumbleFlash_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitStumbleFlash_C:ExecuteUbergraph_ABL_HitStumbleFlash(EntryPoint) end


