---@meta

---@class UUI_BP_InventoryIconButton_C : UIconButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field IconStateNormal UWidgetAnimation
---@field ResetHover UWidgetAnimation
---@field FadeInandOut UWidgetAnimation
---@field IconStateQuestItem UWidgetAnimation
---@field IconStateTutorial UWidgetAnimation
---@field PurchaseAnimation UWidgetAnimation
---@field ShowSelected UWidgetAnimation
---@field OnHoverAnimation UWidgetAnimation
---@field Error UWidgetAnimation
---@field AmountFram UPhoenixImage
---@field disabledImage UImage
---@field Fresnel UImage
---@field IconStateQuest UPhoenixImage
---@field inventoryConent UScaleBox
---@field ItemCountNumber UPhoenixTextBlock
---@field NEW UUI_BP_NewIndicator_C
---@field Outline UImage
---@field QuestShin UImage
---@field ['rarityBack-old'] UImage
---@field SizeBox_Content USizeBox
---@field TempReqNotMetShadow UImage
---@field TraitIndicator UImage
---@field ItemQuality EInventoryQuality
---@field ItemCost int32
---@field ModifiedCost int32
---@field Quantity int32
---@field ParentWidget UUserWidget
---@field NewButtonHighlight UUserWidget
---@field HighlightVisibility ESlateVisibility
---@field OnDropComplete FUI_BP_InventoryIconButton_COnDropComplete
---@field IsButtonSelected boolean
---@field InventoryResult FInventoryResult
---@field ItemVariation FName
---@field pressedhere boolean
---@field OutlineColor FLinearColor
---@field isEmptyButton boolean
---@field ItemRarity FName
---@field outlineIcon FString
---@field highlightIcon FString
---@field Clickable boolean
---@field ItemId FName
---@field PurchasedAnimationFinished FUI_BP_InventoryIconButton_CPurchasedAnimationFinished
local UUI_BP_InventoryIconButton_C = {}

---@param isButtonEmpty boolean
function UUI_BP_InventoryIconButton_C:I_GetIsEmpty(isButtonEmpty) end
---@param Rarity FName
function UUI_BP_InventoryIconButton_C:I_GetItemRarity(Rarity) end
---@param Variation FName
function UUI_BP_InventoryIconButton_C:GetItemVariation(Variation) end
---@param ItemCount int32
function UUI_BP_InventoryIconButton_C:I_GetItemCount(ItemCount) end
---@param ModifiedCost int32
function UUI_BP_InventoryIconButton_C:GetModifiedCost(ModifiedCost) end
---@param InventoryResult FInventoryResult
function UUI_BP_InventoryIconButton_C:GetInventoryResult(InventoryResult) end
---@param Cost int32
function UUI_BP_InventoryIconButton_C:GetItemCost(Cost) end
---@param IconName FString
function UUI_BP_InventoryIconButton_C:GetIconName(IconName) end
---@param Quality EInventoryQuality
function UUI_BP_InventoryIconButton_C:GetItemQuality(Quality) end
---@param NewID FString
---@param NewItemID FString
function UUI_BP_InventoryIconButton_C:CheckItemID(NewID, NewItemID) end
---@param NewHolderID FName
function UUI_BP_InventoryIconButton_C:UpdateHolderID(NewHolderID) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InventoryIconButton_C:GatherMenuReaderStrings(DepthLevel) end
UUI_BP_InventoryIconButton_C['Play Purchase Animation'] = function(self, ) end
---@param Item_Have_Trait boolean
UUI_BP_InventoryIconButton_C['Set TraitIndicator'] = function(self, Item_Have_Trait) end
---@param Index boolean
UUI_BP_InventoryIconButton_C['Set Is New Item'] = function(self, Index) end
function UUI_BP_InventoryIconButton_C:PlaySelectedAnimation() end
function UUI_BP_InventoryIconButton_C:Dim() end
---@param IsEmpty boolean
---@param Item FString
function UUI_BP_InventoryIconButton_C:SetButtonEmpty(IsEmpty, Item) end
---@param RarityTier FName
function UUI_BP_InventoryIconButton_C:SetRarityState(RarityTier) end
---@param IsCurrent boolean
function UUI_BP_InventoryIconButton_C:SetIsCurrentSelection(IsCurrent) end
---@param IsSelected boolean
function UUI_BP_InventoryIconButton_C:SetIsSelected(IsSelected) end
---@param BackgroundImage FString
---@return boolean
function UUI_BP_InventoryIconButton_C:SetButtonIcons(BackgroundImage) end
---@return boolean
function UUI_BP_InventoryIconButton_C:HandleMissing() end
---@return boolean
function UUI_BP_InventoryIconButton_C:HandleNonExistent() end
---@return boolean
function UUI_BP_InventoryIconButton_C:HandleDisabled() end
---@return boolean
function UUI_BP_InventoryIconButton_C:HandleEnabled() end
---@param CurrentCount int32
---@param NeededCount int32
function UUI_BP_InventoryIconButton_C:SetTurnInCount(CurrentCount, NeededCount) end
---@param ItemCount int32
function UUI_BP_InventoryIconButton_C:SetCountVisibleHandler(ItemCount) end
---@param InventoryItem FInventoryResult
---@param Modifier float
function UUI_BP_InventoryIconButton_C:InitItemButton(InventoryItem, Modifier) end
---@param Cost int32
---@param ModifiedCost int32
function UUI_BP_InventoryIconButton_C:SetItemCost(Cost, ModifiedCost) end
---@param ItemCount int32
function UUI_BP_InventoryIconButton_C:SetItemCountHandler(ItemCount) end
function UUI_BP_InventoryIconButton_C:Finished_3766CA3448CB5F6A18115FB0C3017A79() end
---@param ItemCount int32
function UUI_BP_InventoryIconButton_C:SetItemCount(ItemCount) end
---@param ShowCount boolean
function UUI_BP_InventoryIconButton_C:SetCountVisible(ShowCount) end
function UUI_BP_InventoryIconButton_C:SetIconButtonEnabled() end
function UUI_BP_InventoryIconButton_C:SetIconButtonMissing() end
function UUI_BP_InventoryIconButton_C:SetIconButtonNonExistant() end
function UUI_BP_InventoryIconButton_C:SetIconButtonDisabled() end
---@param Parent UUserWidget
function UUI_BP_InventoryIconButton_C:SetParent(Parent) end
---@param ModifiedCost int32
function UUI_BP_InventoryIconButton_C:SetModifiedCost(ModifiedCost) end
---@param InventoryResult FInventoryResult
function UUI_BP_InventoryIconButton_C:SetInventoryResult(InventoryResult) end
---@param CurrentCount int32
---@param NeededCount int32
function UUI_BP_InventoryIconButton_C:I_SetTurninCount(CurrentCount, NeededCount) end
---@param NewState EIconButtonState
function UUI_BP_InventoryIconButton_C:SetIconButtonState(NewState) end
---@param isQuestItem boolean
function UUI_BP_InventoryIconButton_C:I_SetIsQuestItem(isQuestItem) end
---@param NewSize FVector2D
function UUI_BP_InventoryIconButton_C:SetIconButtonSize(NewSize) end
---@param IsNew boolean
function UUI_BP_InventoryIconButton_C:I_SetIsNew(IsNew) end
---@param Inventory_Item FInventoryResult
---@param Modifier float
function UUI_BP_InventoryIconButton_C:InitializeItemButton(Inventory_Item, Modifier) end
---@param Quality EInventoryQuality
function UUI_BP_InventoryIconButton_C:SetItemQuality(Quality) end
function UUI_BP_InventoryIconButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_InventoryIconButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param isHighlighted boolean
function UUI_BP_InventoryIconButton_C:HighlightButton(isHighlighted) end
---@param NewState EIconButtonState
function UUI_BP_InventoryIconButton_C:SetButtonState(NewState) end
function UUI_BP_InventoryIconButton_C:ErrorAnimation() end
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUI_BP_InventoryIconButton_C:OnDragCancelled(PointerEvent, Operation) end
function UUI_BP_InventoryIconButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_0_OnButtonPressedEvent__DelegateSignature() end
function UUI_BP_InventoryIconButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_4_OnButtonReleasedEvent__DelegateSignature() end
---@param bIsNew boolean
function UUI_BP_InventoryIconButton_C:SetIsNew(bIsNew) end
---@param bIsTutorialHighlighted boolean
function UUI_BP_InventoryIconButton_C:SetIsTutorialHighlighted(bIsTutorialHighlighted) end
---@param LevelMet boolean
function UUI_BP_InventoryIconButton_C:SetLevelReqMet(LevelMet) end
UUI_BP_InventoryIconButton_C['I Play Purchase Animation'] = function(self, ) end
---@param EntryPoint int32
function UUI_BP_InventoryIconButton_C:ExecuteUbergraph_UI_BP_InventoryIconButton(EntryPoint) end
function UUI_BP_InventoryIconButton_C:PurchasedAnimationFinished__DelegateSignature() end
---@param Held UUI_BP_InventoryIconButton_C
---@param Container UUI_BP_InventoryIconButton_C
function UUI_BP_InventoryIconButton_C:OnDropComplete__DelegateSignature(Held, Container) end


