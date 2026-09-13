---@meta

---@class UUI_BP_FastTravelList_C : UFastTravelList
---@field UberGraphFrame FPointerToUberGraphFrame
---@field showList UWidgetAnimation
---@field FastTravelListTitle UPhoenixTextBlock
---@field locationList UVerticalBox
---@field locationScrollBox UUI_BP_SimpleScrollBox_C
---@field HighlighItemName FString
---@field LocationButtonArray TArray<UUI_BP_FastTravelButton_C>
---@field highlightedLocation UUI_BP_FastTravelButton_C
---@field isListShowing boolean
---@field listCount int32
---@field expansionCount int32
---@field LocationListArray TArray<FString>
---@field expandAnimationFrame float
---@field OnFastTravelButtonHovered FUI_BP_FastTravelList_COnFastTravelButtonHovered
---@field OnFastTravelButtonUnhovered FUI_BP_FastTravelList_COnFastTravelButtonUnhovered
local UUI_BP_FastTravelList_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FastTravelList_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_FastTravelList_C:ClearLocationList() end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelList_C:OnLocationUnhovered(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelList_C:OnLocationHovered(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelList_C:OnLocationClicked(Button) end
---@param ListArray TArray<FString>
function UUI_BP_FastTravelList_C:PopulateLocationList(ListArray) end
function UUI_BP_FastTravelList_C:ClearListMenuItems() end
---@param Title FString
function UUI_BP_FastTravelList_C:SetListTitle(Title) end
---@param bCallUnHovered boolean
function UUI_BP_FastTravelList_C:ClearHighlightListMenuItem(bCallUnHovered) end
---@param ItemName FString
---@param bCallUnHovered boolean
function UUI_BP_FastTravelList_C:HighlightListMenuItem(ItemName, bCallUnHovered) end
---@param ItemName FString
function UUI_BP_FastTravelList_C:AddListMenuItem(ItemName) end
function UUI_BP_FastTravelList_C:ShowEvent() end
function UUI_BP_FastTravelList_C:HideEvent() end
---@param ItemList TArray<FString>
function UUI_BP_FastTravelList_C:AddList(ItemList) end
function UUI_BP_FastTravelList_C:Construct() end
---@param ItemName FString
function UUI_BP_FastTravelList_C:DisableItem(ItemName) end
---@param ItemName FString
function UUI_BP_FastTravelList_C:EnableItem(ItemName) end
---@param EntryPoint int32
function UUI_BP_FastTravelList_C:ExecuteUbergraph_UI_BP_FastTravelList(EntryPoint) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelList_C:OnFastTravelButtonUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_FastTravelList_C:OnFastTravelButtonHovered__DelegateSignature(Button) end


