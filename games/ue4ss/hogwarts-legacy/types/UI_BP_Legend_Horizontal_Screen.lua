---@meta

---@class UUI_BP_Legend_Horizontal_Screen_C : ULegend
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeLegend UWidgetAnimation
---@field Main UOverlay
---@field ParentLegendPanel UHorizontalBox
---@field CachedLegendItems TArray<ULegendItem>
---@field useViewportAdjustment boolean
local UUI_BP_Legend_Horizontal_Screen_C = {}

function UUI_BP_Legend_Horizontal_Screen_C:AdjustForViewportWidth() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Legend_Horizontal_Screen_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsDesignTime boolean
function UUI_BP_Legend_Horizontal_Screen_C:PreConstruct(IsDesignTime) end
function UUI_BP_Legend_Horizontal_Screen_C:Construct() end
---@param NewLegendItem ULegendItem
function UUI_BP_Legend_Horizontal_Screen_C:AddLegendItem(NewLegendItem) end
---@param StartFromIndex int32
function UUI_BP_Legend_Horizontal_Screen_C:RemoveAllLegendItems(StartFromIndex) end
---@param Caller UObject
function UUI_BP_Legend_Horizontal_Screen_C:FadeLegendOut(Caller) end
---@param Caller UObject
function UUI_BP_Legend_Horizontal_Screen_C:FadeLegendIn(Caller) end
---@param Caller UObject
function UUI_BP_Legend_Horizontal_Screen_C:ResolutionSettingsApplied(Caller) end
---@param EntryPoint int32
function UUI_BP_Legend_Horizontal_Screen_C:ExecuteUbergraph_UI_BP_Legend_Horizontal_Screen(EntryPoint) end


