---@meta

---@class ABP_SkinFX_Thunderbrew_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_SkinFX_Thunderbrew_C = {}

function ABP_SkinFX_Thunderbrew_C:SkinFXNotifyStart() end
---@param CurrentTime float
function ABP_SkinFX_Thunderbrew_C:SkinFXNotifyRetrigger(CurrentTime) end
---@param EntryPoint int32
function ABP_SkinFX_Thunderbrew_C:ExecuteUbergraph_BP_SkinFX_Thunderbrew(EntryPoint) end


