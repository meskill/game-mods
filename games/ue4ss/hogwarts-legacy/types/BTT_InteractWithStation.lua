---@meta

---@class UBTT_InteractWithStation_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StationComponent UStationComponent
---@field UIManager UUIManager
---@field Station_UI UUI_BP_Station_Social_Interaction_C
---@field StationData FStationQueryData
local UBTT_InteractWithStation_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_InteractWithStation_C:InpActEvt_InteractButton_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_InteractWithStation_C:ExitTask(OwnerActor) end
---@param Caller UObject
function UBTT_InteractWithStation_C:StationInteractionExit(Caller) end
---@param Caller UObject
function UBTT_InteractWithStation_C:StationInteractionComplete(Caller) end
---@param OwnerActor AActor
function UBTT_InteractWithStation_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_InteractWithStation_C:ExecuteUbergraph_BTT_InteractWithStation(EntryPoint) end


