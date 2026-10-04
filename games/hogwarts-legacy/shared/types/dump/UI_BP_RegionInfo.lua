---@meta

---@class UUI_BP_RegionInfo_C : UMapRegionInfoWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DividerText UPhoenixTextBlock
---@field EnemyLevel UPhoenixTextBlock
---@field EnemyPanel UCanvasPanel
---@field HeaderText UPhoenixTextBlock
---@field Icon UImage
---@field ItemsContainer UVerticalBox
---@field MaxLevel UPhoenixTextBlock
---@field MinLevel UPhoenixTextBlock
---@field RegionInfo UCanvasPanel
---@field UI_BP_RegionInfoItem UUI_BP_RegionInfoItem_C
---@field ShowRegionInfoEvent FUI_BP_RegionInfo_CShowRegionInfoEvent
---@field HideRegionInfoEvent FUI_BP_RegionInfo_CHideRegionInfoEvent
---@field Parent UObject
---@field ItemArray TArray<UUI_BP_RegionInfoItem_C>
local UUI_BP_RegionInfo_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_RegionInfo_C:GatherMenuReaderStrings(DepthLevel) end
---@param EnemyLevel FString
---@param MinLevel int32
---@param MaxLevel int32
function UUI_BP_RegionInfo_C:SetEnemyData(EnemyLevel, MinLevel, MaxLevel) end
---@param ParentScreen UObject
function UUI_BP_RegionInfo_C:SetMapParent(ParentScreen) end
---@param RegionName FString
---@param ItemData TArray<FRegionPopuplData>
function UUI_BP_RegionInfo_C:SetItemData(RegionName, ItemData) end
function UUI_BP_RegionInfo_C:ShowBP() end
function UUI_BP_RegionInfo_C:HideBP() end
---@param RegionName FString
---@param EnemyLevel FString
---@param MinLevel int32
---@param MaxLevel int32
---@param RegionData TArray<FRegionPopuplData>
function UUI_BP_RegionInfo_C:SetDataBP(RegionName, EnemyLevel, MinLevel, MaxLevel, RegionData) end
---@param EntryPoint int32
function UUI_BP_RegionInfo_C:ExecuteUbergraph_UI_BP_RegionInfo(EntryPoint) end
function UUI_BP_RegionInfo_C:HideRegionInfoEvent__DelegateSignature() end
function UUI_BP_RegionInfo_C:ShowRegionInfoEvent__DelegateSignature() end


