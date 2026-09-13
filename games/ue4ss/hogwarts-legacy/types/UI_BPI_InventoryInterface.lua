---@meta

---@class IUI_BPI_InventoryInterface_C : IInterface
local IUI_BPI_InventoryInterface_C = {}

---@param RichPaperID FString
function IUI_BPI_InventoryInterface_C:I_AddInspectable(RichPaperID) end
---@param TabCategory EInventoryTabCategory
function IUI_BPI_InventoryInterface_C:I_GetInventoryTabCategory(TabCategory) end
---@param TargetId FName
---@param TargetHolderID FName
function IUI_BPI_InventoryInterface_C:GetInteractTargetInfo(TargetId, TargetHolderID) end
---@param Inventory UUserWidget
function IUI_BPI_InventoryInterface_C:I_GetInventory(Inventory) end
---@param ToInventory boolean
function IUI_BPI_InventoryInterface_C:SetToInventory(ToInventory) end
---@param Button UUserWidget
function IUI_BPI_InventoryInterface_C:I_SetActiveButton(Button) end
---@param Max int32
---@param ItemName FName
function IUI_BPI_InventoryInterface_C:I_ShowAmountWidget(Max, ItemName) end
---@param Transfer_Drop boolean
function IUI_BPI_InventoryInterface_C:SetButtonTransferDrop(Transfer_Drop) end
---@param Handled boolean
function IUI_BPI_InventoryInterface_C:I_ClickHandler(Handled) end
---@param CurrentButton UUserWidget
function IUI_BPI_InventoryInterface_C:SetCurrentIconButton(CurrentButton) end
---@param Removed boolean
function IUI_BPI_InventoryInterface_C:I_RemoveInspectable(Removed) end
function IUI_BPI_InventoryInterface_C:I_Sort() end
function IUI_BPI_InventoryInterface_C:I_InitButtonsToEmpty() end
function IUI_BPI_InventoryInterface_C:I_RefreshInventory() end
---@param Category EInventoryTabCategory
function IUI_BPI_InventoryInterface_C:I_SetInventoryCategory(Category) end
---@param PlayerInventory TArray<FInventoryResult>
function IUI_BPI_InventoryInterface_C:GetPlayerInventory(PlayerInventory) end
---@param InventoryScrollBox UUserWidget
function IUI_BPI_InventoryInterface_C:GetScrollBox(InventoryScrollBox) end
---@param PickPocketing boolean
function IUI_BPI_InventoryInterface_C:SetPickPocketing(PickPocketing) end
---@param NewParam UUserWidget
function IUI_BPI_InventoryInterface_C:I_SetParent(NewParam) end
function IUI_BPI_InventoryInterface_C:InventoryData() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@param Handled boolean
function IUI_BPI_InventoryInterface_C:UMGInputHandler(InputAction, InputEvent, Handled) end
---@param Handled boolean
function IUI_BPI_InventoryInterface_C:ClickHandler(Handled) end
---@param ShouldShow boolean
function IUI_BPI_InventoryInterface_C:ShowNavBar(ShouldShow) end
---@param Stride int32
function IUI_BPI_InventoryInterface_C:SetStride(Stride) end
---@param ItemBox UUserWidget
function IUI_BPI_InventoryInterface_C:GetItemBox(ItemBox) end
---@param TargetId FName
---@param TargetHolderID FName
function IUI_BPI_InventoryInterface_C:SetInteractTargetInfo(TargetId, TargetHolderID) end
---@param UIDisplayMode EUIDisplayMode
function IUI_BPI_InventoryInterface_C:SetMode(UIDisplayMode) end


