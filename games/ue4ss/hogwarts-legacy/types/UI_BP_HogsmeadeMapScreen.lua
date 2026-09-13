---@meta

---@class UUI_BP_HogsmeadeMapScreen_C : UHogsmeadeMapScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideMapTooltipRight UWidgetAnimation
---@field ShowMapTooltipRight UWidgetAnimation
---@field HideMapTooltipLeft UWidgetAnimation
---@field ShowMapTooltipLeft UWidgetAnimation
---@field blurPanel UCanvasPanel
---@field Cover UImage
---@field HogwartsButton UUI_BP_MapsButton_C
---@field IconRetainer URetainerBox
---@field mapToolTip UUI_BP_MapToolTip_C
---@field OverlandButton UUI_BP_MapsButton_C
---@field LegendArray TArray<FString>
---@field ToolTipType EMapToolTipTypes
---@field UpdateMapLegend FUI_BP_HogsmeadeMapScreen_CUpdateMapLegend
---@field MapIconHover UObject
---@field OnMapInput FUI_BP_HogsmeadeMapScreen_COnMapInput
---@field CurrentMenuIndex int32
---@field OnMenuItemChanged FUI_BP_HogsmeadeMapScreen_COnMenuItemChanged
---@field ZoomTimer float
---@field ZoomVal float
---@field areDungeonReqsShowing boolean
---@field Travel ULegendItem
---@field Map ULegendItem
---@field Extra ULegendItem
---@field MapIconModel UObject
---@field TooltipIntroAnimation UWidgetAnimation
---@field TooltipOutroAnimation UWidgetAnimation
---@field HogwartsButtonHighlightHandle FHermesBPDelegateHandle
local UUI_BP_HogsmeadeMapScreen_C = {}

---@param RenderSize FVector2D
function UUI_BP_HogsmeadeMapScreen_C:GetAsyncWrapperRenderSize(RenderSize) end
function UUI_BP_HogsmeadeMapScreen_C:AdjustForViewportWidth() end
function UUI_BP_HogsmeadeMapScreen_C:MenuReadLegend() end
---@param CursorX float
function UUI_BP_HogsmeadeMapScreen_C:SetTooltipAnimations(CursorX) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_HogsmeadeMapScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param NewParam TArray<FLegendItemData>
function UUI_BP_HogsmeadeMapScreen_C:SetButtonPrompt(NewParam) end
function UUI_BP_HogsmeadeMapScreen_C:MapStart_Event() end
function UUI_BP_HogsmeadeMapScreen_C:MapStop_Event() end
function UUI_BP_HogsmeadeMapScreen_C:Construct() end
---@param Enable boolean
function UUI_BP_HogsmeadeMapScreen_C:SetCoverVisibility_Event(Enable) end
function UUI_BP_HogsmeadeMapScreen_C:OnUnhovered_Event() end
---@param LegendStrings TArray<FLegendItemData>
function UUI_BP_HogsmeadeMapScreen_C:SetLegend(LegendStrings) end
function UUI_BP_HogsmeadeMapScreen_C:TierChanged_Event() end
---@param Alpha float
function UUI_BP_HogsmeadeMapScreen_C:SetCoverVisibilityAlpha_Event(Alpha) end
function UUI_BP_HogsmeadeMapScreen_C:Destruct() end
---@param NewLegend FText
function UUI_BP_HogsmeadeMapScreen_C:SetTipLegend_Event(NewLegend) end
function UUI_BP_HogsmeadeMapScreen_C:BndEvt__UI_BP_HogsmeadeMapScreen_HogwartsButton_K2Node_ComponentBoundEvent_4_OnMapsButtonSelected__DelegateSignature() end
function UUI_BP_HogsmeadeMapScreen_C:BndEvt__UI_BP_HogsmeadeMapScreen_OverlandButton_K2Node_ComponentBoundEvent_5_OnMapsButtonSelected__DelegateSignature() end
---@param ToolTipData FMapToolTipData
function UUI_BP_HogsmeadeMapScreen_C:OnHovered_Event(ToolTipData) end
function UUI_BP_HogsmeadeMapScreen_C:MapChanged_Event() end
function UUI_BP_HogsmeadeMapScreen_C:ExitMapScreen_Event() end
---@param Parent UUserWidget
function UUI_BP_HogsmeadeMapScreen_C:SetParent(Parent) end
function UUI_BP_HogsmeadeMapScreen_C:ShowHogwartsMissionsAvailable() end
function UUI_BP_HogsmeadeMapScreen_C:ShowOverlandMissionsAvailable() end
function UUI_BP_HogsmeadeMapScreen_C:InEditorPostConstruct() end
function UUI_BP_HogsmeadeMapScreen_C:MapMove_Event() end
function UUI_BP_HogsmeadeMapScreen_C:ZoomInPressed_Event() end
function UUI_BP_HogsmeadeMapScreen_C:ZoomInReleased_Event() end
function UUI_BP_HogsmeadeMapScreen_C:ZoomOutPressed_Event() end
function UUI_BP_HogsmeadeMapScreen_C:ZoomOutReleased_Event() end
function UUI_BP_HogsmeadeMapScreen_C:DisableOverlandButton() end
function UUI_BP_HogsmeadeMapScreen_C:DisableHogwartsButton() end
---@param ToolTipData FMapToolTipData
function UUI_BP_HogsmeadeMapScreen_C:OnUpdateToolTip_Event(ToolTipData) end
function UUI_BP_HogsmeadeMapScreen_C:WayPointSet_Event() end
function UUI_BP_HogsmeadeMapScreen_C:WayPointUnset_Event() end
function UUI_BP_HogsmeadeMapScreen_C:Initialize() end
function UUI_BP_HogsmeadeMapScreen_C:BndEvt__UI_BP_HogsmeadeMapScreen_OverlandButton_K2Node_ComponentBoundEvent_0_OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_HogsmeadeMapScreen_C:BndEvt__UI_BP_HogsmeadeMapScreen_HogwartsButton_K2Node_ComponentBoundEvent_1_OnMapsButtonHovered__DelegateSignature() end
function UUI_BP_HogsmeadeMapScreen_C:RegionInfoUpdated_Event() end
---@param Caller UObject
function UUI_BP_HogsmeadeMapScreen_C:TutorialSaysStopHighlightHogwarts(Caller) end
function UUI_BP_HogsmeadeMapScreen_C:SetupFastTravelTutorial() end
---@param EntryPoint int32
function UUI_BP_HogsmeadeMapScreen_C:ExecuteUbergraph_UI_BP_HogsmeadeMapScreen(EntryPoint) end
---@param ItemIndex int32
function UUI_BP_HogsmeadeMapScreen_C:OnMenuItemChanged__DelegateSignature(ItemIndex) end
---@param Key FKey
function UUI_BP_HogsmeadeMapScreen_C:OnMapInput__DelegateSignature(Key) end
---@param NewParam TArray<FString>
function UUI_BP_HogsmeadeMapScreen_C:UpdateMapLegend__DelegateSignature(NewParam) end


