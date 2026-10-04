---@meta

---@class UBTT_Biped_SimpleInteraction_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StickMag float
---@field OnButtslideSurface boolean
---@field CurrentStickDirection FVector2D
---@field RestoreIKState boolean
---@field InteractionAbilityClass UClass
---@field InteractActor AActor
local UBTT_Biped_SimpleInteraction_C = {}

function UBTT_Biped_SimpleInteraction_C:GetBlackboardVariables() end
---@param Flag boolean
function UBTT_Biped_SimpleInteraction_C:EnableHUD(Flag) end
---@param Flag boolean
function UBTT_Biped_SimpleInteraction_C:SetContexts(Flag) end
---@param Object UObject
---@param Allowed boolean
function UBTT_Biped_SimpleInteraction_C:ToggleLockOnCamera(Object, Allowed) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SimpleInteraction_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SimpleInteraction_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_SimpleInteraction_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_SimpleInteraction_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_SimpleInteraction_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_SimpleInteraction_C:ExecuteUbergraph_BTT_Biped_SimpleInteraction(EntryPoint) end


