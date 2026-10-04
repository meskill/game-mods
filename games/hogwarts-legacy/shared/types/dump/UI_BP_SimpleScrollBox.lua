---@meta

---@class UUI_BP_SimpleScrollBox_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ContentInvalidationBox UInvalidationBox
---@field InternalScrollBox UItemScrollBox
---@field ScrollContent UNamedSlot
---@field ComboBoxOpened boolean
---@field InputBuffer float
---@field ScrollFocusLost FUI_BP_SimpleScrollBox_CScrollFocusLost
---@field WindowSize FVector2D
---@field StickScrollStepSize float
---@field Style FScrollBoxStyle
---@field BarStyle FScrollBarStyle
---@field Orientation EOrientation
---@field ScrollBarVisibility ESlateVisibility
---@field ScrollbarThickness FVector2D
---@field ScrollbarPadding FMargin
---@field AlwaysShowScrollbar boolean
---@field AlwaysShowScrollbarTrack boolean
---@field AllowOverscroll boolean
---@field AnimateWheelScrolling boolean
---@field NavigationDestination EDescendantScrollDestination
---@field NavigationScrollPadding float
---@field WheelScrollMultiplier float
---@field ScrollUpdated FUI_BP_SimpleScrollBox_CScrollUpdated
local UUI_BP_SimpleScrollBox_C = {}

---@param CanCache boolean
function UUI_BP_SimpleScrollBox_C:SetCanCache(CanCache) end
---@param Thickness FVector2D
UUI_BP_SimpleScrollBox_C['Set Scrollbar Thickness'] = function(self, Thickness) end
---@param IsDesignTime boolean
function UUI_BP_SimpleScrollBox_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUI_BP_SimpleScrollBox_C:OnMouseEnter(MyGeometry, MouseEvent) end
---@param CurrentOffset float
function UUI_BP_SimpleScrollBox_C:BndEvt__InternalScrollBox_K2Node_ComponentBoundEvent_0_OnUserScrolledEvent__DelegateSignature(CurrentOffset) end
---@param AxisInputData FUMGConsolidatedAxisInputData
function UUI_BP_SimpleScrollBox_C:BlueprintConsolidatedUMGInputAxis(AxisInputData) end
---@param MouseEvent FPointerEvent
function UUI_BP_SimpleScrollBox_C:OnMouseLeave(MouseEvent) end
function UUI_BP_SimpleScrollBox_C:BlueprintFocusLost() end
function UUI_BP_SimpleScrollBox_C:OnInitialized() end
---@param EntryPoint int32
function UUI_BP_SimpleScrollBox_C:ExecuteUbergraph_UI_BP_SimpleScrollBox(EntryPoint) end
function UUI_BP_SimpleScrollBox_C:ScrollUpdated__DelegateSignature() end
function UUI_BP_SimpleScrollBox_C:ScrollFocusLost__DelegateSignature() end


