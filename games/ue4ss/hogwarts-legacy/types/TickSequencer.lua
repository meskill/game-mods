---@meta

---@class ATickSequencerSingleton : AActor
---@field BucketSetup UTickSequencerBucketSetup
---@field PrePhysicsBuckets UTickSequencerUpdateComponent
---@field DuringPhysicsBuckets UTickSequencerUpdateComponent
---@field PostPhysicsBuckets UTickSequencerUpdateComponent
---@field PostUpdateWorkBuckets UTickSequencerUpdateComponent
---@field PreActorTickBuckets UTickSequencerUpdateComponentDelegateUpdate
---@field PostActorTickBuckets UTickSequencerUpdateComponentDelegateUpdate
---@field DynamicBuckets FTickSequencerUpdateBucketList
---@field DynamicBucketGroupStack FDynamicBucketGroupStack
---@field LastGetExtraBucketsFrame uint32
---@field CachedDynamicBucketGroup ETickSequencerGroup
---@field bUseExternalPostActorTick boolean
---@field ManualTickFrame uint32
local ATickSequencerSingleton = {}

function ATickSequencerSingleton:ForceTick() end


---@class FDynamicBucketGroupStack
---@field Stack TArray<FDynamicBucketGroupStackEntry>
local FDynamicBucketGroupStack = {}



---@class FDynamicBucketGroupStackEntry
---@field Owner TWeakObjectPtr<UObject>
---@field Group ETickSequencerGroup
local FDynamicBucketGroupStackEntry = {}



---@class FTickSequencerBucketDelegate
---@field OPTIONS FTickSequencerBucketDelegateOptions
local FTickSequencerBucketDelegate = {}



---@class FTickSequencerBucketDelegateOptions
---@field bTickWhenPaused boolean
---@field bSuspend boolean
---@field bTickInEditor boolean
---@field bTickOnlyInEditor boolean
local FTickSequencerBucketDelegateOptions = {}



---@class FTickSequencerGroupBucket
---@field Bucket FName
---@field Delegates TArray<FTickSequencerBucketDelegate>
local FTickSequencerGroupBucket = {}



---@class FTickSequencerUpdateBucketList
---@field Buckets TArray<FTickSequencerGroupBucket>
local FTickSequencerUpdateBucketList = {}



---@class UTickSequencerBucketSetup : UDataAsset
---@field PreActorTickBuckets TArray<FName>
---@field PrePhysicsBuckets TArray<FName>
---@field DuringPhysicsBuckets TArray<FName>
---@field PostPhysicsBuckets TArray<FName>
---@field PostUpdateWorkBuckets TArray<FName>
---@field PostActorTickBuckets TArray<FName>
---@field DynamicBuckets TArray<FName>
local UTickSequencerBucketSetup = {}



---@class UTickSequencerUpdateComponent : UActorComponent
---@field Buckets FTickSequencerUpdateBucketList
local UTickSequencerUpdateComponent = {}



---@class UTickSequencerUpdateComponentDelegateUpdate : UTickSequencerUpdateComponent
local UTickSequencerUpdateComponentDelegateUpdate = {}


---@class UTickSequencerUpdateComponentDuringPhysics : UTickSequencerUpdateComponent
local UTickSequencerUpdateComponentDuringPhysics = {}


---@class UTickSequencerUpdateComponentPostActorTickUpdate : UTickSequencerUpdateComponentDelegateUpdate
local UTickSequencerUpdateComponentPostActorTickUpdate = {}


---@class UTickSequencerUpdateComponentPostPhysics : UTickSequencerUpdateComponent
local UTickSequencerUpdateComponentPostPhysics = {}


---@class UTickSequencerUpdateComponentPostUpdateWork : UTickSequencerUpdateComponent
local UTickSequencerUpdateComponentPostUpdateWork = {}


---@class UTickSequencerUpdateComponentPreActorTickUpdate : UTickSequencerUpdateComponentDelegateUpdate
local UTickSequencerUpdateComponentPreActorTickUpdate = {}


---@class UTickSequencerUpdateComponentPrePhysics : UTickSequencerUpdateComponent
local UTickSequencerUpdateComponentPrePhysics = {}


