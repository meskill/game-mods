---@meta

---@class UBTT_Biped_BeastCaptureSuccess_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PotionStation AActor
---@field PlayerToStation FVector
---@field DesiredRotation FRotator
---@field Up FVector
---@field InterpSpeed float
---@field RotationSpeed float
---@field InterpPosSpeed float
---@field DistFromSite float
local UBTT_Biped_BeastCaptureSuccess_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_BeastCaptureSuccess_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_BeastCaptureSuccess_C:CustActionEvt_Success_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_BeastCaptureSuccess_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_BeastCaptureSuccess_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_BeastCaptureSuccess_C:ExecuteUbergraph_BTT_Biped_BeastCaptureSuccess(EntryPoint) end


