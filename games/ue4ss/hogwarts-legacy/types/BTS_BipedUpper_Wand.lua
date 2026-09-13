---@meta

---@class UBTS_BipedUpper_Wand_C : UBTS_Biped_BasicMobility_C
---@field UberGraphFrame FPointerToUberGraphFrame
local UBTS_BipedUpper_Wand_C = {}

---@return boolean
function UBTS_BipedUpper_Wand_C:PartialBodyAbilityTest() end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_Wand_C:CustActionEvt_FirePartialBodySpell_K2Node_BTCustomActionEvent_2(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_Wand_C:CustActionEvt_BreakoutUpperSuccess_K2Node_BTCustomActionEvent_1(VariantMapHandle) end
---@param VariantMapHandle FVariantMapHandle
function UBTS_BipedUpper_Wand_C:CustActionEvt_BreakoutUpperFail_K2Node_BTCustomActionEvent_0(VariantMapHandle) end
---@param OwnerActor AActor
function UBTS_BipedUpper_Wand_C:ServiceBegin(OwnerActor) end
---@param OwnerActor AActor
function UBTS_BipedUpper_Wand_C:ServiceEnd(OwnerActor) end
---@param EntryPoint int32
function UBTS_BipedUpper_Wand_C:ExecuteUbergraph_BTS_BipedUpper_Wand(EntryPoint) end


