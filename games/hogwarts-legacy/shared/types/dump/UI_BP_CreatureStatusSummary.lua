---@meta

---@class UUI_BP_CreatureStatusSummary_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ByproductWidget UUI_BP_CreatureByproduct_C
---@field CooldownIconContainer UHorizontalBox
---@field CooldownText UPhoenixTextBlock
---@field FeedNeed UUI_BP_CreatureNeedWidget_C
---@field InteractionNeed UUI_BP_CreatureNeedWidget_C
---@field MasterSwitcher UWidgetSwitcher
---@field Minimized UUI_BP_CreatureNeedWidget_C
---@field NeedsSwitcher UWidgetSwitcher
---@field progressMeter UUI_BP_NurtureProgressDiamond_C
---@field CreatureState UCreatureState
---@field IsMinimized boolean
local UUI_BP_CreatureStatusSummary_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureStatusSummary_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_CreatureStatusSummary_C:UpdateCooldownTimer() end
---@param ShouldBeMinimized boolean
function UUI_BP_CreatureStatusSummary_C:SetNeedsMinimized(ShouldBeMinimized) end
function UUI_BP_CreatureStatusSummary_C:Update() end
---@param InCreatureState UCreatureState
---@param ShouldBeMinimized boolean
function UUI_BP_CreatureStatusSummary_C:Setup(InCreatureState, ShouldBeMinimized) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_CreatureStatusSummary_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_CreatureStatusSummary_C:OnSomethingChanged() end
---@param IsDesignTime boolean
function UUI_BP_CreatureStatusSummary_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UUI_BP_CreatureStatusSummary_C:ExecuteUbergraph_UI_BP_CreatureStatusSummary(EntryPoint) end


