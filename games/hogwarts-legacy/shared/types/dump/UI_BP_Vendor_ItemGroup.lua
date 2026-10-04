---@meta

---@class UUI_BP_Vendor_ItemGroup_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemCategoryLabel UPhoenixTextBlock
---@field ItemGrid UUniformGridPanel
---@field Stride int32
local UUI_BP_Vendor_ItemGroup_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_Vendor_ItemGroup_C:GatherMenuReaderStrings(DepthLevel) end
---@param ItemButton UUI_BP_InventoryIconButton_C
function UUI_BP_Vendor_ItemGroup_C:AddItemButton(ItemButton) end
---@param IsDesignTime boolean
function UUI_BP_Vendor_ItemGroup_C:PreConstruct(IsDesignTime) end
function UUI_BP_Vendor_ItemGroup_C:Construct() end
---@param EntryPoint int32
function UUI_BP_Vendor_ItemGroup_C:ExecuteUbergraph_UI_BP_Vendor_ItemGroup(EntryPoint) end


