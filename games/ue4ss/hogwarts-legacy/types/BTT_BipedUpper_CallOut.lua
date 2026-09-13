---@meta

---@class UBTT_BipedUpper_CallOut_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_BipedUpper_CallOut_C = {}

---@param OwnerActor AActor
function UBTT_BipedUpper_CallOut_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_BipedUpper_CallOut_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_BipedUpper_CallOut_C:ExecuteUbergraph_BTT_BipedUpper_CallOut(EntryPoint) end


