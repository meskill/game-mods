---@meta

---@class ABP_ShadowBlinkTravelActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Sphere USphereComponent
---@field DefaultSceneRoot USceneComponent
---@field IsTriggered boolean
local ABP_ShadowBlinkTravelActor_C = {}

function ABP_ShadowBlinkTravelActor_C:ReceiveBeginPlay() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_ShadowBlinkTravelActor_C:BndEvt__BP_ShadowBlinkTravelActor_Sphere_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param EntryPoint int32
function ABP_ShadowBlinkTravelActor_C:ExecuteUbergraph_BP_ShadowBlinkTravelActor(EntryPoint) end


