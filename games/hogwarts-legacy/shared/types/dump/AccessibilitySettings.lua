---@meta

---@class APerWorldAccessibilitySettings : AActor
---@field HighContrastMPC UMaterialParameterCollection
---@field ExtraHighContrastMPC UMaterialParameterCollection
---@field CurrentTarget TWeakObjectPtr<AActor>
---@field OutlineTarget TWeakObjectPtr<AActor>
---@field TargetStencilValue int32
---@field PrimitiveStateBuckets TMap<TWeakObjectPtr<UPrimitiveComponent>, FHighContrastGameplayBucketPrimitiveState>
---@field MeshChangedActorMap TMap<TWeakObjectPtr<AActor>, uint32>
---@field SetBaseStencilValue int32
---@field LastSetTargetStencilValue int32
---@field LastFadeToBlackBlend float
---@field LastExtraValue float
---@field StateAlpha float
local APerWorldAccessibilitySettings = {}

---@param PrimitiveComponent UPrimitiveComponent
function APerWorldAccessibilitySettings:RemovePrimitiveFromHighContrastGameplayBuckets(PrimitiveComponent) end
---@param Actor AActor
function APerWorldAccessibilitySettings:RemoveActorFromHighContrastGameplayBuckets(Actor) end
---@param Actor AActor
---@param Bucket EHighContrastGameplayBucket
function APerWorldAccessibilitySettings:RemoveActorFromHighContrastGameplayBucket(Actor, Bucket) end
---@param PrimitiveComponent UPrimitiveComponent
---@param Bucket EHighContrastGameplayBucket
---@param bFound boolean
function APerWorldAccessibilitySettings:PrimitiveIsInHighContrastGameplayBucket(PrimitiveComponent, Bucket, bFound) end
---@param PrimitiveComponent UPrimitiveComponent
---@param Bucket EHighContrastGameplayBucket
function APerWorldAccessibilitySettings:AddPrimitiveToHighContrastGameplayBucket(PrimitiveComponent, Bucket) end
---@param Actor AActor
---@param Bucket EHighContrastGameplayBucket
function APerWorldAccessibilitySettings:AddActorToHighContrastGameplayBucket(Actor, Bucket) end
---@param Actor AActor
---@param Bucket EHighContrastGameplayBucket
---@param bFound boolean
function APerWorldAccessibilitySettings:ActorIsInHighContrastGameplayBucket(Actor, Bucket, bFound) end


---@class FHighContrastGameplayBucketPrimitiveState
---@field State UObject
---@field Bucket EHighContrastGameplayBucket
local FHighContrastGameplayBucketPrimitiveState = {}



---@class UAccessibilitySettings : UBlueprintFunctionLibrary
local UAccessibilitySettings = {}

---@param HighContrastMode EHighContrastMode
---@param bEnabled boolean
function UAccessibilitySettings:HighContrastModeEnabled(HighContrastMode, bEnabled) end
---@param HighContrastMode int32
function UAccessibilitySettings:GetHighContrastMode(HighContrastMode) end


---@class UHighContrastGameplayMarkupComponent : UActorComponent
local UHighContrastGameplayMarkupComponent = {}


