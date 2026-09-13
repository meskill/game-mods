---@meta

---@class UBTT_Biped_Idle_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StickPressed boolean
---@field DesiredWorldSpeed float
---@field DesiredWorldDirection FVector
---@field StickPressMinTime float
---@field StickReleaseMinTime float
---@field StickReleasedTime float
---@field StickPressedLoop boolean
---@field StickReleasedLoop boolean
local UBTT_Biped_Idle_C = {}

---@param AmbulatoryCharacter AAmbulatory_Character
function UBTT_Biped_Idle_C:Stop(AmbulatoryCharacter) end
function UBTT_Biped_Idle_C:ExecuteWorldStartAbility() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Idle_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Idle_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Idle_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Idle_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Idle_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Idle_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Biped_Idle_C:LeafNodeSwitchRequested() end
---@param EntryPoint int32
function UBTT_Biped_Idle_C:ExecuteUbergraph_BTT_Biped_Idle(EntryPoint) end


