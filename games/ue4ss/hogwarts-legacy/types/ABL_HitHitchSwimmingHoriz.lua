---@meta

---@class UABL_HitHitchSwimmingHoriz_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitHitchSwimmingHoriz_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitHitchSwimmingHoriz_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitHitchSwimmingHoriz_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitHitchSwimmingHoriz_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitHitchSwimmingHoriz_C:ExecuteUbergraph_ABL_HitHitchSwimmingHoriz(EntryPoint) end


