---@meta

---@class UUI_BP_MapsButton_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TutorialHighlight UWidgetAnimation
---@field OnHoverAnimation UWidgetAnimation
---@field buttonBack UHorizontalBox
---@field ButtonName UPhoenixTextBlock
---@field highlightBorder UBorder
---@field mainPanel UCanvasPanel
---@field MapButton UButton
---@field MissionsAvailable UImage
---@field textBox UHorizontalBox
---@field OnMapsButtonSelected FUI_BP_MapsButton_COnMapsButtonSelected
---@field MapIconID FString
---@field buttonDirection UI_BP_FastTravelDirectionEnum::Type
---@field IsLocked boolean
---@field OnMapsButtonHovered FUI_BP_MapsButton_COnMapsButtonHovered
---@field OnMapsButtonUnhovered FUI_BP_MapsButton_COnMapsButtonUnhovered
local UUI_BP_MapsButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MapsButton_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_MapsButton_C:SetButtonDirection() end
function UUI_BP_MapsButton_C:StopTutorialHighlight() end
function UUI_BP_MapsButton_C:PlayTutorialHighlight() end
---@param IsDesignTime boolean
function UUI_BP_MapsButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_MapsButton_C:Construct() end
function UUI_BP_MapsButton_C:BndEvt__UI_BP_MapsButton_mapButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_MapsButton_C:BndEvt__UI_BP_MapsButton_mapButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_MapsButton_C:BndEvt__UI_BP_MapsButton_mapButton_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_MapsButton_C:ExecuteUbergraph_UI_BP_MapsButton(EntryPoint) end
function UUI_BP_MapsButton_C:OnMapsButtonUnhovered__DelegateSignature() end
function UUI_BP_MapsButton_C:OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_MapsButton_C:OnMapsButtonSelected__DelegateSignature() end


