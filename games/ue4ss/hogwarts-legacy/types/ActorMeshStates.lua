---@meta

---@class FActorMeshSetupAutoDefinition : FActorMeshSetupDefinition
---@field bKeepProcessing boolean
---@field Tag FName
local FActorMeshSetupAutoDefinition = {}



---@class FActorMeshSetupDefinition
---@field Condition UActorMeshSetupMatch
---@field MeshSetups TArray<UActorMeshSetupProcess>
local FActorMeshSetupDefinition = {}



---@class FActorMeshSetupName
---@field Name FName
local FActorMeshSetupName = {}



---@class FActorMeshSetupNamedDefinition : FActorMeshSetupDefinition
---@field Name FName
local FActorMeshSetupNamedDefinition = {}



---@class UActorMeshSetupDefinitions : UDataAsset
---@field AutoDefinitions TArray<FActorMeshSetupAutoDefinition>
---@field NamedDefinitions TArray<FActorMeshSetupNamedDefinition>
local UActorMeshSetupDefinitions = {}



---@class UActorMeshSetupLibrary : UBlueprintFunctionLibrary
local UActorMeshSetupLibrary = {}

---@param MeshComponent UMeshComponent
function UActorMeshSetupLibrary:ActorMeshSetupRemoveMeshAlwaysIgnore(MeshComponent) end
---@param Actor AActor
---@param bIncludeChildren boolean
function UActorMeshSetupLibrary:ActorMeshSetupRemoveAlwaysIgnore(Actor, bIncludeChildren) end
---@param Actor AActor
---@param bIncludeChildren boolean
---@return boolean
function UActorMeshSetupLibrary:ActorMeshSetupProcessRefresh(Actor, bIncludeChildren) end
---@param Actor AActor
---@param MeshSetup FActorMeshSetupName
---@param bIncludeChildren boolean
---@return boolean
function UActorMeshSetupLibrary:ActorMeshSetupProcessNamed(Actor, MeshSetup, bIncludeChildren) end
---@param Actor AActor
---@param bIncludeChildren boolean
---@return boolean
function UActorMeshSetupLibrary:ActorMeshSetupProcessAuto(Actor, bIncludeChildren) end
---@param MeshComponent UMeshComponent
function UActorMeshSetupLibrary:ActorMeshSetupAlwaysIgnoreMesh(MeshComponent) end
---@param Actor AActor
---@param bIncludeChildren boolean
function UActorMeshSetupLibrary:ActorMeshSetupAlwaysIgnore(Actor, bIncludeChildren) end


---@class UActorMeshSetupMatch : UObject
local UActorMeshSetupMatch = {}


---@class UActorMeshSetupMatchActorClass : UActorMeshSetupMatch
---@field ActorClass TSoftClassPtr<AActor>
---@field bIncludeSubclasses boolean
local UActorMeshSetupMatchActorClass = {}



---@class UActorMeshSetupMatchActorClasses : UActorMeshSetupMatch
---@field ActorClasses TArray<TSoftClassPtr<AActor>>
---@field bIncludeSubclasses boolean
local UActorMeshSetupMatchActorClasses = {}



---@class UActorMeshSetupMatchActorHasAnyTag : UActorMeshSetupMatchActorTags
local UActorMeshSetupMatchActorHasAnyTag = {}


---@class UActorMeshSetupMatchActorHasTag : UActorMeshSetupMatchActorTag
local UActorMeshSetupMatchActorHasTag = {}


---@class UActorMeshSetupMatchActorNoTag : UActorMeshSetupMatchActorTag
local UActorMeshSetupMatchActorNoTag = {}


---@class UActorMeshSetupMatchActorTag : UActorMeshSetupMatch
---@field ActorTag FName
local UActorMeshSetupMatchActorTag = {}



---@class UActorMeshSetupMatchActorTags : UActorMeshSetupMatch
---@field ActorTags TArray<FName>
local UActorMeshSetupMatchActorTags = {}



---@class UActorMeshSetupMatchAnd : UActorMeshSetupMatch
---@field AND TArray<UActorMeshSetupMatch>
local UActorMeshSetupMatchAnd = {}



---@class UActorMeshSetupMatchCharacter : UActorMeshSetupMatch
local UActorMeshSetupMatchCharacter = {}


---@class UActorMeshSetupMatchFalse : UActorMeshSetupMatch
local UActorMeshSetupMatchFalse = {}


---@class UActorMeshSetupMatchNot : UActorMeshSetupMatch
---@field Not UActorMeshSetupMatch
local UActorMeshSetupMatchNot = {}



---@class UActorMeshSetupMatchOr : UActorMeshSetupMatch
---@field OR TArray<UActorMeshSetupMatch>
local UActorMeshSetupMatchOr = {}



---@class UActorMeshSetupMatchPlayer : UActorMeshSetupMatch
local UActorMeshSetupMatchPlayer = {}


---@class UActorMeshSetupMatchTrue : UActorMeshSetupMatch
local UActorMeshSetupMatchTrue = {}


---@class UActorMeshSetupMeshFilter : UObject
local UActorMeshSetupMeshFilter = {}


---@class UActorMeshSetupMeshFilterAnd : UActorMeshSetupMeshFilter
---@field MeshFilters TArray<UActorMeshSetupMeshFilter>
local UActorMeshSetupMeshFilterAnd = {}



---@class UActorMeshSetupMeshFilterAsset : UDataAsset
---@field MeshFilter UActorMeshSetupMeshFilter
local UActorMeshSetupMeshFilterAsset = {}



---@class UActorMeshSetupMeshFilterHasSkeletalMeshAsset : UActorMeshSetupMeshFilter
---@field MeshAsset TSoftObjectPtr<USkeletalMesh>
local UActorMeshSetupMeshFilterHasSkeletalMeshAsset = {}



---@class UActorMeshSetupMeshFilterHasStaticMeshAsset : UActorMeshSetupMeshFilter
---@field MeshAsset TSoftObjectPtr<UStaticMesh>
local UActorMeshSetupMeshFilterHasStaticMeshAsset = {}



---@class UActorMeshSetupMeshFilterHasTag : UActorMeshSetupMeshFilter
---@field ComponentTag FName
local UActorMeshSetupMeshFilterHasTag = {}



---@class UActorMeshSetupMeshFilterIsComponentType : UActorMeshSetupMeshFilter
---@field MeshComponentType TSoftClassPtr<UMeshComponent>
local UActorMeshSetupMeshFilterIsComponentType = {}



---@class UActorMeshSetupMeshFilterNot : UActorMeshSetupMeshFilter
---@field MeshFilter UActorMeshSetupMeshFilter
local UActorMeshSetupMeshFilterNot = {}



---@class UActorMeshSetupMeshFilterNotHasTag : UActorMeshSetupMeshFilter
---@field ComponentTag FName
local UActorMeshSetupMeshFilterNotHasTag = {}



---@class UActorMeshSetupMeshFilterOr : UActorMeshSetupMeshFilter
---@field MeshFilters TArray<UActorMeshSetupMeshFilter>
local UActorMeshSetupMeshFilterOr = {}



---@class UActorMeshSetupMeshFilterStartsWith : UActorMeshSetupMeshFilter
---@field STARTSWITH FString
---@field SearchCase ESearchCase::Type
local UActorMeshSetupMeshFilterStartsWith = {}



---@class UActorMeshSetupMeshFilterUseAsset : UActorMeshSetupMeshFilter
---@field FilterAsset UActorMeshSetupMeshFilterAsset
local UActorMeshSetupMeshFilterUseAsset = {}



---@class UActorMeshSetupProcess : UObject
local UActorMeshSetupProcess = {}


---@class UActorMeshSetupProcessAddTag : UActorMeshSetupProcess
---@field ActorTag FName
local UActorMeshSetupProcessAddTag = {}



---@class UActorMeshSetupProcessBoundsScale : UActorMeshSetupProcessFiltered
---@field BoundsScale float
local UActorMeshSetupProcessBoundsScale = {}



---@class UActorMeshSetupProcessCapsuleShadows : UActorMeshSetupProcessFiltered
---@field bCastCapsuleDirectShadow boolean
---@field bCastCapsuleIndirectShadow boolean
---@field CapsuleIndirectShadowMinVisibility float
---@field bCanUsePhysicsCapsulesToShadow boolean
---@field bForcePhysicsCapsulesToShadow boolean
---@field bOverride_bCastCapsuleDirectShadow boolean
---@field bOverride_bCastCapsuleIndirectShadow boolean
---@field bOverride_CapsuleIndirectShadowMinVisibility boolean
local UActorMeshSetupProcessCapsuleShadows = {}



---@class UActorMeshSetupProcessCastShadow : UActorMeshSetupProcessFiltered
---@field bCastShadow boolean
local UActorMeshSetupProcessCastShadow = {}



---@class UActorMeshSetupProcessContactShadow : UActorMeshSetupProcessFiltered
---@field bCastContactShadow boolean
---@field NoContactShadowTag FName
local UActorMeshSetupProcessContactShadow = {}



---@class UActorMeshSetupProcessDitheredAlpha : UActorMeshSetupProcessFiltered
---@field DitheredAlpha float
local UActorMeshSetupProcessDitheredAlpha = {}



---@class UActorMeshSetupProcessDynamicShadow : UActorMeshSetupProcessFiltered
---@field bCastDynamicShadow boolean
local UActorMeshSetupProcessDynamicShadow = {}



---@class UActorMeshSetupProcessFiltered : UActorMeshSetupProcess
---@field MeshFilter UActorMeshSetupMeshFilter
local UActorMeshSetupProcessFiltered = {}



---@class UActorMeshSetupProcessHiddenShadow : UActorMeshSetupProcessFiltered
---@field bCastHiddenShadow boolean
local UActorMeshSetupProcessHiddenShadow = {}



---@class UActorMeshSetupProcessIgnoreLightLeaking : UActorMeshSetupProcessFiltered
---@field bIgnoreLightLeakingCorrection boolean
local UActorMeshSetupProcessIgnoreLightLeaking = {}



---@class UActorMeshSetupProcessLightingChannelOne : UActorMeshSetupProcessFiltered
---@field bLightingChannelOne boolean
local UActorMeshSetupProcessLightingChannelOne = {}



---@class UActorMeshSetupProcessLightingChannelTwo : UActorMeshSetupProcessFiltered
---@field bLightingChannelTwo boolean
local UActorMeshSetupProcessLightingChannelTwo = {}



---@class UActorMeshSetupProcessLightingChannelZero : UActorMeshSetupProcessFiltered
---@field bLightingChannelZero boolean
local UActorMeshSetupProcessLightingChannelZero = {}



---@class UActorMeshSetupProcessLightingChannels : UActorMeshSetupProcessFiltered
---@field LightingChannels FLightingChannels
local UActorMeshSetupProcessLightingChannels = {}



---@class UActorMeshSetupProcessReceivesDecals : UActorMeshSetupProcessFiltered
---@field bReceivesDecals boolean
local UActorMeshSetupProcessReceivesDecals = {}



---@class UActorMeshSetupProcessReceivesWeatherDecals : UActorMeshSetupProcessFiltered
---@field bReceivesWeatherDecals boolean
local UActorMeshSetupProcessReceivesWeatherDecals = {}



---@class UActorMeshSetupProcessRemoveTag : UActorMeshSetupProcess
---@field ActorTag FName
local UActorMeshSetupProcessRemoveTag = {}



---@class UActorMeshSetupProcessRenderCustomDepth : UActorMeshSetupProcessFiltered
---@field bRenderCustomDepth boolean
local UActorMeshSetupProcessRenderCustomDepth = {}



---@class UActorMeshSetupProcessSelfShadowOnly : UActorMeshSetupProcessFiltered
---@field bSelfShadowOnly boolean
local UActorMeshSetupProcessSelfShadowOnly = {}



---@class UActorMeshSetupProcessSetupCharacterShadows : UActorMeshSetupProcessCapsuleShadows
---@field bCastShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastStaticShadow boolean
---@field bCastContactShadow boolean
---@field NoContactShadowTag FName
---@field bOverride_bCastShadow boolean
---@field bOverride_bCastDynamicShadow boolean
---@field bOverride_bCastStaticShadow boolean
---@field bOverride_bCastContactShadow boolean
local UActorMeshSetupProcessSetupCharacterShadows = {}



---@class UActorMeshSetupProcessShadowAsTwoSided : UActorMeshSetupProcessFiltered
---@field bCastShadowAsTwoSided boolean
local UActorMeshSetupProcessShadowAsTwoSided = {}



---@class UActorMeshSetupProcessShadows : UActorMeshSetupProcessFiltered
---@field bCastShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastStaticShadow boolean
---@field bCastContactShadow boolean
---@field NoContactShadowTag FName
---@field bOverride_bCastShadow boolean
---@field bOverride_bCastDynamicShadow boolean
---@field bOverride_bCastStaticShadow boolean
---@field bOverride_bCastContactShadow boolean
local UActorMeshSetupProcessShadows = {}



---@class UActorMeshSetupProcessStaticShadow : UActorMeshSetupProcessFiltered
---@field bCastStaticShadow boolean
local UActorMeshSetupProcessStaticShadow = {}



---@class UActorMeshSetupProcessTranslucencySortDistanceOffset : UActorMeshSetupProcessFiltered
---@field TranslucencySortDistanceOffset float
local UActorMeshSetupProcessTranslucencySortDistanceOffset = {}



---@class UActorMeshSetupProcessTranslucencySortPriority : UActorMeshSetupProcessFiltered
---@field TranslucencySortPriority int32
local UActorMeshSetupProcessTranslucencySortPriority = {}



---@class UActorMeshSetupProcessTreatAsBackgroundForOcclusion : UActorMeshSetupProcessFiltered
---@field bTreatAsBackgroundForOcclusion boolean
local UActorMeshSetupProcessTreatAsBackgroundForOcclusion = {}



---@class UActorMeshSetupProcessUseAsOccluder : UActorMeshSetupProcessFiltered
---@field bUseAsOccluder boolean
local UActorMeshSetupProcessUseAsOccluder = {}



