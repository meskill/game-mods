---@meta

---@class UBTT_BipedUpper_WandCast_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurrentFiringSpell ASpellTool
---@field SpellFired boolean
---@field ButtonReleased boolean
---@field ['Right Arm State'] ERightArmState::Type
local UBTT_BipedUpper_WandCast_C = {}

---@param InActor AActor
function UBTT_BipedUpper_WandCast_C:FlushQueuedActions(InActor) end
---@param InputPin AActor
function UBTT_BipedUpper_WandCast_C:SetTargetTrackers(InputPin) end
---@param Flag boolean
function UBTT_BipedUpper_WandCast_C:SetContexts(Flag) end
---@param InActor AActor
function UBTT_BipedUpper_WandCast_C:StartWandAbility(InActor) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_WandCast_C:CustActionEvt_ConjureMotionCommand_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_WandCast_C:CustActionEvt_AnimCompletePartial_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_WandCast_C:CustActionEvt_FireWandPartial_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_WandCast_C:CustActionEvt_FirePartialBodySpell_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_BipedUpper_WandCast_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_BipedUpper_WandCast_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UBTT_BipedUpper_WandCast_C:SpellMadeContact(Caller, MunitionImpactData) end
---@param EntryPoint int32
function UBTT_BipedUpper_WandCast_C:ExecuteUbergraph_BTT_BipedUpper_WandCast(EntryPoint) end


