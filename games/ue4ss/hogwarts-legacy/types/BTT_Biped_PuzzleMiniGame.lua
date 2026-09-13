---@meta

---@class UBTT_Biped_PuzzleMiniGame_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PuzzleActor AActor
---@field RotationSpeed float
---@field InterpPosSpeed float
---@field DistFromSite float
---@field ExitingStation boolean
---@field StandFar float
---@field StandNear float
---@field DesiredPosition FVector
---@field IsAlohomoraObject boolean
---@field AlohomoraLockPuzzle ABP_AlohomoraLock_C
---@field DistanceFromPuzzle float
---@field HeightOffsetFromPlayer float
---@field AllowCancel boolean
---@field cancelled boolean
local UBTT_Biped_PuzzleMiniGame_C = {}

---@return ABP_AlohomoraLock_C
function UBTT_Biped_PuzzleMiniGame_C:SpawnLock() end
---@param Hide boolean
function UBTT_Biped_PuzzleMiniGame_C:HideHudElements(Hide) end
---@param Direction FVector
function UBTT_Biped_PuzzleMiniGame_C:GetTargetDirection(Direction) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:CustActionEvt_Success_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_ParselTongue_Top_Left_K2Node_CustomInputActionEvent_17(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_ParselTongue_Top_Right_K2Node_CustomInputActionEvent_16(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_ParselTongue_Bottom_Left_K2Node_CustomInputActionEvent_15(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_ParselTongue_Bottom_Right_K2Node_CustomInputActionEvent_14(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MinigameMovementAux_K2Node_CustomStickInputActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MinigameMovementAux_K2Node_CustomStickInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MinigameMovementMain_K2Node_CustomStickInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MinigameMovementMain_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Inner_Left_K2Node_CustomInputActionEvent_13(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Inner_Left_K2Node_CustomInputActionEvent_12(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Inner_Right_K2Node_CustomInputActionEvent_11(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Inner_Right_K2Node_CustomInputActionEvent_10(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Outer_Left_K2Node_CustomInputActionEvent_9(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Outer_Left_K2Node_CustomInputActionEvent_8(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Outer_Right_K2Node_CustomInputActionEvent_7(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Alohomora_KB_Outer_Right_K2Node_CustomInputActionEvent_6(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MiniGame_Cancel_K2Node_CustomInputActionEvent_5(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MiniGame_Cancel_K2Node_CustomInputActionEvent_4(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Minigame_SlapKey_K2Node_CustomInputActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_Minigame_SlapKey_K2Node_CustomInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MiniGame_AutoSolve_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PuzzleMiniGame_C:InpActEvt_MiniGame_AutoSolve_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_PuzzleMiniGame_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_PuzzleMiniGame_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_PuzzleMiniGame_C:ReceiveTick(OwnerActor, DeltaSeconds) end
function UBTT_Biped_PuzzleMiniGame_C:SetAlohomoraOrCancel() end
---@param Caller UObject
---@param HitBySpell FHitBySpellData
function UBTT_Biped_PuzzleMiniGame_C:ActorHitBySpell(Caller, HitBySpell) end
---@param Caller UObject
---@param MunitionImpactData FMunitionImpactData
function UBTT_Biped_PuzzleMiniGame_C:MunitionImpactDamage(Caller, MunitionImpactData) end
---@param EntryPoint int32
function UBTT_Biped_PuzzleMiniGame_C:ExecuteUbergraph_BTT_Biped_PuzzleMiniGame(EntryPoint) end


