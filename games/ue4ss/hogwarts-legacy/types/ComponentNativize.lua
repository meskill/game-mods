---@meta

---@class UMobilityOverrider : UObject
local UMobilityOverrider = {}

---@param SceneComponent USceneComponent
---@param mobilityOverride EMobilityOverride
---@param lightMobilityOverride EMobilityOverride
---@param includeChildren boolean
function UMobilityOverrider:ComponentOverrideMobility(SceneComponent, mobilityOverride, lightMobilityOverride, includeChildren) end
---@param Actor AActor
---@param mobilityOverride EMobilityOverride
---@param lightMobilityOverride EMobilityOverride
---@param includeChildren boolean
function UMobilityOverrider:ActorOverrideMobility(Actor, mobilityOverride, lightMobilityOverride, includeChildren) end


---@class UNativeSplitterBlueprintLibrary : UBlueprintFunctionLibrary
local UNativeSplitterBlueprintLibrary = {}

---@param StaticMeshComponent UStaticMeshComponent
---@return boolean
function UNativeSplitterBlueprintLibrary:RequiresOverrideVertexColorsFixup(StaticMeshComponent) end
---@param StaticMeshComponent UStaticMeshComponent
---@param LODToRemoveColorsFrom int32
---@return boolean
function UNativeSplitterBlueprintLibrary:RemoveInstanceVertexColorsFromLOD(StaticMeshComponent, LODToRemoveColorsFrom) end
---@param StaticMeshComponent UStaticMeshComponent
---@return boolean
function UNativeSplitterBlueprintLibrary:RemoveInstanceVertexColors(StaticMeshComponent) end
---@param StaticMeshComponent UStaticMeshComponent
---@param bRebuildingStaticMesh boolean
---@return boolean
function UNativeSplitterBlueprintLibrary:FixupOverrideColorsIfNecessary(StaticMeshComponent, bRebuildingStaticMesh) end
---@param SourceComponent UActorComponent
---@param TargetComponent UActorComponent
---@return boolean
function UNativeSplitterBlueprintLibrary:CopyProperties(SourceComponent, TargetComponent) end
---@param SourceComponent UStaticMeshComponent
---@param TargetComponent UStaticMeshComponent
---@return boolean
function UNativeSplitterBlueprintLibrary:CopyInstanceVertexColorsIfCompatible(SourceComponent, TargetComponent) end
---@param StaticMeshComponent UStaticMeshComponent
---@return boolean
function UNativeSplitterBlueprintLibrary:CachePaintedDataIfNecessary(StaticMeshComponent) end


