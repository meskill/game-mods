---@meta

---@class UABL_Stealth_IdleBreak_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Stealth_IdleBreak_C = {}

---@param Context UAblAbilityContext
function UABL_Stealth_IdleBreak_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Stealth_IdleBreak_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Stealth_IdleBreak_C:ExecuteUbergraph_ABL_Stealth_IdleBreak(EntryPoint) end


