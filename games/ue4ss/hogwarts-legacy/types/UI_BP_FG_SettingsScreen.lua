---@meta

---@class UUI_BP_FG_SettingsScreen_C : USystemMenuWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ToggleHDRCalibrationScreen UWidgetAnimation
---@field ToggleSaveList UWidgetAnimation
---@field IntroAnim UWidgetAnimation
---@field ToggleCalibrationScreen UWidgetAnimation
---@field ToggleLoadList UWidgetAnimation
---@field AsyncAccessibility UUI_BP_AsyncLoadWrapper_C
---@field AsyncAudio UUI_BP_AsyncLoadWrapper_C
---@field AsyncConsoleDisplay UUI_BP_AsyncLoadWrapper_C
---@field AsyncDisplay UUI_BP_AsyncLoadWrapper_C
---@field AsyncGamepadControls UUI_BP_AsyncLoadWrapper_C
---@field AsyncGameplay UUI_BP_AsyncLoadWrapper_C
---@field AsyncGraphics UUI_BP_AsyncLoadWrapper_C
---@field AsyncKeyboardControls UUI_BP_AsyncLoadWrapper_C
---@field AsyncMenuSwitcher UAsyncWidgetSwitcher
---@field AsyncSaveLoad UUI_BP_AsyncLoadWrapper_C
---@field AsyncUI UUI_BP_AsyncLoadWrapper_C
---@field categoryNavBar UUI_BP_FG_CategoryNavBar_C
---@field ConfirmGraphicsChangesPopup UCanvasPanel
---@field ConfirmPopupClickable UButton
---@field ConfirmScreenFade UImage
---@field GraphicsAcceptCountdownText UPhoenixTextBlock
---@field LoadSaveResultPopup UBorder
---@field LoadSaveResultStr UPhoenixTextBlock
---@field page_Calibration UUI_BP_Settings_Calibration_C
---@field Page_HDRCalibration UUI_BP_Settings_HDRCalibration_C
---@field page_LoadGame UUI_BP_LoadMenu_C
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field popupBody UPhoenixTextBlock
---@field popupLegendItem_Accept UUI_BP_LegendItem_C
---@field popupLegendItem_Cancel UUI_BP_LegendItem_C
---@field PopupTitle UPhoenixTextBlock
---@field settingsBorder UBorder
---@field SettingsPageIcon UImage
---@field settingsTitle UPhoenixTextBlock
---@field UI_BP_SaveMenu UUI_BP_SaveMenu_C
---@field IsInLoadMenu boolean
---@field MainMenu UUserWidget
---@field isInCalibration boolean
---@field IsInHDRCalibration boolean
---@field InAcceptGraphicsChangeMode boolean
---@field AcceptTimeRemaining float
---@field RequiresConfirm boolean
---@field HideSaveLoadPage boolean
---@field MinFOVOffset_Console float
---@field MaxFOVOffset_Console float
---@field MinFOVOffset_PC float
---@field MaxFOVOffset_PC float
---@field DynamicRanges TArray<float>
---@field CurrentPlatform FString
---@field InPageTransition boolean
---@field IsLoadingSaveGame boolean
---@field MenuTitles TArray<FString>
---@field Categories TArray<FText>
---@field IsInSaveMenu boolean
---@field LastSaveStartTime FDateTime
---@field MinActiveSaveBannerDuration float
---@field CategoryIndexToGoAfterConfirm int32
---@field ParentLegend ULegend
---@field HoveredNavBarIndex int32
local UUI_BP_FG_SettingsScreen_C = {}

---@param RenderSize FVector2D
function UUI_BP_FG_SettingsScreen_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param Legend ULegend
function UUI_BP_FG_SettingsScreen_C:SetParentLegend(Legend) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_SettingsScreen_C:GatherMenuReaderStrings(DepthLevel) end
---@param OutConfirmTitle FString
---@param OutConfirmDesc FString
---@return boolean
function UUI_BP_FG_SettingsScreen_C:SettingsNeedExitConfirmed(OutConfirmTitle, OutConfirmDesc) end
---@param PopupTitle FString
---@param PopupDesc FString
function UUI_BP_FG_SettingsScreen_C:RequestExitFromTab(PopupTitle, PopupDesc) end
---@param IsOnKeyMappingTab boolean
---@param HasUnboundActions boolean
function UUI_BP_FG_SettingsScreen_C:IsOnKeyMappingTab(IsOnKeyMappingTab, HasUnboundActions) end
function UUI_BP_FG_SettingsScreen_C:InitLegend() end
function UUI_BP_FG_SettingsScreen_C:ChangeKeyboardControlTab() end
---@param Direction int32
---@param Handled boolean
UUI_BP_FG_SettingsScreen_C['Change Control Tab'] = function(self, Direction, Handled) end
---@param Accepted boolean
function UUI_BP_FG_SettingsScreen_C:DismissConfirmationDialog(Accepted) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FG_SettingsScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param PageIndex int32
function UUI_BP_FG_SettingsScreen_C:SetMenuTitle(PageIndex) end
---@param CurrentPage TArray<FLegendItemData>
function UUI_BP_FG_SettingsScreen_C:SetCurrentLegend(CurrentPage) end
---@param IsOnPc boolean
function UUI_BP_FG_SettingsScreen_C:IsOnPc(IsOnPc) end
---@param HideSaveLoad boolean
function UUI_BP_FG_SettingsScreen_C:ToggleSaveLoadPage(HideSaveLoad) end
---@param NewAcceptMode boolean
---@param Duration float
function UUI_BP_FG_SettingsScreen_C:ToggleAcceptGraphicsChangeMode(NewAcceptMode, Duration) end
---@param NewIndex int32
function UUI_BP_FG_SettingsScreen_C:CategorySwitch(NewIndex) end
function UUI_BP_FG_SettingsScreen_C:DisplaySaveGames() end
function UUI_BP_FG_SettingsScreen_C:OnShowCalibration() end
function UUI_BP_FG_SettingsScreen_C:OnShowLoadList() end
---@param ChildObject UUserWidget
function UUI_BP_FG_SettingsScreen_C:BndEvt__AsyncSaveLoad_K2Node_ComponentBoundEvent_3_AsyncWrapperEvent__DelegateSignature(ChildObject) end
---@param Parent UUserWidget
function UUI_BP_FG_SettingsScreen_C:SetParent(Parent) end
function UUI_BP_FG_SettingsScreen_C:OnSaveButtonClicked() end
---@param ChildObject UUserWidget
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_AsyncConsoleDisplay_K2Node_ComponentBoundEvent_8_AsyncWrapperChildReadyEvent__DelegateSignature(ChildObject) end
function UUI_BP_FG_SettingsScreen_C:OnShowCalibration_Console() end
function UUI_BP_FG_SettingsScreen_C:OnShowHDRCalibration() end
function UUI_BP_FG_SettingsScreen_C:OnShowHDRCalibration_Console() end
function UUI_BP_FG_SettingsScreen_C:InEditorPostConstruct() end
---@param ChildObject UUserWidget
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_AsyncAudio_K2Node_ComponentBoundEvent_10_AsyncWrapperChildReadyEvent__DelegateSignature(ChildObject) end
function UUI_BP_FG_SettingsScreen_C:OnRestartFromLastSaveFail() end
function UUI_BP_FG_SettingsScreen_C:Initialize() end
function UUI_BP_FG_SettingsScreen_C:Construct() end
---@param DestinationStack TArray<FString>
function UUI_BP_FG_SettingsScreen_C:GoToPage(DestinationStack) end
---@param IsDesignTime boolean
function UUI_BP_FG_SettingsScreen_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_FG_SettingsScreen_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_FG_SettingsScreen_C:BndEvt__KeepFocusOnMe_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
---@param ResultMessage FString
---@param Duration float
function UUI_BP_FG_SettingsScreen_C:ShowLoadSaveResultPopup(ResultMessage, Duration) end
---@param Filename FString
---@param CharacterID int32
function UUI_BP_FG_SettingsScreen_C:BndEvt__page_LoadGame_K2Node_ComponentBoundEvent_2_OnLoadSave__DelegateSignature(Filename, CharacterID) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_FG_SettingsScreen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_FG_SettingsScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param Duration float
function UUI_BP_FG_SettingsScreen_C:OnShowConfirmDialog(Duration) end
---@param NewCategoryIndex int32
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_categoryNavBar_K2Node_ComponentBoundEvent_3_ChangedCategory__DelegateSignature(NewCategoryIndex) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_SettingsScreen_C:OnLegendItemHoldEnd(LegendItem, HoldWasCompleted) end
---@param Start boolean
---@param LegendIndex int32
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_UI_BP_SaveMenu_K2Node_ComponentBoundEvent_6_StartStopDelete__DelegateSignature(Start, LegendIndex) end
---@param Start boolean
---@param LegendIndex int32
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_UI_BP_SaveMenu_K2Node_ComponentBoundEvent_1_StartStopOverwrite__DelegateSignature(Start, LegendIndex) end
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_UI_BP_SaveMenu_K2Node_ComponentBoundEvent_0_OnGameSaved__DelegateSignature() end
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_UI_BP_SaveMenu_K2Node_ComponentBoundEvent_4_OnSaveStarted__DelegateSignature() end
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_UI_BP_SaveMenu_K2Node_ComponentBoundEvent_5_OnSaveFailed__DelegateSignature() end
---@param ChildObject UUserWidget
function UUI_BP_FG_SettingsScreen_C:BndEvt__AsyncDisplaySettings_K2Node_ComponentBoundEvent_0_AsyncWrapperChildReadyEvent__DelegateSignature(ChildObject) end
function UUI_BP_FG_SettingsScreen_C:ConfirmPageUp() end
function UUI_BP_FG_SettingsScreen_C:ConfirmPageDown() end
function UUI_BP_FG_SettingsScreen_C:ConfirmBackOut() end
---@param Popup UPopupScreen
---@param ResultIndex int32
function UUI_BP_FG_SettingsScreen_C:ExitPopupDismissed(Popup, ResultIndex) end
function UUI_BP_FG_SettingsScreen_C:LeaveFromPage() end
---@param ActiveWidget UUserWidget
function UUI_BP_FG_SettingsScreen_C:ActiveWidgetDisplayable(ActiveWidget) end
---@param IntroType int32
function UUI_BP_FG_SettingsScreen_C:OnIntroEnded(IntroType) end
function UUI_BP_FG_SettingsScreen_C:BlueprintFocusAcquired() end
---@param ButtonIndex int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_FG_SettingsScreen_C:BndEvt__UI_BP_FG_SettingsScreen_categoryNavBar_K2Node_ComponentBoundEvent_8_HoveredCategory__DelegateSignature(ButtonIndex, CategoryButton) end
---@param Caller UObject
function UUI_BP_FG_SettingsScreen_C:LoadSaveGameFailed(Caller) end
---@param EntryPoint int32
function UUI_BP_FG_SettingsScreen_C:ExecuteUbergraph_UI_BP_FG_SettingsScreen(EntryPoint) end


