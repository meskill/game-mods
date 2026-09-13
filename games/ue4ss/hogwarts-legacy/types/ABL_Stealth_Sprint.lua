---@meta

---@class UABL_Stealth_Sprint_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Stealth_Sprint_C = {}

---@param Context UAblAbilityContext
function UABL_Stealth_Sprint_C:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
function UABL_Stealth_Sprint_C:OnAbilityInterrupt(Context) end
---@param EntryPoint int32
function UABL_Stealth_Sprint_C:ExecuteUbergraph_ABL_Stealth_Sprint(EntryPoint) end


