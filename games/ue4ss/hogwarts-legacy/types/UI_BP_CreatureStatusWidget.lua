---@meta

---@class UUI_BP_CreatureStatusWidget_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InfoPanel_OUT UWidgetAnimation
---@field InfoContent_OUT UWidgetAnimation
---@field ButtonText_1 UPhoenixRichTextBlock
---@field descriptionText UPhoenixTextBlock
---@field HarvestPrompt UHorizontalBox
---@field Label_1 UPhoenixTextBlock
---@field NurtureDescription UPhoenixTextBlock
---@field NurtureText UPhoenixTextBlock
---@field OffspringText UPhoenixTextBlock
---@field PregnancyStatetext UPhoenixTextBlock
---@field PregnancyStatus UUI_BP_NurtureProgressDiamond_C
---@field PregnancyTimeText UPhoenixTextBlock
---@field StatusSummary UUI_BP_CreatureStatusSummary_C
---@field StatusWidgetSwitcher UWidgetSwitcher
---@field CreatureState UCreatureState
---@field CreatureTypeID FName
local UUI_BP_CreatureStatusWidget_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureStatusWidget_C:GatherMenuReaderStrings(DepthLevel) end
UUI_BP_CreatureStatusWidget_C['Update Pregnancy Status'] = function(self, ) end
UUI_BP_CreatureStatusWidget_C['Update Creature Status'] = function(self, ) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureStatusWidget_C:SetCreatureState(CreatureState) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_CreatureStatusWidget_C:Tick(MyGeometry, InDeltaTime) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_CreatureStatusWidget_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_CreatureStatusWidget_C:OnOutroStarted(OutroType, OutroDuration) end
function UUI_BP_CreatureStatusWidget_C:OnPregnancyStateChanged() end
---@param EntryPoint int32
function UUI_BP_CreatureStatusWidget_C:ExecuteUbergraph_UI_BP_CreatureStatusWidget(EntryPoint) end


