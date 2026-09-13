---@meta

---@class UUI_BP_MapToolTip_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TooltipLeft UWidgetAnimation
---@field TooltipRight UWidgetAnimation
---@field availableMissionsText UPhoenixTextBlock
---@field ContextActionBox UVerticalBox
---@field ExtraQuestBox UHorizontalBox
---@field ExtraQuestsPlus UPhoenixTextBlock
---@field ExtraQuestsText UPhoenixTextBlock
---@field ItemDivider UCanvasPanel
---@field ItemList UVerticalBox
---@field ItemsContainer UVerticalBox
---@field LevelReqPanel UCanvasPanel
---@field LevelText UPhoenixTextBlock
---@field MapIcon UImage
---@field MapIcon_1 UImage
---@field MissionAvailable UVerticalBox
---@field missionList UVerticalBox
---@field MissionRewards UVerticalBox
---@field noSpellReqText UPhoenixTextBlock
---@field QuestNumber UPhoenixTextBlock
---@field RequiredLevel UPhoenixTextBlock
---@field requirementList UVerticalBox
---@field requirementTitle UPhoenixTextBlock
---@field reward1 UUI_BP_QuestReward_C
---@field reward2 UUI_BP_QuestReward_C
---@field reward3 UUI_BP_QuestReward_C
---@field RewardsTitle UPhoenixTextBlock
---@field Spell1 UUI_BP_QuestSpellRequirement_C
---@field Spell2 UUI_BP_QuestSpellRequirement_C
---@field taskList UVerticalBox
---@field titleDividerBox UScaleBox
---@field tooltipDesc UPhoenixRichTextBlock
---@field TooltipLegend UUI_BP_Legend_Horizontal_Tooltip_C
---@field ToolTipLimits UOverlay
---@field tooltipTitle UPhoenixTextBlock
---@field UI_BP_AvailableMissionNote UUI_BP_AvailableMissionNote_C
---@field UI_BP_RegionInfoItem UUI_BP_RegionInfoItem_C
---@field legendItemMap ULegendItem
---@field legendItemTravel ULegendItem
---@field legendItemExtra ULegendItem
---@field legendItemPath ULegendItem
---@field RewardArray TArray<UUI_BP_QuestReward_C>
---@field ItemArray TArray<UUI_BP_RegionInfoItem_C>
---@field MIssionNoteArray TArray<UUI_BP_AvailableMissionNote_C>
---@field CachedQuestObjectives TArray<UUI_BP_QuestObjective_C>
local UUI_BP_MapToolTip_C = {}

---@param MissionData TArray<FTaskData>
function UUI_BP_MapToolTip_C:SetMissionTasks(MissionData) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MapToolTip_C:GatherMenuReaderStrings(DepthLevel) end
---@param ItemData TArray<FRegionPopuplData>
function UUI_BP_MapToolTip_C:SetItemData(ItemData) end
---@param Prereq1 FString
---@param Prereq2 FString
---@param CurrentMissionLevel int32
---@param MeetsLockRequirements boolean
function UUI_BP_MapToolTip_C:GetMissionLockedState(Prereq1, Prereq2, CurrentMissionLevel, MeetsLockRequirements) end
---@param MeetsLockedReq boolean
---@param IsMain boolean
---@param IsAssignment boolean
---@param IsRelationship boolean
---@param IconName FString
function UUI_BP_MapToolTip_C:GetMissionIcon(MeetsLockedReq, IsMain, IsAssignment, IsRelationship, IconName) end
function UUI_BP_MapToolTip_C:ResetTooltip() end
---@param MissionRewards TArray<FMissionRewardData>
function UUI_BP_MapToolTip_C:SetMissionRewards(MissionRewards) end
---@param MissionIcon FString
---@param NewTitle FString
---@param NewDescription FString
---@param AlternateDesc FString
---@param IsTrackedMission boolean
function UUI_BP_MapToolTip_C:SetMissionTitleAndDescription(MissionIcon, NewTitle, NewDescription, AlternateDesc, IsTrackedMission) end
---@param Prereq FString
---@param IsBroomOrSpell boolean
function UUI_BP_MapToolTip_C:CheckPrerequisiteString(Prereq, IsBroomOrSpell) end
---@param PrereqID1 FString
---@param PrereqID2 FString
---@param NoSpellReqs boolean
function UUI_BP_MapToolTip_C:SetMissionPrereqs(PrereqID1, PrereqID2, NoSpellReqs) end
---@param ShowAvailableMissions boolean
---@param NewTitle FString
---@param AvailableMissionNames TArray<FString>
---@param AvailableMissionIcons TArray<FString>
---@param AvailableMissionColors TArray<FLinearColor>
UUI_BP_MapToolTip_C['Set Available Missions Data'] = function(self, ShowAvailableMissions, NewTitle, AvailableMissionNames, AvailableMissionIcons, AvailableMissionColors) end
---@param NewTitle FString
---@param NewDesc FString
---@param isVendor boolean
function UUI_BP_MapToolTip_C:SetTooltipTitleAndDescription(NewTitle, NewDesc, isVendor) end
---@param RequiredLevel int32
---@param SuggestedLevel int32
---@param NoLevelRequirement boolean
function UUI_BP_MapToolTip_C:SetQuestLevel(RequiredLevel, SuggestedLevel, NoLevelRequirement) end
---@param TipData FMapToolTipData
function UUI_BP_MapToolTip_C:SetTooltipDataFromTipData(TipData) end
---@param LegendArray TArray<FString>
function UUI_BP_MapToolTip_C:SetTooltipLegend(LegendArray) end
---@param NewTitle FString
---@param NewDescription FString
---@param NewLegend FText
---@param LevelRequirement int32
---@param ShowAvailableMissions boolean
---@param AvailableMissionNames TArray<FString>
---@param AvailableMissionIcons TArray<FString>
function UUI_BP_MapToolTip_C:SetTooltipData(NewTitle, NewDescription, NewLegend, LevelRequirement, ShowAvailableMissions, AvailableMissionNames, AvailableMissionIcons) end
function UUI_BP_MapToolTip_C:Construct() end
---@param Caller UObject
function UUI_BP_MapToolTip_C:FlipMapTooltipRight(Caller) end
---@param Caller UObject
function UUI_BP_MapToolTip_C:FlipMapTooltipLeft(Caller) end
---@param EntryPoint int32
function UUI_BP_MapToolTip_C:ExecuteUbergraph_UI_BP_MapToolTip(EntryPoint) end


