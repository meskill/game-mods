---@meta

---@class ABP_OPP_RockA_C : AWorldObject
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OdcAuthoredObstacleSetup UOdcAuthoredObstacleSetupComponent
---@field Obj UStaticMeshComponent
local ABP_OPP_RockA_C = {}

---@param Instigator AActor
---@param Object AActor
function ABP_OPP_RockA_C:OnHitByOppugnoImpact(Instigator, Object) end
---@param Instigator AActor
function ABP_OPP_RockA_C:OnOppugnoEnd(Instigator) end
---@param Instigator AActor
function ABP_OPP_RockA_C:OnOppugnoHold(Instigator) end
---@param Instigator AActor
---@param Target AActor
---@param HitObject AActor
function ABP_OPP_RockA_C:OnOppugnoImpact(Instigator, Target, HitObject) end
---@param Instigator AActor
---@param Target AActor
---@param Velocity FVector
function ABP_OPP_RockA_C:OnOppugnoThrow(Instigator, Target, Velocity) end
---@param Instigator AActor
function ABP_OPP_RockA_C:OnOppugnoPull(Instigator) end
---@param EntryPoint int32
function ABP_OPP_RockA_C:ExecuteUbergraph_BP_OPP_RockA(EntryPoint) end


