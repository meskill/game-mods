---@meta

---@class UUI_BP_HerbologyMenu_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowInventoryFullMessage UWidgetAnimation
---@field Main_OUT UWidgetAnimation
---@field ShowErrorMessage UWidgetAnimation
---@field ApplyItemsWidget UUI_BP_HerbologyApplyItems_C
---@field backgroundSmoke UUI_BP_BackgroundSmoke_C
---@field ContentWidgetSwitcher UWidgetSwitcher
---@field ErrorIcon UImage
---@field ErrorMessageText UPhoenixTextBlock
---@field ErrorMessageText_1 UPhoenixTextBlock
---@field GrownWidget UUI_BP_HerbologyGrown_C
---@field headerTitleRetainer URetainerBox
---@field LeftButtonOverlay UOverlay
---@field NavLeftButton UButton
---@field NavRightButton UButton
---@field PlotContentsText UPhoenixTextBlock
---@field PlotNameText UPhoenixTextBlock
---@field RightButtonOverlay UOverlay
---@field ScreenLegend UUI_BP_Legend_Horizontal_Screen_C
---@field SeedSelectionWidget UUI_BP_HerbologySeedSelection_C
---@field TitleText UPhoenixTextBlock
---@field HerbPlot AHerbPlot
---@field InputLocked boolean
---@field ['Current Input Timeout Length'] float
---@field PreviousHerbPlot AHerbPlot
---@field ActiveLightRig UObject
---@field LegendItemPickup ULegendItem
---@field LegendItemDestroy ULegendItem
---@field IsPanelTransitionInProgress boolean
---@field EnableFadingTimerHerbPlot TMap<FTimerHandle, AHerbPlot>
---@field EnableFadingTimerIncludesParent TMap<FTimerHandle, boolean>
---@field LegendItemFactSheet ULegendItem
---@field LegendItemSelect ULegendItem
local UUI_BP_HerbologyMenu_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_HerbologyMenu_C:GatherMenuReaderStrings(DepthLevel) end
---@param HerbPlot AHerbPlot
---@param FadingEnabled boolean
---@param AlsoForParentAcotr boolean
function UUI_BP_HerbologyMenu_C:SetFadingEnabledForPlot(HerbPlot, FadingEnabled, AlsoForParentAcotr) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_HerbologyMenu_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_HerbologyMenu_C:TriggerPanelChangeWithAnimation() end
function UUI_BP_HerbologyMenu_C:SwitchToRightPlot() end
function UUI_BP_HerbologyMenu_C:SwitchToLeftPlot() end
function UUI_BP_HerbologyMenu_C:RefreshButtonLegend() end
function UUI_BP_HerbologyMenu_C:Construct() end
function UUI_BP_HerbologyMenu_C:Destruct() end
function UUI_BP_HerbologyMenu_C:RefreshForHerbPlot() end
---@param FertilizerID FName
function UUI_BP_HerbologyMenu_C:OnFertilizerSelected(FertilizerID) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_HerbologyMenu_C:Tick(MyGeometry, InDeltaTime) end
---@param TimeoutTime float
function UUI_BP_HerbologyMenu_C:BeginInputTimeout(TimeoutTime) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_HerbologyMenu_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_HerbologyMenu_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_HerbologyMenu_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_HerbologyMenu_C:OnIntroEnded(IntroType) end
function UUI_BP_HerbologyMenu_C:DisableFadingForHerbPlot() end
---@param Actor AActor
function UUI_BP_HerbologyMenu_C:RemoveNoFadeTag(Actor) end
---@param PlantID FName
function UUI_BP_HerbologyMenu_C:OnPlantSelected(PlantID) end
function UUI_BP_HerbologyMenu_C:ApplyItemsWidgetRequiresLegendUpdate() end
function UUI_BP_HerbologyMenu_C:BndEvt__UI_BP_HerbologyMenu_NavLeftButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_HerbologyMenu_C:BndEvt__UI_BP_HerbologyMenu_NavRightButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
---@param FertilizerButton UUI_BP_HerbologyFertilizerButton_C
function UUI_BP_HerbologyMenu_C:BndEvt__UI_BP_HerbologyMenu_ApplyItemsWidget_K2Node_ComponentBoundEvent_2_OnFertilizerHovered__DelegateSignature(FertilizerButton) end
---@param EntryPoint int32
function UUI_BP_HerbologyMenu_C:ExecuteUbergraph_UI_BP_HerbologyMenu(EntryPoint) end


