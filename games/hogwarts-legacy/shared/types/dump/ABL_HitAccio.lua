---@meta

---@class UABL_HitAccio_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitAccio_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitAccio_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitAccio_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitAccio_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitAccio_C:ExecuteUbergraph_ABL_HitAccio(EntryPoint) end


