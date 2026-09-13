---@meta

---@class UUI_BP_FG_CategoryNavBarHorizontal_C : UCategoryNavBarWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CategoryListH UHorizontalBox
---@field LeftButtonOverlay UOverlay
---@field leftDpad UPhoenixRichTextBlock
---@field NavBarLeftButton UButton
---@field NavBarRightButton UButton
---@field RightButtonOverlay UOverlay
---@field rightDpad UPhoenixRichTextBlock
---@field CategoryButtons TArray<UUI_BP_FG_CategoryBarButton_C>
---@field HoveredCategory FUI_BP_FG_CategoryNavBarHorizontal_CHoveredCategory
---@field Owner UUserWidget
---@field UnhoveredCategory FUI_BP_FG_CategoryNavBarHorizontal_CUnhoveredCategory
---@field ChangedCategory FUI_BP_FG_CategoryNavBarHorizontal_CChangedCategory
---@field ShowCategoryNames boolean
---@field ShowCategoryCount boolean
---@field UseAlternateButtons boolean
---@field AlternatePreviousButton FString
---@field AlternateNextButton FString
---@field dpadFontSize int32
local UUI_BP_FG_CategoryNavBarHorizontal_C = {}

---@param RenderSize FVector2D
function UUI_BP_FG_CategoryNavBarHorizontal_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param ButtonIndex int32
---@param Button UIconButtonWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:GetButton(ButtonIndex, Button) end
---@param Index int32
---@return UIconButtonWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:GetButtonByIndex(Index) end
---@param Button UIconButtonWidget
---@return int32
function UUI_BP_FG_CategoryNavBarHorizontal_C:GetIndexOfButton(Button) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:GoToPrevCategory() end
function UUI_BP_FG_CategoryNavBarHorizontal_C:GoToNextCategory() end
function UUI_BP_FG_CategoryNavBarHorizontal_C:InitCategoryButtons() end
---@param NewCategoryIndex int32
---@param CategoryChanged boolean
function UUI_BP_FG_CategoryNavBarHorizontal_C:GoToCategory(NewCategoryIndex, CategoryChanged) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:RefreshCategoryNewCounts() end
function UUI_BP_FG_CategoryNavBarHorizontal_C:InEditorPostConstruct() end
---@param Categories TArray<FText>
function UUI_BP_FG_CategoryNavBarHorizontal_C:I_SetCategoryNames(Categories) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:GoToCategoryNext() end
function UUI_BP_FG_CategoryNavBarHorizontal_C:GoToCategoryPrev() end
---@param Index int32
function UUI_BP_FG_CategoryNavBarHorizontal_C:SetCurCategoryIndex(Index) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:NavBar_InitCategoryButtons() end
---@param NewOwner UUserWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:SetOwner(NewOwner) end
---@param Parent UUserWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:SetParent(Parent) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:Initialize() end
---@param IsDesignTime boolean
function UUI_BP_FG_CategoryNavBarHorizontal_C:PreConstruct(IsDesignTime) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:Construct() end
function UUI_BP_FG_CategoryNavBarHorizontal_C:PopulateCategoryButtons() end
---@param hoveredButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:OnHover(hoveredButton) end
---@param hoveredButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:OnUnhover(hoveredButton) end
---@param SelectedCategory int32
function UUI_BP_FG_CategoryNavBarHorizontal_C:OnClick(SelectedCategory) end
function UUI_BP_FG_CategoryNavBarHorizontal_C:BndEvt__UI_BP_FG_CategoryNavBarHorizontal_NavBarLeftButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FG_CategoryNavBarHorizontal_C:BndEvt__UI_BP_FG_CategoryNavBarHorizontal_NavBarRightButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
---@param Visible boolean
function UUI_BP_FG_CategoryNavBarHorizontal_C:SetNavButtonsVisible(Visible) end
---@param EntryPoint int32
function UUI_BP_FG_CategoryNavBarHorizontal_C:ExecuteUbergraph_UI_BP_FG_CategoryNavBarHorizontal(EntryPoint) end
---@param NewCategoryIndex int32
function UUI_BP_FG_CategoryNavBarHorizontal_C:ChangedCategory__DelegateSignature(NewCategoryIndex) end
---@param Index int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:UnhoveredCategory__DelegateSignature(Index, CategoryButton) end
---@param ButtonIndex int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBarHorizontal_C:HoveredCategory__DelegateSignature(ButtonIndex, CategoryButton) end


