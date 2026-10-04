---@meta

---@class UUI_BP_ItemScrollBox_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GridBackground_0 UGridBackground
---@field GridOverlayContainer UOverlay
---@field IconGrid UUniformGridPanel
---@field UI_BP_SimpleScrollBox UUI_BP_SimpleScrollBox_C
---@field Stride int32
---@field NumRowsDisplayed int32
---@field IconCount int32
---@field buttons TArray<UIconButtonWidget>
---@field IconClass TSubclassOf<UIconButtonWidget>
---@field ParentWidget UUserWidget
---@field IconSize FVector2D
---@field IsInitialized boolean
---@field ScrollbarThickness float
---@field size FVector2D
---@field SlotPadding FMargin
---@field GridPadding FMargin
---@field ShowBackgroundGrid boolean
---@field ['Container or Inventory'] boolean
---@field CanCache boolean
---@field ScrollBoxEntered FUI_BP_ItemScrollBox_CScrollBoxEntered
---@field ScrollBoxExited FUI_BP_ItemScrollBox_CScrollBoxExited
---@field OnButtonClicked FUI_BP_ItemScrollBox_COnButtonClicked
---@field OnButtonHovered FUI_BP_ItemScrollBox_COnButtonHovered
---@field OnButtonUnhovered FUI_BP_ItemScrollBox_COnButtonUnhovered
---@field LastHoveredIndex int32
---@field ['IconGrid Padding Top'] float
---@field Orientation EOrientation
---@field BottomScrollOverlap float
local UUI_BP_ItemScrollBox_C = {}

---@param RenderSize FVector2D
function UUI_BP_ItemScrollBox_C:GetAsyncWrapperRenderSize(RenderSize) end
---@param HoveredButtonIndex int32
function UUI_BP_ItemScrollBox_C:FakeButtonHoveredEvent(HoveredButtonIndex) end
---@param Button UIconButtonWidget
function UUI_BP_ItemScrollBox_C:ButtonUnhovered(Button) end
---@param Button UIconButtonWidget
function UUI_BP_ItemScrollBox_C:ButtonHovered(Button) end
---@param Button UIconButtonWidget
function UUI_BP_ItemScrollBox_C:ButtonClicked(Button) end
---@param ShouldCache boolean
function UUI_BP_ItemScrollBox_C:ToggleCaching(ShouldCache) end
---@param Container___Inventory boolean
function UUI_BP_ItemScrollBox_C:SetCursorPos(Container___Inventory) end
---@param Container_or_Inventory boolean
function UUI_BP_ItemScrollBox_C:GetCursorPos(Container_or_Inventory) end
---@param HoveredIndex int32
function UUI_BP_ItemScrollBox_C:FindHoveredSlot(HoveredIndex) end
---@param NumIcons int32
---@param ColumnCount int32
function UUI_BP_ItemScrollBox_C:LockScrollBoxToVisibleIcons(NumIcons, ColumnCount) end
---@param Parent UUserWidget
---@param Rows int32
---@param Columns int32
---@param IconClass TSubclassOf<UIconButtonWidget>
---@param IconSize FVector2D
---@param IconCount int32
function UUI_BP_ItemScrollBox_C:InitValues(Parent, Rows, Columns, IconClass, IconSize, IconCount) end
---@param NewClass TSubclassOf<UIconButtonWidget>
function UUI_BP_ItemScrollBox_C:SetIconClass(NewClass) end
function UUI_BP_ItemScrollBox_C:ManageButtons() end
---@param size FVector2D
function UUI_BP_ItemScrollBox_C:ComputeSize(size) end
---@param GridSlot UObject
---@param CurrentCount int32
function UUI_BP_ItemScrollBox_C:SetIconPosition(GridSlot, CurrentCount) end
function UUI_BP_ItemScrollBox_C:RefreshGrid() end
---@param UniformGrid UObject
function UUI_BP_ItemScrollBox_C:GetGrid(UniformGrid) end
---@param NewStride int32
function UUI_BP_ItemScrollBox_C:SetStride(NewStride) end
function UUI_BP_ItemScrollBox_C:InEditorPostConstruct() end
---@param Parent UUserWidget
function UUI_BP_ItemScrollBox_C:SetParent(Parent) end
function UUI_BP_ItemScrollBox_C:Initialize() end
function UUI_BP_ItemScrollBox_C:Repopulate() end
---@param ButtonClass TSubclassOf<UIconButtonWidget>
function UUI_BP_ItemScrollBox_C:SetButtonClass(ButtonClass) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUI_BP_ItemScrollBox_C:OnMouseEnter(MyGeometry, MouseEvent) end
---@param Parent UUserWidget
---@param Rows int32
---@param Columns int32
---@param IconClass TSubclassOf<UIconButtonWidget>
---@param IconSize FVector2D
---@param IconCount int32
function UUI_BP_ItemScrollBox_C:SetUpScrollbox(Parent, Rows, Columns, IconClass, IconSize, IconCount) end
---@param MouseEvent FPointerEvent
function UUI_BP_ItemScrollBox_C:OnMouseLeave(MouseEvent) end
---@param Widget_Class TSubclassOf<UWidget>
function UUI_BP_ItemScrollBox_C:I_SetButtonClass(Widget_Class) end
---@param Container___Inventory boolean
function UUI_BP_ItemScrollBox_C:I_SetCursorPos(Container___Inventory) end
---@param IsDesignTime boolean
function UUI_BP_ItemScrollBox_C:PreConstruct(IsDesignTime) end
function UUI_BP_ItemScrollBox_C:OnInitialized() end
---@param EntryPoint int32
function UUI_BP_ItemScrollBox_C:ExecuteUbergraph_UI_BP_ItemScrollBox(EntryPoint) end
---@param Button UIconButtonWidget
function UUI_BP_ItemScrollBox_C:OnButtonUnhovered__DelegateSignature(Button) end
---@param Button UIconButtonWidget
function UUI_BP_ItemScrollBox_C:OnButtonHovered__DelegateSignature(Button) end
---@param Button UIconButtonWidget
function UUI_BP_ItemScrollBox_C:OnButtonClicked__DelegateSignature(Button) end
function UUI_BP_ItemScrollBox_C:ScrollBoxExited__DelegateSignature() end
function UUI_BP_ItemScrollBox_C:ScrollBoxEntered__DelegateSignature() end


