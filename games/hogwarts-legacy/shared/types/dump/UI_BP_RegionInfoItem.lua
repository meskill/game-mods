---@meta

---@class UUI_BP_RegionInfoItem_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field RegionInfoLeft UWidgetAnimation
---@field RegionInfoRight UWidgetAnimation
---@field CompletedText0 UPhoenixTextBlock
---@field CompletedText1 UPhoenixTextBlock
---@field DividerText0 UPhoenixTextBlock
---@field DividerText1 UPhoenixTextBlock
---@field Icon UImage
---@field Icon_1 UImage
---@field ItemtypeText UPhoenixTextBlock
---@field TotalText0 UPhoenixTextBlock
---@field TotalText1 UPhoenixTextBlock
---@field IsLeft boolean
local UUI_BP_RegionInfoItem_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_RegionInfoItem_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_RegionInfoItem_C:SetRegionInfoRight() end
function UUI_BP_RegionInfoItem_C:SetRegionInfoLeft() end
---@param Completed int32
function UUI_BP_RegionInfoItem_C:SetCompleted(Completed) end
---@param Total int32
function UUI_BP_RegionInfoItem_C:SetTotal(Total) end
---@param IconName FString
function UUI_BP_RegionInfoItem_C:SetIcon(IconName) end
---@param ItemName FString
function UUI_BP_RegionInfoItem_C:SetItemName(ItemName) end
function UUI_BP_RegionInfoItem_C:Construct() end
---@param Caller UObject
function UUI_BP_RegionInfoItem_C:RegionInfoItemLeft(Caller) end
---@param Caller UObject
function UUI_BP_RegionInfoItem_C:RegionInfoItemRight(Caller) end
---@param EntryPoint int32
function UUI_BP_RegionInfoItem_C:ExecuteUbergraph_UI_BP_RegionInfoItem(EntryPoint) end


