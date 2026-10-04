---@meta

---@class UBTT_Biped_Transition_C : UBTTask_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TransitionAbilityClass UClass
---@field IKRestoreState boolean
local UBTT_Biped_Transition_C = {}

function UBTT_Biped_Transition_C:MakeSurePlayerIsOnGround() end
---@param Flag boolean
function UBTT_Biped_Transition_C:IgnoreInteractActor(Flag) end
---@param Flag boolean
function UBTT_Biped_Transition_C:EnableHUD(Flag) end
---@param Flag boolean
function UBTT_Biped_Transition_C:SetContexts(Flag) end
---@param Object UObject
---@param Allowed boolean
function UBTT_Biped_Transition_C:ToggleLockOnCamera(Object, Allowed) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Transition_C:InpActEvt_Move_K2Node_CustomStickInputActionEvent_0(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Transition_C:CustActionEvt_AnimComplete_K2Node_BTCustomActionEvent_3(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Transition_C:CustActionEvt_DisableIK_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Transition_C:CustActionEvt_Landed_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTT_Biped_Transition_C:CustActionEvt_LandFromFalling_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTT_Biped_Transition_C:ReceiveExecute(OwnerActor) end
---@param OwnerActor AActor
function UBTT_Biped_Transition_C:ExitTask(OwnerActor) end
---@param EntryPoint int32
function UBTT_Biped_Transition_C:ExecuteUbergraph_BTT_Biped_Transition(EntryPoint) end


