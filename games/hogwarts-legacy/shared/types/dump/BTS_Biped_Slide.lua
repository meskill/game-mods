---@meta

---@class UBTS_Biped_Slide_C : UBTService_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FrictionOverride float
---@field LastDirection FVector
---@field CurrentSurfaceType EPhysicalSurface
local UBTS_Biped_Slide_C = {}

---@param Loaded UClass
function UBTS_Biped_Slide_C:OnLoaded_064020B847E32A364958D9B53D4D396C(Loaded) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_Slide_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTS_Biped_Slide_C:ServiceBegin(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Biped_Slide_C:ServiceEnd(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTS_Biped_Slide_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UBTS_Biped_Slide_C:OnComponentHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end
---@param EntryPoint int32
function UBTS_Biped_Slide_C:ExecuteUbergraph_BTS_Biped_Slide(EntryPoint) end


