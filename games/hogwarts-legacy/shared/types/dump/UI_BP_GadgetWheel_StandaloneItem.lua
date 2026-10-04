---@meta

---@class UUI_BP_GadgetWheel_StandaloneItem_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHoverAnimation UWidgetAnimation
---@field BoundingBox UButton
---@field buttonPanel UCanvasPanel
---@field ButtonPrompt UPhoenixRichTextBlock
---@field DeathTimerFill UImage
---@field imagePanel UCanvasPanel
---@field ItemImage UImage
---@field NoMountIcon UImage
---@field ItemName FName
---@field LegendString FString
---@field IsLocked boolean
---@field HolderID FName
---@field OnClickEvent FUI_BP_GadgetWheel_StandaloneItem_COnClickEvent
---@field BroomMountIsUsable boolean
local UUI_BP_GadgetWheel_StandaloneItem_C = {}

---@param NewID FString
---@param NewItemID FString
function UUI_BP_GadgetWheel_StandaloneItem_C:CheckItemID(NewID, NewItemID) end
---@param pct float
function UUI_BP_GadgetWheel_StandaloneItem_C:GetTimeoutPct(pct) end
---@param LoadedTexture UTexture2D
---@param CallbackParam UObject
function UUI_BP_GadgetWheel_StandaloneItem_C:OnLoadItemIcon(LoadedTexture, CallbackParam) end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GadgetWheel_StandaloneItem_C:GatherMenuReaderStrings(DepthLevel) end
---@param Is_Highlighted boolean
UUI_BP_GadgetWheel_StandaloneItem_C['Toggle Highlight'] = function(self, Is_Highlighted) end
---@param IsUsable boolean
function UUI_BP_GadgetWheel_StandaloneItem_C:SetUsability(IsUsable) end
---@param ItemName FName
function UUI_BP_GadgetWheel_StandaloneItem_C:SetItemName(ItemName) end
---@param IsDesignTime boolean
function UUI_BP_GadgetWheel_StandaloneItem_C:PreConstruct(IsDesignTime) end
function UUI_BP_GadgetWheel_StandaloneItem_C:BndEvt__UI_BP_GadgetWheel_StandaloneItem_BoundingBox_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_GadgetWheel_StandaloneItem_C:BndEvt__UI_BP_GadgetWheel_StandaloneItem_BoundingBox_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_GadgetWheel_StandaloneItem_C:BndEvt__UI_BP_GadgetWheel_StandaloneItem_BoundingBox_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_GadgetWheel_StandaloneItem_C:ExecuteUbergraph_UI_BP_GadgetWheel_StandaloneItem(EntryPoint) end
function UUI_BP_GadgetWheel_StandaloneItem_C:OnClickEvent__DelegateSignature() end


