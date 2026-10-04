---@meta

---@class UABL_HitPetrificusFallDown_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitPetrificusFallDown_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitPetrificusFallDown_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitPetrificusFallDown_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitPetrificusFallDown_C:ExecuteUbergraph_ABL_HitPetrificusFallDown(EntryPoint) end


