---@meta

---@class UBTT_Biped_Jump_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RestoreIKState boolean
---@field HeightAtJumpStart float
---@field AllowLand boolean
---@field Landed boolean
local UBTT_Biped_Jump_C = {}

---@param AllowLand boolean
function UBTT_Biped_Jump_C:SetAllowLand(AllowLand) end
function UBTT_Biped_Jump_C:EndIK() end
function UBTT_Biped_Jump_C:StartIK() end
---@param OwnerActor AActor
function UBTT_Biped_Jump_C:ExecuteJump(OwnerActor) end
---@param Actor AActor
---@param JumpingType EJumpingType::Type
function UBTT_Biped_Jump_C:CalculateJumpingType(Actor, JumpingType) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Jump_C:CustActionEvt_JumpImpulse_K2Node_BTCustomActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Jump_C:CustActionEvt_JumpToFall_K2Node_BTCustomActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Jump_C:CustActionEvt_Landed_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Jump_C:CustActionEvt_AllowJumpLand_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Jump_C:CustActionEvt_ClimbMoveComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Jump_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Jump_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Jump_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_Jump_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param TeleportedCharacter AAmbulatory_Character
---@param AmountDisplaced FVector
---@param AmountRotated FRotator
function UBTT_Biped_Jump_C:OnCharacterTeleported(TeleportedCharacter, AmountDisplaced, AmountRotated) end
---@param EntryPoint int32
function UBTT_Biped_Jump_C:ExecuteUbergraph_BTT_Biped_Jump(EntryPoint) end


