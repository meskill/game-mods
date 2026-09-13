---@meta

---@class UABL_HitBroomHover_Hvy_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitBroomHover_Hvy_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitBroomHover_Hvy_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitBroomHover_Hvy_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitBroomHover_Hvy_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitBroomHover_Hvy_C:ExecuteUbergraph_ABL_HitBroomHover_Hvy(EntryPoint) end


