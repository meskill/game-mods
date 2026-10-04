---@meta

---@class UABL_HitHitchSwimmingIdle_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitHitchSwimmingIdle_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitHitchSwimmingIdle_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitHitchSwimmingIdle_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitHitchSwimmingIdle_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitHitchSwimmingIdle_C:ExecuteUbergraph_ABL_HitHitchSwimmingIdle(EntryPoint) end


