---@meta

---@class UUI_BP_NotificationItem_C : UNotificationWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NotificationIN UWidgetAnimation
---@field NotificationOUT UWidgetAnimation
---@field Burst UImage
---@field compareArrow UPhoenixImage
---@field countBack UImage
---@field iconBorder UBorder
---@field ItemCountPanel UCanvasPanel
---@field Outline UImage
---@field outlineglow UImage
---@field QuestBack UImage
---@field rarityBack UImage
---@field sparkles UImage
---@field textBorder UBorder
---@field RemainingLifeTime float
---@field ShouldTickLifetime boolean
---@field canAddToInventory boolean
---@field NotificationComplete FUI_BP_NotificationItem_CNotificationComplete
---@field LifetimeTimer FTimerHandle
---@field NotificationAbortionHandle FHermesBPDelegateHandle
---@field CountVisible boolean
local UUI_BP_NotificationItem_C = {}

function UUI_BP_NotificationItem_C:SetPlayerHouseBroom() end
---@param GearID FName
UUI_BP_NotificationItem_C['Compare Gear Stats'] = function(self, GearID) end
---@param Amount int32
---@return boolean
function UUI_BP_NotificationItem_C:IncrementCount(Amount) end
---@param Amount int32
function UUI_BP_NotificationItem_C:AddCount(Amount) end
---@param isQuestItem boolean
function UUI_BP_NotificationItem_C:SetItemNotificationType(isQuestItem) end
---@param RarityTier FName
UUI_BP_NotificationItem_C['Set Rarity State'] = function(self, RarityTier) end
function UUI_BP_NotificationItem_C:WidgetAnimationEvt_NotificationIN_K2Node_WidgetAnimationEvent_1() end
function UUI_BP_NotificationItem_C:LifetimeComplete() end
function UUI_BP_NotificationItem_C:WidgetAnimationEvt_NotificationOUT_K2Node_WidgetAnimationEvent_2() end
function UUI_BP_NotificationItem_C:ActivateNotification() end
---@param IsInventoryFull boolean
function UUI_BP_NotificationItem_C:SetIsInventoryFullNotification(IsInventoryFull) end
---@param IsVisible boolean
function UUI_BP_NotificationItem_C:ToggleCountVisibility(IsVisible) end
---@param Caller UObject
function UUI_BP_NotificationItem_C:NotificationAborted(Caller) end
---@param EntryPoint int32
function UUI_BP_NotificationItem_C:ExecuteUbergraph_UI_BP_NotificationItem(EntryPoint) end
---@param Item UUI_BP_NotificationItem_C
function UUI_BP_NotificationItem_C:NotificationComplete__DelegateSignature(Item) end


