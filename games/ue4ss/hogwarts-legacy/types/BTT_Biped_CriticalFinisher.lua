---@meta

---@class UBTT_Biped_CriticalFinisher_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TargetActor AActor
---@field MunitionDataAsset TArray<UInteractionArchitectAsset>
---@field TimeDilation float
---@field AllowTimeDilation boolean
---@field CriticalFinisherAbility TSubclassOf<UAblAbility>
---@field MunitionTags FGameplayTagContainer
---@field ['Exclude List Always'] TArray<AActor>
---@field ['Exclude List Once'] TArray<AActor>
local UBTT_Biped_CriticalFinisher_C = {}

---@param Player APawn
---@param Flag boolean
function UBTT_Biped_CriticalFinisher_C:AutoTargetOnlyTarget(Player, Flag) end
---@param BipedPlayer ABiped_Player
---@param Flag boolean
UBTT_Biped_CriticalFinisher_C['Enable Auto Target'] = function(self, BipedPlayer, Flag) end
function UBTT_Biped_CriticalFinisher_C:ApplyAchievement() end
---@param Flag boolean
function UBTT_Biped_CriticalFinisher_C:EnableHUD(Flag) end
---@param BipedPlayer ABiped_Player
function UBTT_Biped_CriticalFinisher_C:DestroyAllMunitions(BipedPlayer) end
---@param InActor AActor
---@param Flag boolean
function UBTT_Biped_CriticalFinisher_C:ProtectCharacterFromDamage(InActor, Flag) end
function UBTT_Biped_CriticalFinisher_C:GetAbilityAndTimeDilationFromNPC() end
---@param BipedPlayer APawn
---@return AActor
function UBTT_Biped_CriticalFinisher_C:GetTargetActor(BipedPlayer) end
---@param Damage float
function UBTT_Biped_CriticalFinisher_C:SendMunitionImpactToTarget(Damage) end
function UBTT_Biped_CriticalFinisher_C:RestoreTimeDilation() end
function UBTT_Biped_CriticalFinisher_C:StartTimeDilationOnTarget() end
---@param InActor AActor
function UBTT_Biped_CriticalFinisher_C:SetTargetTrackers(InActor) end
---@param Flag boolean
function UBTT_Biped_CriticalFinisher_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_CriticalFinisher_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_CriticalFinisher_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_CriticalFinisher_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_CriticalFinisher_C:CustActionEvt_ApplyFinisherDamage_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_CriticalFinisher_C:CustActionEvt_FireWandNoFinisherDamage_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_CriticalFinisher_C:CustActionEvt_FireFinisherSpell_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_CriticalFinisher_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_CriticalFinisher_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_CriticalFinisher_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_CriticalFinisher_C:ExecuteUbergraph_BTT_Biped_CriticalFinisher(EntryPoint) end


