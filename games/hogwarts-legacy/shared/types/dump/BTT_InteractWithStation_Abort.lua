---@meta

---@class UBTT_InteractWithStation_Abort_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StartingMobilityActionState EMobilityActionState::Type
---@field StationActor UObject
---@field StationComponent UStationComponent
---@field UIManager UUIManager
---@field Station_UI UUI_BP_Station_Social_Interaction_C
local UBTT_InteractWithStation_Abort_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_InteractWithStation_Abort_C:InpActEvt_InteractButton_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_InteractWithStation_Abort_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_InteractWithStation_Abort_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_InteractWithStation_Abort_C:ExecuteUbergraph_BTT_InteractWithStation_Abort(EntryPoint) end


