---@meta

---@class ABP_AttackIndicatorVFX_C : APlayer_AttackIndicator
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field ['Niagara Component'] UNiagaraComponent
---@field AttackingEnemy AActor
local ABP_AttackIndicatorVFX_C = {}

---@param InParraybleFX2Handle FMultiFX2Handle
---@param InPerfectParryFX2Handle FMultiFX2Handle
function ABP_AttackIndicatorVFX_C:ReceivePerfectParry(InParraybleFX2Handle, InPerfectParryFX2Handle) end
---@param bIsParryIndicator boolean
---@param bIsUnblockableIndicator boolean
---@param InFX2Handle FMultiFX2Handle
---@param InEstimatedTime float
function ABP_AttackIndicatorVFX_C:ReceiveIndicatorStart(bIsParryIndicator, bIsUnblockableIndicator, InFX2Handle, InEstimatedTime) end
---@param bIsParryIndicator boolean
---@param bIsUnblockableIndicator boolean
---@param InFX2Handle FMultiFX2Handle
function ABP_AttackIndicatorVFX_C:ReceiveIndicatorStop(bIsParryIndicator, bIsUnblockableIndicator, InFX2Handle) end
---@param EntryPoint int32
function ABP_AttackIndicatorVFX_C:ExecuteUbergraph_BP_AttackIndicatorVFX(EntryPoint) end


