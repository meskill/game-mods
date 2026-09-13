---@meta

---@class UUI_BP_Legend_Horizontal_Tooltip_C : ULegend
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ParentLegendPanel UHorizontalBox
---@field CachedLegendItems TArray<ULegendItem>
local UUI_BP_Legend_Horizontal_Tooltip_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Legend_Horizontal_Tooltip_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsDesignTime boolean
function UUI_BP_Legend_Horizontal_Tooltip_C:PreConstruct(IsDesignTime) end
---@param NewLegendItem ULegendItem
function UUI_BP_Legend_Horizontal_Tooltip_C:AddLegendItem(NewLegendItem) end
---@param StartFromIndex int32
function UUI_BP_Legend_Horizontal_Tooltip_C:RemoveAllLegendItems(StartFromIndex) end
---@param EntryPoint int32
function UUI_BP_Legend_Horizontal_Tooltip_C:ExecuteUbergraph_UI_BP_Legend_Horizontal_Tooltip(EntryPoint) end


