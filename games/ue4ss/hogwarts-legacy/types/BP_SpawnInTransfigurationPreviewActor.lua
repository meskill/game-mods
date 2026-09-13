---@meta

---@class ABP_SpawnInTransfigurationPreviewActor_C : ATransfigurationPreviewActor
---@field UberGraphFrame FPointerToUberGraphFrame
local ABP_SpawnInTransfigurationPreviewActor_C = {}

function ABP_SpawnInTransfigurationPreviewActor_C:BlueprintInitialize() end
---@param InNewActors TArray<AActor>
function ABP_SpawnInTransfigurationPreviewActor_C:ObjectConfirmed(InNewActors) end
---@param EntryPoint int32
function ABP_SpawnInTransfigurationPreviewActor_C:ExecuteUbergraph_BP_SpawnInTransfigurationPreviewActor(EntryPoint) end


