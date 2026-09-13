---@meta

---@class UUI_BP_FG_InventoryDetails_C : UPhoenixUserWidget
---@field beastNotification UPhoenixTextBlock
---@field beastVivariumNotice UVerticalBox
---@field destroyNotification UVerticalBox
---@field destroyText UPhoenixTextBlock
---@field detailsDescription UPhoenixTextBlock
---@field detailsLegend UOverlay
---@field detailsLegendBar UUI_BP_Legend_Horizontal_Tooltip_C
---@field emptyInventoryMessage UPhoenixTextBlock
---@field Item UVerticalBox
---@field itemHeader UUI_BP_FG_IDP_ItemHeader_C
---@field SellValue UVerticalBox
---@field SellValue_MoneyBar UUI_BP_MoneyBar_C
---@field SellValueText UPhoenixTextBlock
---@field LegendHoldItem ULegendItem
---@field LegendHoldItemReleased FUI_BP_FG_InventoryDetails_CLegendHoldItemReleased
local UUI_BP_FG_InventoryDetails_C = {}

---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
UUI_BP_FG_InventoryDetails_C['Inventory Hold Event Complete'] = function(self, LegendItem, HoldWasCompleted) end
---@param LegendItemArray TArray<FLegendItemData>
function UUI_BP_FG_InventoryDetails_C:SetLegendItemData(LegendItemArray) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_InventoryDetails_C:GatherMenuReaderStrings(DepthLevel) end
---@param Sellable boolean
---@param SellPrice int32
function UUI_BP_FG_InventoryDetails_C:SetSellValue(Sellable, SellPrice) end
function UUI_BP_FG_InventoryDetails_C:BuildEmptyTooltip() end
function UUI_BP_FG_InventoryDetails_C:ResetTooltip() end
---@param GearID FName
---@param GearVariation FName
function UUI_BP_FG_InventoryDetails_C:SetStandardTooltip(GearID, GearVariation) end
---@param GearID FName
---@param Variation FName
function UUI_BP_FG_InventoryDetails_C:SetCapturedCreatureInfo(GearID, Variation) end
---@param Button UUI_BP_InventoryIconButton_C
---@param ToolTip TArray<FLegendItemData>
UUI_BP_FG_InventoryDetails_C['Build Inventory Tooltip'] = function(self, Button, ToolTip) end
---@param InventoryLegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_InventoryDetails_C:LegendHoldItemReleased__DelegateSignature(InventoryLegendItem, HoldWasCompleted) end


