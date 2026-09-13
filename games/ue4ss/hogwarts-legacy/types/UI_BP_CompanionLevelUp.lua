---@meta

---@class UUI_BP_CompanionLevelUp_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideSpecialNotification UWidgetAnimation
---@field ShowSpecialNotification UWidgetAnimation
---@field companionIcon UImage
---@field CompanionName UPhoenixTextBlock
---@field flame UImage
---@field Left_Image UImage
---@field Right_Image UImage
---@field TheBorder UBorder
---@field ItemsToShow TArray<FPickupNotificationData>
local UUI_BP_CompanionLevelUp_C = {}

---@param ItemName FString
---@param IconName FString
---@param Count int32
function UUI_BP_CompanionLevelUp_C:ShowNotification(ItemName, IconName, Count) end
function UUI_BP_CompanionLevelUp_C:HideComplete() end
function UUI_BP_CompanionLevelUp_C:Hide() end
---@param CollectionID FName
---@param CollectionCategory FName
function UUI_BP_CompanionLevelUp_C:I_AddCollectionKnownNotification(CollectionID, CollectionCategory) end
---@param CollectionID FName
---@param CollectionCategory FName
function UUI_BP_CompanionLevelUp_C:I_AddCollectionObtainedNotification(CollectionID, CollectionCategory) end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedLevel int32
---@param MaxLevels int32
function UUI_BP_CompanionLevelUp_C:I_AddChallengeCompleteNotification(ChallengeID, ChallengeCategory, CompletedLevel, MaxLevels) end
---@param Name FString
---@param IconName FString
---@param Count int32
---@param Header FString
---@param SpecialCollection boolean
---@param Variation FName
function UUI_BP_CompanionLevelUp_C:I_ItemCollected(Name, IconName, Count, Header, SpecialCollection, Variation) end
---@param HeaderText FString
---@param SubheaderText FString
---@param IconName FString
function UUI_BP_CompanionLevelUp_C:I_AddGenericNotification(HeaderText, SubheaderText, IconName) end
function UUI_BP_CompanionLevelUp_C:Construct() end
---@param ItemId FString
function UUI_BP_CompanionLevelUp_C:EventDisplaySpecialNotification(ItemId) end
function UUI_BP_CompanionLevelUp_C:EventHideSpecialNotification() end
function UUI_BP_CompanionLevelUp_C:HideAnimationFinished() end
---@param Caller UObject
function UUI_BP_CompanionLevelUp_C:OnDisplaySpecialNotification(Caller) end
---@param EntryPoint int32
function UUI_BP_CompanionLevelUp_C:ExecuteUbergraph_UI_BP_CompanionLevelUp(EntryPoint) end


