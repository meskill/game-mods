---@meta

---@class UUI_BP_FG_VendorDetails_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Appear UWidgetAnimation
---@field AlbinoIcon UImage
---@field destroyNotification UVerticalBox
---@field destroyText UPhoenixTextBlock
---@field detailsDescription UPhoenixTextBlock
---@field detailsLegend UOverlay
---@field detailsLegendBar UUI_BP_Legend_Horizontal_Tooltip_C
---@field gearContent UVerticalBox
---@field GearDeleteMessage UPhoenixTextBlock
---@field gearDesc UPhoenixTextBlock
---@field gearHeader UUI_BP_FG_IDP_GearHeader_C
---@field GearTraits UUI_BP_FG_IDP_TraitStat_C
---@field gearUpgrades UUI_BP_GearUpgrades_C
---@field GenderIcon UImage
---@field itemContent UVerticalBox
---@field itemRequiredLevel UPhoenixTextBlock
---@field itemRequiredLevelShield UCanvasPanel
---@field itemTitle UPhoenixTextBlock
---@field ItemValue UUI_BP_FG_VDP_ItemValue_C
---@field mainStat UUI_BP_GearStat_C
---@field NoMagicMessage UPhoenixTextBlock
---@field OutOfStock UBorder
---@field OutOfStockLabel UPhoenixTextBlock
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field RequiredLevel UPhoenixTextBlock
---@field requiredLevelShield UCanvasPanel
---@field SellValue UVerticalBox
---@field SellValueText UPhoenixTextBlock
---@field Stats UOverlay
---@field statsBox UHorizontalBox
---@field upgradeStat UUI_BP_GearStat_C
---@field VendorDetailCollapseDistpatch FUI_BP_FG_VendorDetails_CVendorDetailCollapseDistpatch
---@field LegendHoldItem ULegendItem
---@field OnHoldButtonReleasedEvent FUI_BP_FG_VendorDetails_COnHoldButtonReleasedEvent
---@field ObjectRarity FName
---@field IsAlbino boolean
---@field IsMale boolean
local UUI_BP_FG_VendorDetails_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_VendorDetails_C:GatherMenuReaderStrings(DepthLevel) end
---@param EquippedSlot EGearSlotIDEnum
UUI_BP_FG_VendorDetails_C['Compare Stats to Equipped'] = function(self, EquippedSlot) end
---@param LegendItemArray TArray<FLegendItemData>
---@param UseHold boolean
---@param HoldIndex int32
function UUI_BP_FG_VendorDetails_C:SetTooltipLegend(LegendItemArray, UseHold, HoldIndex) end
---@param GearItemID FGearItemID
---@param ItemRarity FName
function UUI_BP_FG_VendorDetails_C:SetGearUpgrades(GearItemID, ItemRarity) end
---@param ItemLevel int32
---@param ItemRarity FName
function UUI_BP_FG_VendorDetails_C:SetRequiredGearLevel(ItemLevel, ItemRarity) end
---@param GearSlot EGearSlotIDEnum
function UUI_BP_FG_VendorDetails_C:SetUnidentifiedInfo(GearSlot) end
---@param GearSlot EGearSlotIDEnum
---@param Offense int32
---@param Defense int32
---@param isUnidentified boolean
---@param ItemRarity FName
function UUI_BP_FG_VendorDetails_C:SetGearStats(GearSlot, Offense, Defense, isUnidentified, ItemRarity) end
function UUI_BP_FG_VendorDetails_C:PlayVendorDetailsDisAppearAnim() end
function UUI_BP_FG_VendorDetails_C:PlayVendorDetailsAppearAnim() end
---@param Level int32
---@param Usable boolean
function UUI_BP_FG_VendorDetails_C:SetLevel(Level, Usable) end
function UUI_BP_FG_VendorDetails_C:ResetTooltip() end
---@param GearID FName
---@param GearVariation FName
function UUI_BP_FG_VendorDetails_C:SetStandardTooltip(GearID, GearVariation) end
---@param GearID FName
---@param Variation FName
function UUI_BP_FG_VendorDetails_C:SetCapturedCreatureInfo(GearID, Variation) end
---@param GearID FName
---@param GearVariation FName
function UUI_BP_FG_VendorDetails_C:SetGearLevelRequirement(GearID, GearVariation) end
---@param GearID FName
---@param GearVariation FName
---@param DisplayIfSafeToDelete boolean
function UUI_BP_FG_VendorDetails_C:SetGearDeleteMessage(GearID, GearVariation, DisplayIfSafeToDelete) end
---@param GearAbilityArray TArray<FName>
---@param GearItemID FGearItemID
function UUI_BP_FG_VendorDetails_C:SetGearTraits(GearAbilityArray, GearItemID) end
---@param GearItemID FGearItemID
function UUI_BP_FG_VendorDetails_C:SetGearInfo(GearItemID) end
---@param Button UUI_BP_InventoryIconButton_C
function UUI_BP_FG_VendorDetails_C:BuildItemTooltip(Button) end
function UUI_BP_FG_VendorDetails_C:Finished_C5DEB46F48574714135D02ADCD8BFB31() end
function UUI_BP_FG_VendorDetails_C:PlayVendorDetailsDisAppearAnimm() end
function UUI_BP_FG_VendorDetails_C:PlayVendorDetailsAppearAnimm() end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_VendorDetails_C:DetailsHoldButtonReleased(LegendItem, HoldWasCompleted) end
---@param EntryPoint int32
function UUI_BP_FG_VendorDetails_C:ExecuteUbergraph_UI_BP_FG_VendorDetails(EntryPoint) end
---@param HoldWasComplete boolean
function UUI_BP_FG_VendorDetails_C:OnHoldButtonReleasedEvent__DelegateSignature(HoldWasComplete) end
function UUI_BP_FG_VendorDetails_C:VendorDetailCollapseDistpatch__DelegateSignature() end


