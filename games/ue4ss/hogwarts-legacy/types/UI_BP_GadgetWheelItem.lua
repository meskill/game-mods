---@meta

---@class UUI_BP_GadgetWheelItem_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHoverAnimation UWidgetAnimation
---@field SelectedAnimation UWidgetAnimation
---@field ActiveFlames UImage
---@field ActiveGlow UImage
---@field ActiveHighlight UCanvasPanel
---@field ActiveSparks UPhoenixImage
---@field BackgroundFill UImage
---@field BoundingBox UButton
---@field buttonContent UCanvasPanel
---@field Count UCanvasPanel
---@field goldLeafHighlight UPhoenixImage
---@field ItemCountText UPhoenixTextBlock
---@field ItemIcon UImage
---@field LockedImage UImage
---@field newIndicator UUI_BP_NewIndicator_C
---@field Outline UImage
---@field selectedGlow UPhoenixImage
---@field selectedOutline UPhoenixImage
---@field IsLocked boolean
---@field ItemName FName
---@field OnClickEvent FUI_BP_GadgetWheelItem_COnClickEvent
---@field WedgePosition int32
---@field DefaultHighlightColor FSlateColor
---@field PotionColorMap TMap<FName, FSlateColor>
local UUI_BP_GadgetWheelItem_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GadgetWheelItem_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_GadgetWheelItem_C:SetActiveHighlightColor() end
function UUI_BP_GadgetWheelItem_C:UpdateFillMeter() end
---@param IsUnlocked boolean
function UUI_BP_GadgetWheelItem_C:SetNewItemIndicatorVisibility(IsUnlocked) end
---@param isHighlighted boolean
function UUI_BP_GadgetWheelItem_C:ToggleHighlight(isHighlighted) end
---@param ItemName FName
---@param Count int32
---@param IsUnlocked boolean
function UUI_BP_GadgetWheelItem_C:SetItemData(ItemName, Count, IsUnlocked) end
---@param IsDesignTime boolean
function UUI_BP_GadgetWheelItem_C:PreConstruct(IsDesignTime) end
function UUI_BP_GadgetWheelItem_C:Construct() end
function UUI_BP_GadgetWheelItem_C:BndEvt__UI_BP_GadgetWheelItem_BoundingBox_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_GadgetWheelItem_C:BndEvt__UI_BP_GadgetWheelItem_BoundingBox_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_GadgetWheelItem_C:BndEvt__UI_BP_GadgetWheelItem_BoundingBox_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_GadgetWheelItem_C:ItemMeterIconLoaded(LoadedTexture, CallbackParam) end
---@param Percentage float
function UUI_BP_GadgetWheelItem_C:UpdateToolMeter(Percentage) end
---@param EntryPoint int32
function UUI_BP_GadgetWheelItem_C:ExecuteUbergraph_UI_BP_GadgetWheelItem(EntryPoint) end
function UUI_BP_GadgetWheelItem_C:OnClickEvent__DelegateSignature() end


