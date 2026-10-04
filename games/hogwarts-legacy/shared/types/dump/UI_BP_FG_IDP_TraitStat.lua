---@meta

---@class UUI_BP_FG_IDP_TraitStat_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field trait1 UUI_BP_TraitNote_C
---@field TraitSlotLevel UPhoenixTextBlock
---@field traitTier UPhoenixTextBlock
---@field FinalTraitArray TArray<FName>
---@field TraitArray TArray<UUI_BP_TraitNote_C>
---@field showAvailableTraits boolean
---@field TraitTierValueNumber FString
local UUI_BP_FG_IDP_TraitStat_C = {}

---@param TraitRarity FName
---@param TraitTierValue FString
function UUI_BP_FG_IDP_TraitStat_C:GetTraitTierValueNumeric(TraitRarity, TraitTierValue) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_IDP_TraitStat_C:GatherMenuReaderStrings(DepthLevel) end
---@param TraitRarity FName
---@param TraitTierValue FText
function UUI_BP_FG_IDP_TraitStat_C:GetTraitTierValue(TraitRarity, TraitTierValue) end
function UUI_BP_FG_IDP_TraitStat_C:ResetTraits() end
---@param TraitArray TArray<FName>
---@param AvailableTraits int32
---@param ObjectRarity FName
function UUI_BP_FG_IDP_TraitStat_C:SetTraitData(TraitArray, AvailableTraits, ObjectRarity) end
---@param IsDesignTime boolean
function UUI_BP_FG_IDP_TraitStat_C:PreConstruct(IsDesignTime) end
function UUI_BP_FG_IDP_TraitStat_C:Construct() end
---@param EntryPoint int32
function UUI_BP_FG_IDP_TraitStat_C:ExecuteUbergraph_UI_BP_FG_IDP_TraitStat(EntryPoint) end


