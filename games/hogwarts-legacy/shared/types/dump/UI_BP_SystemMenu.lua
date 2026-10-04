---@meta

---@class UUI_BP_SystemMenu_C : USystemMenuWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ToggleHDRCalibrationScreen UWidgetAnimation
---@field ToggleCalibrationScreen UWidgetAnimation
---@field AsyncAccessibility UUI_BP_AsyncLoadWrapper_C
---@field AsyncAudio UUI_BP_AsyncLoadWrapper_C
---@field AsyncConsoleDisplay UUI_BP_AsyncLoadWrapper_C
---@field AsyncDisplay UUI_BP_AsyncLoadWrapper_C
---@field AsyncGamepadControls UUI_BP_AsyncLoadWrapper_C
---@field AsyncGameplay UUI_BP_AsyncLoadWrapper_C
---@field AsyncGraphics UUI_BP_AsyncLoadWrapper_C
---@field AsyncKeyboardControls UUI_BP_AsyncLoadWrapper_C
---@field AsyncMenuSwitcher UAsyncWidgetSwitcher
---@field AsyncUI UUI_BP_AsyncLoadWrapper_C
---@field confirmBack UUI_BP_FG_DetailsPanelBack_C
---@field ConfirmGraphicsChangesPopup UCanvasPanel
---@field ConfirmPopupClickable UButton
---@field ConfirmScreenFade UImage
---@field GraphicsAcceptCountdownText UPhoenixTextBlock
---@field navBar UUI_BP_FG_CategoryNavBar_C
---@field page_Calibration UUI_BP_Settings_Calibration_C
---@field Page_HDRCalibration UUI_BP_Settings_HDRCalibration_C
---@field popupBody UPhoenixTextBlock
---@field popupLegendItem_Accept UUI_BP_LegendItem_C
---@field popupLegendItem_Cancel UUI_BP_LegendItem_C
---@field PopupTitle UPhoenixTextBlock
---@field settingsBorder UBorder
---@field SettingsPageIcon UImage
---@field settingsTitle UPhoenixTextBlock
---@field MainMenu UUserWidget
---@field PageIndex int32
---@field isInCalibration boolean
---@field IsInHDRCalibration boolean
---@field InAcceptGraphicsChangeMode boolean
---@field AcceptTimeRemaining float
---@field RequiresConfirm boolean
---@field MinFOVOffset_Console float
---@field MaxFOVOffset_Console float
---@field MinFOVOffset_PC float
---@field MaxFOVOffset_PC float
---@field DynamicRanges TArray<float>
---@field CurrentPlatform FString
---@field InPageTransition boolean
---@field MenuTitles TArray<FString>
---@field Categories TArray<FText>
---@field BackOutPromptConfirmed FUI_BP_SystemMenu_CBackOutPromptConfirmed
---@field CategoryIndexToGoAfterConfirm int32
---@field HDRScreenToggled FUI_BP_SystemMenu_CHDRScreenToggled
---@field ParentLegend ULegend
---@field HoveredNavBarIndex int32
local UUI_BP_SystemMenu_C = {}

---@param RenderSize FVector2D
function UUI_BP_SystemMenu_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SystemMenu_C:GatherMenuReaderStrings(DepthLevel) end
---@param OutConfirmTitle FString
---@param OutConfirmDesc FString
---@return boolean
function UUI_BP_SystemMenu_C:SettingsNeedExitConfirmed(OutConfirmTitle, OutConfirmDesc) end
function UUI_BP_SystemMenu_C:FilterTabsByPlatform() end
---@param PopupTitle FString
---@param PopupDesc FString
function UUI_BP_SystemMenu_C:RequestExitFromTab(PopupTitle, PopupDesc) end
---@param IsOnKeyMappingTab boolean
---@param HasUnboundActions boolean
function UUI_BP_SystemMenu_C:IsOnKeyMappingTab(IsOnKeyMappingTab, HasUnboundActions) end
function UUI_BP_SystemMenu_C:ChangeKeyboardControlTab() end
---@param Direction int32
---@param Handled boolean
UUI_BP_SystemMenu_C['Change Control Tab'] = function(self, Direction, Handled) end
---@param Accepted boolean
function UUI_BP_SystemMenu_C:DismissConfirmationDialog(Accepted) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_SystemMenu_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param PageIndex int32
function UUI_BP_SystemMenu_C:SetMenuTitle(PageIndex) end
---@param LegendData TArray<FLegendItemData>
function UUI_BP_SystemMenu_C:SetCurrentLegend(LegendData) end
---@param IsOnPc boolean
function UUI_BP_SystemMenu_C:IsOnPc(IsOnPc) end
---@param NewAcceptMode boolean
---@param Duration float
UUI_BP_SystemMenu_C['Toggle Accept Graphics Change Mode'] = function(self, NewAcceptMode, Duration) end
---@param NewPageIndex int32
function UUI_BP_SystemMenu_C:GoToCategoryPage(NewPageIndex) end
---@param NewIndex int32
function UUI_BP_SystemMenu_C:CategorySwitch(NewIndex) end
function UUI_BP_SystemMenu_C:DisplaySaveGames() end
function UUI_BP_SystemMenu_C:InEditorPostConstruct() end
---@param ChildObject UUserWidget
function UUI_BP_SystemMenu_C:BndEvt__AsyncDisplaySettings_K2Node_ComponentBoundEvent_0_AsyncWrapperChildReadyEvent__DelegateSignature(ChildObject) end
---@param Duration float
function UUI_BP_SystemMenu_C:OnShowConfirmDialog(Duration) end
function UUI_BP_SystemMenu_C:OnShowCalibration() end
---@param ChildObject UUserWidget
function UUI_BP_SystemMenu_C:BndEvt__UI_BP_SystemMenu_AsyncConsoleDisplay_K2Node_ComponentBoundEvent_1_AsyncWrapperChildReadyEvent__DelegateSignature(ChildObject) end
function UUI_BP_SystemMenu_C:OnShowCalibration_Console() end
function UUI_BP_SystemMenu_C:OnShowHDRCalibration() end
function UUI_BP_SystemMenu_C:OnShowHDRCalibration_Console() end
---@param ButtonIndex int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_SystemMenu_C:BndEvt__UI_BP_SystemMenu_navBar_K2Node_ComponentBoundEvent_2_HoveredCategory__DelegateSignature(ButtonIndex, CategoryButton) end
function UUI_BP_SystemMenu_C:Initialize() end
---@param Parent UUserWidget
function UUI_BP_SystemMenu_C:SetParent(Parent) end
function UUI_BP_SystemMenu_C:Construct() end
---@param DestinationStack TArray<FString>
function UUI_BP_SystemMenu_C:GoToPage(DestinationStack) end
---@param IsDesignTime boolean
function UUI_BP_SystemMenu_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_SystemMenu_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_SystemMenu_C:BndEvt__KeepFocusOnMe_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_SystemMenu_C:OnOutroStarted(OutroType, OutroDuration) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_SystemMenu_C:OnIntroStarted(IntroType, IntroDuration) end
---@param ChildObject UUserWidget
function UUI_BP_SystemMenu_C:BndEvt__UI_BP_SystemMenu_AsyncGameplay_K2Node_ComponentBoundEvent_2_AsyncWrapperChildReadyEvent__DelegateSignature(ChildObject) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_SystemMenu_C:OnLegendItemHoldEnd(LegendItem, HoldWasCompleted) end
function UUI_BP_SystemMenu_C:ConfirmPageUp() end
function UUI_BP_SystemMenu_C:ConfirmPageDown() end
function UUI_BP_SystemMenu_C:ConfirmBackOut() end
---@param Popup UPopupScreen
---@param ResultIndex int32
function UUI_BP_SystemMenu_C:ExitPopupDismissed(Popup, ResultIndex) end
function UUI_BP_SystemMenu_C:LeaveFromPage() end
---@param NewCategoryIndex int32
function UUI_BP_SystemMenu_C:BndEvt__UI_BP_SystemMenu_navBar_K2Node_ComponentBoundEvent_3_ChangedCategory__DelegateSignature(NewCategoryIndex) end
---@param ActiveWidget UUserWidget
function UUI_BP_SystemMenu_C:ActiveWidgetDisplayable(ActiveWidget) end
---@param IntroType int32
function UUI_BP_SystemMenu_C:OnIntroEnded(IntroType) end
function UUI_BP_SystemMenu_C:BlueprintFocusAcquired() end
---@param NewLegend TArray<FLegendItemData>
function UUI_BP_SystemMenu_C:NewLegendRequested(NewLegend) end
---@param EntryPoint int32
function UUI_BP_SystemMenu_C:ExecuteUbergraph_UI_BP_SystemMenu(EntryPoint) end
---@param IsShown boolean
function UUI_BP_SystemMenu_C:HDRScreenToggled__DelegateSignature(IsShown) end
function UUI_BP_SystemMenu_C:BackOutPromptConfirmed__DelegateSignature() end


