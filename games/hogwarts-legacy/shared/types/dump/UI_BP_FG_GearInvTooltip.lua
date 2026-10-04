---@meta

---@class UUI_BP_FG_GearInvTooltip_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AppearanceAttractPulse UWidgetAnimation
---@field ShowAppearanceAttract UWidgetAnimation
---@field appearancePulse UOverlay
---@field broomUpgradeDesc UPhoenixTextBlock
---@field detailsLegend UOverlay
---@field detailsLegendBar UUI_BP_Legend_Horizontal_Tooltip_C
---@field emptyContent UVerticalBox
---@field emptyDescription UPhoenixRichTextBlock
---@field equippedTitle UHorizontalBox
---@field equippedTitleText UPhoenixTextBlock
---@field gearContent UVerticalBox
---@field gearHeaderBackLeft UPhoenixImage
---@field gearHeaderBackMiddle UPhoenixImage
---@field gearHeaderBackRight UPhoenixImage
---@field GearRarityFlame UBorder
---@field gearUpgrades UUI_BP_GearUpgrades_C
---@field itemDesc UPhoenixTextBlock
---@field itemTitle UPhoenixTextBlock
---@field itemTraits UUI_BP_FG_IDP_TraitStat_C
---@field ItemType UPhoenixTextBlock
---@field mainStat UUI_BP_GearStat_C
---@field NoMagicMessage UPhoenixTextBlock
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field rarityHeaderBack UPhoenixImage
---@field rarityHeaderBackBorder UBorder
---@field RequiredLevel UPhoenixTextBlock
---@field requiredLevelShield UCanvasPanel
---@field SellValue UVerticalBox
---@field SellValue_MoneyBar UUI_BP_MoneyBar_C
---@field SellValueText UPhoenixTextBlock
---@field SimpleContent UVerticalBox
---@field simpleDescription UPhoenixTextBlock
---@field simpleSubTitle UPhoenixTextBlock
---@field simpleTitle UPhoenixTextBlock
---@field Stats UOverlay
---@field statsBox UHorizontalBox
---@field upgradeStat UUI_BP_GearStat_C
---@field subjectRarity FName
---@field UpgradeBlipArray AActor
---@field EquippedRequiredLevel int32
---@field LegendHoldItem ULegendItem
---@field LegendHoldItemReleased FUI_BP_FG_GearInvTooltip_CLegendHoldItemReleased
---@field EquippedGearItemID FGearItemID
local UUI_BP_FG_GearInvTooltip_C = {}

function UUI_BP_FG_GearInvTooltip_C:ResetAppearanceFX() end
---@param ShowFX ESlateVisibility
UUI_BP_FG_GearInvTooltip_C['Set Appearance FXVisibility'] = function(self, ShowFX) end
---@param ToolType FName
---@param Button UIconButtonWidget
function UUI_BP_FG_GearInvTooltip_C:UpdateWandTooltip(ToolType, Button) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_GearInvTooltip_C:GatherMenuReaderStrings(DepthLevel) end
---@param Button UUI_BP_AppearanceIcon_C
---@param IsEquipped boolean
UUI_BP_FG_GearInvTooltip_C['Update Appearance Tooltip'] = function(self, Button, IsEquipped) end
---@param LegendItemData TArray<FLegendItemData>
function UUI_BP_FG_GearInvTooltip_C:SetLegendItemData(LegendItemData) end
---@param GearSlot EGearSlotIDEnum
function UUI_BP_FG_GearInvTooltip_C:SetEquippedItemData(GearSlot) end
---@param GearSlotID EGearSlotIDEnum
UUI_BP_FG_GearInvTooltip_C['Update Unidentified Info'] = function(self, GearSlotID) end
function UUI_BP_FG_GearInvTooltip_C:UpdateAppearanceInfo() end
---@param GearItemID FGearItemID
---@param IsAppearance boolean
---@param GearID FName
function UUI_BP_FG_GearInvTooltip_C:UpdateGearSharedInfo(GearItemID, IsAppearance, GearID) end
---@param CurrentGearItem FGearItemID
---@param ItemRarity FName
function UUI_BP_FG_GearInvTooltip_C:UpdateGearUpgrades(CurrentGearItem, ItemRarity) end
---@param ToolType FName
---@param Button UIconButtonWidget
function UUI_BP_FG_GearInvTooltip_C:UpdateMainToolTooltip(ToolType, Button) end
---@param Sellable boolean
---@param SellPrice int32
function UUI_BP_FG_GearInvTooltip_C:SetSellValue(Sellable, SellPrice) end
---@param EmptyMessage FString
function UUI_BP_FG_GearInvTooltip_C:UpdateEmptyTooltip(EmptyMessage) end
---@param hoveredGearSlot EGearSlotIDEnum
UUI_BP_FG_GearInvTooltip_C['Compare Stats to Equipped'] = function(self, hoveredGearSlot) end
---@param TraitData TArray<FName>
---@param GearItemID FGearItemID
function UUI_BP_FG_GearInvTooltip_C:SetTraitData(TraitData, GearItemID) end
---@param NewTraitID FName
---@param EmptySlotCount int32
function UUI_BP_FG_GearInvTooltip_C:UpdateTraits(NewTraitID, EmptySlotCount) end
---@param WandStyle FString
UUI_BP_FG_GearInvTooltip_C['Update Simple Tooltip'] = function(self, WandStyle) end
---@param ItemLevel int32
---@param ItemRarity FName
function UUI_BP_FG_GearInvTooltip_C:SetRequiredLevel(ItemLevel, ItemRarity) end
---@param EquippedSlot EGearSlotIDEnum
function UUI_BP_FG_GearInvTooltip_C:UpdateEquippedTooltip(EquippedSlot) end
---@param statTitle FString
function UUI_BP_FG_GearInvTooltip_C:UpdateStatTooltip(statTitle) end
---@param ToolType FName
---@param Button UIconButtonWidget
UUI_BP_FG_GearInvTooltip_C['Update Tool Tooltip'] = function(self, ToolType, Button) end
---@param GearSlot EGearSlotIDEnum
---@param Offense int32
---@param Defense int32
---@param isUnidentified boolean
---@param ItemRarity FName
function UUI_BP_FG_GearInvTooltip_C:SetStats(GearSlot, Offense, Defense, isUnidentified, ItemRarity) end
---@param Rarity FName
---@param ShowRarityGraphics boolean
function UUI_BP_FG_GearInvTooltip_C:SetRarity(Rarity, ShowRarityGraphics) end
---@param Button UUI_BP_GearButton_C
---@param IsAppearanceInventory boolean
---@param IsEquipped boolean
UUI_BP_FG_GearInvTooltip_C['Update Gear Tooltip'] = function(self, Button, IsAppearanceInventory, IsEquipped) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_GearInvTooltip_C:HoldReleased(LegendItem, HoldWasCompleted) end
function UUI_BP_FG_GearInvTooltip_C:PlayPanelAnimation() end
---@param EntryPoint int32
function UUI_BP_FG_GearInvTooltip_C:ExecuteUbergraph_UI_BP_FG_GearInvTooltip(EntryPoint) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_GearInvTooltip_C:LegendHoldItemReleased__DelegateSignature(LegendItem, HoldWasCompleted) end


