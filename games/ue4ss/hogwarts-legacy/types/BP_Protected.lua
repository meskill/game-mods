---@meta

---@class ABP_Protected_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VFX_P_DW_Protego_Shield_Loop_Strong UParticleSystemComponent
---@field bLocked UCapsuleComponent
---@field DefaultSceneRoot USceneComponent
local ABP_Protected_C = {}

function ABP_Protected_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Protected_C:ExecuteUbergraph_BP_Protected(EntryPoint) end


