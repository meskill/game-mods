---@meta

---@class UUI_BP_AppearanceIcon_C : UIconButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnSelected UWidgetAnimation
---@field TutorialBounce UWidgetAnimation
---@field OnButtonHovered UWidgetAnimation
---@field appearanceContent UOverlay
---@field AppearanceImage UImage
---@field emptyIcon UPhoenixImage
---@field iconSizeBox USizeBox
---@field newIndicator UUI_BP_NewIndicator_C
---@field normalBorder UPhoenixImage
---@field ParentCanvas UCanvasPanel
---@field selected UImage
---@field selectedBorder UPhoenixImage
---@field selectedGlitter UPhoenixImage
---@field specialBorder UPhoenixImage
---@field TutorialHighlight UBorder
---@field OnHoveredAppearnace FUI_BP_AppearanceIcon_COnHoveredAppearnace
---@field OnUnhoveredAppearance FUI_BP_AppearanceIcon_COnUnhoveredAppearance
---@field OnClickedAppearance FUI_BP_AppearanceIcon_COnClickedAppearance
---@field IsSelected boolean
---@field CursorClass TSubclassOf<UUserWidget>
---@field AppearanceID FGearItemID
---@field AppearanceName FString
---@field AppearanceVariation FName
---@field AppearanceSlotType EGearSlotIDEnum
local UUI_BP_AppearanceIcon_C = {}

---@param IconName FString
function UUI_BP_AppearanceIcon_C:I_GetIconName(IconName) end
---@param IsNew boolean
function UUI_BP_AppearanceIcon_C:SetIsNewItem(IsNew) end
---@return boolean
function UUI_BP_AppearanceIcon_C:HandleMissing() end
---@param IsSelected boolean
function UUI_BP_AppearanceIcon_C:SetInitSelected(IsSelected) end
---@param AppearanceID FGearItemID
---@param isCostume boolean
function UUI_BP_AppearanceIcon_C:InitAppearanceItem(AppearanceID, isCostume) end
---@param AppearanceID FString
function UUI_BP_AppearanceIcon_C:SetAppearanceIcon(AppearanceID) end
---@param NewSize FVector2D
function UUI_BP_AppearanceIcon_C:SetButtonSize(NewSize) end
---@param IsLocked boolean
function UUI_BP_AppearanceIcon_C:SetIsLocked(IsLocked) end
---@param IsCurrent boolean
function UUI_BP_AppearanceIcon_C:SetIsCurrentSelection(IsCurrent) end
---@param buttonSelected boolean
function UUI_BP_AppearanceIcon_C:SetIsSelected(buttonSelected) end
---@return boolean
function UUI_BP_AppearanceIcon_C:IsInteractable() end
---@param IconName FString
function UUI_BP_AppearanceIcon_C:I_SetIconName(IconName) end
---@param ImageName FString
function UUI_BP_AppearanceIcon_C:I_SetImage(ImageName) end
---@param NewContent UWidget
function UUI_BP_AppearanceIcon_C:I_AddExtraContent(NewContent) end
---@param size FVector2D
function UUI_BP_AppearanceIcon_C:I_SetIconSize(size) end
function UUI_BP_AppearanceIcon_C:Construct() end
function UUI_BP_AppearanceIcon_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_AppearanceIcon_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_AppearanceIcon_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
---@param isHighlighted boolean
function UUI_BP_AppearanceIcon_C:HighlightButton(isHighlighted) end
---@param NewState EIconButtonState
function UUI_BP_AppearanceIcon_C:SetButtonState(NewState) end
---@param bIsNew boolean
function UUI_BP_AppearanceIcon_C:SetIsNew(bIsNew) end
---@param bIsTutorialHighlighted boolean
function UUI_BP_AppearanceIcon_C:SetIsTutorialHighlighted(bIsTutorialHighlighted) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_AppearanceIcon_C:OnAppearanceIconLoaded(LoadedTexture, CallbackParam) end
---@param EntryPoint int32
function UUI_BP_AppearanceIcon_C:ExecuteUbergraph_UI_BP_AppearanceIcon(EntryPoint) end
---@param AppearanceButton UUI_BP_AppearanceIcon_C
function UUI_BP_AppearanceIcon_C:OnClickedAppearance__DelegateSignature(AppearanceButton) end
---@param AppearanceButton UUI_BP_AppearanceIcon_C
function UUI_BP_AppearanceIcon_C:OnUnhoveredAppearance__DelegateSignature(AppearanceButton) end
---@param AppearanceButton UUI_BP_AppearanceIcon_C
function UUI_BP_AppearanceIcon_C:OnHoveredAppearnace__DelegateSignature(AppearanceButton) end


