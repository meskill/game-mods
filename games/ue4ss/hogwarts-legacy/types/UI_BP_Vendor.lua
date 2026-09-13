---@meta

---@class UUI_BP_Vendor_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowItemDetails UWidgetAnimation
---@field FromPreviewMode UWidgetAnimation
---@field ToPreviewModeV2 UWidgetAnimation
---@field ShowComparisonDetails UWidgetAnimation
---@field FadeOut_ShopRB UWidgetAnimation
---@field Fadeout_Shop UWidgetAnimation
---@field FadeIn_Shop UWidgetAnimation
---@field FadeIn_ShopRB UWidgetAnimation
---@field TriggerErrorMessage UWidgetAnimation
---@field categoryText UPhoenixTextBlock
---@field ContentSwitcher UWidgetSwitcher
---@field equippedTooltip UUI_BP_FG_GearInvTooltip_C
---@field ErrorIcon UImage
---@field ErrorMessageText UPhoenixTextBlock
---@field Image_Sparkel UUI_BP_Sparkels_C
---@field Image_Sparkel_1 UUI_BP_Sparkels_C
---@field Image_Sparkel_2 UUI_BP_Sparkels_C
---@field itemDetails UUI_BP_FG_VendorDetails_C
---@field Legend UUI_BP_Legend_Horizontal_Screen_C
---@field Menu UCanvasPanel
---@field moneyBar UUI_BP_MoneyBar_C
---@field NavBarHorizontal UUI_BP_FG_CategoryNavBarHorizontal_C
---@field Overlay_Sparkel UOverlay
---@field PlayerVerticalBox UVerticalBox
---@field previewButton UButton
---@field previewDetails UUI_BP_FG_VendorDetails_C
---@field RetainerBox_Shop URetainerBox
---@field UI_BP_BackgroundSmoke_Vendor UUI_BP_BackgroundSmoke_C
---@field VendorShopIcon UImage
---@field VendorShopName UPhoenixTextBlock
---@field VendorVerticalBox UVerticalBox
---@field AbortInteraction FUI_BP_Vendor_CAbortInteraction
---@field icon_stride int32
---@field TargetVendor FName
---@field Quantity int32
---@field hoveredButton UUI_BP_InventoryIconButton_C
---@field IsPreviewing boolean
---@field CumulativeTransferTotals TArray<FInventoryResult>
---@field PreviewedGearID FString
---@field PageIndex int32
---@field StartPreview FUI_BP_Vendor_CStartPreview
---@field LeavePreview FUI_BP_Vendor_CLeavePreview
---@field SpecialItemsExist boolean
---@field OnItemPurchased FUI_BP_Vendor_COnItemPurchased
---@field OnItemSold FUI_BP_Vendor_COnItemSold
---@field OnItemPurchaseFailedNoMoney FUI_BP_Vendor_COnItemPurchaseFailedNoMoney
---@field OnItemPurchaseFailedNoSpace FUI_BP_Vendor_COnItemPurchaseFailedNoSpace
---@field BuyPageHidden boolean
---@field MatRef_FillGlow float
---@field MatRef_MoveY float
---@field MatRef_MoveY_Shop float
---@field MatRef_MaskLerpAlpha float
---@field MatRef_MaskGradianAlpha float
---@field PreviewedBroomID FName
---@field IsPreviewingBroom boolean
---@field VendorCategories TArray<FString>
---@field IsBeastVendor boolean
---@field MatRef_blur float
---@field CachedBroomPreviewLocator ABP_BroomPreviewLocator_C
---@field BroomPreviewActor AActor
---@field GearHandles FObjectHandles
---@field EquippedGearIDs TArray<FGearItemID>
---@field PressedButton UIconButtonWidget
---@field IsGearItem boolean
---@field IsGearComparisonShowing boolean
---@field CachedVendorItemGroups TArray<UUI_BP_Vendor_ItemGroup_C>
---@field CachedPlayerItemGroups TArray<UUI_BP_Vendor_ItemGroup_C>
---@field HoveredNavBarIndex int32
---@field NotifyOliAugustusVendorOnExit boolean
---@field IsSellPage boolean
local UUI_BP_Vendor_C = {}

function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_6() end
function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_5() end
function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_4() end
function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_3() end
function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_2() end
function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_1() end
function UUI_BP_Vendor_C:SequenceEvent__ENTRYPOINTUI_BP_Vendor_0() end
function UUI_BP_Vendor_C:AdjustForViewportWidth() end
function UUI_BP_Vendor_C:RefreshEquippedGearIDs() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Vendor_C:GatherMenuReaderStrings(DepthLevel) end
---@param Result boolean
function UUI_BP_Vendor_C:CanPreviewBroom(Result) end
function UUI_BP_Vendor_C:ToggleGearComparison() end
function UUI_BP_Vendor_C:DoBuySell() end
---@param GearID FName
---@param GearVariation FName
---@param Result boolean
function UUI_BP_Vendor_C:IsEquippedGear(GearID, GearVariation, Result) end
function UUI_BP_Vendor_C:PreloadGear() end
function UUI_BP_Vendor_C:StopBroomModelPreview() end
function UUI_BP_Vendor_C:StartBroomModelPreview() end
---@param ShouldPause boolean
function UUI_BP_Vendor_C:ToggleNotificationCategories(ShouldPause) end
function UUI_BP_Vendor_C:VO_OnItemPurchasedFailedNoSpace() end
function UUI_BP_Vendor_C:VO_OnLeavePreview() end
function UUI_BP_Vendor_C:VO_OnGearPreview() end
function UUI_BP_Vendor_C:VO_AbortInteraction() end
function UUI_BP_Vendor_C:VO_OnItemSold() end
function UUI_BP_Vendor_C:VO_OnItemPurchasedFailedNoMoney() end
function UUI_BP_Vendor_C:VO_OnItemPurchased() end
function UUI_BP_Vendor_C:VO_OnEnterVendor() end
UUI_BP_Vendor_C['Set Vendor Sign'] = function(self, ) end
---@param ErrorMessage FString
function UUI_BP_Vendor_C:DisplayErrorMessage(ErrorMessage) end
function UUI_BP_Vendor_C:RefreshLegend() end
function UUI_BP_Vendor_C:ConditionalAutosave() end
function UUI_BP_Vendor_C:ShowNotifications() end
---@param NewIndex int32
function UUI_BP_Vendor_C:CategorySwitch(NewIndex) end
---@param PageIndex int32
function UUI_BP_Vendor_C:GoToPage(PageIndex) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_Vendor_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param RarityIndex int32
---@param Rarity FString
function UUI_BP_Vendor_C:GetItemRarityString(RarityIndex, Rarity) end
---@param InventoryResult FInventoryResult
---@param Success boolean
---@param TotalCost int32
---@param FailReasonCost boolean
---@param FailReasonSpace boolean
function UUI_BP_Vendor_C:BuyItems(InventoryResult, Success, TotalCost, FailReasonCost, FailReasonSpace) end
---@param Name FName
---@param Variation FName
---@param Count int32
function UUI_BP_Vendor_C:AddToCumulativeTransferTotal(Name, Variation, Count) end
---@param InventoryResult FInventoryResult
---@param IsBuying boolean
---@param CostModifier float
UUI_BP_Vendor_C['Calculate VendorBuySellModifier'] = function(self, InventoryResult, IsBuying, CostModifier) end
---@param InventoryResult FInventoryResult
---@param AdjustedCost int32
function UUI_BP_Vendor_C:CalculateAdjustedSellBuyCost(InventoryResult, AdjustedCost) end
---@param InvResult FInventoryResult
function UUI_BP_Vendor_C:UpdateCost(InvResult) end
---@param Button UUserWidget
---@param FailReasonCost boolean
---@param FailReasonSpace boolean
---@param ItemName FName
function UUI_BP_Vendor_C:Failed_Buy(Button, FailReasonCost, FailReasonSpace, ItemName) end
---@param IconButton UIconButtonWidget
UUI_BP_Vendor_C['Icon Button Released'] = function(self, IconButton) end
---@param IconButton UIconButtonWidget
UUI_BP_Vendor_C['Icon Button Pressed'] = function(self, IconButton) end
---@param Button UIconButtonWidget
function UUI_BP_Vendor_C:IconButton_Unhovered(Button) end
---@param Button UIconButtonWidget
function UUI_BP_Vendor_C:IconButton_Clicked(Button) end
---@param Button UIconButtonWidget
function UUI_BP_Vendor_C:IconButton_Hover(Button) end
---@param InventoryResult FInventoryResult
---@param Button UUI_BP_InventoryIconButton_C
function UUI_BP_Vendor_C:CreatePlayerItemButton(InventoryResult, Button) end
---@param VendorCategory FString
---@param PlayerInventory TArray<FInventoryResult>
---@param Created boolean
---@param ItemGroup UUI_BP_Vendor_ItemGroup_C
function UUI_BP_Vendor_C:CreatePlayerItemGroup(VendorCategory, PlayerInventory, Created, ItemGroup) end
function UUI_BP_Vendor_C:RefreshPlayerInventory() end
---@param Item FInventoryResult
---@param IsPriority boolean
function UUI_BP_Vendor_C:IsPriorityMissionItem(Item, IsPriority) end
---@param ItemName FName
---@param ItemType FName
---@param HolderID FName
---@param VendorCategory FString
function UUI_BP_Vendor_C:GetVendorCategoryForItem(ItemName, ItemType, HolderID, VendorCategory) end
---@param InventoryResult FInventoryResult
---@param Cost_Modifier float
---@param IsTutorialHighlighted boolean
---@param isAvailable boolean
---@param UnavailableInfo FUnavailableIconInfo
---@param SpecialMissionItem boolean
---@param Button UUI_BP_InventoryIconButton_C
function UUI_BP_Vendor_C:CreateVendorItemButton(InventoryResult, Cost_Modifier, IsTutorialHighlighted, isAvailable, UnavailableInfo, SpecialMissionItem, Button) end
---@param VendorCategory FString
---@param VendorInventory TArray<FInventoryResult>
---@param UnavailableInventory TArray<FUnavailableIconInfo>
---@param TutorialHighlights TArray<FName>
---@param Created boolean
---@param ItemGroup UUI_BP_Vendor_ItemGroup_C
function UUI_BP_Vendor_C:CreateVendorItemGroup(VendorCategory, VendorInventory, UnavailableInventory, TutorialHighlights, Created, ItemGroup) end
---@param VendorCategory FString
---@param VendorInventory TArray<FInventoryResult>
---@param Created boolean
---@param ItemGroup UUI_BP_Vendor_ItemGroup_C
function UUI_BP_Vendor_C:CreateVendorImportantItemGroup(VendorCategory, VendorInventory, Created, ItemGroup) end
---@param TutorialHighlights TArray<FName>
function UUI_BP_Vendor_C:PopulateTutorialHighlights(TutorialHighlights) end
function UUI_BP_Vendor_C:RefreshVendorInventory() end
function UUI_BP_Vendor_C:RefreshAllInventories() end
function UUI_BP_Vendor_C:Finished_05C86C324CC2E3F67B4598AA730580A6() end
function UUI_BP_Vendor_C:Finished_2A89DBBA44E746A9DCB98DB457DDB514() end
function UUI_BP_Vendor_C:ShowPreviewDetails() end
function UUI_BP_Vendor_C:ShowCurrentIndex() end
---@param ButtonIndex int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_Vendor_C:BndEvt__UI_BP_Vendor_NavBarHorizontal_K2Node_ComponentBoundEvent_0_HoveredCategory__DelegateSignature(ButtonIndex, CategoryButton) end
function UUI_BP_Vendor_C:Construct() end
function UUI_BP_Vendor_C:Destruct() end
---@param IsDesignTime boolean
function UUI_BP_Vendor_C:PreConstruct(IsDesignTime) end
---@param NewCategoryIndex int32
function UUI_BP_Vendor_C:BndEvt__UI_BP_Vendor_NavBarHorizontal_K2Node_ComponentBoundEvent_0_ChangedCategory__DelegateSignature(NewCategoryIndex) end
function UUI_BP_Vendor_C:CollapseItemDetails() end
function UUI_BP_Vendor_C:SequenceEvent_ItemFadeOut() end
function UUI_BP_Vendor_C:InitVendor() end
function UUI_BP_Vendor_C:SequenceEvent_SmokeFadeOut() end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_Vendor_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_Vendor_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_Vendor_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_Vendor_C:OnIntroEnded(IntroType) end
---@param BroomID FName
---@param ActorClass TSubclassOf<AActor>
function UUI_BP_Vendor_C:OnVendorBroomPreviewClassLoaded(BroomID, ActorClass) end
---@param HoldWasComplete boolean
function UUI_BP_Vendor_C:BndEvt__UI_BP_Vendor_itemDetails_K2Node_ComponentBoundEvent_1_OnHoldButtonReleasedEvent__DelegateSignature(HoldWasComplete) end
---@param HoldWasComplete boolean
function UUI_BP_Vendor_C:BndEvt__UI_BP_Vendor_previewDetails_K2Node_ComponentBoundEvent_0_OnHoldButtonReleasedEvent__DelegateSignature(HoldWasComplete) end
function UUI_BP_Vendor_C:BndEvt__UI_BP_Vendor_previewButton_K2Node_ComponentBoundEvent_3_OnButtonPressedEvent__DelegateSignature() end
---@param Caller UObject
function UUI_BP_Vendor_C:GearTutorialRefreshAllInventories(Caller) end
function UUI_BP_Vendor_C:BndEvt__UI_BP_Vendor_previewButton_K2Node_ComponentBoundEvent_4_OnButtonReleasedEvent__DelegateSignature() end
function UUI_BP_Vendor_C:SequenceEvent_SmokeFadeIn() end
---@param EntryPoint int32
function UUI_BP_Vendor_C:ExecuteUbergraph_UI_BP_Vendor(EntryPoint) end
function UUI_BP_Vendor_C:OnItemPurchaseFailedNoSpace__DelegateSignature() end
function UUI_BP_Vendor_C:OnItemPurchaseFailedNoMoney__DelegateSignature() end
function UUI_BP_Vendor_C:OnItemSold__DelegateSignature() end
function UUI_BP_Vendor_C:OnItemPurchased__DelegateSignature() end
---@param PreviewedGearID FString
function UUI_BP_Vendor_C:LeavePreview__DelegateSignature(PreviewedGearID) end
---@param PreviewedGearID FString
function UUI_BP_Vendor_C:StartPreview__DelegateSignature(PreviewedGearID) end
function UUI_BP_Vendor_C:AbortInteraction__DelegateSignature() end


