---@meta

---@class UUI_BP_FG_InventoryScreen_C : UTabPageWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field fadeInInspectable UWidgetAnimation
---@field IntroAnim UWidgetAnimation
---@field OutroAnim UWidgetAnimation
---@field FadeOutTooltip UWidgetAnimation
---@field FadeInTooltip UWidgetAnimation
---@field AsyncNavBar UUI_BP_AsyncLoadWrapper_C
---@field categoryIcon UImage
---@field detailsPanel UUI_BP_FG_InventoryDetails_C
---@field InspectablePanel UCanvasPanel
---@field InventoryScrollBox UUI_BP_ItemScrollBox_C
---@field InventorySortText UPhoenixRichTextBlock
---@field Loadingwidget UCircularThrobber
---@field menuBoxTitle UPhoenixTextBlock
---@field Root UCanvasPanel
---@field SortLeftButton UButton
---@field SortRightButton UButton
---@field OnClickedEventDispatcher FUI_BP_FG_InventoryScreen_COnClickedEventDispatcher
---@field InventoryPopout UUserWidget
---@field UIMode EUIDisplayMode
---@field AbortInteraction FUI_BP_FG_InventoryScreen_CAbortInteraction
---@field Current_IconButton UUserWidget
---@field PlayerInventory TArray<FInventoryResult>
---@field InteractTargetID FName
---@field InspectableWidget UUserWidget
---@field RichPaperClass TSubclassOf<UUserWidget>
---@field ParentContainer UUserWidget
---@field InventoryRows int32
---@field InventoryColumns int32
---@field ToolTipTimer FTimerHandle
---@field InventoryState UInventoryState
---@field InventoryCategory EInventoryTabCategory
---@field IconButtonSize float
---@field IconButtonClass TSubclassOf<UIconButtonWidget>
---@field InteractTargetHolderID FName
---@field AvailableTabNames TArray<FText>
---@field howMany UUI_BP_HowMany_C
---@field ['Transfer/Drop'] boolean
---@field ActiveButton UUserWidget
---@field ToInventory boolean
---@field HouseColor FLinearColor
---@field PickPocketing boolean
---@field NewItemsList TArray<FName>
---@field ReadyToUse boolean
---@field AsyncLoadCount int32
---@field TutorialItemNames TArray<FName>
---@field InventoryHolders TArray<FName>
---@field InventoryHolderStructures TArray<FInventoryHolder>
---@field Category int32
---@field ShowCategoryMap TMap<FName, boolean>
---@field CategoriesAreSetup boolean
---@field ShowTimerHandle FTimerHandle
---@field HideTimerHandle FTimerHandle
---@field isDetailsShowing boolean
---@field CurrentHoverTime float
---@field isButtonHovered boolean
---@field HoverTimeFinal float
---@field CategoryToTutorialMap TMap<FString, FName>
---@field InventoryIconCount int32
---@field CurrentInventorySort EInventorySortType
---@field NUM_SORT_TYPES EInventorySortType
---@field CurrentCategory FString
---@field DropButtonIndex int32
---@field ItemToDrop FInventoryResult
---@field IsInspectableShown boolean
---@field HoveredNavBarIndex int32
local UUI_BP_FG_InventoryScreen_C = {}

---@param TabCategory EInventoryTabCategory
function UUI_BP_FG_InventoryScreen_C:I_GetInventoryTabCategory(TabCategory) end
---@param TargetId FName
---@param TargetHolderID FName
function UUI_BP_FG_InventoryScreen_C:GetInteractTargetInfo(TargetId, TargetHolderID) end
---@param Inventory UUserWidget
function UUI_BP_FG_InventoryScreen_C:I_GetInventory(Inventory) end
---@param Handled boolean
function UUI_BP_FG_InventoryScreen_C:I_ClickHandler(Handled) end
---@param Removed boolean
function UUI_BP_FG_InventoryScreen_C:I_RemoveInspectable(Removed) end
---@param PlayerInventory TArray<FInventoryResult>
function UUI_BP_FG_InventoryScreen_C:GetPlayerInventory(PlayerInventory) end
---@param InventoryScrollBox UUserWidget
function UUI_BP_FG_InventoryScreen_C:GetScrollBox(InventoryScrollBox) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@param Handled boolean
function UUI_BP_FG_InventoryScreen_C:UMGInputHandler(InputAction, InputEvent, Handled) end
---@param Handled boolean
function UUI_BP_FG_InventoryScreen_C:ClickHandler(Handled) end
---@param ItemBox UUserWidget
function UUI_BP_FG_InventoryScreen_C:GetItemBox(ItemBox) end
---@param RenderSize FVector2D
function UUI_BP_FG_InventoryScreen_C:GetAsyncWrapperRenderSize(RenderSize) end
function UUI_BP_FG_InventoryScreen_C:CenterInspectableScreenVertically() end
---@param Button UIconButtonWidget
---@param NewIndicatorString FString
function UUI_BP_FG_InventoryScreen_C:GetButtonNewIndicatorName(Button, NewIndicatorString) end
function UUI_BP_FG_InventoryScreen_C:TerminateLingeringTutorials() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_InventoryScreen_C:GatherMenuReaderStrings(DepthLevel) end
---@param TooltipLegendArray TArray<FLegendItemData>
function UUI_BP_FG_InventoryScreen_C:RefreshLegend(TooltipLegendArray) end
function UUI_BP_FG_InventoryScreen_C:SaveCurrentSortPreference() end
function UUI_BP_FG_InventoryScreen_C:ReadSavedSortPreference() end
---@param Category FString
---@param Delta int32
function UUI_BP_FG_InventoryScreen_C:FindNextValidSortForCategory(Category, Delta) end
---@param SortType EInventorySortType
---@param Category FString
---@param Result boolean
function UUI_BP_FG_InventoryScreen_C:IsValidSortForCategory(SortType, Category, Result) end
---@param Delta int32
function UUI_BP_FG_InventoryScreen_C:CycleSortType(Delta) end
---@param CategoryName FText
function UUI_BP_FG_InventoryScreen_C:KillActiveTutorial(CategoryName) end
---@param Category FString
function UUI_BP_FG_InventoryScreen_C:PlayOneTimeTutorial(Category) end
UUI_BP_FG_InventoryScreen_C['Setup Categories'] = function(self, ) end
UUI_BP_FG_InventoryScreen_C['Get Inventory Structures Data'] = function(self, ) end
---@param ItemNames TArray<FName>
function UUI_BP_FG_InventoryScreen_C:GetTutorialHighlight(ItemNames) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_FG_InventoryScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param Max int32
---@param ItemName FName
function UUI_BP_FG_InventoryScreen_C:ShowAmountWidget(Max, ItemName) end
---@param Sort_Type FString
function UUI_BP_FG_InventoryScreen_C:ShowSort_Label(Sort_Type) end
---@param Button UUserWidget
---@param TooltipLegend TArray<FLegendItemData>
UUI_BP_FG_InventoryScreen_C['Setup Tooltip'] = function(self, Button, TooltipLegend) end
function UUI_BP_FG_InventoryScreen_C:ComputeIconSizeForPage() end
---@param ButtonClass TSubclassOf<UIconButtonWidget>
function UUI_BP_FG_InventoryScreen_C:SetupItemScrollBox(ButtonClass) end
function UUI_BP_FG_InventoryScreen_C:ResizeInventory() end
---@param InButton UUserWidget
function UUI_BP_FG_InventoryScreen_C:SetCreatureInventoryTooltipInformation(InButton) end
---@param InventoryTabCategory EInventoryTabCategory
function UUI_BP_FG_InventoryScreen_C:GetInventoryTabCategory(InventoryTabCategory) end
---@param Items TArray<FString>
function UUI_BP_FG_InventoryScreen_C:MarkSelectedItems(Items) end
---@param NewItem FString
function UUI_BP_FG_InventoryScreen_C:SetCurrentHighlightedItem(NewItem) end
---@param DisplayMode EUIDisplayMode
function UUI_BP_FG_InventoryScreen_C:SetInventoryState(DisplayMode) end
---@param RichPaperID FString
function UUI_BP_FG_InventoryScreen_C:AddInspectable(RichPaperID) end
---@param Removed boolean
function UUI_BP_FG_InventoryScreen_C:RemoveInspectable(Removed) end
function UUI_BP_FG_InventoryScreen_C:OnUnhovered() end
function UUI_BP_FG_InventoryScreen_C:InitButtonsToEmpty() end
---@param Inventory TArray<FInventoryResult>
function UUI_BP_FG_InventoryScreen_C:UpdateAllButtons(Inventory) end
function UUI_BP_FG_InventoryScreen_C:InitNavbar() end
UUI_BP_FG_InventoryScreen_C['Refresh Inventory'] = function(self, ) end
---@param Button UObject
function UUI_BP_FG_InventoryScreen_C:IconButton_Unhovered(Button) end
---@param Button UObject
function UUI_BP_FG_InventoryScreen_C:IconButton_Clicked(Button) end
function UUI_BP_FG_InventoryScreen_C:IconButton_Hover() end
function UUI_BP_FG_InventoryScreen_C:InitInventory() end
---@param Loaded UClass
function UUI_BP_FG_InventoryScreen_C:OnLoaded_97F954DF4B2BFC8E82EF19BE04A37EDD(Loaded) end
---@param Loaded UClass
function UUI_BP_FG_InventoryScreen_C:OnLoaded_8DA06735455F217B13C1A8853936776A(Loaded) end
---@param Loaded UClass
function UUI_BP_FG_InventoryScreen_C:OnLoaded_627C7C8846B3845375AEA1B3524C9FA0(Loaded) end
---@param Stride int32
function UUI_BP_FG_InventoryScreen_C:SetStride(Stride) end
---@param ShouldShow boolean
function UUI_BP_FG_InventoryScreen_C:ShowNavBar(ShouldShow) end
function UUI_BP_FG_InventoryScreen_C:I_RefreshInventory() end
---@param PickPocketing boolean
function UUI_BP_FG_InventoryScreen_C:SetPickPocketing(PickPocketing) end
---@param Max int32
---@param ItemName FName
function UUI_BP_FG_InventoryScreen_C:I_ShowAmountWidget(Max, ItemName) end
---@param CurrentButton UUserWidget
function UUI_BP_FG_InventoryScreen_C:SetCurrentIconButton(CurrentButton) end
---@param ToInventory boolean
function UUI_BP_FG_InventoryScreen_C:SetToInventory(ToInventory) end
function UUI_BP_FG_InventoryScreen_C:I_Sort() end
---@param Transfer_Drop boolean
function UUI_BP_FG_InventoryScreen_C:SetButtonTransferDrop(Transfer_Drop) end
function UUI_BP_FG_InventoryScreen_C:I_InitButtonsToEmpty() end
---@param Button UUserWidget
function UUI_BP_FG_InventoryScreen_C:I_SetActiveButton(Button) end
---@param RichPaperID FString
function UUI_BP_FG_InventoryScreen_C:I_AddInspectable(RichPaperID) end
function UUI_BP_FG_InventoryScreen_C:InventoryData() end
function UUI_BP_FG_InventoryScreen_C:Construct() end
function UUI_BP_FG_InventoryScreen_C:Destruct() end
---@param Caller UObject
---@param int int32
function UUI_BP_FG_InventoryScreen_C:NavBar_SelectionChanged(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_FG_InventoryScreen_C:NavBar_HoveredCategory(Caller, int) end
---@param DestinationStack TArray<FString>
function UUI_BP_FG_InventoryScreen_C:GoToPage(DestinationStack) end
---@param Caller UObject
---@param int int32
function UUI_BP_FG_InventoryScreen_C:InventoryAmountWidgetEvent(Caller, int) end
---@param NewCategoryIndex int32
function UUI_BP_FG_InventoryScreen_C:OnNavBarSelectionChanged(NewCategoryIndex) end
---@param CategoryName FName
function UUI_BP_FG_InventoryScreen_C:ClearCategory(CategoryName) end
---@param Category EInventoryTabCategory
function UUI_BP_FG_InventoryScreen_C:I_SetInventoryCategory(Category) end
---@param Button UObject
function UUI_BP_FG_InventoryScreen_C:InventoryIconButtonClicked(Button) end
---@param Button UObject
function UUI_BP_FG_InventoryScreen_C:InventoryIconButtonUnhovered(Button) end
---@param Button UObject
function UUI_BP_FG_InventoryScreen_C:InventoryIconButtonHovered(Button) end
---@param AssetClass TSoftClassPtr<UObject>
UUI_BP_FG_InventoryScreen_C['Load Class'] = function(self, AssetClass) end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_FG_InventoryScreen_C:OnNavLoadComplete(SelfReference) end
---@param TargetId FName
---@param TargetHolderID FName
function UUI_BP_FG_InventoryScreen_C:SetInteractTargetInfo(TargetId, TargetHolderID) end
---@param Caller UObject
---@param int int32
function UUI_BP_FG_InventoryScreen_C:NavBar_UnhoveredCategory(Caller, int) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_FG_InventoryScreen_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_FG_InventoryScreen_C:LeaveFromPage() end
---@param UIDisplayMode EUIDisplayMode
function UUI_BP_FG_InventoryScreen_C:SetMode(UIDisplayMode) end
function UUI_BP_FG_InventoryScreen_C:InEditorPostConstruct() end
function UUI_BP_FG_InventoryScreen_C:Initialize() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_FG_InventoryScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param Parent UUserWidget
function UUI_BP_FG_InventoryScreen_C:SetParent(Parent) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_FG_InventoryScreen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param NewParam UUserWidget
function UUI_BP_FG_InventoryScreen_C:I_SetParent(NewParam) end
---@param LegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_InventoryScreen_C:OnLegendItemHoldEnd(LegendItem, HoldWasCompleted) end
function UUI_BP_FG_InventoryScreen_C:BndEvt__UI_BP_FG_InventoryScreen_SortLeftButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FG_InventoryScreen_C:BndEvt__UI_BP_FG_InventoryScreen_SortRightButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
---@param IntroType int32
function UUI_BP_FG_InventoryScreen_C:OnIntroEnded(IntroType) end
---@param InventoryLegendItem ULegendItem
---@param HoldWasCompleted boolean
function UUI_BP_FG_InventoryScreen_C:BndEvt__UI_BP_FG_InventoryScreen_detailsPanel_K2Node_ComponentBoundEvent_2_LegendHoldItemReleased__DelegateSignature(InventoryLegendItem, HoldWasCompleted) end
---@param EntryPoint int32
function UUI_BP_FG_InventoryScreen_C:ExecuteUbergraph_UI_BP_FG_InventoryScreen(EntryPoint) end
function UUI_BP_FG_InventoryScreen_C:AbortInteraction__DelegateSignature() end
---@param Category UObject
function UUI_BP_FG_InventoryScreen_C:OnClickedEventDispatcher__DelegateSignature(Category) end


