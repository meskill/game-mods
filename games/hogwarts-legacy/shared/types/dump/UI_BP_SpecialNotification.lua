---@meta

---@class UUI_BP_SpecialNotification_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideSpecialNotification UWidgetAnimation
---@field ShowSpecialNotification UWidgetAnimation
---@field newItem_Header UPhoenixTextBlock
---@field NewItemLabel UPhoenixTextBlock
---@field specialItemIcon UImage
---@field TheBorder UBorder
---@field ItemsToShow TArray<FPickupNotificationData>
---@field ItemName FString
local UUI_BP_SpecialNotification_C = {}

---@param ItemName FString
---@param IconName FString
---@param Count int32
---@param Header FString
function UUI_BP_SpecialNotification_C:ShowNotification(ItemName, IconName, Count, Header) end
function UUI_BP_SpecialNotification_C:HideComplete() end
function UUI_BP_SpecialNotification_C:Hide() end
---@param CollectionID FName
---@param CollectionCategory FName
function UUI_BP_SpecialNotification_C:I_AddCollectionKnownNotification(CollectionID, CollectionCategory) end
---@param CollectionID FName
---@param CollectionCategory FName
function UUI_BP_SpecialNotification_C:I_AddCollectionObtainedNotification(CollectionID, CollectionCategory) end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedLevel int32
---@param MaxLevels int32
function UUI_BP_SpecialNotification_C:I_AddChallengeCompleteNotification(ChallengeID, ChallengeCategory, CompletedLevel, MaxLevels) end
---@param Name FString
---@param IconName FString
---@param Count int32
---@param Header FString
---@param SpecialCollection boolean
---@param Variation FName
function UUI_BP_SpecialNotification_C:I_ItemCollected(Name, IconName, Count, Header, SpecialCollection, Variation) end
---@param HeaderText FString
---@param SubheaderText FString
---@param IconName FString
function UUI_BP_SpecialNotification_C:I_AddGenericNotification(HeaderText, SubheaderText, IconName) end
function UUI_BP_SpecialNotification_C:Construct() end
---@param ItemId FString
function UUI_BP_SpecialNotification_C:EventDisplaySpecialNotification(ItemId) end
function UUI_BP_SpecialNotification_C:EventHideSpecialNotification() end
function UUI_BP_SpecialNotification_C:HideAnimationFinished() end
---@param Caller UObject
function UUI_BP_SpecialNotification_C:OnDisplaySpecialNotification(Caller) end
---@param EntryPoint int32
function UUI_BP_SpecialNotification_C:ExecuteUbergraph_UI_BP_SpecialNotification(EntryPoint) end


