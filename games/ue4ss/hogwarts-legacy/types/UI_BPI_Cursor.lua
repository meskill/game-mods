---@meta

---@class IUI_BPI_Cursor_C : IInterface
local IUI_BPI_Cursor_C = {}

---@param LegendItemIndex int32
---@param LegendItem ULegendItem
function IUI_BPI_Cursor_C:I_GetTooltipLegendItem(LegendItemIndex, LegendItem) end
---@param LegendData TArray<FLegendItemData>
function IUI_BPI_Cursor_C:I_SetTooltipLegendData(LegendData) end
---@param ShowCallout boolean
function IUI_BPI_Cursor_C:I_ToggleRTInfoCallout(ShowCallout) end
---@param Title FString
function IUI_BPI_Cursor_C:I_SetTooltipItemName(Title) end
---@param NewContent UUserWidget
---@param ClearExistingContent boolean
function IUI_BPI_Cursor_C:I_AddNonExpandableContent(NewContent, ClearExistingContent) end
---@param IsShowing boolean
function IUI_BPI_Cursor_C:I_IsTooltipShowing(IsShowing) end
---@param NewLegend FText
function IUI_BPI_Cursor_C:I_SetTooltipLegend(NewLegend) end
---@param percent float
function IUI_BPI_Cursor_C:I_SetTooltipProgressPercent(percent) end
---@param ShouldShow boolean
function IUI_BPI_Cursor_C:I_ShowTooltipProgressBar(ShouldShow) end
---@param NewTitle FString
---@param Translatable boolean
function IUI_BPI_Cursor_C:I_setTooltipTitle(NewTitle, Translatable) end
function IUI_BPI_Cursor_C:I_HideCursor() end
function IUI_BPI_Cursor_C:I_ShowCursor() end
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
function IUI_BPI_Cursor_C:I_SetTooltipInfo(Title, TitleTranslatable, Description, DescriptionTranslatable, Quality, Legend, ContentWidget, NonExpandContent, RarityTier, UsesGenderIcon, IsMale, UsesLegendError, LegendErrorMessage, UseAlbinoIcon) end
function IUI_BPI_Cursor_C:I_HideTooltip() end
function IUI_BPI_Cursor_C:I_ShowTooltip() end


