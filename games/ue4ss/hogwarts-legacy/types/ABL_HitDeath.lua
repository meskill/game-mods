---@meta

---@class UABL_HitDeath_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_HitDeath_C = {}

---@param Context UAblAbilityContext
function UABL_HitDeath_C:OnAbilityStart(Context) end
---@param EntryPoint int32
function UABL_HitDeath_C:ExecuteUbergraph_ABL_HitDeath(EntryPoint) end


