---@meta

---@class UBTT_Biped_WandCast_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentFiringSpell ASpellTool
---@field EmptySpell ASpellTool
---@field SpellFired boolean
---@field ButtonReleased boolean
---@field RestoreIKState boolean
---@field RestartingWandCast boolean
---@field ClearRetaliateLockOnExit boolean
---@field AnimCompleted boolean
---@field AllowStick boolean
---@field StickDirection FVector
---@field AllowAcquireNewTarget boolean
---@field AllowTargetTracking boolean
---@field IsOppugnoSpell boolean
---@field TargetedEnemy AActor
local UBTT_Biped_WandCast_C = {}

---@param InActor AActor
---@param Flag boolean
function UBTT_Biped_WandCast_C:ProtectCharacterFromDamage(InActor, Flag) end
function UBTT_Biped_WandCast_C:AcquireNewTarget() end
---@param Owner AActor
function UBTT_Biped_WandCast_C:FlushQueuedActions(Owner) end
function UBTT_Biped_WandCast_C:ConditionalCancelSpell() end
---@param InputPin AActor
function UBTT_Biped_WandCast_C:SetTargetTrackers(InputPin) end
---@param StickX float
---@param StickY float
---@param IsValid boolean
function UBTT_Biped_WandCast_C:StickValid(StickX, StickY, IsValid) end
---@param Flag boolean
function UBTT_Biped_WandCast_C:SetContexts(Flag) end
---@param InActor AActor
function UBTT_Biped_WandCast_C:StartWandAbility(InActor) end
---@param WandCastName FName
---@param IsInStealth boolean
---@param WandCastAbility UClass
function UBTT_Biped_WandCast_C:GetWandAbility(WandCastName, IsInStealth, WandCastAbility) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_9(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_8(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_7(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_PostFullBodyWandCast_K2Node_BTCustomActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_ConjureMotionCommand_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_FireSpellFlourish_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_Protego_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_FireFullBodySpell_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_SetInvulnerable_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_WandCast_C:CustActionEvt_SetInvulnerable_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_WandCast_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UBTT_Biped_WandCast_C:SpellMadeContact(Caller, MunitionImpactData) end
---@param OwnerActor AActor
function UBTT_Biped_WandCast_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_WandCast_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_WandCast_C:ExecuteUbergraph_BTT_Biped_WandCast(EntryPoint) end


