---@meta

---@class ABP_SkinFX_ApparateLoop_C : ABP_SkinFX_ApparateParent_C
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_SkinFX_ApparateLoop_C = {}

function ABP_SkinFX_ApparateLoop_C:SkinFXNotifyStart() end
function ABP_SkinFX_ApparateLoop_C:OnApparateFinished() end
function ABP_SkinFX_ApparateLoop_C:OnDisapparateFinished() end
---@param EntryPoint int32
function ABP_SkinFX_ApparateLoop_C:ExecuteUbergraph_BP_SkinFX_ApparateLoop(EntryPoint) end


