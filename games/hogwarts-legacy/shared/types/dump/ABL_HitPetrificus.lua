---@meta

---@class UABL_HitPetrificus_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitPetrificus_C = {}

---@param Context UAblAbilityContext
---@return boolean
function UABL_HitPetrificus_C:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_HitPetrificus_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_HitPetrificus_C:ExecuteUbergraph_ABL_HitPetrificus(EntryPoint) end


