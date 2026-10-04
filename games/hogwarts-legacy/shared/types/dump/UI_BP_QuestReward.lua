---@meta

---@class UUI_BP_QuestReward_C : UPhoenixUserWidget
---@field rewardIcon UPhoenixImage
---@field RewardText UPhoenixRichTextBlock
local UUI_BP_QuestReward_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_QuestReward_C:GatherMenuReaderStrings(DepthLevel) end
---@param TypeID FString
---@param RewardID FString
function UUI_BP_QuestReward_C:SetRewardData(TypeID, RewardID) end


