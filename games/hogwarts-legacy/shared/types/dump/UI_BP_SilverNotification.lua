---@meta

---@class UUI_BP_SilverNotification_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideSilverNotification UWidgetAnimation
---@field ShowSilverNotification UWidgetAnimation
---@field newItem_Header UPhoenixTextBlock
---@field NewItemLabel UPhoenixTextBlock
---@field specialItemIcon UImage
---@field TheBorder UBorder
---@field ItemsToShow TArray<FPickupNotificationData>
local UUI_BP_SilverNotification_C = {}

---@param ItemName FString
---@param IconName FString
---@param Count int32
---@param Header FString
function UUI_BP_SilverNotification_C:ShowNotification(ItemName, IconName, Count, Header) end
function UUI_BP_SilverNotification_C:HideComplete() end
function UUI_BP_SilverNotification_C:Hide() end
---@param CollectionID FName
---@param CollectionCategory FName
function UUI_BP_SilverNotification_C:I_AddCollectionKnownNotification(CollectionID, CollectionCategory) end
---@param CollectionID FName
---@param CollectionCategory FName
function UUI_BP_SilverNotification_C:I_AddCollectionObtainedNotification(CollectionID, CollectionCategory) end
---@param ChallengeID FName
---@param ChallengeCategory FName
---@param CompletedLevel int32
---@param MaxLevels int32
function UUI_BP_SilverNotification_C:I_AddChallengeCompleteNotification(ChallengeID, ChallengeCategory, CompletedLevel, MaxLevels) end
---@param Name FString
---@param IconName FString
---@param Count int32
---@param Header FString
---@param SpecialCollection boolean
---@param Variation FName
function UUI_BP_SilverNotification_C:I_ItemCollected(Name, IconName, Count, Header, SpecialCollection, Variation) end
---@param HeaderText FString
---@param SubheaderText FString
---@param IconName FString
function UUI_BP_SilverNotification_C:I_AddGenericNotification(HeaderText, SubheaderText, IconName) end
function UUI_BP_SilverNotification_C:Construct() end
---@param ItemId FString
function UUI_BP_SilverNotification_C:EventDisplaySilverNotification(ItemId) end
function UUI_BP_SilverNotification_C:EventHideSilverNotification() end
function UUI_BP_SilverNotification_C:HideAnimationFinished() end
---@param Caller UObject
function UUI_BP_SilverNotification_C:OnDisplaySilverNotification(Caller) end
---@param EntryPoint int32
function UUI_BP_SilverNotification_C:ExecuteUbergraph_UI_BP_SilverNotification(EntryPoint) end


