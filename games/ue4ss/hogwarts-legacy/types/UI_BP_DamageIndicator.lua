---@meta

---@class UUI_BP_DamageIndicator_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Damage UWidgetAnimation
---@field Number UPhoenixTextBlock
---@field Number_Stun UPhoenixTextBlock
---@field NumberRays UImage
local UUI_BP_DamageIndicator_C = {}

---@param Amount int32
---@param IsVulnerableDamage boolean
function UUI_BP_DamageIndicator_C:SetAmount(Amount, IsVulnerableDamage) end
function UUI_BP_DamageIndicator_C:WidgetAnimationEvt_Damage_K2Node_WidgetAnimationEvent_0() end
---@param EntryPoint int32
function UUI_BP_DamageIndicator_C:ExecuteUbergraph_UI_BP_DamageIndicator(EntryPoint) end


