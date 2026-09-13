---@meta

---@class UBTT_Biped_ClimbLedge_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StickX float
---@field StickY float
---@field StickMag float
---@field ['Ledge Actor'] AActor
local UBTT_Biped_ClimbLedge_C = {}

---@param Result boolean
function UBTT_Biped_ClimbLedge_C:ShouldAutoPullUp(Result) end
---@param Player ABiped_Character
---@return boolean
function UBTT_Biped_ClimbLedge_C:ShouldFallOffLedge(Player) end
function UBTT_Biped_ClimbLedge_C:RevertMovementMode() end
---@param X float
---@param Y float
---@param Direction FVector
function UBTT_Biped_ClimbLedge_C:GetCameraRelativeDirection(X, Y, Direction) end
---@param ClimbLedgeState EClimbingLedgeState::Type
function UBTT_Biped_ClimbLedge_C:SetRightArmState(ClimbLedgeState) end
---@param Flag boolean
function UBTT_Biped_ClimbLedge_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:CustActionEvt_JumpToFall_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:CustActionEvt_ClimbMoveComplete_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:InpActEvt_ClimbButton_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:InpActEvt_DodgeAndBlinkButton_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:CustActionEvt_ClimbAnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLedge_C:CustActionEvt_ClimbAnimCompletePartial_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_ClimbLedge_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_ClimbLedge_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_ClimbLedge_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Biped_ClimbLedge_C:ExecuteUbergraph_BTT_Biped_ClimbLedge(EntryPoint) end


