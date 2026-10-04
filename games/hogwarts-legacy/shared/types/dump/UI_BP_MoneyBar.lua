---@meta

---@class UUI_BP_MoneyBar_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GalleonsBox USizeBox
---@field GalleonsImage UImage
---@field GalleonsText UPhoenixTextBlock
---@field Image_ItemValueBox UImage
---@field isOnPaper boolean
---@field CurrentAmount int32
---@field CurrentGalleons int32
---@field CurrentSickles int32
---@field CurrentKnuts int32
---@field NextAmount int32
---@field NextGalleons int32
---@field NextSickles int32
---@field NextKnuts int32
---@field AnimationTotalDuration float
---@field AnimationCurrentTime float
---@field ShowEmptyVals boolean
local UUI_BP_MoneyBar_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MoneyBar_C:GatherMenuReaderStrings(DepthLevel) end
---@param CoinAmount int32
---@param Visibility ESlateVisibility
function UUI_BP_MoneyBar_C:GetContainerVisibility(CoinAmount, Visibility) end
function UUI_BP_MoneyBar_C:ResetFields() end
---@param Character FName
function UUI_BP_MoneyBar_C:DisplayTotalWorth(Character) end
---@param canAffordItem boolean
function UUI_BP_MoneyBar_C:DisplayCostColor(canAffordItem) end
---@param newCost int32
function UUI_BP_MoneyBar_C:DisplayCost(newCost) end
---@param Character FName
function UUI_BP_MoneyBar_C:DisplayMoney(Character) end
---@param Amount int32
function UUI_BP_MoneyBar_C:AnimateToNewAmount(Amount) end
---@param Amount int32
function UUI_BP_MoneyBar_C:SetCurrentAmount(Amount) end
---@param IsDesignTime boolean
function UUI_BP_MoneyBar_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_MoneyBar_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_MoneyBar_C:Construct() end
---@param EntryPoint int32
function UUI_BP_MoneyBar_C:ExecuteUbergraph_UI_BP_MoneyBar(EntryPoint) end


