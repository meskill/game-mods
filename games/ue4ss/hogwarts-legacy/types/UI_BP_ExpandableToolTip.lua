---@meta

---@class UUI_BP_ExpandableToolTip_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AlbinoIcon UImage
---@field descriptionText UPhoenixRichTextBlock
---@field ErrorText UHorizontalBox
---@field ErrorTextMain UPhoenixTextBlock
---@field expandableContent UExpandableArea
---@field footer UOverlay
---@field footerDivider UImage
---@field GenderIcon UImage
---@field headerSpacer USpacer
---@field Image_4 UImage
---@field inProgressMeter UProgressBar
---@field ItemName UPhoenixTextBlock
---@field LegendBox UUI_BP_LegendBox_C
---@field meterSizeBox USizeBox
---@field NewTooltipLegend UUI_BP_Legend_Horizontal_Tooltip_C
---@field nonExpandableContent UVerticalBox
---@field rarityBack UImage
---@field rarityPanel UCanvasPanel
---@field rarityTitle UPhoenixTextBlock
---@field titleBox UHorizontalBox
---@field TooltipBody UVerticalBox
---@field TooltipContentContainer UVerticalBox
---@field toolTipSpacer USpacer
---@field titleWidth float
---@field IsExpanded boolean
---@field expandTween UTween
---@field IsExpandable boolean
---@field CurrentLegendData TArray<FLegendItemData>
---@field LegendErrorUsed boolean
---@field LegendTextUsed boolean
---@field NewLegendUsed boolean
local UUI_BP_ExpandableToolTip_C = {}

---@param ShouldAnimate boolean
function UUI_BP_ExpandableToolTip_C:CollapseContent(ShouldAnimate) end
---@param ShouldAnimate boolean
function UUI_BP_ExpandableToolTip_C:ExpandContent(ShouldAnimate) end
function UUI_BP_ExpandableToolTip_C:RefreshBodyDividerAndFooterVisibility() end
---@param LegendItemIndex int32
---@param LegendItem ULegendItem
function UUI_BP_ExpandableToolTip_C:GetTooltipLegendItem(LegendItemIndex, LegendItem) end
---@param LegendData TArray<FLegendItemData>
function UUI_BP_ExpandableToolTip_C:SetTooltipLegendData(LegendData) end
---@param RarityTier FName
function UUI_BP_ExpandableToolTip_C:SetRarityState(RarityTier) end
---@param ShowCallout boolean
function UUI_BP_ExpandableToolTip_C:ToggleRTInfoCallout(ShowCallout) end
---@param NewContent UUserWidget
---@param ClearExistingContent boolean
function UUI_BP_ExpandableToolTip_C:AddNonExpandableContent(NewContent, ClearExistingContent) end
---@param IsExpandable boolean
function UUI_BP_ExpandableToolTip_C:SetIsExpandable(IsExpandable) end
---@param isExpanding boolean
function UUI_BP_ExpandableToolTip_C:AnimateToolTipWidth(isExpanding) end
---@param IsShowing boolean
function UUI_BP_ExpandableToolTip_C:ToggleInProgressMeter(IsShowing) end
---@param NewLegend FText
function UUI_BP_ExpandableToolTip_C:PopulateExpandableLegend(NewLegend) end
---@param ShouldAnimate boolean
function UUI_BP_ExpandableToolTip_C:ToggleExpandableContent(ShouldAnimate) end
---@param NewTitle FString
---@param TitleTranslatable boolean
---@param NewDescription FString
---@param DescriptionTranslatable boolean
---@param NewQuality FString
---@param NewLegend FText
---@param ContentWidget UUserWidget
---@param RarityTier FName
---@param UsesGenderIcon boolean
---@param IsMale boolean
---@param UsesLegendError boolean
---@param LegendErrorMessage FText
---@param UseAlbinoIcon boolean
function UUI_BP_ExpandableToolTip_C:SetTooltipData(NewTitle, TitleTranslatable, NewDescription, DescriptionTranslatable, NewQuality, NewLegend, ContentWidget, RarityTier, UsesGenderIcon, IsMale, UsesLegendError, LegendErrorMessage, UseAlbinoIcon) end
---@param Area UExpandableArea
---@param bIsExpanded boolean
function UUI_BP_ExpandableToolTip_C:BndEvt__expandableContent_K2Node_ComponentBoundEvent_0_OnExpandableAreaExpansionChanged__DelegateSignature(Area, bIsExpanded) end
function UUI_BP_ExpandableToolTip_C:Construct() end
---@param EntryPoint int32
function UUI_BP_ExpandableToolTip_C:ExecuteUbergraph_UI_BP_ExpandableToolTip(EntryPoint) end


