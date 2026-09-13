---@meta

---@class UABL_Idle_2_Listen_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Idle_2_Listen_C = {}

---@param Context UAblAbilityContext
function UABL_Idle_2_Listen_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Idle_2_Listen_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Idle_2_Listen_C:ExecuteUbergraph_ABL_Idle_2_Listen(EntryPoint) end


