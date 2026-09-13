---@meta

---@class UABL_Channeling_WalkIdle_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Channeling_WalkIdle_C = {}

---@param Context UAblAbilityContext
function UABL_Channeling_WalkIdle_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Channeling_WalkIdle_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Channeling_WalkIdle_C:ExecuteUbergraph_ABL_Channeling_WalkIdle(EntryPoint) end


