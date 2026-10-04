---@meta

---@class UBTT_Biped_JumpLand_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CheckMovementModeTimer FTimerHandle
---@field Landed boolean
---@field JumpCooldownTime float
---@field AnimComplete boolean
local UBTT_Biped_JumpLand_C = {}

---@param Flag boolean
function UBTT_Biped_JumpLand_C:isSprinting(Flag) end
function UBTT_Biped_JumpLand_C:Exit() end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_JumpLand_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_JumpLand_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_JumpLand_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_JumpLand_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Biped_JumpLand_C:CheckMovementMode() end
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UBTT_Biped_JumpLand_C:MovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
---@param EntryPoint int32
function UBTT_Biped_JumpLand_C:ExecuteUbergraph_BTT_Biped_JumpLand(EntryPoint) end


