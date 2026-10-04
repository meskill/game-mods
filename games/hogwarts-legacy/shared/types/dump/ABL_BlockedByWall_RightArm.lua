---@meta

---@class UABL_BlockedByWall_RightArm_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_BlockedByWall_RightArm_C = {}

---@param Context UAblAbilityContext
function UABL_BlockedByWall_RightArm_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_BlockedByWall_RightArm_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_BlockedByWall_RightArm_C:ExecuteUbergraph_ABL_BlockedByWall_RightArm(EntryPoint) end


