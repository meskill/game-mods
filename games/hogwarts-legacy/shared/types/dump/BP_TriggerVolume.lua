---@meta

---@class ABP_TriggerVolume_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TextRender UTextRenderComponent
---@field Scene USceneComponent
---@field Box UBoxComponent
---@field Target TArray<AActor>
---@field CanReset boolean
---@field ['Pre-Delay'] float
---@field ExtinguishLitTorches boolean
---@field TriggerExitOnlyOnEmpty boolean
---@field TriggerOnPlayer boolean
---@field TriggeringActors TArray<AActor>
---@field ActorsInside TArray<AActor>
---@field StartActivated boolean
---@field InvertToggle boolean
---@field MultiTrigger boolean
---@field DynamicObjectVolumes TArray<ADynamicObjectVolume>
---@field Triggered FBP_TriggerVolume_CTriggered
---@field StartupDelay float
---@field InvertTarget TArray<AActor>
local ABP_TriggerVolume_C = {}

function ABP_TriggerVolume_C:ActivateDOVs() end
function ABP_TriggerVolume_C:UserConstructionScript() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ABP_TriggerVolume_C:BndEvt__Box_K2Node_ComponentBoundEvent_0_ComponentBeginOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ABP_TriggerVolume_C:BndEvt__Box_K2Node_ComponentBoundEvent_1_ComponentEndOverlapSignature__DelegateSignature(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
function ABP_TriggerVolume_C:ReceiveBeginPlay() end
---@param SwitchActor AActor
function ABP_TriggerVolume_C:SwitchOn(SwitchActor) end
---@param SwitchActor AActor
function ABP_TriggerVolume_C:SwitchOff(SwitchActor) end
---@param EntryPoint int32
function ABP_TriggerVolume_C:ExecuteUbergraph_BP_TriggerVolume(EntryPoint) end
function ABP_TriggerVolume_C:Triggered__DelegateSignature() end


