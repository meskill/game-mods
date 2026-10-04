---@meta

---@class UUI_BP_GearUpgrades_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field showUpgradeApplied UWidgetAnimation
---@field HorizontalBox_2 UHorizontalBox
---@field upgrade1 UUI_BP_GearUpgradeMarker_C
---@field upgrade2 UUI_BP_GearUpgradeMarker_C
---@field upgrade3 UUI_BP_GearUpgradeMarker_C
---@field upgradeFrame UPhoenixImage
---@field UpgradesText UPhoenixTextBlock
---@field BaseStatValue int32
---@field NextUpgradeStatValue int32
---@field UpgradeArray TArray<UUI_BP_GearUpgradeMarker_C>
---@field UpgradesNumericValue FString
---@field upgrade4 UUI_BP_GearUpgradeMarker_C
local UUI_BP_GearUpgrades_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GearUpgrades_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_GearUpgrades_C:ShowAppliedAnimation() end
---@param CurrentUpgrade int32
function UUI_BP_GearUpgrades_C:InitUpgrades(CurrentUpgrade) end
---@param IsDesignTime boolean
function UUI_BP_GearUpgrades_C:PreConstruct(IsDesignTime) end
function UUI_BP_GearUpgrades_C:Construct() end
---@param EntryPoint int32
function UUI_BP_GearUpgrades_C:ExecuteUbergraph_UI_BP_GearUpgrades(EntryPoint) end


