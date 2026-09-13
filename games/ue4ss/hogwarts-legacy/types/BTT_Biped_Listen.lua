---@meta

---@class UBTT_Biped_Listen_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field abortAnimUponExit boolean
local UBTT_Biped_Listen_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Listen_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Listen_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Listen_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_Listen_C:ExecuteUbergraph_BTT_Biped_Listen(EntryPoint) end


