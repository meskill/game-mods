---@meta

---@class UUI_BP_HerbologySeedSelection_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowPlotDetails UWidgetAnimation
---@field Main_OUT UWidgetAnimation
---@field NoSeedsText UPhoenixTextBlock
---@field plotDetails UUI_BP_PottingDetails_C
---@field SeedList UUniformGridPanel
---@field OnPlantSelected FUI_BP_HerbologySeedSelection_COnPlantSelected
---@field SeedTooltip UUI_BP_HerbologySeedTooltip_C
---@field NumPreviewListCopies int32
---@field GridWidth int32
---@field CanPlantInPlotArray TArray<boolean>
---@field MouseCursorAdjustmentLoops int32
---@field SeedInfoList TArray<FSeedInfo>
---@field HoveredSeedButton UIconButtonWidget
---@field HerbSeedContent UUI_BP_HerbologySeedTooltip_C
---@field TutorialHiglights TArray<FName>
---@field PreviewSeedList TArray<FSeedInfo>
---@field IsFirstHover boolean
local UUI_BP_HerbologySeedSelection_C = {}

---@param GridIndex int32
---@param GridWidth int32
---@param OutRow int32
---@param OutColumn int32
function UUI_BP_HerbologySeedSelection_C:GridIndexToRowColumn(GridIndex, GridWidth, OutRow, OutColumn) end
function UUI_BP_HerbologySeedSelection_C:UpdateSeedTooltip() end
---@param PlantID FName
function UUI_BP_HerbologySeedSelection_C:GetCurrentlyHoveredPlantID(PlantID) end
---@param Button UIconButtonWidget
---@param SeedInfo FSeedInfo
---@param CanPlantInPlot boolean
function UUI_BP_HerbologySeedSelection_C:GetSeedInfoFromButton(Button, SeedInfo, CanPlantInPlot) end
function UUI_BP_HerbologySeedSelection_C:PopulatePreviewSeedList() end
---@param Herb_Plot AHerbPlot
function UUI_BP_HerbologySeedSelection_C:RefreshSeedList(Herb_Plot) end
---@param Seeds TArray<FSeedInfo>
---@param Herb_Plot AHerbPlot
function UUI_BP_HerbologySeedSelection_C:PopulateSeedList(Seeds, Herb_Plot) end
---@param Seed_Button UIconButtonWidget
function UUI_BP_HerbologySeedSelection_C:OnSeedButtonHovered(Seed_Button) end
---@param Seed_Button UIconButtonWidget
function UUI_BP_HerbologySeedSelection_C:OnSeedButtonUnhovered(Seed_Button) end
---@param Seed_Button UIconButtonWidget
function UUI_BP_HerbologySeedSelection_C:OnSeedButtonClicked(Seed_Button) end
function UUI_BP_HerbologySeedSelection_C:HoverFirstSeed() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_HerbologySeedSelection_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_HerbologySeedSelection_C:OnOutroStarted(OutroType, OutroDuration) end
function UUI_BP_HerbologySeedSelection_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_HerbologySeedSelection_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_HerbologySeedSelection_C:ExecuteUbergraph_UI_BP_HerbologySeedSelection(EntryPoint) end
---@param PlantID FName
function UUI_BP_HerbologySeedSelection_C:OnPlantSelected__DelegateSignature(PlantID) end


