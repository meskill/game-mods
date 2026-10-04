---@meta

---@class UBTT_BipedUpper_RideCreature_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_BipedUpper_RideCreature_C = {}

---@param Flag boolean
function UBTT_BipedUpper_RideCreature_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_RideCreature_C:CustActionEvt_DismountCreatureUpper_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_BipedUpper_RideCreature_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_BipedUpper_RideCreature_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_BipedUpper_RideCreature_C:ExecuteUbergraph_BTT_BipedUpper_RideCreature(EntryPoint) end


