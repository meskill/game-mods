---@meta

---@class UBTT_Biped_ClimbLadder_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OriginalCapsuleRadius float
---@field ClimbingCapsuleRadius float
---@field Ladder ALadder
---@field DeadZone float
---@field StickPressed boolean
---@field MoveUp boolean
---@field DismountBottomRungs int32
---@field DismountTopRungs int32
---@field DismountTopAnimStarted boolean
---@field DismountTopAnimStartHandle FHermesBPDelegateHandle
local UBTT_Biped_ClimbLadder_C = {}

function UBTT_Biped_ClimbLadder_C:RevertMovementMode() end
---@param Ignore boolean
function UBTT_Biped_ClimbLadder_C:IgnoreLadderWhenMoving(Ignore) end
---@return boolean
function UBTT_Biped_ClimbLadder_C:CheckForDismountBottom() end
---@return boolean
function UBTT_Biped_ClimbLadder_C:CheckForDismountTop() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLadder_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLadder_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ClimbLadder_C:CustActionEvt_ClimbMoveComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_ClimbLadder_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_ClimbLadder_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_ClimbLadder_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param Caller UObject
function UBTT_Biped_ClimbLadder_C:DismountTopAnimStart(Caller) end
---@param EntryPoint int32
function UBTT_Biped_ClimbLadder_C:ExecuteUbergraph_BTT_Biped_ClimbLadder(EntryPoint) end


