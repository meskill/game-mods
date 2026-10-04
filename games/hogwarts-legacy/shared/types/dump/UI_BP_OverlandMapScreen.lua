---@meta

---@class UUI_BP_OverlandMapScreen_C : UOverlandMapScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowRegionInfo UWidgetAnimation
---@field HideMapTooltipRight UWidgetAnimation
---@field ShowMapTooltipRight UWidgetAnimation
---@field HideMapTooltipLeft UWidgetAnimation
---@field ShowMapTooltipLeft UWidgetAnimation
---@field blurPanel UCanvasPanel
---@field CanvasPanel_0 UCanvasPanel
---@field Cover UImage
---@field HogsmeadeButton UUI_BP_MapsButton_C
---@field HogwartsButton UUI_BP_MapsButton_C
---@field IconRetainer URetainerBox
---@field mapToolTip UUI_BP_MapToolTip_C
---@field tooltipOverlay UOverlay
---@field LegendArray TArray<FString>
---@field areDungeonReqsShowing boolean
---@field ToolTipType EMapToolTipTypes
---@field UpdateMapLegend FUI_BP_OverlandMapScreen_CUpdateMapLegend
---@field MapIconHover UObject
---@field OnMapInput FUI_BP_OverlandMapScreen_COnMapInput
---@field CurrentMenuIndex int32
---@field LocationNames TArray<FString>
---@field OnMenuItemChanged FUI_BP_OverlandMapScreen_COnMenuItemChanged
---@field isNavBarAnimating boolean
---@field DownLastFrame_LeftStick boolean
---@field IsOverlandMode boolean
---@field IsFilterShowing boolean
---@field ZoomTimer float
---@field ZoomVal float
---@field MapIconModel UObject
---@field ToolTipData FMapToolTipData
---@field isPopupShowing boolean
---@field TooltipIntroAnimation UWidgetAnimation
---@field TooltipOutroAnimation UWidgetAnimation
---@field isRegionInfoShowing boolean
local UUI_BP_OverlandMapScreen_C = {}

---@param RenderSize FVector2D
function UUI_BP_OverlandMapScreen_C:GetAsyncWrapperRenderSize(RenderSize) end
function UUI_BP_OverlandMapScreen_C:AdjustTooltipForViewportWidth() end
function UUI_BP_OverlandMapScreen_C:MenuReadLegend() end
---@param CursorX float
function UUI_BP_OverlandMapScreen_C:SetTooltipAnimations(CursorX) end
---@param NewLegendText FText
UUI_BP_OverlandMapScreen_C['Set Map Legend'] = function(self, NewLegendText) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_OverlandMapScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param Activated boolean
UUI_BP_OverlandMapScreen_C['Activate Map Based On Hover'] = function(self, Activated) end
---@param LegendItems TArray<FLegendItemData>
function UUI_BP_OverlandMapScreen_C:SetFieldGuideLegend(LegendItems) end
---@param Region AUI_BP_MapRegion_C
---@param Visible boolean
function UUI_BP_OverlandMapScreen_C:TierHide(Region, Visible) end
---@param LegendStrings TArray<FLegendItemData>
function UUI_BP_OverlandMapScreen_C:SetLegend(LegendStrings) end
---@param Alpha float
function UUI_BP_OverlandMapScreen_C:SetCoverVisibilityAlpha_Event(Alpha) end
function UUI_BP_OverlandMapScreen_C:Destruct() end
---@param ToolTipData FMapToolTipData
function UUI_BP_OverlandMapScreen_C:OnHovered_Event(ToolTipData) end
---@param NewLegend FText
function UUI_BP_OverlandMapScreen_C:SetTipLegend_Event(NewLegend) end
function UUI_BP_OverlandMapScreen_C:MapChanged_Event() end
function UUI_BP_OverlandMapScreen_C:ExitMapScreen_Event() end
function UUI_BP_OverlandMapScreen_C:BndEvt__UI_BP_HogwartsMapScreen_HogsmeadeButton_K2Node_ComponentBoundEvent_3_OnMapsButtonSelected__DelegateSignature() end
function UUI_BP_OverlandMapScreen_C:BndEvt__UI_BP_OverlandMapScreen_HogwartsButton_K2Node_ComponentBoundEvent_0_OnMapsButtonSelected__DelegateSignature() end
function UUI_BP_OverlandMapScreen_C:ShowHogwartsMissionsAvailable() end
function UUI_BP_OverlandMapScreen_C:ShowHogsmeadeMissionsAvailable() end
---@param MapRegion ERegionType
---@param RegionIndex int32
---@param IconWidget UUserWidget
function UUI_BP_OverlandMapScreen_C:RegionHovered_Event(MapRegion, RegionIndex, IconWidget) end
function UUI_BP_OverlandMapScreen_C:MapMove_Event() end
function UUI_BP_OverlandMapScreen_C:ZoomInPressed_Event() end
function UUI_BP_OverlandMapScreen_C:ZoomInReleased_Event() end
function UUI_BP_OverlandMapScreen_C:ZoomOutPressed_Event() end
function UUI_BP_OverlandMapScreen_C:ZoomOutReleased_Event() end
function UUI_BP_OverlandMapScreen_C:DisableHogwartsButton() end
function UUI_BP_OverlandMapScreen_C:DisableHogsmeadeButton() end
---@param ToolTipData FMapToolTipData
function UUI_BP_OverlandMapScreen_C:OnUpdateToolTip_Event(ToolTipData) end
function UUI_BP_OverlandMapScreen_C:BndEvt__UI_BP_OverlandMapScreen_HogsmeadeButton_K2Node_ComponentBoundEvent_1_OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_OverlandMapScreen_C:BndEvt__UI_BP_OverlandMapScreen_HogwartsButton_K2Node_ComponentBoundEvent_2_OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_OverlandMapScreen_C:WayPointSet_Event() end
function UUI_BP_OverlandMapScreen_C:WayPointUnset_Event() end
function UUI_BP_OverlandMapScreen_C:RegionInfoUpdated_Event() end
---@param LevelName FString
function UUI_BP_OverlandMapScreen_C:SetLevelName_Event(LevelName) end
function UUI_BP_OverlandMapScreen_C:OnUnhovered_Event() end
---@param Enable boolean
function UUI_BP_OverlandMapScreen_C:SetCoverVisibility_Event(Enable) end
function UUI_BP_OverlandMapScreen_C:TierChanged_Event() end
function UUI_BP_OverlandMapScreen_C:Initialize() end
---@param regionActor APhoenixMapRegion
---@param subregionActor APhoenixMapRegion
---@param noString boolean
function UUI_BP_OverlandMapScreen_C:RegionChange_Event(regionActor, subregionActor, noString) end
function UUI_BP_OverlandMapScreen_C:Construct() end
---@param Parent UUserWidget
function UUI_BP_OverlandMapScreen_C:SetParent(Parent) end
function UUI_BP_OverlandMapScreen_C:MapStop_Event() end
function UUI_BP_OverlandMapScreen_C:MapStart_Event() end
function UUI_BP_OverlandMapScreen_C:InEditorPostConstruct() end
---@param EntryPoint int32
function UUI_BP_OverlandMapScreen_C:ExecuteUbergraph_UI_BP_OverlandMapScreen(EntryPoint) end
---@param ItemIndex int32
function UUI_BP_OverlandMapScreen_C:OnMenuItemChanged__DelegateSignature(ItemIndex) end
---@param Key FKey
function UUI_BP_OverlandMapScreen_C:OnMapInput__DelegateSignature(Key) end
---@param LegendArray TArray<FString>
function UUI_BP_OverlandMapScreen_C:UpdateMapLegend__DelegateSignature(LegendArray) end


