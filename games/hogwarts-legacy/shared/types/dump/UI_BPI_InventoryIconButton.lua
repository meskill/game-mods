---@meta

---@class IUI_BPI_InventoryIconButton_C : IInterface
local IUI_BPI_InventoryIconButton_C = {}

IUI_BPI_InventoryIconButton_C['I Play Purchase Animation'] = function(self, ) end
---@param IsNew boolean
function IUI_BPI_InventoryIconButton_C:I_SetIsNew(IsNew) end
---@param isButtonEmpty boolean
function IUI_BPI_InventoryIconButton_C:I_GetIsEmpty(isButtonEmpty) end
---@param isQuestItem boolean
function IUI_BPI_InventoryIconButton_C:I_SetIsQuestItem(isQuestItem) end
---@param Rarity FName
function IUI_BPI_InventoryIconButton_C:I_GetItemRarity(Rarity) end
---@param NewSize FVector2D
function IUI_BPI_InventoryIconButton_C:SetIconButtonSize(NewSize) end
---@param Variation FName
function IUI_BPI_InventoryIconButton_C:GetItemVariation(Variation) end
---@param ItemCount int32
function IUI_BPI_InventoryIconButton_C:I_GetItemCount(ItemCount) end
---@param CurrentCount int32
---@param NeededCount int32
function IUI_BPI_InventoryIconButton_C:I_SetTurninCount(CurrentCount, NeededCount) end
---@param InventoryResult FInventoryResult
function IUI_BPI_InventoryIconButton_C:SetInventoryResult(InventoryResult) end
---@param ModifiedCost int32
function IUI_BPI_InventoryIconButton_C:GetModifiedCost(ModifiedCost) end
---@param InventoryResult FInventoryResult
function IUI_BPI_InventoryIconButton_C:GetInventoryResult(InventoryResult) end
function IUI_BPI_InventoryIconButton_C:ErrorAnimation() end
---@param ModifiedCost int32
function IUI_BPI_InventoryIconButton_C:SetModifiedCost(ModifiedCost) end
---@param Cost int32
function IUI_BPI_InventoryIconButton_C:GetItemCost(Cost) end
---@param Parent UUserWidget
function IUI_BPI_InventoryIconButton_C:SetParent(Parent) end
function IUI_BPI_InventoryIconButton_C:SetIconButtonDisabled() end
function IUI_BPI_InventoryIconButton_C:SetIconButtonMissing() end
function IUI_BPI_InventoryIconButton_C:SetIconButtonNonExistant() end
function IUI_BPI_InventoryIconButton_C:SetIconButtonEnabled() end
---@param NewState EIconButtonState
function IUI_BPI_InventoryIconButton_C:SetIconButtonState(NewState) end
---@param IconName FString
function IUI_BPI_InventoryIconButton_C:GetIconName(IconName) end
---@param ShowCount boolean
function IUI_BPI_InventoryIconButton_C:SetCountVisible(ShowCount) end
---@param ItemCount int32
function IUI_BPI_InventoryIconButton_C:SetItemCount(ItemCount) end
---@param Inventory_Item FInventoryResult
---@param Modifier float
function IUI_BPI_InventoryIconButton_C:InitializeItemButton(Inventory_Item, Modifier) end
---@param Quality EInventoryQuality
function IUI_BPI_InventoryIconButton_C:SetItemQuality(Quality) end
---@param Quality EInventoryQuality
function IUI_BPI_InventoryIconButton_C:GetItemQuality(Quality) end


