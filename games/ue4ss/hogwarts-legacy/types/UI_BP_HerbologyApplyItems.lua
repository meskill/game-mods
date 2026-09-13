---@meta

---@class UUI_BP_HerbologyApplyItems_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Main_OUT UWidgetAnimation
---@field FactSheetText UPhoenixTextBlock
---@field FertilizerList_1 UVerticalBox
---@field GrowthTimeHeader UPhoenixTextBlock
---@field GrowthTimeText UPhoenixTextBlock
---@field Image_198 UImage
---@field NoFertilizersText UHorizontalBox
---@field PlantNameText UPhoenixTextBlock
---@field progressMeter UUI_BP_NurtureProgressDiamond_C
---@field Yield UPhoenixTextBlock
---@field yieldValue UPhoenixTextBlock
---@field OnFertilizerSelected FUI_BP_HerbologyApplyItems_COnFertilizerSelected
---@field PreviewFertilizers TArray<FInventoryResult>
---@field ErrorStringMap TMap<FString, FString>
---@field PreviewPlantID FName
---@field FertilizerTooltip UUI_BP_ItemTooltipEffectDescription_C
---@field ItemMargin FMargin
---@field HerbPlotState UHerbPlotState
---@field HerbPlot AHerbPlot
---@field HoveredFertilizerButton UIconButtonWidget
---@field PlantButtonIsHovered boolean
---@field FertilizerButtonHovered boolean
---@field OnRequiresLegendUpdate FUI_BP_HerbologyApplyItems_COnRequiresLegendUpdate
---@field HerbPlotIsSet boolean
---@field AudioIsPlaying boolean
---@field OnFertilizerHovered FUI_BP_HerbologyApplyItems_COnFertilizerHovered
---@field FertilizerButtonArray TArray<UUI_BP_HerbologyFertilizerButton_C>
local UUI_BP_HerbologyApplyItems_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_HerbologyApplyItems_C:GatherMenuReaderStrings(DepthLevel) end
---@param NewHerbPlot AHerbPlot
function UUI_BP_HerbologyApplyItems_C:SetHerbPlot(NewHerbPlot) end
function UUI_BP_HerbologyApplyItems_C:AudioStopLoop() end
function UUI_BP_HerbologyApplyItems_C:AudioPlayLoop() end
---@param progress float
function UUI_BP_HerbologyApplyItems_C:GetGrowthProgressRation(progress) end
function UUI_BP_HerbologyApplyItems_C:RefreshPlantTooltip() end
---@param FertilizerID FName
function UUI_BP_HerbologyApplyItems_C:RefreshFertilizerTooltip(FertilizerID) end
---@param Growing boolean
function UUI_BP_HerbologyApplyItems_C:GetIsGrowing(Growing) end
---@param ItemName FString
function UUI_BP_HerbologyApplyItems_C:UpdateToolTip(ItemName) end
---@param Fertilizers TArray<FInventoryResult>
function UUI_BP_HerbologyApplyItems_C:PopulateFertilizers(Fertilizers) end
---@param PlantID FName
UUI_BP_HerbologyApplyItems_C['Set Plant Details'] = function(self, PlantID) end
---@param Plot AHerbPlot
function UUI_BP_HerbologyApplyItems_C:RefreshWidget(Plot) end
---@param FertilizerID FName
---@param FertilizerButton UUI_BP_HerbologyFertilizerButton_C
function UUI_BP_HerbologyApplyItems_C:OnFertilizerButtonHovered(FertilizerID, FertilizerButton) end
---@param FertilizerID FName
function UUI_BP_HerbologyApplyItems_C:OnFertilizerButtonUnhovered(FertilizerID) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_HerbologyApplyItems_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_HerbologyApplyItems_C:OnOutroStarted(OutroType, OutroDuration) end
---@param FertilizerID FName
function UUI_BP_HerbologyApplyItems_C:OnFertilizerButtonClicked(FertilizerID) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_HerbologyApplyItems_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_HerbologyApplyItems_C:Destruct() end
---@param IsDesignTime boolean
function UUI_BP_HerbologyApplyItems_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_HerbologyApplyItems_C:ExecuteUbergraph_UI_BP_HerbologyApplyItems(EntryPoint) end
---@param FertilizerButton UUI_BP_HerbologyFertilizerButton_C
function UUI_BP_HerbologyApplyItems_C:OnFertilizerHovered__DelegateSignature(FertilizerButton) end
function UUI_BP_HerbologyApplyItems_C:OnRequiresLegendUpdate__DelegateSignature() end
---@param FertilizerID FName
function UUI_BP_HerbologyApplyItems_C:OnFertilizerSelected__DelegateSignature(FertilizerID) end


