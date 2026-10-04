---@meta

---@class UBTT_HoverBroom_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EmitterComponent UParticleSystemComponent
---@field HoverBroom AFlyingBroom
---@field PropBroom AFlyingBroom
---@field DiveDismount boolean
---@field MountTransition EBroomMountType
---@field DismountTransition EBroomDismountType
---@field MountImpulse boolean
---@field Mounted boolean
local UBTT_HoverBroom_C = {}

function UBTT_HoverBroom_C:StopCastingAnimation() end
---@param MunitionImpactData FMunitionImpactData
function UBTT_HoverBroom_C:HandleMuntitionImpact(MunitionImpactData) end
---@param Variant_Map_Handle FVariantMapHandle
function UBTT_HoverBroom_C:DismountBroomCompleted(Variant_Map_Handle) end
---@param Variant_Map_Handle FVariantMapHandle
function UBTT_HoverBroom_C:DismountBroomStarted(Variant_Map_Handle) end
---@param Instant boolean
function UBTT_HoverBroom_C:DestroyBroomDismount(Instant) end
---@param Prop AFlyingBroom
UBTT_HoverBroom_C['Show Dismount Prop'] = function(self, Prop) end
---@param ParentActor ABiped_Player
---@param ScaleIn boolean
---@param StartScale float
---@param Attatch boolean
function UBTT_HoverBroom_C:SpawnBroomInHand(ParentActor, ScaleIn, StartScale, Attatch) end
---@param BipedPlayer ABiped_Player
function UBTT_HoverBroom_C:DestroyBroom(BipedPlayer) end
---@param ParentActor ABiped_Player
---@param BroomProp AFlyingBroom
function UBTT_HoverBroom_C:SpawnFlyingBroom(ParentActor, BroomProp) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:CustActionEvt_Mount_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:CustActionEvt_SpawnBroom_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:CustActionEvt_SpawnBroom_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:CustActionEvt_JumpImpulse_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:CustActionEvt_JumpImpulse_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:InpActEvt_BroomAcceleration_K2Node_CustomAnalogInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_HoverBroom_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_HoverBroom_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_HoverBroom_C:ExitTask(OwnerActor) end
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UBTT_HoverBroom_C:MunitionImpactDamage(Caller, MunitionImpactData) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_HoverBroom_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_HoverBroom_C:ExecuteUbergraph_BTT_HoverBroom(EntryPoint) end


