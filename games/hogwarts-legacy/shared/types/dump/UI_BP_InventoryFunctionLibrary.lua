---@meta

---@class UUI_BP_InventoryFunctionLibrary_C : UBlueprintFunctionLibrary
local UUI_BP_InventoryFunctionLibrary_C = {}

---@param GearItemID FGearItemID
---@param __WorldContext UObject
---@param OffenseStat int32
---@param DefenseStat int32
function UUI_BP_InventoryFunctionLibrary_C:GetGearItemStats(GearItemID, __WorldContext, OffenseStat, DefenseStat) end
---@param RarityTier FName
---@param __WorldContext UObject
---@param ColorTag FDataTableRowHandle
function UUI_BP_InventoryFunctionLibrary_C:GetRarityColorTag(RarityTier, __WorldContext, ColorTag) end
---@param InActor AActor
---@param __WorldContext UObject
---@param ReturnCount int32
UUI_BP_InventoryFunctionLibrary_C['Get Inventory Count'] = function(self, InActor, __WorldContext, ReturnCount) end
---@param GearItemID FGearItemID
---@param __WorldContext UObject
---@param Title FString
---@param Description FString
---@param Quality FString
---@param Rarity FName
---@param SellPrice int32
---@param Sellable boolean
function UUI_BP_InventoryFunctionLibrary_C:GetGearTooltipInfo(GearItemID, __WorldContext, Title, Description, Quality, Rarity, SellPrice, Sellable) end
---@param ItemName FName
---@param Variation FName
---@param __WorldContext UObject
---@param content UUserWidget
function UUI_BP_InventoryFunctionLibrary_C:BuildDefaultNonExpandContent(ItemName, Variation, __WorldContext, content) end
---@param ItemName FName
---@param Variation FName
---@param __WorldContext UObject
---@param TooltipContent UUserWidget
function UUI_BP_InventoryFunctionLibrary_C:BuildDefaultTooltipContent(ItemName, Variation, __WorldContext, TooltipContent) end
---@param Button UUI_BP_InventoryIconButton_C
---@param Legend TArray<FLegendItemData>
---@param content UUserWidget
---@param NonExpandContent UUserWidget
---@param __WorldContext UObject
function UUI_BP_InventoryFunctionLibrary_C:BuildInventoryTooltip(Button, Legend, content, NonExpandContent, __WorldContext) end
---@param Container AActor
---@param __WorldContext UObject
function UUI_BP_InventoryFunctionLibrary_C:LootItemsFromActor(Container, __WorldContext) end
---@param InvResult FInventoryResult
---@param __WorldContext UObject
---@param Success boolean
UUI_BP_InventoryFunctionLibrary_C['IFL Transfer to Inventory'] = function(self, InvResult, __WorldContext, Success) end
---@param FromCharacterID FName
---@param Item FName
---@param ToCharacterID FName
---@param howMany int32
---@param FromHolderID FName
---@param ToHolderID FName
---@param Variation FName
---@param __WorldContext UObject
---@param CanTransfer boolean
function UUI_BP_InventoryFunctionLibrary_C:CanPerformTransfer(FromCharacterID, Item, ToCharacterID, howMany, FromHolderID, ToHolderID, Variation, __WorldContext, CanTransfer) end
---@param Button UUserWidget
---@param __WorldContext UObject
function UUI_BP_InventoryFunctionLibrary_C:UIUpdateItem(Button, __WorldContext) end
---@param Button UUserWidget
---@param InventoryItem FInventoryResult
---@param Modifier float
---@param __WorldContext UObject
function UUI_BP_InventoryFunctionLibrary_C:UpdateInventoryIconFromInventoryResult(Button, InventoryItem, Modifier, __WorldContext) end
---@param FromCharacterID FName
---@param Item FName
---@param ToCharacterID FName
---@param howMany int32
---@param Reason EInventoryChangeReason
---@param FromHolderID FName
---@param ToHolderID FName
---@param SuppressHUDNotification boolean
---@param Variation FName
---@param IsUnique boolean
---@param __WorldContext UObject
---@param Success boolean
UUI_BP_InventoryFunctionLibrary_C['Transfer Item'] = function(self, FromCharacterID, Item, ToCharacterID, howMany, Reason, FromHolderID, ToHolderID, SuppressHUDNotification, Variation, IsUnique, __WorldContext, Success) end
---@param CharacterID FName
---@param ItemId FName
---@param HolderID FName
---@param Variation FName
---@param __WorldContext UObject
---@param Count int32
function UUI_BP_InventoryFunctionLibrary_C:GetItemCount(CharacterID, ItemId, HolderID, Variation, __WorldContext, Count) end
---@param CharacterID FName
---@param __WorldContext UObject
---@param Money int32
function UUI_BP_InventoryFunctionLibrary_C:GetMoney(CharacterID, __WorldContext, Money) end
---@param CharacterID FName
---@param Category FName
---@param HolderID FName
---@param SkipLockedItems boolean
---@param __WorldContext UObject
---@param Inventory TArray<FInventoryResult>
function UUI_BP_InventoryFunctionLibrary_C:GetCharacterInventory(CharacterID, Category, HolderID, SkipLockedItems, __WorldContext, Inventory) end


