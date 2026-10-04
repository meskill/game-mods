---@meta

---@class UBTT_BipedUpper_Looting_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_BipedUpper_Looting_C = {}

---@return boolean
function UBTT_BipedUpper_Looting_C:IsCrouching() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_BipedUpper_Looting_C:CustActionEvt_AnimCompletePartial_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_BipedUpper_Looting_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_BipedUpper_Looting_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_BipedUpper_Looting_C:ExecuteUbergraph_BTT_BipedUpper_Looting(EntryPoint) end


