---@meta

---@class UBTT_Biped_Move_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IKFootPlacementComponent UObject
---@field LastDodgeTime float
---@field DodgeCoolDownTime float
---@field StickPressed boolean
---@field StickReleaseMinTime float
---@field StickReleasedTime float
---@field DesiredWorldDirection FVector
---@field DesiredWorldSpeed float
---@field SpeedGovernor UCurveFloat
local UBTT_Biped_Move_C = {}

---@param StickX float
---@param StickY float
---@param IsValid boolean
function UBTT_Biped_Move_C:StickValid(StickX, StickY, IsValid) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Move_C:CustActionEvt_BlockedByWall_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Move_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Move_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Move_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Move_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Move_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Biped_Move_C:ExecuteUbergraph_BTT_Biped_Move(EntryPoint) end


