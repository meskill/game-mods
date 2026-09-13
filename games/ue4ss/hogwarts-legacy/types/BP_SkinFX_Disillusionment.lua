---@meta

---@class ABP_SkinFX_Disillusionment_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_SkinFX_Disillusionment_C = {}

function ABP_SkinFX_Disillusionment_C:SkinFXNotifyStart() end
function ABP_SkinFX_Disillusionment_C:SkinFXNotifyKill() end
---@param EntryPoint int32
function ABP_SkinFX_Disillusionment_C:ExecuteUbergraph_BP_SkinFX_Disillusionment(EntryPoint) end


