---@meta

---@class UUI_BP_ActionRingItem_C : UActionRingItem
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FailedCast UWidgetAnimation
---@field ShowSpellFull UWidgetAnimation
---@field emptyBorder UBorder
---@field epmtyOutline UImage
---@field ItemIcon UImage
---@field itemMeter UImage
---@field Outline UImage
---@field SelectedHighlight UImage
---@field TempItem UCanvasPanel
---@field TempItemBackground UImage
---@field TempItemIcon UImage
---@field TheButton UButton
---@field EnergyMaterial UMaterialInstanceDynamic
---@field isSpellFull boolean
---@field directionIndex int32
---@field renderAngle float
---@field Blacklisted FUI_BP_ActionRingItem_CBlacklisted
---@field UnBlacklisted FUI_BP_ActionRingItem_CUnBlacklisted
---@field IsBlacklisted boolean
local UUI_BP_ActionRingItem_C = {}

---@param IconName FString
function UUI_BP_ActionRingItem_C:I_GetIconName(IconName) end
---@param SpellCategory ESpellCategory
function UUI_BP_ActionRingItem_C:SetSpellMeterColor(SpellCategory) end
---@param IsEmptySlot boolean
function UUI_BP_ActionRingItem_C:ToggleEmptyItem(IsEmptySlot) end
---@param NewPct float
---@param IsASpell boolean
function UUI_BP_ActionRingItem_C:FillMeter(NewPct, IsASpell) end
---@param size FVector2D
function UUI_BP_ActionRingItem_C:I_SetIconSize(size) end
---@param IsDesignTime boolean
function UUI_BP_ActionRingItem_C:PreConstruct(IsDesignTime) end
function UUI_BP_ActionRingItem_C:Construct() end
---@param Texture UTexture2D
function UUI_BP_ActionRingItem_C:OnIconTextureLoaded(Texture) end
---@param NewContent UWidget
function UUI_BP_ActionRingItem_C:I_AddExtraContent(NewContent) end
---@param IconName FString
function UUI_BP_ActionRingItem_C:I_SetIconName(IconName) end
---@param ItemType EUIQActionBarType
function UUI_BP_ActionRingItem_C:SetSubWidgetVisibility(ItemType) end
---@param pct float
---@param IsASpell boolean
function UUI_BP_ActionRingItem_C:OnUpdateMeter(pct, IsASpell) end
---@param IsConsumable boolean
---@param ItemCount int32
function UUI_BP_ActionRingItem_C:OnSetItemInventoryData(IsConsumable, ItemCount) end
function UUI_BP_ActionRingItem_C:WidgetAnimationEvt_ShowSpellFull_K2Node_WidgetAnimationEvent_0() end
---@param IsEmpty boolean
function UUI_BP_ActionRingItem_C:OnToggleEmptyItem(IsEmpty) end
function UUI_BP_ActionRingItem_C:OnHideItemCount() end
---@param Texture UTexture2D
function UUI_BP_ActionRingItem_C:OnOverlayTextureLoaded(Texture) end
---@param Texture UTexture2D
function UUI_BP_ActionRingItem_C:OnItemIconTextureLoaded(Texture) end
---@param Show boolean
function UUI_BP_ActionRingItem_C:ToggleSelectionHighlight(Show) end
---@param ImageName FString
function UUI_BP_ActionRingItem_C:I_SetImage(ImageName) end
function UUI_BP_ActionRingItem_C:MarkSpellAsBlacklisted() end
function UUI_BP_ActionRingItem_C:ClearSpellAsBlacklisted() end
function UUI_BP_ActionRingItem_C:OnSpellCastFailed() end
---@param Caller UObject
---@param int int32
function UUI_BP_ActionRingItem_C:SetColorBlindMode(Caller, int) end
---@param EntryPoint int32
function UUI_BP_ActionRingItem_C:ExecuteUbergraph_UI_BP_ActionRingItem(EntryPoint) end
function UUI_BP_ActionRingItem_C:UnBlacklisted__DelegateSignature() end
function UUI_BP_ActionRingItem_C:Blacklisted__DelegateSignature() end


