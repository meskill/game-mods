---@meta

---@class UBTT_Biped_Slide_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ButtslideSurfaceTimer FTimerHandle
---@field AmbulatoryMovementComponent UAmbulatory_MovementComponent
---@field SlideBySurfaceType boolean
---@field CurrentSurfaceType EPhysicalSurface
local UBTT_Biped_Slide_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Slide_C:InpActEvt_JumpButton_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Slide_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
function UBTT_Biped_Slide_C:SpawnRock() end
function UBTT_Biped_Slide_C:TimerComplete() end
---@param OwnerActor AActor
function UBTT_Biped_Slide_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Slide_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_Slide_C:ReceiveExecute(OwnerActor) end
function UBTT_Biped_Slide_C:AllowJumping() end
---@param EntryPoint int32
function UBTT_Biped_Slide_C:ExecuteUbergraph_BTT_Biped_Slide(EntryPoint) end


