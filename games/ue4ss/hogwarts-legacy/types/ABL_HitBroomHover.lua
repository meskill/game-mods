---@meta

---@class UABL_HitBroomHover_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitBroomHover_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitBroomHover_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitBroomHover_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitBroomHover_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitBroomHover_C:ExecuteUbergraph_ABL_HitBroomHover(EntryPoint) end


