---@meta

---@class UBTT_Biped_Retaliate_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentFiringSpell ASpellTool
---@field EmptySpell ASpellTool
---@field SpellFired boolean
---@field ButtonReleased boolean
---@field RestoreIKState boolean
---@field RetaliateVictim AActor
---@field AllowStickMovement boolean
---@field AllowTargetTracking boolean
---@field GameTime float
local UBTT_Biped_Retaliate_C = {}

---@param BipedPlayer ABiped_Player
---@param AsActor AActor
function UBTT_Biped_Retaliate_C:GetInitialRetaliateVictim(BipedPlayer, AsActor) end
---@param MaxTimeIntoAttack float
function UBTT_Biped_Retaliate_C:AllowPickNewTarget(MaxTimeIntoAttack) end
---@param Flag boolean
function UBTT_Biped_Retaliate_C:DisableAimModeInFinisher(Flag) end
---@param StickX float
---@param StickY float
---@param IsValid boolean
function UBTT_Biped_Retaliate_C:StickValid(StickX, StickY, IsValid) end
---@param Flag boolean
function UBTT_Biped_Retaliate_C:SetContexts(Flag) end
---@param Found boolean
---@param FinisherIndex int32
function UBTT_Biped_Retaliate_C:GetFinisherIndex(Found, FinisherIndex) end
---@param InActor AActor
function UBTT_Biped_Retaliate_C:StartWandAbility(InActor) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:CustActionEvt_FireSpellFlourish_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:CustActionEvt_CheckChannelAction_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:CustActionEvt_Protego_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:CustActionEvt_PostFullBodyWandCast_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Retaliate_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Retaliate_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UBTT_Biped_Retaliate_C:SpellMadeContact(Caller, MunitionImpactData) end
---@param OwnerActor AActor
function UBTT_Biped_Retaliate_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Retaliate_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
function UBTT_Biped_Retaliate_C:ObjectDestroyed(Caller) end
---@param EntryPoint int32
function UBTT_Biped_Retaliate_C:ExecuteUbergraph_BTT_Biped_Retaliate(EntryPoint) end


