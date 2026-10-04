---@meta

---@class UBTT_Biped_DodgeStart_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StickMag float
---@field OnButtslideSurface boolean
---@field UseDodgeCamera boolean
---@field invulnerableTime float
---@field StartingLocation FVector
---@field BlinkTimer FTimerHandle
---@field Blinking boolean
---@field IsInterruptible boolean
---@field LastDirection FVector
---@field DodgedUnblockable boolean
---@field autoFireAfterDodge boolean
---@field autoFireSpellSlot int32
---@field AimAtTimerHandle FTimerHandle
---@field LockTimerHandle FTimerHandle
local UBTT_Biped_DodgeStart_C = {}

---@param BipedCharacter ABiped_Character
function UBTT_Biped_DodgeStart_C:CancelChannelSpell(BipedCharacter) end
---@param Owner AActor
function UBTT_Biped_DodgeStart_C:FlushQueuedActions(Owner) end
function UBTT_Biped_DodgeStart_C:UnlockTarget() end
---@param Condition boolean
---@param InTargetActor AActor
function UBTT_Biped_DodgeStart_C:LockTarget(Condition, InTargetActor) end
function UBTT_Biped_DodgeStart_C:CheckForAutoFireAfterDodge() end
---@param Falling boolean
function UBTT_Biped_DodgeStart_C:FallingTest(Falling) end
function UBTT_Biped_DodgeStart_C:Stop() end
---@param CollisionResponse ECollisionResponse
---@param OwnerActor AActor
function UBTT_Biped_DodgeStart_C:ToggleDamageCollision(CollisionResponse, OwnerActor) end
---@param Flag boolean
function UBTT_Biped_DodgeStart_C:SetContexts(Flag) end
---@param Object UObject
---@param Allowed boolean
function UBTT_Biped_DodgeStart_C:ToggleLockOnCamera(Object, Allowed) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_DodgeStart_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_DodgeStart_C:CustActionEvt_MakeInterruptible_Move_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_DodgeStart_C:CustActionEvt_ToggleDodgeCamera_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_DodgeStart_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_DodgeStart_C:CustActionEvt_MakeInterruptible_FullBodySpellCast_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_DodgeStart_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_DodgeStart_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Biped_DodgeStart_C:BlinkTimerExpired() end
function UBTT_Biped_DodgeStart_C:AimAtTimerExpired() end
---@param OwnerActor AActor
function UBTT_Biped_DodgeStart_C:ReceiveExecute(OwnerActor) end
function UBTT_Biped_DodgeStart_C:LockTargetTimerExpired() end
---@param OwnerActor AActor
function UBTT_Biped_DodgeStart_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_DodgeStart_C:ExecuteUbergraph_BTT_Biped_DodgeStart(EntryPoint) end


