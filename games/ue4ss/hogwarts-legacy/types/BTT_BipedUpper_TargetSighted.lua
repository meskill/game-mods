---@meta

---@class UBTT_BipedUpper_TargetSighted_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_BipedUpper_TargetSighted_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_TargetSighted_C:InpActEvt_InteractButton_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_BipedUpper_TargetSighted_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_BipedUpper_TargetSighted_C:ReceiveExecute(OwnerActor) end
---@param Sense UAISense
---@param Target AActor
function UBTT_BipedUpper_TargetSighted_C:TSighted(Sense, Target) end
---@param Sense UAISense
---@param NewTarget AActor
---@param OldTarget AActor
function UBTT_BipedUpper_TargetSighted_C:TChanged(Sense, NewTarget, OldTarget) end
---@param Sense UAISense
---@param OldTarget AActor
function UBTT_BipedUpper_TargetSighted_C:TLost(Sense, OldTarget) end
---@param EntryPoint int32
function UBTT_BipedUpper_TargetSighted_C:ExecuteUbergraph_BTT_BipedUpper_TargetSighted(EntryPoint) end


