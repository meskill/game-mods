---@meta

---@class UABL_Startled_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Startled_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_Startled_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_Startled_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Startled_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Startled_C:ExecuteUbergraph_ABL_Startled(EntryPoint) end


