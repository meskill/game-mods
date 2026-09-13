---@meta

---@class UABL_Levitated_Loop_C : UAblReactionAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Levitated_Loop_C = {}

---@param Context UAblAbilityContext
function UABL_Levitated_Loop_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_Levitated_Loop_C:OnAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Levitated_Loop_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Levitated_Loop_C:ExecuteUbergraph_ABL_Levitated_Loop(EntryPoint) end


