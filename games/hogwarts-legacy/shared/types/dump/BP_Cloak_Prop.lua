---@meta

---@class ABP_Cloak_Prop_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkeletalMesh USkeletalMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field Setup FObjectFadeParamsSpeedDuration
local ABP_Cloak_Prop_C = {}

function ABP_Cloak_Prop_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_Cloak_Prop_C:ExecuteUbergraph_BP_Cloak_Prop(EntryPoint) end


