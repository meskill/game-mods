---@meta

---@class UBTT_Biped_Steal_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractPressed boolean
---@field PickupTargetLocation FVector
---@field InteractActor AActor
---@field InAlohomora boolean
---@field LoopingVFX UParticleSystemComponent
---@field MuzzleVFX UParticleSystemComponent
---@field AlohomoraBeamFX UNiagaraComponent
---@field AlohomoraLockFX UParticleSystemComponent
---@field PearVFX UNiagaraComponent
---@field TicklingPearDoor boolean
---@field DistToPearDoor float
---@field PearInterpSpeed float
local UBTT_Biped_Steal_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Steal_C:CustActionEvt_ItemCollected_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Steal_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Steal_C:CustActionEvt_CancelSteal_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Steal_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Steal_C:ExitTask(OwnerActor) end
---@param Caller UObject
function UBTT_Biped_Steal_C:CollectStolenItem(Caller) end
---@param EntryPoint int32
function UBTT_Biped_Steal_C:ExecuteUbergraph_BTT_Biped_Steal(EntryPoint) end


