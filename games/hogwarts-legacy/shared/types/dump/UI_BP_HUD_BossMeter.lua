---@meta

---@class UUI_BP_HUD_BossMeter_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowBossHealthMeter UWidgetAnimation
---@field CreatureGender UImage
---@field HealthThresholds UCanvasPanel
---@field Image_194 UImage
---@field InvalidationBoxBossMeter UInvalidationBox
---@field Level UPhoenixTextBlock
---@field targetHealth UCanvasPanel
---@field targetHealthBar UProgressBar
---@field TargetLevel UCanvasPanel
---@field TargetName UPhoenixTextBlock
---@field HasBossTarget boolean
---@field TargetActor AActor
---@field IsGendered boolean
local UUI_BP_HUD_BossMeter_C = {}

---@param InCreature AActor
function UUI_BP_HUD_BossMeter_C:UpdateCreatureInfo(InCreature) end
---@param Target AActor
---@param Health float
---@param Not_sure boolean
function UUI_BP_HUD_BossMeter_C:HealthChanged(Target, Health, Not_sure) end
---@param TargetActor AActor
---@param ShowName boolean
---@param ShowHealth boolean
function UUI_BP_HUD_BossMeter_C:SetCurrentTargetActor(TargetActor, ShowName, ShowHealth) end
---@param BossTarget AActor
---@param ShowBossName boolean
---@param ShowBossHealthBar boolean
function UUI_BP_HUD_BossMeter_C:UpdateBossTarget(BossTarget, ShowBossName, ShowBossHealthBar) end
---@param BossTarget AActor
function UUI_BP_HUD_BossMeter_C:BossHealthChanged(BossTarget) end
---@param Target AActor
function UUI_BP_HUD_BossMeter_C:TargetAcquired(Target) end
function UUI_BP_HUD_BossMeter_C:TargetLost() end
---@param EntryPoint int32
function UUI_BP_HUD_BossMeter_C:ExecuteUbergraph_UI_BP_HUD_BossMeter(EntryPoint) end


