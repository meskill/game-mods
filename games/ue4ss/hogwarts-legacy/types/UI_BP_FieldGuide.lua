---@meta

---@class UUI_BP_FieldGuide_C : UFieldGuideMenu
---@field UberGraphFrame FPointerToUberGraphFrame
---@field fadeScrim UWidgetAnimation
---@field Async_FG_Actions UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Collections UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Gear UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Inventory UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Map UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_OwlMail UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Quests UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Settings UUI_BP_AsyncLoadWrapper_C
---@field Async_FG_Talents UUI_BP_AsyncLoadWrapper_C
---@field backgroundDim UImage
---@field backgroundHide UImage
---@field btn_Actions UUI_BP_NavBarButton_C
---@field btn_Character UUI_BP_NavBarButton_C
---@field btn_Collections UUI_BP_NavBarButton_C
---@field btn_Inventory UUI_BP_NavBarButton_C
---@field btn_Mail UUI_BP_NavBarButton_C
---@field btn_Map UUI_BP_NavBarButton_C
---@field btn_Missions UUI_BP_NavBarButton_C
---@field btn_Settings UUI_BP_NavBarButton_C
---@field btn_Talents UUI_BP_NavBarButton_C
---@field FG_IndexPage UUI_BP_FG_Index_C
---@field HiddenButtonForHoverEvents UButton
---@field Legend UUI_BP_Legend_Horizontal_Screen_C
---@field MenuWidgetSwitcher UAsyncWidgetSwitcher
---@field navBar UCanvasPanel
---@field NavBarContainer UHorizontalBox
---@field NavBarLeftButton UButton
---@field NavBarRightButton UButton
---@field HiddenButtonHovered boolean
---@field NavBarToMenuMap TMap<UUI_BP_NavBarButton_C, UUI_BP_AsyncLoadWrapper_C>
---@field SelectedNavBarButton UUI_BP_NavBarButton_C
---@field DisplayPageDelay float
---@field PageNameToMenuMap TMap<FString, UUI_BP_AsyncLoadWrapper_C>
---@field LockedToPage boolean
---@field DestPagePath TArray<FString>
---@field MenuToPageNameMap TMap<UUI_BP_AsyncLoadWrapper_C, FString>
---@field NewPage UUI_BP_AsyncLoadWrapper_C
---@field isScrimShowing boolean
---@field MenuToEnumMap TMap<UUI_BP_AsyncLoadWrapper_C, EPauseMenuPage>
---@field InMenuTransition boolean
---@field CurrentTabIndex int32
---@field NotificationCategories TArray<ENotificationCategory>
---@field InMapTransition boolean
local UUI_BP_FieldGuide_C = {}

---@param bIsPhotoModeAllowed boolean
function UUI_BP_FieldGuide_C:IsPhotoModeAllowed(bIsPhotoModeAllowed) end
---@param OutLegendArray TArray<FLegendItemData>
function UUI_BP_FieldGuide_C:CreateFirstLegendArray(OutLegendArray) end
function UUI_BP_FieldGuide_C:TerminateLingeringTutorials() end
---@param Prevented boolean
function UUI_BP_FieldGuide_C:DoesTutorialPreventExitingPauseMenu(Prevented) end
---@param Prevented boolean
function UUI_BP_FieldGuide_C:DoesTutorialPreventBackingOut(Prevented) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FieldGuide_C:GatherMenuReaderStrings(DepthLevel) end
---@param PageWidget UWidget
---@param Index int32
function UUI_BP_FieldGuide_C:GetPageIndex(PageWidget, Index) end
---@param IsShown boolean
function UUI_BP_FieldGuide_C:IsInspectableShown(IsShown) end
function UUI_BP_FieldGuide_C:HandleNavigateNavBarRight() end
function UUI_BP_FieldGuide_C:HandleNavigateNavBarLeft() end
---@param IsShown boolean
function UUI_BP_FieldGuide_C:IsGraphicsChangeConfirmPopupShown(IsShown) end
---@param NavBarButton UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:HandleHotkeyPressedForNavButton(NavBarButton) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@param Handled boolean
function UUI_BP_FieldGuide_C:ConditionallyHandleSettingsConfirm(InputAction, InputEvent, Handled) end
---@param MenuPage UUI_BP_AsyncLoadWrapper_C
---@param ShouldSkip boolean
function UUI_BP_FieldGuide_C:ShouldSkipPage(MenuPage, ShouldSkip) end
function UUI_BP_FieldGuide_C:HandleDisabledTabs() end
---@param NewPage EPauseMenuPage
---@param DestPath TArray<FString>
function UUI_BP_FieldGuide_C:HandleNewTabRequested(NewPage, DestPath) end
function UUI_BP_FieldGuide_C:HideBackgroundScrim() end
function UUI_BP_FieldGuide_C:ShowBackgroundScrim() end
UUI_BP_FieldGuide_C['Close Field Guide Requested'] = function(self, ) end
function UUI_BP_FieldGuide_C:ExitMenuRequestedDelegate() end
function UUI_BP_FieldGuide_C:StartNewPage() end
---@param PhoenixUserWidget UPhoenixUserWidget
---@param IntParam int32
function UUI_BP_FieldGuide_C:PageOutroFinished(PhoenixUserWidget, IntParam) end
---@param PhoenixUserWidget UPhoenixUserWidget
---@param IntParam int32
function UUI_BP_FieldGuide_C:OutroFinishedWhenLockedToPage(PhoenixUserWidget, IntParam) end
---@param CanExit boolean
function UUI_BP_FieldGuide_C:CanExit(CanExit) end
function UUI_BP_FieldGuide_C:HandleBackup() end
---@param SkipFade boolean
---@param ExitReason EFieldGuideExitReasons
function UUI_BP_FieldGuide_C:ExitPauseMenu(SkipFade, ExitReason) end
---@param Locked boolean
function UUI_BP_FieldGuide_C:SetLockedToPage(Locked) end
function UUI_BP_FieldGuide_C:GenerateNavLookupMaps() end
---@param pageName FString
function UUI_BP_FieldGuide_C:FieldGuide_StartOnPage(pageName) end
---@param Menu UAsyncLoadWrapper
---@param Button UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:FindNavButtonFromMenu(Menu, Button) end
---@param Button UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:UpdateNavBar(Button) end
---@param CurrentIndex int32
function UUI_BP_FieldGuide_C:NextPage(CurrentIndex) end
---@param CurrentIndex int32
function UUI_BP_FieldGuide_C:PrevPage(CurrentIndex) end
---@param NavBarButton UUI_BP_NavBarButton_C
---@param Handled boolean
function UUI_BP_FieldGuide_C:HandleNavBarClicked(NavBarButton, Handled) end
---@param NewPage UUI_BP_AsyncLoadWrapper_C
function UUI_BP_FieldGuide_C:ChangeActivePage(NewPage) end
---@param LegendIndex int32
---@param ShouldStart boolean
function UUI_BP_FieldGuide_C:StartStopLegendFill(LegendIndex, ShouldStart) end
---@param LegendItem ULegendItem
---@param HoldCompleted boolean
function UUI_BP_FieldGuide_C:LegendHoldComplete(LegendItem, HoldCompleted) end
---@param NewLegend TArray<FLegendItemData>
function UUI_BP_FieldGuide_C:OnNewLegendRequested(NewLegend) end
---@param AsyncWrapper UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BindTabPageWidgetDelegates(AsyncWrapper) end
---@param NewLegendData TArray<FLegendItemData>
function UUI_BP_FieldGuide_C:SetLegend(NewLegendData) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FieldGuide_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Inventory_K2Node_ComponentBoundEvent_0_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Inventory_K2Node_ComponentBoundEvent_1_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Inventory_K2Node_ComponentBoundEvent_2_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Character_K2Node_ComponentBoundEvent_3_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Character_K2Node_ComponentBoundEvent_4_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Character_K2Node_ComponentBoundEvent_5_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Talents_K2Node_ComponentBoundEvent_6_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Talents_K2Node_ComponentBoundEvent_7_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Talents_K2Node_ComponentBoundEvent_8_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Missions_K2Node_ComponentBoundEvent_9_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Missions_K2Node_ComponentBoundEvent_10_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Missions_K2Node_ComponentBoundEvent_11_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Map_K2Node_ComponentBoundEvent_12_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Map_K2Node_ComponentBoundEvent_13_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Map_K2Node_ComponentBoundEvent_14_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Mail_K2Node_ComponentBoundEvent_15_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Mail_K2Node_ComponentBoundEvent_16_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Mail_K2Node_ComponentBoundEvent_17_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Compendium_K2Node_ComponentBoundEvent_18_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Compendium_K2Node_ComponentBoundEvent_19_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Compendium_K2Node_ComponentBoundEvent_20_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Settings_K2Node_ComponentBoundEvent_21_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Settings_K2Node_ComponentBoundEvent_22_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Settings_K2Node_ComponentBoundEvent_23_OnUnhoveredEventDispatcher__DelegateSignature() end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Actions_K2Node_ComponentBoundEvent_24_OnHoveredEventDispatcher__DelegateSignature(Me) end
---@param Me UUI_BP_NavBarButton_C
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Actions_K2Node_ComponentBoundEvent_25_OnClickedEventDispatcher__DelegateSignature(Me) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_btn_Actions_K2Node_ComponentBoundEvent_26_OnUnhoveredEventDispatcher__DelegateSignature() end
function UUI_BP_FieldGuide_C:Construct() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_10_GearScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_11_InventoryScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_12_TalentsScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_13_SettingsScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_14_MapScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_15_CollectionsScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_16_OwlMailScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_17_QuestsScreenSelected__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__Async_FG_Index_K2Node_ComponentBoundEvent_18_ActionsScreenSelected__DelegateSignature() end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Gear_K2Node_ComponentBoundEvent_0_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Inventory_K2Node_ComponentBoundEvent_1_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param ActiveWidget UUserWidget
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_MenuWidgetSwitcher_K2Node_ComponentBoundEvent_2_WidgetActiveEvent__DelegateSignature(ActiveWidget) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_HiddenButtonForHoverEvents_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_HiddenButtonForHoverEvents_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
---@param Caller UObject
function UUI_BP_FieldGuide_C:DelayShowingIndex(Caller) end
---@param Caller UObject
---@param int int32
function UUI_BP_FieldGuide_C:DelayLeavingMapDir(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_FieldGuide_C:ClosePauseMenu(Caller, int) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Quests_K2Node_ComponentBoundEvent_5_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Talents_K2Node_ComponentBoundEvent_8_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param Caller UObject
function UUI_BP_FieldGuide_C:DelayLeavingFieldGuide(Caller) end
---@param NewData TArray<FLegendItemData>
function UUI_BP_FieldGuide_C:UpdateMenuLegend(NewData) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Actions_K2Node_ComponentBoundEvent_5_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Collections_K2Node_ComponentBoundEvent_7_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Map_K2Node_ComponentBoundEvent_9_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_OwlMail_K2Node_ComponentBoundEvent_19_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_Async_FG_Settings_K2Node_ComponentBoundEvent_20_AsyncWrapperClassLoadEvent__DelegateSignature(SelfReference) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_NavBarLeftButton_K2Node_ComponentBoundEvent_21_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_NavBarRightButton_K2Node_ComponentBoundEvent_22_OnButtonClickedEvent__DelegateSignature() end
---@param Caller UObject
function UUI_BP_FieldGuide_C:ShowHDRActor(Caller) end
---@param Caller UObject
function UUI_BP_FieldGuide_C:HideHDRActor(Caller) end
---@param NewLegend TArray<FLegendItemData>
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_FG_IndexPage_K2Node_ComponentBoundEvent_23_NewButtonLegendRequested__DelegateSignature(NewLegend) end
function UUI_BP_FieldGuide_C:BndEvt__UI_BP_FieldGuide_FG_IndexPage_K2Node_ComponentBoundEvent_24_MenuReadLegendRequested__DelegateSignature() end
function UUI_BP_FieldGuide_C:MenuReadLegend() end
---@param MenuPage EUMGInputAction
function UUI_BP_FieldGuide_C:ChangeMenuPage(MenuPage) end
---@param Caller UObject
function UUI_BP_FieldGuide_C:ShowFieldGuideBackground(Caller) end
---@param Caller UObject
function UUI_BP_FieldGuide_C:MapReady(Caller) end
---@param EntryPoint int32
function UUI_BP_FieldGuide_C:ExecuteUbergraph_UI_BP_FieldGuide(EntryPoint) end


