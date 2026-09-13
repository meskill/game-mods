---@meta

---@class UABL_Oppugno_ChannelingLoop_C : UAblAbility
---@field UberGraphFrame FPointerToUberGraphFrame
local UABL_Oppugno_ChannelingLoop_C = {}

---@param Context UAblAbilityContext
function UABL_Oppugno_ChannelingLoop_C:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UABL_Oppugno_ChannelingLoop_C:OnAbilityBranch(Context, NextAbility) end
---@param EntryPoint int32
function UABL_Oppugno_ChannelingLoop_C:ExecuteUbergraph_ABL_Oppugno_ChannelingLoop(EntryPoint) end


