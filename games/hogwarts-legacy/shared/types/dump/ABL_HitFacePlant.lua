---@meta

---@class UABL_HitFacePlant_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitFacePlant_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitFacePlant_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitFacePlant_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitFacePlant_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitFacePlant_C:ExecuteUbergraph_ABL_HitFacePlant(EntryPoint) end


