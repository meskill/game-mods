---@meta

---@class APSOCachingCameraActor : APawn
local APSOCachingCameraActor = {}


---@class APSOCachingLevelController : AActor
---@field CameraRotationSpeed float
---@field PreviewedAssetTypes TArray<UClass>
---@field AssetsToIgnore TSet<FSoftObjectPath>
---@field PredefinedAssetsForPreview TArray<FSoftObjectPath>
---@field DebugFastAssetsCount int32
---@field Mode EPSOCachingLevelMode
local APSOCachingLevelController = {}



---@class APSOCachingPreviewActor : AActor
---@field PreviewMode EPSOCachePreviewMode
---@field PreviewFramesCount int32
---@field PreviewTime float
local APSOCachingPreviewActor = {}

---@param InComponent UPrimitiveComponent
function APSOCachingPreviewActor:SetupManagedPrimitiveComponent(InComponent) end
---@param Primitive UPrimitiveComponent
function APSOCachingPreviewActor:ResetStaticMeshPreview(Primitive) end
---@param Primitive UPrimitiveComponent
function APSOCachingPreviewActor:ResetNiagaraSystemPreview(Primitive) end
---@param AssetType UClass
---@param AssetTypeData FPreviewAssetTypeData
function APSOCachingPreviewActor:RegisterPreviewAssetTypeData(AssetType, AssetTypeData) end
---@param AssetType UClass
---@param InComponent UPrimitiveComponent
function APSOCachingPreviewActor:RegisterAssetTypePreviewComponent(AssetType, InComponent) end
---@param Primitive UPrimitiveComponent
---@param Asset UObject
function APSOCachingPreviewActor:ActivateStaticMeshPreview(Primitive, Asset) end
---@param Primitive UPrimitiveComponent
---@param Asset UObject
function APSOCachingPreviewActor:ActivateNiagaraSystemPreview(Primitive, Asset) end


---@class FPreviewAssetTypeData
---@field ActivateDelegate FPreviewAssetTypeDataActivateDelegate
---@field ResetDelegate FPreviewAssetTypeDataResetDelegate
local FPreviewAssetTypeData = {}



