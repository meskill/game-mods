---@meta

---@class UABL_HitFlipToKnee_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitFlipToKnee_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitFlipToKnee_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitFlipToKnee_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitFlipToKnee_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitFlipToKnee_C:ExecuteUbergraph_ABL_HitFlipToKnee(EntryPoint) end


