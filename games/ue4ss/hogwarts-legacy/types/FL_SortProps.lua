---@meta

---@class UFL_SortProps_C : UBlueprintFunctionLibrary
local UFL_SortProps_C = {}

---@param StaticMesh UStaticMeshComponent
---@param environment EEnvironment::Type
---@param PropIndex int32
---@param Props FPropList
---@param MeshSelect TMap<TSoftObjectPtr<UStaticMesh>, boolean>
---@param EnvInt int32
---@param Random_Seed FRandomStream
---@param __WorldContext UObject
---@param NewPropIndex int32
---@param EnnvironmentOutput EEnvironment::Type
---@param NewEnvInt int32
---@param NewMeshSelect TMap<TSoftObjectPtr<UStaticMesh>, boolean>
function UFL_SortProps_C:PropSort(StaticMesh, environment, PropIndex, Props, MeshSelect, EnvInt, Random_Seed, __WorldContext, NewPropIndex, EnnvironmentOutput, NewEnvInt, NewMeshSelect) end


