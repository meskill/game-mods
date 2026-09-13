---@meta

---@class UUI_BP_FG_CategoryNavBar_C : UCategoryNavBarWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CategoryList UVerticalBox
---@field DownDpad UPhoenixRichTextBlock
---@field NavBarDownButton UButton
---@field NavBarUpButton UButton
---@field CategoryButtons TArray<UUI_BP_FG_CategoryBarButton_C>
---@field HoveredCategory FUI_BP_FG_CategoryNavBar_CHoveredCategory
---@field Owner UUserWidget
---@field UnhoveredCategory FUI_BP_FG_CategoryNavBar_CUnhoveredCategory
---@field ChangedCategory FUI_BP_FG_CategoryNavBar_CChangedCategory
---@field ShowCategoryNames boolean
---@field ShowCategoryCount boolean
---@field UsesCategoryNewIndicators boolean
local UUI_BP_FG_CategoryNavBar_C = {}

---@param RenderSize FVector2D
function UUI_BP_FG_CategoryNavBar_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param IsNew boolean
---@param CategoryIndex int32
function UUI_BP_FG_CategoryNavBar_C:SetCategoryNewIndicator(IsNew, CategoryIndex) end
---@param ButtonIndex int32
---@param Button UIconButtonWidget
function UUI_BP_FG_CategoryNavBar_C:GetButton(ButtonIndex, Button) end
---@param Index int32
---@return UIconButtonWidget
function UUI_BP_FG_CategoryNavBar_C:GetButtonByIndex(Index) end
---@param Button UIconButtonWidget
---@return int32
function UUI_BP_FG_CategoryNavBar_C:GetIndexOfButton(Button) end
function UUI_BP_FG_CategoryNavBar_C:GoToPrevCategory() end
function UUI_BP_FG_CategoryNavBar_C:GoToNextCategory() end
function UUI_BP_FG_CategoryNavBar_C:InitCategoryButtons() end
---@param NewCategoryIndex int32
---@param CategoryChanged boolean
function UUI_BP_FG_CategoryNavBar_C:GoToCategory(NewCategoryIndex, CategoryChanged) end
function UUI_BP_FG_CategoryNavBar_C:InEditorPostConstruct() end
---@param Categories TArray<FText>
function UUI_BP_FG_CategoryNavBar_C:I_SetCategoryNames(Categories) end
function UUI_BP_FG_CategoryNavBar_C:GoToCategoryNext() end
function UUI_BP_FG_CategoryNavBar_C:GoToCategoryPrev() end
---@param Index int32
function UUI_BP_FG_CategoryNavBar_C:SetCurCategoryIndex(Index) end
function UUI_BP_FG_CategoryNavBar_C:NavBar_InitCategoryButtons() end
---@param NewOwner UUserWidget
function UUI_BP_FG_CategoryNavBar_C:SetOwner(NewOwner) end
---@param Parent UUserWidget
function UUI_BP_FG_CategoryNavBar_C:SetParent(Parent) end
function UUI_BP_FG_CategoryNavBar_C:Initialize() end
---@param IsDesignTime boolean
function UUI_BP_FG_CategoryNavBar_C:PreConstruct(IsDesignTime) end
function UUI_BP_FG_CategoryNavBar_C:PopulateCategoryButtons() end
---@param hoveredButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBar_C:OnHover(hoveredButton) end
---@param hoveredButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBar_C:OnUnhover(hoveredButton) end
---@param SelectedCategory int32
function UUI_BP_FG_CategoryNavBar_C:OnClick(SelectedCategory) end
function UUI_BP_FG_CategoryNavBar_C:BndEvt__UI_BP_FG_CategoryNavBar_NavBarUpButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FG_CategoryNavBar_C:BndEvt__UI_BP_FG_CategoryNavBar_NavBarDownButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_FG_CategoryNavBar_C:RefreshCategoryNewCounts() end
---@param SelectedCategory int32
function UUI_BP_FG_CategoryNavBar_C:SelectCategory(SelectedCategory) end
---@param EntryPoint int32
function UUI_BP_FG_CategoryNavBar_C:ExecuteUbergraph_UI_BP_FG_CategoryNavBar(EntryPoint) end
---@param NewCategoryIndex int32
function UUI_BP_FG_CategoryNavBar_C:ChangedCategory__DelegateSignature(NewCategoryIndex) end
---@param Index int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBar_C:UnhoveredCategory__DelegateSignature(Index, CategoryButton) end
---@param ButtonIndex int32
---@param CategoryButton UIconButtonWidget
function UUI_BP_FG_CategoryNavBar_C:HoveredCategory__DelegateSignature(ButtonIndex, CategoryButton) end


