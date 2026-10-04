---@meta

---@class UBTT_Biped_Protego_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IsSwimming boolean
---@field MovingStick boolean
---@field IsMelee boolean
---@field RestoreIKState boolean
---@field SustainedBlast boolean
---@field inSustainedProtego boolean
---@field SustainedProtegoTimer FTimerHandle
---@field Deflected boolean
---@field Heavy boolean
---@field Perfect boolean
---@field ReadyToRetaliate boolean
---@field CanRetaliate boolean
---@field CameraTimer FTimerHandle
---@field RetaliateVictim AActor
---@field AlreadyDeflectedTimerHandle FTimerHandle
---@field GameTime float
local UBTT_Biped_Protego_C = {}

function UBTT_Biped_Protego_C:StartParryTimeDilation() end
---@param MinTimeInto float
function UBTT_Biped_Protego_C:AllowPickNewTarget(MinTimeInto) end
function UBTT_Biped_Protego_C:CameraTimeout() end
function UBTT_Biped_Protego_C:Retaliate() end
function UBTT_Biped_Protego_C:SustainedProtegoTimeout() end
function UBTT_Biped_Protego_C:ResetParryState() end
---@param Flag boolean
function UBTT_Biped_Protego_C:SetContexts(Flag) end
---@param Actor AActor
---@param VariantMapHandle FVariantMapHandle
---@param DestroyVarMap boolean
function UBTT_Biped_Protego_C:ProtegoAbilityAndState(Actor, VariantMapHandle, DestroyVarMap) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:CustActionEvt_MakeInterruptible_Protego_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:CustActionEvt_Retaliate_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:CustActionEvt_ProtegoDeflected_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:CustActionEvt_ProtegoParry_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param CachedResult boolean
function UBTT_Biped_Protego_C:GameLogicElementEvt_TUT_display_StunningSpell_desc2_K2Node_GameLogicBoolResultEvent_0(CachedResult) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Protego_C:CustActionEvt_ProtegoImpact_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Protego_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_Protego_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Protego_C:ReceiveExecute(OwnerActor) end
function UBTT_Biped_Protego_C:AlreadyDeflectedTimerExpired() end
---@param EntryPoint int32
function UBTT_Biped_Protego_C:ExecuteUbergraph_BTT_Biped_Protego(EntryPoint) end


