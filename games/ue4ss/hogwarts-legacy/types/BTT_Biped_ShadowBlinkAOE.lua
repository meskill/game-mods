---@meta

---@class UBTT_Biped_ShadowBlinkAOE_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IKRestoreState boolean
---@field LastDirection FVector
---@field TeleportLocation FVector
---@field TeleportRotation FRotator
---@field TeleportTest boolean
---@field EnemyActor AActor
---@field AbilityClass UClass
local UBTT_Biped_ShadowBlinkAOE_C = {}

---@param Falling boolean
function UBTT_Biped_ShadowBlinkAOE_C:FallingTest(Falling) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlinkAOE_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlinkAOE_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_ShadowBlinkAOE_C:CustActionEvt_FireWand_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_ShadowBlinkAOE_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param OwnerActor AActor
function UBTT_Biped_ShadowBlinkAOE_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_ShadowBlinkAOE_C:ReceiveExecute(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_ShadowBlinkAOE_C:ExecuteUbergraph_BTT_Biped_ShadowBlinkAOE(EntryPoint) end


