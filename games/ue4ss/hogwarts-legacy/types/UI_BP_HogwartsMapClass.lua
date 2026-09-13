---@meta

---@class UUI_BP_HogwartsMapClass_C : UMapHogwarts
---@field UberGraphFrame FPointerToUberGraphFrame
---@field MapItemSelected FUI_BP_HogwartsMapClass_CMapItemSelected
local UUI_BP_HogwartsMapClass_C = {}

---@param Locations TMap<FString, FVector>
function UUI_BP_HogwartsMapClass_C:ShowFastTavelMap(Locations) end
function UUI_BP_HogwartsMapClass_C:TestEvent() end
---@param ItemString FString
---@param ItemIndex int32
---@param WasCanceled boolean
function UUI_BP_HogwartsMapClass_C:OnMapItemSelected_Event(ItemString, ItemIndex, WasCanceled) end
---@param EntryPoint int32
function UUI_BP_HogwartsMapClass_C:ExecuteUbergraph_UI_BP_HogwartsMapClass(EntryPoint) end
---@param Item_String FString
---@param Item_Index int32
---@param Was_Cancelled boolean
function UUI_BP_HogwartsMapClass_C:MapItemSelected__DelegateSignature(Item_String, Item_Index, Was_Cancelled) end


