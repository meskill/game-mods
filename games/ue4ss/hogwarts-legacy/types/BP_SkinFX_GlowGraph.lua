---@meta

---@class ABP_SkinFX_GlowGraph_C : ABP_SkinFX_Graph_Parent_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field EmissiveAmount_EmissiveAmount_FBC318D54D7DAED5FB1ABCB52741A5DC float
---@field EmissiveAmount__Direction_FBC318D54D7DAED5FB1ABCB52741A5DC ETimelineDirection::Type
---@field EmissiveAmount UTimelineComponent
---@field Color FLinearColor
---@field FadeOutStart float
local ABP_SkinFX_GlowGraph_C = {}

function ABP_SkinFX_GlowGraph_C:EmissiveAmount__FinishedFunc() end
function ABP_SkinFX_GlowGraph_C:EmissiveAmount__UpdateFunc() end
---@param EndStyle ESkinFXEffectEndStyle
---@param CurrentTime float
function ABP_SkinFX_GlowGraph_C:SkinFXNotifyEnd(EndStyle, CurrentTime) end
function ABP_SkinFX_GlowGraph_C:SkinFXInitialUpdate() end
function ABP_SkinFX_GlowGraph_C:SkinFXNotifyStart() end
---@param CurrentTime float
function ABP_SkinFX_GlowGraph_C:SkinFXNotifyRetrigger(CurrentTime) end
function ABP_SkinFX_GlowGraph_C:SkinFXNotifyKill() end
---@param EntryPoint int32
function ABP_SkinFX_GlowGraph_C:ExecuteUbergraph_BP_SkinFX_GlowGraph(EntryPoint) end


