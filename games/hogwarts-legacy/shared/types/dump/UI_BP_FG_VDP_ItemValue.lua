---@meta

---@class UUI_BP_FG_VDP_ItemValue_C : UPhoenixUserWidget
---@field countBox UHorizontalBox
---@field gearHeader UVerticalBox
---@field moneyBar UUI_BP_MoneyBar_C
---@field Quantity UTextBlock
local UUI_BP_FG_VDP_ItemValue_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_VDP_ItemValue_C:GatherMenuReaderStrings(DepthLevel) end
---@param PlayerMoney int32
---@param Cost int32
---@param SellBuyQuantity int32
---@param IsBuying boolean
function UUI_BP_FG_VDP_ItemValue_C:UpdateCost(PlayerMoney, Cost, SellBuyQuantity, IsBuying) end


