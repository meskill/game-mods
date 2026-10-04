---@meta

---@class UABL_IdleStrafeTurn_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_IdleStrafeTurn_C = {}

---@param Context UAblAbilityContext
function UABL_IdleStrafeTurn_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_IdleStrafeTurn_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_IdleStrafeTurn_C:ExecuteUbergraph_ABL_IdleStrafeTurn(EntryPoint) end


