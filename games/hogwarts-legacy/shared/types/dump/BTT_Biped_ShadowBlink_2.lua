---@meta

---@class UBTT_Biped_ShadowBlink_2_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IKRestoreState boolean
---@field LastDirection FVector
---@field AllowStickMovement boolean
---@field TravelActor ABP_ShadowBlinkTravelActor_C
---@field AutoTarget AActor
---@field AltModeOn boolean
---@field CogFocus_ActorFacing UCogGroupFocusDirection_ActorFacing
---@field CogUp_World UCogGroupUpDirection_World
---@field IsEnemy boolean
---@field IsGate boolean
---@field BlinkDistance float
---@field AllowStick boolean
---@field SphereMadeContactHandle FHermesBPDelegateHandle
---@field ShadowParticleEmitterNA UNiagaraComponent
---@field OnButtslide boolean
---@field LastButtslide boolean
---@field ExitShadowBlink boolean
local UBTT_Biped_ShadowBlink_2_C = {}

function UBTT_Biped_ShadowBlink_2_C:ShadowBlinkExit() end
function UBTT_Biped_ShadowBlink_2_C:ClampButtslideVelocity() end
function UBTT_Biped_ShadowBlink_2_C:TestForButtSlide() end
---@param BipedPlayer APawn
function UBTT_Biped_ShadowBlink_2_C:AcquireTarget(BipedPlayer) end
function UBTT_Biped_ShadowBlink_2_C:BlinkEndBeforeEnemy() end
---@param OnExit boolean
UBTT_Biped_ShadowBlink_2_C['Destroy Shadow Blink FX'] = function(self, OnExit) end
function UBTT_Biped_ShadowBlink_2_C:CreateShadowBlinkFX() end
---@param Falling boolean
function UBTT_Biped_ShadowBlink_2_C:FallingTest(Falling) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlink_2_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlink_2_C:CustActionEvt_ShadowBlinkExit_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlink_2_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlink_2_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param Caller UObject
---@param Actor AActor
function UBTT_Biped_ShadowBlink_2_C:ShadowBlinkSphereHitSomething(Caller, Actor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_ShadowBlink_2_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_ShadowBlink_2_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_ShadowBlink_2_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
function UBTT_Biped_ShadowBlink_2_C:PlayerNearDoor(Caller) end
---@param EntryPoint int32
function UBTT_Biped_ShadowBlink_2_C:ExecuteUbergraph_BTT_Biped_ShadowBlink_2(EntryPoint) end


