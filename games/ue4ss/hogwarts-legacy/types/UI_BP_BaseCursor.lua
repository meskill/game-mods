---@meta

---@class UUI_BP_BaseCursor_C : UMenuCursorWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeAnim UWidgetAnimation
---@field SelectGlow UWidgetAnimation
---@field scaleOut UWidgetAnimation
---@field ScaleIn UWidgetAnimation
---@field BackLightOrbs UImage
---@field Container UCanvasPanel
---@field CursorPanel UCanvasPanel
---@field innerCircleSpellMinigame UImage
---@field innerPattern UImage
---@field ItemCount UEditableTextBox
---@field MouseCursorRings_1 UImage
---@field overlaySelectGlow UImage
---@field overlaySpellMinigame UImage
---@field overlayStarGlow UImage
---@field ToolTip UUI_BP_ExpandableToolTip_C
---@field AnimTime float
---@field TooltipShown boolean
---@field TooltipOffset FVector2D
---@field RelativeSize float
---@field ['Playback Speed'] float
local UUI_BP_BaseCursor_C = {}

---@param LegendItemIndex int32
---@param LegendItem ULegendItem
function UUI_BP_BaseCursor_C:I_GetTooltipLegendItem(LegendItemIndex, LegendItem) end
---@param IsShowing boolean
function UUI_BP_BaseCursor_C:I_IsTooltipShowing(IsShowing) end
function UUI_BP_BaseCursor_C:SequenceEvent__ENTRYPOINTUI_BP_BaseCursor_0() end
function UUI_BP_BaseCursor_C:FadeOut() end
function UUI_BP_BaseCursor_C:FadeIn() end
function UUI_BP_BaseCursor_C:FromSpellMinigameCursor() end
function UUI_BP_BaseCursor_C:ToSpellMinigameCursor() end
---@param ShouldShow boolean
function UUI_BP_BaseCursor_C:ShowCursor(ShouldShow) end
---@param MyGeo FGeometry
function UUI_BP_BaseCursor_C:RepositionTooltip(MyGeo) end
---@param ShouldShow boolean
function UUI_BP_BaseCursor_C:ShowTooltip(ShouldShow) end
function UUI_BP_BaseCursor_C:Scale() end
---@param Title FString
---@param TitleTranslatable boolean
---@param Description FString
---@param DescriptionTranslatable boolean
---@param Quality FString
---@param Legend FText
---@param ContentWidget UUserWidget
---@param NonExpandContent UUserWidget
---@param RarityTier FName
---@param UsesGenderIcon boolean
---@param IsMale boolean
---@param UsesLegendError boolean
---@param LegendErrorMessage FText
---@param UseAlbinoIcon boolean
function UUI_BP_BaseCursor_C:I_SetTooltipInfo(Title, TitleTranslatable, Description, DescriptionTranslatable, Quality, Legend, ContentWidget, NonExpandContent, RarityTier, UsesGenderIcon, IsMale, UsesLegendError, LegendErrorMessage, UseAlbinoIcon) end
---@param NewTitle FString
---@param Translatable boolean
function UUI_BP_BaseCursor_C:I_setTooltipTitle(NewTitle, Translatable) end
---@param ShouldShow boolean
function UUI_BP_BaseCursor_C:I_ShowTooltipProgressBar(ShouldShow) end
---@param percent float
function UUI_BP_BaseCursor_C:I_SetTooltipProgressPercent(percent) end
---@param NewLegend FText
function UUI_BP_BaseCursor_C:I_SetTooltipLegend(NewLegend) end
---@param NewContent UUserWidget
---@param ClearExistingContent boolean
function UUI_BP_BaseCursor_C:I_AddNonExpandableContent(NewContent, ClearExistingContent) end
---@param Title FString
function UUI_BP_BaseCursor_C:I_SetTooltipItemName(Title) end
---@param ShowCallout boolean
function UUI_BP_BaseCursor_C:I_ToggleRTInfoCallout(ShowCallout) end
---@param LegendData TArray<FLegendItemData>
function UUI_BP_BaseCursor_C:I_SetTooltipLegendData(LegendData) end
function UUI_BP_BaseCursor_C:Construct() end
function UUI_BP_BaseCursor_C:OnScaleCursor() end
---@param Caller UObject
function UUI_BP_BaseCursor_C:CursorScaleUp(Caller) end
---@param Caller UObject
function UUI_BP_BaseCursor_C:CursorScaleDown(Caller) end
---@param Caller UObject
function UUI_BP_BaseCursor_C:CursorHide(Caller) end
---@param Caller UObject
function UUI_BP_BaseCursor_C:CursorShow(Caller) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_BaseCursor_C:Tick(MyGeometry, InDeltaTime) end
---@param Caller UObject
---@param Int1 int32
---@param Int2 int32
function UUI_BP_BaseCursor_C:ViewportSizeChange(Caller, Int1, Int2) end
---@param IsExpanded boolean
---@param ShouldAnimate boolean
function UUI_BP_BaseCursor_C:SetTooltipExpandState(IsExpanded, ShouldAnimate) end
---@param Caller UObject
function UUI_BP_BaseCursor_C:SpellMiniGameStart(Caller) end
---@param Caller UObject
---@param int int32
function UUI_BP_BaseCursor_C:SpellComplete(Caller, int) end
function UUI_BP_BaseCursor_C:I_HideTooltip() end
function UUI_BP_BaseCursor_C:I_ShowTooltip() end
function UUI_BP_BaseCursor_C:I_HideCursor() end
function UUI_BP_BaseCursor_C:I_ShowCursor() end
UUI_BP_BaseCursor_C['GlowEnd Event'] = function(self, ) end
---@param Caller UObject
function UUI_BP_BaseCursor_C:SelectAnim(Caller) end
function UUI_BP_BaseCursor_C:Cursor_FadeIn() end
function UUI_BP_BaseCursor_C:Cursor_FadeOut() end
function UUI_BP_BaseCursor_C:WidgetAnimationEvt_FadeAnim_K2Node_WidgetAnimationEvent_1() end
function UUI_BP_BaseCursor_C:SelectGlowFinished_ScaleUp() end
function UUI_BP_BaseCursor_C:SelectGlowFinished_ScaleDown() end
---@param EntryPoint int32
function UUI_BP_BaseCursor_C:ExecuteUbergraph_UI_BP_BaseCursor(EntryPoint) end


