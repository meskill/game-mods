---@meta

---@class UBTT_Biped_Swim_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StickPressed boolean
---@field StickReleasedTime float
---@field DesiredWorldDirection FVector
---@field DesiredWorldSpeed float
---@field StickMinTime float
---@field Moving boolean
---@field StickNudgeLoop boolean
---@field TutorialTimerHandle FTimerHandle
local UBTT_Biped_Swim_C = {}

function UBTT_Biped_Swim_C:Stop() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Swim_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Swim_C:CustActionEvt_BlockedByWall_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Swim_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Swim_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Swim_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Biped_Swim_C:TutorialTimerExpired() end
---@param EntryPoint int32
function UBTT_Biped_Swim_C:ExecuteUbergraph_BTT_Biped_Swim(EntryPoint) end


