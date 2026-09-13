---@meta

---@class UUI_BP_MissionBanner_New_C : UMissionBannerWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CollapseStepsDesc UWidgetAnimation
---@field ExpandStepsDesc UWidgetAnimation
---@field HideMissionAvailable UWidgetAnimation
---@field ShowMissionAvailable UWidgetAnimation
---@field HIdeFullBanner UWidgetAnimation
---@field showFullBanner UWidgetAnimation
---@field hideStepBanner UWidgetAnimation
---@field showStepBanner UWidgetAnimation
---@field availableBanner UBorder
---@field bottomDividerBox UScaleBox
---@field currentMissionIcon UImage
---@field dpadBracket UScaleBox
---@field ExpandableDesc UExpandableArea
---@field ExpandLegend UUI_BP_LegendItem_C
---@field fullBanner UBorder
---@field InvalidationBox_FullBanner UInvalidationBox
---@field InvalidationBox_MissionCompleteBanner UInvalidationBox
---@field kbmBracket UScaleBox
---@field mainVerticalBox UVerticalBox
---@field missionBannerCheckbox UUI_BP_MissionBannerCheckbox_C
---@field MissionBannerHeaderText UPhoenixTextBlock
---@field MissionCompleteBanner UUI_BP_MissionCompleteBanner_C
---@field MissionDesc_Text UPhoenixRichTextBlock
---@field MissionIcon UImage
---@field MissionTitleText UPhoenixTextBlock
---@field ObjectiveList UVerticalBox
---@field stepBanner UBorder
---@field StepTitleText UPhoenixTextBlock
---@field topDividerBox UScaleBox
---@field TQPrompt UHorizontalBox
---@field StepBannerDuration float
---@field FullBannerDuration float
---@field BannerAnimationQueue TArray<UWidgetAnimation>
---@field BannerDelayQueue TArray<float>
---@field IsBannerAnimationPlaying boolean
---@field QueueCompleteDelay float
---@field FullBannerPreDelay float
---@field OwnerQueue TArray<UUserWidget>
---@field MissionAvailableDuration float
---@field LastStepObjectives TArray<FString>
---@field DescExpanded boolean
---@field ExpandDelayDuration float
---@field PositionY float
---@field CheckboxWidget UUI_BP_MissionBannerCheckbox_C
local UUI_BP_MissionBanner_New_C = {}

function UUI_BP_MissionBanner_New_C:SequenceEvent__ENTRYPOINTUI_BP_MissionBanner_New_1() end
function UUI_BP_MissionBanner_New_C:SequenceEvent__ENTRYPOINTUI_BP_MissionBanner_New_0() end
function UUI_BP_MissionBanner_New_C:ToggleButtonBracket() end
---@param Expand boolean
function UUI_BP_MissionBanner_New_C:ToggleStepBannerExpand(Expand) end
---@param MissionID FName
---@param IconName FString
function UUI_BP_MissionBanner_New_C:GetMissionIconName(MissionID, IconName) end
---@param objectiveText TArray<FString>
---@param Same boolean
function UUI_BP_MissionBanner_New_C:IsSameStepAsLast(objectiveText, Same) end
function UUI_BP_MissionBanner_New_C:ProgressStepAnimQueue() end
---@param NewAnimation UWidgetAnimation
---@param PreAnimationDelay float
---@param AnimationOwner UUserWidget
function UUI_BP_MissionBanner_New_C:QueueStepAnimation(NewAnimation, PreAnimationDelay, AnimationOwner) end
---@param updateType BannerUpdateType
---@param updateTitle FName
---@param bannerText FName
---@param bannerText2 FName
---@param bShowTrackMission boolean
---@param objectiveText TArray<FString>
---@param objectiveChecked TArray<boolean>
---@param objectiveCheckChanged TArray<boolean>
---@param objectiveRuntimeValue1 TArray<int32>
---@param objectiveRuntimeValue2 TArray<int32>
function UUI_BP_MissionBanner_New_C:ShowBPMissionBanner(updateType, updateTitle, bannerText, bannerText2, bShowTrackMission, objectiveText, objectiveChecked, objectiveCheckChanged, objectiveRuntimeValue1, objectiveRuntimeValue2) end
---@param updateType BannerUpdateType
---@param updateTitle FName
---@param bannerText FName
---@param bannerText2 FName
---@param bShowTrackMission boolean
---@param objectiveText TArray<FString>
---@param objectiveChecked TArray<boolean>
---@param objectiveCheckChanged TArray<boolean>
---@param objectiveRuntimeValue1 TArray<int32>
---@param objectiveRuntimeValue2 TArray<int32>
---@param MissionDescription FString
---@param MissionTypeIcon FString
---@param MissionObjectiveIcon FString
---@param ObjectiveTintColor FLinearColor
function UUI_BP_MissionBanner_New_C:ShowBPStepBanner(updateType, updateTitle, bannerText, bannerText2, bShowTrackMission, objectiveText, objectiveChecked, objectiveCheckChanged, objectiveRuntimeValue1, objectiveRuntimeValue2, MissionDescription, MissionTypeIcon, MissionObjectiveIcon, ObjectiveTintColor) end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_showFullBanner_K2Node_WidgetAnimationEvent_1() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_HIdeFullBanner_K2Node_WidgetAnimationEvent_2() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_showStepBanner_K2Node_WidgetAnimationEvent_4() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_hideStepBanner_K2Node_WidgetAnimationEvent_5() end
---@param updateType BannerUpdateType
---@param updateTitle FName
---@param bannerText FName
---@param bannerText2 FName
---@param bShowTrackMission boolean
---@param objectiveText TArray<FString>
---@param objectiveChecked TArray<boolean>
---@param objectiveCheckChanged TArray<boolean>
---@param objectiveRuntimeValue1 TArray<int32>
---@param objectiveRuntimeValue2 TArray<int32>
function UUI_BP_MissionBanner_New_C:ShowBPCelebrationBanner(updateType, updateTitle, bannerText, bannerText2, bShowTrackMission, objectiveText, objectiveChecked, objectiveCheckChanged, objectiveRuntimeValue1, objectiveRuntimeValue2) end
---@param NextAnimation UWidgetAnimation
---@param Delay float
---@param Owner UUserWidget
function UUI_BP_MissionBanner_New_C:ProcessNextBannerAnimation(NextAnimation, Delay, Owner) end
function UUI_BP_MissionBanner_New_C:HandleStepBannerQueueComplete() end
---@param NewStepArray TArray<FString>
---@param IsCheckedArray TArray<boolean>
---@param StateChangedArray TArray<boolean>
---@param RuntimeValueArray1 TArray<int32>
---@param RuntimeValueArray2 TArray<int32>
---@param ObjectiveIcon FString
---@param IconTint FLinearColor
function UUI_BP_MissionBanner_New_C:LoadMissionSteps(NewStepArray, IsCheckedArray, StateChangedArray, RuntimeValueArray1, RuntimeValueArray2, ObjectiveIcon, IconTint) end
function UUI_BP_MissionBanner_New_C:CheckboxAnimComplete() end
---@param objectiveText TArray<FString>
---@param objectiveChecked TArray<boolean>
---@param objectiveCheckChanged TArray<boolean>
---@param objectiveRuntimeValue1 TArray<int32>
---@param objectiveRuntimeValue2 TArray<int32>
function UUI_BP_MissionBanner_New_C:UpdateExistingStepBanner(objectiveText, objectiveChecked, objectiveCheckChanged, objectiveRuntimeValue1, objectiveRuntimeValue2) end
function UUI_BP_MissionBanner_New_C:OnInitialized() end
function UUI_BP_MissionBanner_New_C:ShowMissionCompleteEvent() end
function UUI_BP_MissionBanner_New_C:HideMissionCompleteEvent() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_ShowMissionAvailable_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_HideMissionAvailable_K2Node_WidgetAnimationEvent_3() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_showFullBanner_K2Node_WidgetAnimationEvent_6() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_showStepBanner_K2Node_WidgetAnimationEvent_7() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_ShowMissionAvailable_K2Node_WidgetAnimationEvent_11() end
function UUI_BP_MissionBanner_New_C:ExpandSteps() end
function UUI_BP_MissionBanner_New_C:WidgetAnimationEvt_ExpandStepsDesc_K2Node_WidgetAnimationEvent_8() end
function UUI_BP_MissionBanner_New_C:Destruct() end
function UUI_BP_MissionBanner_New_C:Construct() end
function UUI_BP_MissionBanner_New_C:StartExpandHold() end
function UUI_BP_MissionBanner_New_C:CancelExpandHold() end
---@param MiniMapSize EMiniMapSizeOption
function UUI_BP_MissionBanner_New_C:RepositionAfterMinimapScaleAdjust(MiniMapSize) end
---@param Caller UObject
---@param float float
function UUI_BP_MissionBanner_New_C:EventAdjustMinimapSize(Caller, float) end
---@param ObjectiveTintColor FLinearColor
function UUI_BP_MissionBanner_New_C:UpdateColorBlindColors(ObjectiveTintColor) end
---@param Caller UObject
function UUI_BP_MissionBanner_New_C:RefreshButtonCallouts(Caller) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_MissionBanner_New_C:MissionCardLoaded(LoadedTexture, CallbackParam) end
---@param EntryPoint int32
function UUI_BP_MissionBanner_New_C:ExecuteUbergraph_UI_BP_MissionBanner_New(EntryPoint) end


