---@meta

---@class UABL_HitStumbleSpinRight_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitStumbleSpinRight_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitStumbleSpinRight_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitStumbleSpinRight_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitStumbleSpinRight_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitStumbleSpinRight_C:ExecuteUbergraph_ABL_HitStumbleSpinRight(EntryPoint) end


