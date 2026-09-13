---@meta

---@class UABL_BlockedByWall_BothHands_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_BlockedByWall_BothHands_C = {}

---@param Context UAblAbilityContext
function UABL_BlockedByWall_BothHands_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_BlockedByWall_BothHands_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_BlockedByWall_BothHands_C:ExecuteUbergraph_ABL_BlockedByWall_BothHands(EntryPoint) end


