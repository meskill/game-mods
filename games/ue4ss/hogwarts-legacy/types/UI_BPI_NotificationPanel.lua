---@meta

---@class IUI_BPI_NotificationPanel_C : IInterface
local IUI_BPI_NotificationPanel_C = {}

---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedLevel int32
---@param MaxLevels int32
function IUI_BPI_NotificationPanel_C:I_AddChallengeCompleteNotification(ChallengeID, ChallengeCategory, CompletedLevel, MaxLevels) end
---@param CollectionID FName
---@param CollectionCategory FName
function IUI_BPI_NotificationPanel_C:I_AddCollectionObtainedNotification(CollectionID, CollectionCategory) end
---@param CollectionID FName
---@param CollectionCategory FName
function IUI_BPI_NotificationPanel_C:I_AddCollectionKnownNotification(CollectionID, CollectionCategory) end
---@param HeaderText FString
---@param SubheaderText FString
---@param IconName FString
function IUI_BPI_NotificationPanel_C:I_AddGenericNotification(HeaderText, SubheaderText, IconName) end
---@param Name FString
---@param IconName FString
---@param Count int32
---@param Header FString
---@param SpecialCollection boolean
---@param Variation FName
function IUI_BPI_NotificationPanel_C:I_ItemCollected(Name, IconName, Count, Header, SpecialCollection, Variation) end


