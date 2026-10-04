---@meta

---@class UABL_HitHitch_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitHitch_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitHitch_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_HitHitch_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitHitch_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitHitch_C:ExecuteUbergraph_ABL_HitHitch(EntryPoint) end


