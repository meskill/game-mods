---@meta

---@class UABL_Idle_TurnToFace_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Idle_TurnToFace_C = {}

---@param Context UAblAbilityContext
function UABL_Idle_TurnToFace_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Idle_TurnToFace_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Idle_TurnToFace_C:ExecuteUbergraph_ABL_Idle_TurnToFace(EntryPoint) end


