---@meta

---@class ABP_CM_NovaDiscover_C : AAncientMagicNova
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Parent UAncientMagicEffect_Nova
---@field OnCollide FBP_CM_NovaDiscover_COnCollide
local ABP_CM_NovaDiscover_C = {}

---@param DeltaSeconds float
function ABP_CM_NovaDiscover_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_CM_NovaDiscover_C:ExecuteUbergraph_BP_CM_NovaDiscover(EntryPoint) end
function ABP_CM_NovaDiscover_C:OnCollide__DelegateSignature() end


