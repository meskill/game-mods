---@meta

---@class UBTT_InteractWithStation_JoinStation_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StartingMobilityActionState EMobilityActionState::Type
---@field StationActor UObject
---@field StationComponent UStationComponent
---@field UIManager UUIManager
---@field Station_UI UUI_BP_Station_Social_Interaction_C
---@field StickPressed boolean
---@field DesiredWorldSpeed float
---@field DesiredWorldDirection FVector
---@field StickReleasedTime float
---@field StickMinTime float
local UBTT_InteractWithStation_JoinStation_C = {}

function UBTT_InteractWithStation_JoinStation_C:LeaveStation() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_InteractWithStation_JoinStation_C:InpActEvt_InteractButton_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_InteractWithStation_JoinStation_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_InteractWithStation_JoinStation_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_InteractWithStation_JoinStation_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_InteractWithStation_JoinStation_C:ResetGate() end
---@param Caller UObject
function UBTT_InteractWithStation_JoinStation_C:ExitComplete(Caller) end
---@param EntryPoint int32
function UBTT_InteractWithStation_JoinStation_C:ExecuteUbergraph_BTT_InteractWithStation_JoinStation(EntryPoint) end


