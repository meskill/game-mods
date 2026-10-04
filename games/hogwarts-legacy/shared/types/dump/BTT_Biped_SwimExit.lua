---@meta

---@class UBTT_Biped_SwimExit_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTT_Biped_SwimExit_C = {}

---@param Flag boolean
function UBTT_Biped_SwimExit_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SwimExit_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SwimExit_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_SwimExit_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_SwimExit_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_SwimExit_C:ExecuteUbergraph_BTT_Biped_SwimExit(EntryPoint) end


