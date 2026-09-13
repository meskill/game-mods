---@meta

---@class UUI_BP_CreatureManagement_DetailsPanel_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CreatureAlbinoIcon UImage
---@field CreatureGenderIcon UImage
---@field descriptionText UPhoenixTextBlock
---@field detailsLegend UOverlay
---@field detailsLegendBar UUI_BP_Legend_Horizontal_Tooltip_C
---@field detailsTitle UPhoenixTextBlock
---@field ErrorText UHorizontalBox
---@field ErrorTextMain UPhoenixTextBlock
---@field Image_4 UImage
---@field meterDivider UImage
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field StatusSummary UUI_BP_CreatureStatusSummary_C
---@field OnGetUpgradeStats FUI_BP_CreatureManagement_DetailsPanel_COnGetUpgradeStats
---@field LegendGearUpgrade ULegendItem
---@field LegendGearApplyTrait ULegendItem
---@field ApplyUpgradeOnSelected FUI_BP_CreatureManagement_DetailsPanel_CApplyUpgradeOnSelected
---@field hasLegend boolean
---@field IsMale boolean
---@field IsAlbino boolean
local UUI_BP_CreatureManagement_DetailsPanel_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureManagement_DetailsPanel_C:GatherMenuReaderStrings(DepthLevel) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureManagement_DetailsPanel_C:UpdateBreedTooltip(CreatureState) end
---@param SpeciesName FName
---@param TooltipLegendArray TArray<FLegendItemData>
function UUI_BP_CreatureManagement_DetailsPanel_C:UpdateSpeciesTooltip(SpeciesName, TooltipLegendArray) end
---@param CreatureState UCreatureState
---@param NurturingSpaceID FName
UUI_BP_CreatureManagement_DetailsPanel_C['Update Tooltip'] = function(self, CreatureState, NurturingSpaceID) end
---@param IsDesignTime boolean
function UUI_BP_CreatureManagement_DetailsPanel_C:PreConstruct(IsDesignTime) end
function UUI_BP_CreatureManagement_DetailsPanel_C:Construct() end
---@param EntryPoint int32
function UUI_BP_CreatureManagement_DetailsPanel_C:ExecuteUbergraph_UI_BP_CreatureManagement_DetailsPanel(EntryPoint) end
function UUI_BP_CreatureManagement_DetailsPanel_C:ApplyUpgradeOnSelected__DelegateSignature() end
---@param BaseValue int32
---@param NextUpgradeValue int32
function UUI_BP_CreatureManagement_DetailsPanel_C:OnGetUpgradeStats__DelegateSignature(BaseValue, NextUpgradeValue) end


