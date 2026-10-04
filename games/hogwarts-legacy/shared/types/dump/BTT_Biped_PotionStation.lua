---@meta

---@class UBTT_Biped_PotionStation_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PotionStation AActor
---@field PlayerToStation FVector
---@field DesiredRotation FRotator
---@field Up FVector
---@field InterpSpeed float
---@field RotationSpeed float
---@field InterpPosSpeed float
---@field DistFromSite float
---@field ExitingStation boolean
local UBTT_Biped_PotionStation_C = {}

---@param Player AActor
function UBTT_Biped_PotionStation_C:SetDesiredRotation(Player) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PotionStation_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PotionStation_C:CustActionEvt_UsePotionStation_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_PotionStation_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_PotionStation_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_PotionStation_C:ExitTask(OwnerActor) end
---@param OwnerActor AActor
---@param DeltaSeconds float
function UBTT_Biped_PotionStation_C:ReceiveTick(OwnerActor, DeltaSeconds) end
---@param EntryPoint int32
function UBTT_Biped_PotionStation_C:ExecuteUbergraph_BTT_Biped_PotionStation(EntryPoint) end


