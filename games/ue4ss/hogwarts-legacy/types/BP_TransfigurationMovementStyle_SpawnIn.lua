---@meta

---@class ABP_TransfigurationMovementStyle_SpawnIn_C : ABP_TransfigurationMovementStyle_Base_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field PlaceTimeline_Scale_16644A4A4AD78EA0DD9B12BF839430F7 float
---@field PlaceTimeline_DistanceFromSurface_16644A4A4AD78EA0DD9B12BF839430F7 float
---@field PlaceTimeline__Direction_16644A4A4AD78EA0DD9B12BF839430F7 ETimelineDirection::Type
---@field PlaceTimeline UTimelineComponent
---@field LevitationDistance float
local ABP_TransfigurationMovementStyle_SpawnIn_C = {}

function ABP_TransfigurationMovementStyle_SpawnIn_C:PlaceTimeline__FinishedFunc() end
function ABP_TransfigurationMovementStyle_SpawnIn_C:PlaceTimeline__UpdateFunc() end
function ABP_TransfigurationMovementStyle_SpawnIn_C:Place() end
---@param EntryPoint int32
function ABP_TransfigurationMovementStyle_SpawnIn_C:ExecuteUbergraph_BP_TransfigurationMovementStyle_SpawnIn(EntryPoint) end


