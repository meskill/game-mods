---@meta

---@class UABL_Hit_Fire_Flail_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Hit_Fire_Flail_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_Hit_Fire_Flail_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
function UABL_Hit_Fire_Flail_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Hit_Fire_Flail_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Hit_Fire_Flail_C:ExecuteUbergraph_ABL_Hit_Fire_Flail(EntryPoint) end


