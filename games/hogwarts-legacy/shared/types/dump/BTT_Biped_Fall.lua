---@meta

---@class UBTT_Biped_Fall_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HeightAtFallStart float
---@field DesiredWorldDirection FVector
local UBTT_Biped_Fall_C = {}

---@param OwnerActor AActor
function UBTT_Biped_Fall_C:ExecuteFall(OwnerActor) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Fall_C:CustActionEvt_Landed_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Fall_C:CustActionEvt_SpellButton_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Fall_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param TeleportedCharacter AAmbulatory_Character
---@param AmountDisplaced FVector
---@param AmountRotated FRotator
function UBTT_Biped_Fall_C:OnCharacterTeleported(TeleportedCharacter, AmountDisplaced, AmountRotated) end
---@param OwnerActor AActor
function UBTT_Biped_Fall_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Fall_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_Fall_C:ExecuteUbergraph_BTT_Biped_Fall(EntryPoint) end


