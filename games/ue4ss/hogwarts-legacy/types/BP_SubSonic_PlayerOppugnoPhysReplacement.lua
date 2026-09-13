---@meta

---@class ABP_SubSonic_PlayerOppugnoPhysReplacement_C : AMunitionType_PhoenixSubsonic
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ObjectState UObjectStateComponent
---@field StaticMesh UStaticMeshComponent
---@field LastVelocity FVector
---@field VelocityScale float
---@field ['In Munition Data Assets'] TArray<UInteractionArchitectAsset>
local ABP_SubSonic_PlayerOppugnoPhysReplacement_C = {}

---@param Target AActor
---@param TargetLocation FVector
---@param Velocity FVector
function ABP_SubSonic_PlayerOppugnoPhysReplacement_C:OnFire(Target, TargetLocation, Velocity) end
---@param HitResult FHitResult
---@param bDestroyed boolean
---@param bHit boolean
---@param bBlocked boolean
---@param bFailed boolean
function ABP_SubSonic_PlayerOppugnoPhysReplacement_C:OnHit(HitResult, bDestroyed, bHit, bBlocked, bFailed) end
function ABP_SubSonic_PlayerOppugnoPhysReplacement_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_SubSonic_PlayerOppugnoPhysReplacement_C:ExecuteUbergraph_BP_SubSonic_PlayerOppugnoPhysReplacement(EntryPoint) end


