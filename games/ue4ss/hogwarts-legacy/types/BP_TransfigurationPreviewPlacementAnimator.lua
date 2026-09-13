---@meta

---@class ABP_TransfigurationPreviewPlacementAnimator_C : ATransfigurationPlacementAnimator
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SkeletalMesh USkeletalMeshComponent
---@field PreviewAttached boolean
local ABP_TransfigurationPreviewPlacementAnimator_C = {}

---@param InPreviewActor ATransfigurationPreviewActor
function ABP_TransfigurationPreviewPlacementAnimator_C:AttachPreviewObject(InPreviewActor) end
function ABP_TransfigurationPreviewPlacementAnimator_C:DetachPreviewObject() end
---@param EntryPoint int32
function ABP_TransfigurationPreviewPlacementAnimator_C:ExecuteUbergraph_BP_TransfigurationPreviewPlacementAnimator(EntryPoint) end


