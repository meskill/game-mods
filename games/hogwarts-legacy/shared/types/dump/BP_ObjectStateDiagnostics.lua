---@meta

---@class ABP_ObjectStateDiagnostics_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Widget UWidgetComponent
---@field DefaultSceneRoot USceneComponent
local ABP_ObjectStateDiagnostics_C = {}

function ABP_ObjectStateDiagnostics_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_ObjectStateDiagnostics_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_ObjectStateDiagnostics_C:ExecuteUbergraph_BP_ObjectStateDiagnostics(EntryPoint) end


