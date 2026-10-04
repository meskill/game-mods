---@meta

---@class UBTT_Biped_SlipAndFall_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AmbulatoryMovementComponent UAmbulatory_MovementComponent
---@field CurrentSurfaceType EPhysicalSurface
local UBTT_Biped_SlipAndFall_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SlipAndFall_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SlipAndFall_C:CustActionEvt_Landed_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SlipAndFall_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_SlipAndFall_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_SlipAndFall_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_SlipAndFall_C:ExecuteUbergraph_BTT_Biped_SlipAndFall(EntryPoint) end


