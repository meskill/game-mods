---@meta

---@class UUI_BP_FG_ActionsButton_C : UFieldGuideButton_Actions
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HippogriffLoop UWidgetAnimation
---@field NewAnimation UWidgetAnimation
---@field TutorialBounce UWidgetAnimation
---@field OnHoverAnimation UWidgetAnimation
---@field actionMeter UImage
---@field ActionsLabel UPhoenixTextBlock
---@field iconBorder UBorder
---@field newIndicator UUI_BP_NewIndicator_C
---@field PercentText UPhoenixTextBlock
---@field StartImage UImage
---@field TutorialHighlight UBorder
---@field HouseFillID FString
---@field currentHippogriffFrame float
local UUI_BP_FG_ActionsButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_FG_ActionsButton_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_FG_ActionsButton_C:SetHouseAssets() end
---@param Percentage float
function UUI_BP_FG_ActionsButton_C:SetMeterPercent(Percentage) end
function UUI_BP_FG_ActionsButton_C:Construct() end
function UUI_BP_FG_ActionsButton_C:BndEvt__iconButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_FG_ActionsButton_C:BndEvt__iconButton_K2Node_ComponentBoundEvent_1_OnButtonPressedEvent__DelegateSignature() end
function UUI_BP_FG_ActionsButton_C:BndEvt__iconButton_K2Node_ComponentBoundEvent_2_OnButtonHoverEvent__DelegateSignature() end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_FG_ActionsButton_C:OnHouseMeterFillLoaded(LoadedTexture, CallbackParam) end
---@param InVisibility ESlateVisibility
function UUI_BP_FG_ActionsButton_C:OnSetItemIndicatorVisibility(InVisibility) end
---@param IsLocked boolean
function UUI_BP_FG_ActionsButton_C:SetLockedState(IsLocked) end
---@param bIsTutorialHighlighted boolean
function UUI_BP_FG_ActionsButton_C:SetIsTutorialHighlighted(bIsTutorialHighlighted) end
---@param EntryPoint int32
function UUI_BP_FG_ActionsButton_C:ExecuteUbergraph_UI_BP_FG_ActionsButton(EntryPoint) end


