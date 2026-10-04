---@meta

---@class UABL_ReactBats_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_ReactBats_C = {}

---@param Context UAblAbilityContext
function UABL_ReactBats_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_ReactBats_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_ReactBats_C:ExecuteUbergraph_ABL_ReactBats(EntryPoint) end


