---@meta

---@class UUI_BP_CollectionNotification_C : UNotificationWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NotificationIN UWidgetAnimation
---@field NotificationOUT UWidgetAnimation
---@field categoryIcon UImage
---@field CollectionID UPhoenixTextBlock
---@field CollectionState UPhoenixTextBlock
---@field InvalidationBox_0 UInvalidationBox
---@field Item UImage
---@field pulseCloud UImage
---@field pulseRing UImage
---@field RemainingLifeTime float
---@field ShouldTickLifetime boolean
---@field canAddToInventory boolean
local UUI_BP_CollectionNotification_C = {}

---@param NewID FString
---@param SetItemID FString
function UUI_BP_CollectionNotification_C:CheckItemID(NewID, SetItemID) end
---@param CollectionID FName
---@param Category FName
---@param CollectionState FString
function UUI_BP_CollectionNotification_C:SetNotificationData(CollectionID, Category, CollectionState) end
function UUI_BP_CollectionNotification_C:ClearKnowledgeFlag() end
function UUI_BP_CollectionNotification_C:WidgetAnimationEvt_NotificationIN_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_CollectionNotification_C:WidgetAnimationEvt_NotificationIN_K2Node_WidgetAnimationEvent_1() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_CollectionNotification_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_CollectionNotification_C:ActivateNotification() end
function UUI_BP_CollectionNotification_C:WidgetAnimationEvt_NotificationOUT_K2Node_WidgetAnimationEvent_2() end
---@param EntryPoint int32
function UUI_BP_CollectionNotification_C:ExecuteUbergraph_UI_BP_CollectionNotification(EntryPoint) end


