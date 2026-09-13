---@meta

---@class FAttachmentKey
---@field ParentSplineSet UDynamicSplineSet
---@field HostMesh UStaticMeshComponent
local FAttachmentKey = {}



---@class FControlPoint
---@field Position FVector4
---@field normal FVector4
---@field ArriveTangent FVector4
---@field LeaveTangent FVector4
local FControlPoint = {}



---@class FDynamicSpline
---@field ControlPoints TArray<FControlPoint>
---@field ControlPointInfluences TArray<FNamedBoneInfluences>
---@field Keys TArray<float>
---@field InterpModes TArray<ESplineInterpMode>
local FDynamicSpline = {}



---@class FDynamicSplineUsage
---@field Index int32
---@field UsageFlags uint8
local FDynamicSplineUsage = {}



---@class FNamedBoneInfluences
---@field Weights float
---@field Names FName
local FNamedBoneInfluences = {}



---@class FSkinnedAttachmentKey
---@field ParentSplineSet UDynamicSplineSet
---@field HostMesh USkeletalMeshComponent
local FSkinnedAttachmentKey = {}



---@class UDynamicSkeletalSplineSet : UDynamicSplineSet
---@field ReferenceMesh USkeletalMesh
local UDynamicSkeletalSplineSet = {}



---@class UDynamicSplineNDI : UNiagaraDataInterface
---@field HostActor AActor
---@field SplineSet UDynamicSplineSet
---@field SplineUsage FDynamicSplineUsage
---@field ComputedSkeletalMesh USkeletalMeshComponent
---@field ComputedStaticMesh UStaticMeshComponent
local UDynamicSplineNDI = {}



---@class UDynamicSplineSet : UDataAsset
---@field DynamicSplines TArray<FDynamicSpline>
local UDynamicSplineSet = {}



---@class UDynamicSplinesSubsystem : UWorldSubsystem
local UDynamicSplinesSubsystem = {}


---@class UDynamicStaticMeshSplineSet : UDynamicSplineSet
---@field ReferenceMesh UStaticMesh
local UDynamicStaticMeshSplineSet = {}



