---@meta

---@class ABP_MultivanishmentPreviewActor_C : ATransfigurationPreviewActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CentredMeshRoot USceneComponent
---@field ScaleDownTimeline_Scale_B912410A49773DD88DD5FA97F560C186 float
---@field ScaleDownTimeline__Direction_B912410A49773DD88DD5FA97F560C186 ETimelineDirection::Type
---@field ScaleDownTimeline UTimelineComponent
local ABP_MultivanishmentPreviewActor_C = {}

function ABP_MultivanishmentPreviewActor_C:ScaleDownTimeline__FinishedFunc() end
function ABP_MultivanishmentPreviewActor_C:ScaleDownTimeline__UpdateFunc() end
function ABP_MultivanishmentPreviewActor_C:OnVanishStart() end
function ABP_MultivanishmentPreviewActor_C:OnPreviewMeshLoaded() end
---@param EntryPoint int32
function ABP_MultivanishmentPreviewActor_C:ExecuteUbergraph_BP_MultivanishmentPreviewActor(EntryPoint) end


