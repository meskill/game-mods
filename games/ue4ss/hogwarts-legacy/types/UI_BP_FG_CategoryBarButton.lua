---@meta

---@class UUI_BP_FG_CategoryBarButton_C : UTabIconButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowHighlight UWidgetAnimation
---@field NewPulse UWidgetAnimation
---@field hideSelected UWidgetAnimation
---@field ShowSelected UWidgetAnimation
---@field BackGlitter UImage
---@field Background UImage
---@field categoryCount UPhoenixTextBlock
---@field categoryTitle UPhoenixTextBlock
---@field contentHolder UCanvasPanel
---@field highlight UImage
---@field ItemCount UCanvasPanel
---@field newItemBorder UBorder
---@field textBorder UBorder
---@field currentlyActive boolean
---@field LocalPosition FVector
---@field WidgetGeometry FGeometry
---@field HouseColor FLinearColor
---@field ShowCategoryTitle boolean
---@field ShowCategoryCount boolean
---@field categoryId FString
---@field CountValue int32
local UUI_BP_FG_CategoryBarButton_C = {}

---@param IconName FString
function UUI_BP_FG_CategoryBarButton_C:I_GetIconName(IconName) end
---@param Show boolean
function UUI_BP_FG_CategoryBarButton_C:ToggleNewIndicator(Show) end
---@param ShowCategoryCount boolean
---@param NewCount int32
function UUI_BP_FG_CategoryBarButton_C:ToggleCategoryCount(ShowCategoryCount, NewCount) end
---@param ShowCategoryTitle boolean
---@param NewTitle FString
function UUI_BP_FG_CategoryBarButton_C:ToggleCategoryText(ShowCategoryTitle, NewTitle) end
---@param NewColor FLinearColor
function UUI_BP_FG_CategoryBarButton_C:SetButtonColor(NewColor) end
---@param NewCount int32
function UUI_BP_FG_CategoryBarButton_C:SetButtonCount(NewCount) end
---@param NewFontSize int32
function UUI_BP_FG_CategoryBarButton_C:SetButtonFontSize(NewFontSize) end
---@param NewString FString
function UUI_BP_FG_CategoryBarButton_C:SetButtonText(NewString) end
---@param IsActive boolean
---@return boolean
function UUI_BP_FG_CategoryBarButton_C:SetState(IsActive) end
---@return boolean
function UUI_BP_FG_CategoryBarButton_C:IsInteractable() end
---@param ImageName FString
function UUI_BP_FG_CategoryBarButton_C:I_SetImage(ImageName) end
---@param NewContent UWidget
function UUI_BP_FG_CategoryBarButton_C:I_AddExtraContent(NewContent) end
---@param size FVector2D
function UUI_BP_FG_CategoryBarButton_C:I_SetIconSize(size) end
---@param IconName FString
function UUI_BP_FG_CategoryBarButton_C:I_SetIconName(IconName) end
function UUI_BP_FG_CategoryBarButton_C:Construct() end
---@param selected boolean
function UUI_BP_FG_CategoryBarButton_C:OnSelectionChanged(selected) end
function UUI_BP_FG_CategoryBarButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_80_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_FG_CategoryBarButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_FG_CategoryBarButton_C:ExecuteUbergraph_UI_BP_FG_CategoryBarButton(EntryPoint) end


