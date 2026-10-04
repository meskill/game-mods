---@meta

---@class UUI_BP_ItemTooltipEffectDescription_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field bodyDivider UImage
---@field EffectDescription UPhoenixTextBlock
---@field EffectText UPhoenixTextBlock
local UUI_BP_ItemTooltipEffectDescription_C = {}

---@param EffectTextKey FString
---@param EffectPotionReplacementTextKey FString
---@param PositiveEffect boolean
function UUI_BP_ItemTooltipEffectDescription_C:SetItemInfo(EffectTextKey, EffectPotionReplacementTextKey, PositiveEffect) end
---@param IsDesignTime boolean
function UUI_BP_ItemTooltipEffectDescription_C:PreConstruct(IsDesignTime) end
function UUI_BP_ItemTooltipEffectDescription_C:Construct() end
---@param EntryPoint int32
function UUI_BP_ItemTooltipEffectDescription_C:ExecuteUbergraph_UI_BP_ItemTooltipEffectDescription(EntryPoint) end


