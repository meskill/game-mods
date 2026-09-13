---@meta

---@class UUI_BP_GearStat_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field stat_Value UPhoenixTextBlock
---@field statArrow UPhoenixImage
---@field statBox UVerticalBox
---@field statIcon UImage
---@field statTitle UPhoenixTextBlock
---@field upgradeMessage UPhoenixTextBlock
---@field DefenseStat int32
---@field StatValue int32
---@field CanCompareStat boolean
local UUI_BP_GearStat_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GearStat_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_GearStat_C:ResetStatCompare() end
function UUI_BP_GearStat_C:ShowCannotUpgradeMessage() end
---@param StatType GearStatType
---@param offenseValue int32
---@param defenseValue int32
---@param isUnidentified boolean
---@param isMainStat boolean
UUI_BP_GearStat_C['Set Stat'] = function(self, StatType, offenseValue, defenseValue, isUnidentified, isMainStat) end
---@param CompareValue int32
UUI_BP_GearStat_C['Compare Stat'] = function(self, CompareValue) end
---@param IsDesignTime boolean
function UUI_BP_GearStat_C:PreConstruct(IsDesignTime) end
function UUI_BP_GearStat_C:Construct() end
---@param EntryPoint int32
function UUI_BP_GearStat_C:ExecuteUbergraph_UI_BP_GearStat(EntryPoint) end


