---@meta

---@class UUI_BP_Subtitle_C : USubtitles
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Subtitle_Name FString
---@field Subtitle_LineID TArray<FString>
---@field StringOutput FText
---@field SubtitleElementClass UClass
---@field Effort_LineID TArray<FString>
---@field DebugKey FString
---@field SubtitleElementInstance USubtitleElement
---@field BPSubtitleElementInstance UUI_BP_Subtitle_Element_C
---@field UserWidgetInstance UUserWidget
---@field SubtitleGray FSlateColor
---@field bStandaloneSubtitle boolean
---@field SubtitleHighPriorityMap TMap<FString, boolean>
---@field SubtitleElementMap TMap<FString, USubtitleElement>
---@field RemoveSubtitleElement USubtitleElement
local UUI_BP_Subtitle_C = {}

---@param InputResolvedSubtitle FString
function UUI_BP_Subtitle_C:AddStandaloneSubtitle(InputResolvedSubtitle) end
---@param InputResolvedSubtitle FString
function UUI_BP_Subtitle_C:UpdateStandaloneSubtitle(InputResolvedSubtitle) end
function UUI_BP_Subtitle_C:RemoveAllFromSubtitleBox() end
---@param InSubtitleData FAudioDialogueLineData
---@param ResolvedSubtitle FString
UUI_BP_Subtitle_C['Add Resolved Subtitle to Panel'] = function(self, InSubtitleData, ResolvedSubtitle) end
---@param subTitle FAudioDialogueLineData
function UUI_BP_Subtitle_C:RemovefromSubtitleBox(subTitle) end
---@param Loaded UClass
function UUI_BP_Subtitle_C:OnLoaded_1643F56B420F3870192A8DBF8E43830F(Loaded) end
---@param VariantMapHandle FVariantMapHandle
function UUI_BP_Subtitle_C:InpActEvt_UMGSkipCinematicOrConversation_K2Node_CustomInputActionEvent_0(VariantMapHandle) end
function UUI_BP_Subtitle_C:Construct() end
---@param SubtitleData FAudioDialogueLineData
---@param ResolvedSubtitle FString
function UUI_BP_Subtitle_C:BPAddSubtitleEvent(SubtitleData, ResolvedSubtitle) end
---@param SubtitleData FAudioDialogueLineData
function UUI_BP_Subtitle_C:BPRemoveSubtitleEvent(SubtitleData) end
---@param ResolvedSubtitle FString
function UUI_BP_Subtitle_C:BPAddStandaloneSubtitle(ResolvedSubtitle) end
function UUI_BP_Subtitle_C:BPRemoveStandaloneSubtitle() end
---@param ResolvedSubtitle FString
function UUI_BP_Subtitle_C:BPUpdateStandaloneSubtitle(ResolvedSubtitle) end
---@param EntryPoint int32
function UUI_BP_Subtitle_C:ExecuteUbergraph_UI_BP_Subtitle(EntryPoint) end


