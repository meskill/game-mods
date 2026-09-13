---@meta

---@class UBTT_Biped_ShadowSprint_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IKRestoreState boolean
---@field MinTimerExpired boolean
---@field ExitMechanic boolean
---@field OnButtslideSurface boolean
---@field IsInterruptible boolean
---@field OldCapsuleRadius float
---@field LastDirection FVector
---@field ShadowSprintActor ABP_ShadowSprint_C
---@field OldCapsuleHalfHeight float
local UBTT_Biped_ShadowSprint_C = {}

---@param Character ACharacter
function UBTT_Biped_ShadowSprint_C:ShrinkCapsule(Character) end
---@param BipedPlayer ABiped_Player
function UBTT_Biped_ShadowSprint_C:SpawnShadowSprintActor(BipedPlayer) end
---@param Character ACharacter
function UBTT_Biped_ShadowSprint_C:RecoverCapsule(Character) end
function UBTT_Biped_ShadowSprint_C:StopShadowSprint() end
---@param Flag boolean
function UBTT_Biped_ShadowSprint_C:SetContexts(Flag) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowSprint_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowSprint_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowSprint_C:InpActEvt_Stupefy_K2Node_CustomAnalogInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowSprint_C:CustActionEvt_SurfaceTypeChanged_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowSprint_C:CustActionEvt_MovementModeChanged_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_ShadowSprint_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Biped_ShadowSprint_C:MinShadowSprintTimerExpired() end
---@param OwnerActor AActor
function UBTT_Biped_ShadowSprint_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_ShadowSprint_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_ShadowSprint_C:ExecuteUbergraph_BTT_Biped_ShadowSprint(EntryPoint) end


