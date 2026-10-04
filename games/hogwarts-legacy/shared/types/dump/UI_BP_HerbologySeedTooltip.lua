---@meta

---@class UUI_BP_HerbologySeedTooltip_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field details UVerticalBox
---@field GrowthTimeText UPhoenixTextBlock
---@field MultiHarvestText UPhoenixTextBlock
---@field PlotSizeText UPhoenixTextBlock
---@field PreviewSeedInfo FSeedInfo
local UUI_BP_HerbologySeedTooltip_C = {}

---@param Seed_Info FSeedInfo
function UUI_BP_HerbologySeedTooltip_C:Init(Seed_Info) end
---@param IsDesignTime boolean
function UUI_BP_HerbologySeedTooltip_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_HerbologySeedTooltip_C:ExecuteUbergraph_UI_BP_HerbologySeedTooltip(EntryPoint) end


