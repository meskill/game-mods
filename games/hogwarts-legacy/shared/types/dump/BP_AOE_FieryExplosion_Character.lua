---@meta

---@class ABP_AOE_FieryExplosion_Character_C : AMunitionType_AOE_MultiFX
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
local ABP_AOE_FieryExplosion_Character_C = {}

---@param MunitionImpact FMunitionImpactData
---@param HitResult FHitResult
---@param bHit boolean
---@param bBlocked boolean
---@param bFailed boolean
function ABP_AOE_FieryExplosion_Character_C:OnHit(MunitionImpact, HitResult, bHit, bBlocked, bFailed) end
---@param EntryPoint int32
function ABP_AOE_FieryExplosion_Character_C:ExecuteUbergraph_BP_AOE_FieryExplosion_Character(EntryPoint) end


