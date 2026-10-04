---@meta

---@class FClothAssetLODCookedData
---@field Px_RestPositions TArray<FVector4>
---@field FabricData FClothFabricCookedData
---@field SkinnedVerts TArray<FVector>
---@field SkinnedNormals TArray<FVector>
local FClothAssetLODCookedData = {}



---@class FClothConfig_Legacy
---@field WindMethod EClothingWindMethod_Legacy
---@field VerticalConstraintConfig FClothConstraintSetup_Legacy
---@field HorizontalConstraintConfig FClothConstraintSetup_Legacy
---@field BendConstraintConfig FClothConstraintSetup_Legacy
---@field ShearConstraintConfig FClothConstraintSetup_Legacy
---@field SelfCollisionRadius float
---@field SelfCollisionStiffness float
---@field SelfCollisionCullScale float
---@field Damping FVector
---@field Friction float
---@field WindDragCoefficient float
---@field WindLiftCoefficient float
---@field LinearDrag FVector
---@field AngularDrag FVector
---@field LinearInertiaScale FVector
---@field AngularInertiaScale FVector
---@field CentrifugalInertiaScale FVector
---@field SolverFrequency float
---@field StiffnessFrequency float
---@field GravityScale float
---@field GravityOverride FVector
---@field bUseGravityOverride boolean
---@field TetherStiffness float
---@field TetherLimit float
---@field CollisionThickness float
---@field AnimDriveSpringStiffness float
---@field AnimDriveDamperStiffness float
local FClothConfig_Legacy = {}



---@class FClothConstraintSetup_Legacy
---@field Stiffness float
---@field StiffnessMultiplier float
---@field StretchLimit float
---@field CompressionLimit float
local FClothConstraintSetup_Legacy = {}



---@class FClothFabricCookedData
---@field NumParticles uint32
---@field PhaseIndices TArray<uint32>
---@field PhaseTypes TArray<int32>
---@field Sets TArray<uint32>
---@field Restvalues TArray<float>
---@field StiffnessValues TArray<float>
---@field Indices TArray<uint32>
---@field Anchors TArray<uint32>
---@field TetherLengths TArray<float>
---@field Triangles TArray<uint32>
local FClothFabricCookedData = {}



---@class FClothLODDataCommon
---@field PhysicalMeshData FClothPhysicalMeshData
---@field CollisionData FClothCollisionData
---@field bUseMultipleInfluences boolean
---@field SkinningKernelRadius float
local FClothLODDataCommon = {}



---@class FClothParameterMask_Legacy
---@field MaskName FName
---@field CurrentTarget EWeightMapTargetCommon
---@field MaxValue float
---@field MinValue float
---@field Values TArray<float>
---@field bEnabled boolean
local FClothParameterMask_Legacy = {}



---@class FClothPhysicalMeshData
---@field Vertices TArray<FVector>
---@field Normals TArray<FVector>
---@field Indices TArray<uint32>
---@field WeightMaps TMap<uint32, FPointWeightMap>
---@field InverseMasses TArray<float>
---@field BoneData TArray<FClothVertBoneData>
---@field SelfCollisionIndices TArray<uint32>
---@field EuclideanTethers FClothTetherData
---@field GeodesicTethers FClothTetherData
---@field MaxBoneWeights int32
---@field NumFixedVerts int32
local FClothPhysicalMeshData = {}



---@class FClothTetherData
local FClothTetherData = {}


---@class FClothingAssetNvCookedData
---@field LODsCookedData TArray<FClothAssetLODCookedData>
local FClothingAssetNvCookedData = {}



---@class FPointWeightMap
---@field Values TArray<float>
local FPointWeightMap = {}



---@class UClothConfigCommon : UClothConfigBase
local UClothConfigCommon = {}


---@class UClothLODDataCommon_Legacy : UObject
---@field PhysicalMeshData UClothPhysicalMeshDataBase_Legacy
---@field ClothPhysicalMeshData FClothPhysicalMeshData
---@field CollisionData FClothCollisionData
local UClothLODDataCommon_Legacy = {}



---@class UClothSharedConfigCommon : UClothConfigCommon
local UClothSharedConfigCommon = {}


---@class UClothingAssetCommon : UClothingAssetBase
---@field PhysicsAsset UPhysicsAsset
---@field ClothConfigs TMap<FName, UClothConfigBase>
---@field LODData TArray<FClothLODDataCommon>
---@field LodMap TArray<int32>
---@field UsedBoneNames TArray<FName>
---@field UsedBoneIndices TArray<int32>
---@field ReferenceBoneIndex int32
---@field CustomData UClothingAssetCustomData
local UClothingAssetCommon = {}



---@class UClothingAssetCustomData : UObject
local UClothingAssetCustomData = {}


