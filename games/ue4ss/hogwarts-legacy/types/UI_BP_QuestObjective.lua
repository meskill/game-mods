---@meta

---@class UUI_BP_QuestObjective_C : UPhoenixUserWidget
---@field iconImage UImage
---@field objectiveText UPhoenixRichTextBlock
---@field TrackBorder UImage
---@field TrackedIconOverlay UOverlay
---@field untrackedCarrot UImage
---@field StrikeThroughBrush FSlateBrush
---@field TaskIsComplete boolean
local UUI_BP_QuestObjective_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_QuestObjective_C:GatherMenuReaderStrings(DepthLevel) end
---@param GlintTexture UTexture2D
---@param ObjectParam UObject
function UUI_BP_QuestObjective_C:GlintTextureLoaded(GlintTexture, ObjectParam) end
---@param objectiveText FString
---@param RuntimeParam1 int32
---@param RuntimeParam2 int32
---@param IsComplete boolean
---@param IsTracked boolean
---@param Icon FString
---@param Glint FString
---@param IconColor FLinearColor
function UUI_BP_QuestObjective_C:InitObjectiveData(objectiveText, RuntimeParam1, RuntimeParam2, IsComplete, IsTracked, Icon, Glint, IconColor) end


