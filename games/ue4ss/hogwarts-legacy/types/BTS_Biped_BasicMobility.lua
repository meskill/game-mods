---@meta

---@class UBTS_Biped_BasicMobility_C : UBTService_AvaAITree_Input
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Debug_SpawnedFaceTarget AActor
---@field Debug_SpawnedLookAtTarget AActor
---@field AltModifierPressed boolean
local UBTS_Biped_BasicMobility_C = {}

---@param Loaded UClass
function UBTS_Biped_BasicMobility_C:OnLoaded_809DC56944F42BE29C094A8145446EBA(Loaded) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_BasicMobility_C:CustActionEvt_BroomFlight_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param CachedResult boolean
function UBTS_Biped_BasicMobility_C:GameLogicElementEvt_CollapseIntoRagdoll_K2Node_GameLogicBoolResultEvent_0(CachedResult) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_BasicMobility_C:InpActEvt_DEBUG_NumPadModifier_K2Node_CustomInputActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_BasicMobility_C:InpActEvt_DEBUG_NumPadModifier_K2Node_CustomInputActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_Biped_BasicMobility_C:InpActEvt_DEBUG_NumPadModifier_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTS_Biped_BasicMobility_C:ServiceEnd(OwnerActor) end
---@param OwnerActor AActor
function UBTS_Biped_BasicMobility_C:ServiceBegin(OwnerActor) end
---@param Caller UObject
function UBTS_Biped_BasicMobility_C:MovementModeChanged(Caller) end
---@param EntryPoint int32
function UBTS_Biped_BasicMobility_C:ExecuteUbergraph_BTS_Biped_BasicMobility(EntryPoint) end


