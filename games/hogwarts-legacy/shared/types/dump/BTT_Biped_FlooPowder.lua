---@meta

---@class UBTT_Biped_FlooPowder_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_Biped_FlooPowder_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_FlooPowder_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_FlooPowder_C:CustActionEvt_FlooEntered_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_FlooPowder_C:CustActionEvt_FlooCastFinished_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_FlooPowder_C:CustActionEvt_FlooExitFinished_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_FlooPowder_C:CustActionEvt_FlooCancelFinished_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_FlooPowder_C:CustActionEvt_FlooDropPowder_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_FlooPowder_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_FlooPowder_C:ReceiveExecute(OwnerActor) end
---@param Caller UObject
function UBTT_Biped_FlooPowder_C:FlooTeleportFinished(Caller) end
---@param EntryPoint int32
function UBTT_Biped_FlooPowder_C:ExecuteUbergraph_BTT_Biped_FlooPowder(EntryPoint) end


