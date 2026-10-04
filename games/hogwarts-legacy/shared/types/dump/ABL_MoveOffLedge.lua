---@meta

---@class UABL_MoveOffLedge_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_MoveOffLedge_C = {}

---@param Context UAblAbilityContext
function UABL_MoveOffLedge_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_MoveOffLedge_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_MoveOffLedge_C:ExecuteUbergraph_ABL_MoveOffLedge(EntryPoint) end


