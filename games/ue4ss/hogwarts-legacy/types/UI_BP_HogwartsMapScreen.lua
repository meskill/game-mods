---@meta

---@class UUI_BP_HogwartsMapScreen_C : UHogwartsMapScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideMapTooltipRight UWidgetAnimation
---@field ShowMapTooltipRight UWidgetAnimation
---@field HideMapTooltipLeft UWidgetAnimation
---@field ShowMapTooltipLeft UWidgetAnimation
---@field blurPanel UCanvasPanel
---@field Cover UImage
---@field HogsmeadeButton UUI_BP_MapsButton_C
---@field IconRetainer URetainerBox
---@field mapToolTip UUI_BP_MapToolTip_C
---@field OverlandButton UUI_BP_MapsButton_C
---@field ratioOverlay UOverlay
---@field OnMenuItemChanged FUI_BP_HogwartsMapScreen_COnMenuItemChanged
---@field Response UObject
---@field ToolTipType EMapToolTipTypes
---@field MapIconModel UObject
---@field MapMissionTrackingTutorialActive boolean
---@field ToolTipData FMapToolTipData
---@field TooltipIntroAnimation UWidgetAnimation
---@field TooltipOutroAnimation UWidgetAnimation
---@field OverlandButtonHighlightHandle FHermesBPDelegateHandle
---@field IsIconHovered boolean
local UUI_BP_HogwartsMapScreen_C = {}

---@param RenderSize FVector2D
function UUI_BP_HogwartsMapScreen_C:GetAsyncWrapperRenderSize(RenderSize) end
function UUI_BP_HogwartsMapScreen_C:AdjustForViewportWidth() end
function UUI_BP_HogwartsMapScreen_C:CloseMapAndGuide() end
function UUI_BP_HogwartsMapScreen_C:MenuReadLegend() end
---@param CursorX float
function UUI_BP_HogwartsMapScreen_C:SetTooltipAnimations(CursorX) end
---@param Legends TArray<FLegendItemData>
function UUI_BP_HogwartsMapScreen_C:SetButtonPrompt(Legends) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_HogwartsMapScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_HogwartsMapScreen_C:OnMapClicked() end
---@param Enable boolean
function UUI_BP_HogwartsMapScreen_C:SetCoverVisibility_Event(Enable) end
function UUI_BP_HogwartsMapScreen_C:OnUnhovered_Event() end
---@param LegendStrings TArray<FLegendItemData>
function UUI_BP_HogwartsMapScreen_C:SetLegend(LegendStrings) end
---@param Alpha float
function UUI_BP_HogwartsMapScreen_C:SetCoverVisibilityAlpha_Event(Alpha) end
function UUI_BP_HogwartsMapScreen_C:HogwartsSelect_Event() end
function UUI_BP_HogwartsMapScreen_C:HogwartsBack_Event() end
function UUI_BP_HogwartsMapScreen_C:HogwartsFastTravel_Event() end
function UUI_BP_HogwartsMapScreen_C:HogwartsSetPath_Event() end
function UUI_BP_HogwartsMapScreen_C:Destruct() end
---@param ToolTipData FMapToolTipData
function UUI_BP_HogwartsMapScreen_C:OnHovered_Event(ToolTipData) end
---@param NewLegend FText
function UUI_BP_HogwartsMapScreen_C:SetTipLegend_Event(NewLegend) end
function UUI_BP_HogwartsMapScreen_C:MapChanged_Event() end
function UUI_BP_HogwartsMapScreen_C:ExitMapScreen_Event() end
function UUI_BP_HogwartsMapScreen_C:ShowOverlandMissionsAvailable() end
function UUI_BP_HogwartsMapScreen_C:Initialize() end
function UUI_BP_HogwartsMapScreen_C:ShowHogsmeadeMissionsAvailable() end
---@param Caller UObject
function UUI_BP_HogwartsMapScreen_C:TutorialSaysStopHighlightOverland(Caller) end
function UUI_BP_HogwartsMapScreen_C:SetupOverlandTutorial() end
function UUI_BP_HogwartsMapScreen_C:InEditorPostConstruct() end
function UUI_BP_HogwartsMapScreen_C:ShowHogsmeadeButton() end
function UUI_BP_HogwartsMapScreen_C:HideHogsmeadeButton() end
function UUI_BP_HogwartsMapScreen_C:ShowOverlandButton() end
function UUI_BP_HogwartsMapScreen_C:HideOverlandButton() end
function UUI_BP_HogwartsMapScreen_C:MapMove_Event() end
function UUI_BP_HogwartsMapScreen_C:ZoomInPressed_Event() end
function UUI_BP_HogwartsMapScreen_C:ZoomInReleased_Event() end
function UUI_BP_HogwartsMapScreen_C:ZoomOutPressed_Event() end
function UUI_BP_HogwartsMapScreen_C:ZoomOutReleased_Event() end
---@param Parent UUserWidget
function UUI_BP_HogwartsMapScreen_C:SetParent(Parent) end
function UUI_BP_HogwartsMapScreen_C:DisableHogsmeadeButton() end
function UUI_BP_HogwartsMapScreen_C:DisableOverlandButton() end
---@param ToolTipData FMapToolTipData
function UUI_BP_HogwartsMapScreen_C:OnUpdateToolTip_Event(ToolTipData) end
function UUI_BP_HogwartsMapScreen_C:WayPointSet_Event() end
function UUI_BP_HogwartsMapScreen_C:WayPointUnset_Event() end
function UUI_BP_HogwartsMapScreen_C:Construct() end
function UUI_BP_HogwartsMapScreen_C:BndEvt__UI_BP_HogwartsMapScreen_HogsmeadeButton_K2Node_ComponentBoundEvent_0_OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_HogwartsMapScreen_C:BndEvt__UI_BP_HogwartsMapScreen_OverlandButton_K2Node_ComponentBoundEvent_2_OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_HogwartsMapScreen_C:MapStart_Event() end
---@param Button UUI_BP_FastTravelButton_C
function UUI_BP_HogwartsMapScreen_C:BndEvt__UI_BP_HogwartsMapScreen_FastTravelList_K2Node_ComponentBoundEvent_4_OnFastTravelButtonHovered__DelegateSignature(Button) end
function UUI_BP_HogwartsMapScreen_C:TierChanged_Event() end
function UUI_BP_HogwartsMapScreen_C:BndEvt__UI_BP_HogwartsMapScreen_HogsmeadeButton_K2Node_ComponentBoundEvent_3_OnMapsButtonSelected__DelegateSignature() end
function UUI_BP_HogwartsMapScreen_C:BndEvt__UI_BP_HogwartsMapScreen_OverlandButton_K2Node_ComponentBoundEvent_1_OnMapsButtonSelected__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_HogwartsMapScreen_C:ExecuteUbergraph_UI_BP_HogwartsMapScreen(EntryPoint) end
---@param ItemIndex int32
function UUI_BP_HogwartsMapScreen_C:OnMenuItemChanged__DelegateSignature(ItemIndex) end


