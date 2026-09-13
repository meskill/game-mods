---@meta

---@class UBTT_Biped_RideMineCart_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MineCart AActor
---@field ChairRotation FRotator
---@field ChairLocation FVector
---@field VectorToChair FVector
---@field interpAlpha float
---@field FadeTime float
---@field HoldTime float
---@field ChairTransform FTransform
---@field Player ABiped_Player
local UBTT_Biped_RideMineCart_C = {}

---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_RideMineCart_C:CustActionEvt_DismountMineCart_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_RideMineCart_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_RideMineCart_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_RideMineCart_C:ExecuteUbergraph_BTT_Biped_RideMineCart(EntryPoint) end


