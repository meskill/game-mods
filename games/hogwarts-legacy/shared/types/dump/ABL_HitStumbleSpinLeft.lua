---@meta

---@class UABL_HitStumbleSpinLeft_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitStumbleSpinLeft_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitStumbleSpinLeft_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitStumbleSpinLeft_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitStumbleSpinLeft_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitStumbleSpinLeft_C:ExecuteUbergraph_ABL_HitStumbleSpinLeft(EntryPoint) end


