---@meta

---@class UUI_BP_GearButton_C : UIconButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnReset UWidgetAnimation
---@field traitLoop UWidgetAnimation
---@field upgradeLoop UWidgetAnimation
---@field TutorialPulse UWidgetAnimation
---@field OnHover UWidgetAnimation
---@field buttonActive UWidgetAnimation
---@field appearanceIcon UImage
---@field buttonHighlight UImage
---@field ContentSlot UNamedSlot
---@field disabledGraphic UImage
---@field dropShadow UPhoenixImage
---@field gearSizeBox USizeBox
---@field hoodIcon UImage
---@field indicator UUI_BP_NewIndicator_C
---@field lockedOverlay UOverlay
---@field loomInteract UPhoenixImage
---@field newIndicator UScaleBox
---@field PhoenixImage_156 UPhoenixImage
---@field rarityBack UPhoenixImage
---@field selectedBox UUI_BP_SelectedBox_C
---@field selectedOutline UPhoenixImage
---@field thread1 UUI_BP_GearThreadSlot_C
---@field Traits UCanvasPanel
---@field upgradeArrow UPhoenixImage
---@field OnGearButtonHoveredEvent FUI_BP_GearButton_COnGearButtonHoveredEvent
---@field OnGearButtonUnhoveredEvent FUI_BP_GearButton_COnGearButtonUnhoveredEvent
---@field OnGearButtonClickEvent FUI_BP_GearButton_COnGearButtonClickEvent
---@field IsSelected boolean
---@field CursorClass TSubclassOf<UUserWidget>
---@field GearVariation FName
---@field ItemRarity FName
---@field OutlineColor FLinearColor
---@field SlotType EGearSlotIDEnum
---@field IsHoodUp boolean
---@field ItemId FString
---@field ButtonWidth float
---@field ButtonHeight float
---@field hasStats boolean
---@field IsEmpty boolean
---@field IsLocked boolean
---@field isUnidentified boolean
---@field canUpgrade boolean
---@field canApplyTrait boolean
---@field GearItemID FGearItemID
---@field LoomCanInteract boolean
---@field HasMaxUpgrades boolean
---@field DisabledTooltipMessage FString
---@field canShowButtonEvents boolean
local UUI_BP_GearButton_C = {}

---@param IconName FString
function UUI_BP_GearButton_C:I_GetIconName(IconName) end
function UUI_BP_GearButton_C:ResetGearButtonState() end
---@param ShowHoodIcon boolean
function UUI_BP_GearButton_C:SetHoodState(ShowHoodIcon) end
function UUI_BP_GearButton_C:ResetButton() end
function UUI_BP_GearButton_C:OverrideGearIcon() end
function UUI_BP_GearButton_C:ToggleLoomInteraction() end
---@param GearID FGearItemID
---@param IsAppearance boolean
function UUI_BP_GearButton_C:InitGearButton(GearID, IsAppearance) end
---@param GearItem FGearItem
function UUI_BP_GearButton_C:GetButtonGearItem(GearItem) end
---@param ShowNotification boolean
function UUI_BP_GearButton_C:ToggleTraitNotification(ShowNotification) end
function UUI_BP_GearButton_C:SetTraitAvailable() end
function UUI_BP_GearButton_C:SetUpgradeAvailable() end
---@param showUpgrade boolean
function UUI_BP_GearButton_C:ToggleUpgradeNotification(showUpgrade) end
---@param IsSelected boolean
function UUI_BP_GearButton_C:SetInitSelected(IsSelected) end
---@param IdentifiedIndex int32
function UUI_BP_GearButton_C:SetIsIdentified(IdentifiedIndex) end
---@param ItemLevel int32
function UUI_BP_GearButton_C:SetItemLock(ItemLevel) end
---@param IsNew boolean
function UUI_BP_GearButton_C:SetIsNewItem(IsNew) end
---@param TraitArray TArray<FName>
---@param EmptyTraitCount int32
function UUI_BP_GearButton_C:SetTraitSlots(TraitArray, EmptyTraitCount) end
---@param showStats boolean
function UUI_BP_GearButton_C:HideStatList(showStats) end
---@param HasAppearance boolean
function UUI_BP_GearButton_C:ToggleAppearanceIcon(HasAppearance) end
function UUI_BP_GearButton_C:ToggleHoodState() end
---@param RarityTier FName
function UUI_BP_GearButton_C:SetRarityState(RarityTier) end
---@param buttonSelected boolean
function UUI_BP_GearButton_C:SetIsSelected(buttonSelected) end
---@param BackgroundImage FString
---@return boolean
function UUI_BP_GearButton_C:SetButtonIcons(BackgroundImage) end
---@return UWidget
function UUI_BP_GearButton_C:GetExtraContent() end
---@return boolean
function UUI_BP_GearButton_C:HandleNonExistent() end
---@return boolean
function UUI_BP_GearButton_C:HandleMissing() end
---@return boolean
function UUI_BP_GearButton_C:HandleDisabled() end
---@return boolean
function UUI_BP_GearButton_C:HandleEnabled() end
---@return boolean
function UUI_BP_GearButton_C:RemoveExtraContent() end
---@param NewContent UWidget
---@return boolean
function UUI_BP_GearButton_C:AddExtraContent(NewContent) end
---@param IsActive boolean
---@return boolean
function UUI_BP_GearButton_C:SetState(IsActive) end
---@return boolean
function UUI_BP_GearButton_C:IsInteractable() end
---@param size FVector2D
function UUI_BP_GearButton_C:I_SetIconSize(size) end
---@param IconName FString
function UUI_BP_GearButton_C:I_SetIconName(IconName) end
---@param ImageName FString
function UUI_BP_GearButton_C:I_SetImage(ImageName) end
---@param NewContent UWidget
function UUI_BP_GearButton_C:I_AddExtraContent(NewContent) end
function UUI_BP_GearButton_C:Construct() end
function UUI_BP_GearButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_GearButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_GearButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
---@param isHighlighted boolean
function UUI_BP_GearButton_C:HighlightButton(isHighlighted) end
---@param NewState EIconButtonState
function UUI_BP_GearButton_C:SetButtonState(NewState) end
---@param IsDesignTime boolean
function UUI_BP_GearButton_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_GearButton_C:ExecuteUbergraph_UI_BP_GearButton(EntryPoint) end
---@param IconButton UUI_BP_GearButton_C
function UUI_BP_GearButton_C:OnGearButtonClickEvent__DelegateSignature(IconButton) end
---@param IconButton UUI_BP_GearButton_C
function UUI_BP_GearButton_C:OnGearButtonUnhoveredEvent__DelegateSignature(IconButton) end
---@param IconButton UUI_BP_GearButton_C
function UUI_BP_GearButton_C:OnGearButtonHoveredEvent__DelegateSignature(IconButton) end


