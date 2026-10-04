---@meta

---@class UUI_BP_HerbologyGrown_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Main_OUT UWidgetAnimation
---@field ButtonText UPhoenixRichTextBlock
---@field FactSheetText UPhoenixTextBlock
---@field PlantNameText UPhoenixTextBlock
---@field progressMeter UUI_BP_NurtureProgressDiamond_C
---@field YieldAmount UPhoenixTextBlock
---@field YieldText_1 UPhoenixTextBlock
---@field PreviewPlantID FName
---@field HerbPlotState UHerbPlotState
local UUI_BP_HerbologyGrown_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_HerbologyGrown_C:GatherMenuReaderStrings(DepthLevel) end
---@param PlantID FName
function UUI_BP_HerbologyGrown_C:SetPlantDetails(PlantID) end
---@param Plot AHerbPlot
function UUI_BP_HerbologyGrown_C:RefreshWidget(Plot) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_HerbologyGrown_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_HerbologyGrown_C:OnOutroStarted(OutroType, OutroDuration) end
---@param IsDesignTime boolean
function UUI_BP_HerbologyGrown_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_HerbologyGrown_C:ExecuteUbergraph_UI_BP_HerbologyGrown(EntryPoint) end


