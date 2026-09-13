---@meta

---@class UABL_Sprint_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Sprint_C = {}

---@param Context UAblAbilityContext
function UABL_Sprint_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_Sprint_C:OnAbilityInterrupt(Context) end
---@param EntryPoint int32
function UABL_Sprint_C:ExecuteUbergraph_ABL_Sprint(EntryPoint) end


