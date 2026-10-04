---@meta

---@class UUI_BP_DamageIndicators_C : UDamageIndicatorsBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Root UCanvasPanel
local UUI_BP_DamageIndicators_C = {}

function UUI_BP_DamageIndicators_C:Construct() end
---@param ScreenPos FVector2D
---@param Damage float
---@param IsVulnerableDamage boolean
function UUI_BP_DamageIndicators_C:OnNPC_Damaged(ScreenPos, Damage, IsVulnerableDamage) end
---@param EntryPoint int32
function UUI_BP_DamageIndicators_C:ExecuteUbergraph_UI_BP_DamageIndicators(EntryPoint) end


