---@meta

---@class UUI_BP_MissionBannerCheckbox_C : UAvaUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowStepComplete UWidgetAnimation
---@field CheckboxText UPhoenixRichTextBlock
---@field CollapsableContents UHorizontalBox
---@field CollapsingSizeBox USizeBox
---@field waypointIcon UImage
local UUI_BP_MissionBannerCheckbox_C = {}

---@param NewColor FLinearColor
function UUI_BP_MissionBannerCheckbox_C:UpdateIconColor(NewColor) end
---@param ShowPaper boolean
function UUI_BP_MissionBannerCheckbox_C:ShowPaper(ShowPaper) end
---@param StepText FText
---@param IsCompleted boolean
---@param ObjectiveIcon FString
---@param IconTint FLinearColor
function UUI_BP_MissionBannerCheckbox_C:SetCheckmarkData(StepText, IsCompleted, ObjectiveIcon, IconTint) end
function UUI_BP_MissionBannerCheckbox_C:SetDynamicSizeBoxHeight() end
function UUI_BP_MissionBannerCheckbox_C:WidgetAnimationEvt_ShowStepComplete_K2Node_WidgetAnimationEvent_0() end
---@param EntryPoint int32
function UUI_BP_MissionBannerCheckbox_C:ExecuteUbergraph_UI_BP_MissionBannerCheckbox(EntryPoint) end


