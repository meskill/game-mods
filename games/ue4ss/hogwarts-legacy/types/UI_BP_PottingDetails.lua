---@meta

---@class UUI_BP_PottingDetails_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field detailsDescription UPhoenixTextBlock
---@field detailsTitle UPhoenixTextBlock
---@field ErrorText UHorizontalBox
---@field ErrorTextMain UPhoenixTextBlock
---@field GrowthTimeHeader UPhoenixTextBlock
---@field GrowthTimeText UPhoenixTextBlock
---@field NewTooltipLegend UUI_BP_Legend_Horizontal_Tooltip_C
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field PlotSizeHeader UPhoenixTextBlock
---@field PlotSizeText UPhoenixTextBlock
---@field plottingDetails UVerticalBox
local UUI_BP_PottingDetails_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_PottingDetails_C:GatherMenuReaderStrings(DepthLevel) end
---@param LockId FName
---@param IsUnlocked boolean
---@param CanPlantInPlot boolean
UUI_BP_PottingDetails_C['Set Up Plotting Legend'] = function(self, LockId, IsUnlocked, CanPlantInPlot) end
---@param IsUnlocked boolean
---@param NewGrowthTime int32
---@param PlantSize FName
function UUI_BP_PottingDetails_C:SetUpPlottingDetails(IsUnlocked, NewGrowthTime, PlantSize) end
---@param SeedInfo FSeedInfo
---@param CanPlantInPlot boolean
function UUI_BP_PottingDetails_C:InitPlottingData(SeedInfo, CanPlantInPlot) end
function UUI_BP_PottingDetails_C:Construct() end
---@param EntryPoint int32
function UUI_BP_PottingDetails_C:ExecuteUbergraph_UI_BP_PottingDetails(EntryPoint) end


