---@meta

---@class ABP_CooldownPickup_All_C : ACooldownPickup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VFX_NS_CooldownPickup_All UNiagaraComponent
---@field Sphere USphereComponent
---@field Capsule UCapsuleComponent
---@field NewVar_0 UAkComponent
---@field environment EEnvironment::Type
---@field AutoSelectLoot boolean
---@field onBagEmpty FBP_CooldownPickup_All_COnBagEmpty
---@field BouncePlayed boolean
---@field PickedupActor AActor
---@field Speed float
---@field Acceleration float
---@field PlayerOverlapping AActor
local ABP_CooldownPickup_All_C = {}

function ABP_CooldownPickup_All_C:UserConstructionScript() end
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ABP_CooldownPickup_All_C:BndEvt__BP_CooldownPickup_All_Capsule_K2Node_ComponentBoundEvent_1_ComponentHitSignature__DelegateSignature(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end
function ABP_CooldownPickup_All_C:ReceiveBeginPlay() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_CooldownPickup_All_C:BndEvt__BP_CooldownPickup_Red_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param Caller UObject
function ABP_CooldownPickup_All_C:ShowNonCinematicElements(Caller) end
---@param Caller UObject
function ABP_CooldownPickup_All_C:HideNonCinematicElements(Caller) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABP_CooldownPickup_All_C:BndEvt__BP_CooldownPickup_All_Sphere_K2Node_ComponentBoundEvent_4_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param Caller UObject
function ABP_CooldownPickup_All_C:FinisherCast(Caller) end
function ABP_CooldownPickup_All_C:OnResetRecycle() end
---@param EntryPoint int32
function ABP_CooldownPickup_All_C:ExecuteUbergraph_BP_CooldownPickup_All(EntryPoint) end
function ABP_CooldownPickup_All_C:onBagEmpty__DelegateSignature() end


