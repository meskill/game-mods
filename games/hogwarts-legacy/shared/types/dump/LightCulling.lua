---@meta

---@class ALightCullingSingleton : AActor
---@field BaseSettings ULightCullingSettings
---@field ExternalDisable TArray<TWeakObjectPtr<UObject>>
---@field bExternalConsoleDisable boolean
---@field CharacterLightingFeaturesOverride FCharacterLightingFeaturesSettingsOverride
---@field OverrideSettings ULightCullingSettings
---@field bEnabled boolean
---@field LightCulling FLightCulling
---@field CharacterLightingFeatures FCharacterLightingFeatures
---@field MobilityManager ULightMobilityManager
---@field bFirstUpdate boolean
local ALightCullingSingleton = {}

---@param light ULightComponent
---@param VolumetricScatteringIntensity float
function ALightCullingSingleton:SetVolumetricScatteringIntensity(light, VolumetricScatteringIntensity) end
---@param WorldContextObject UObject
---@param OverrideOwner UObject
---@param Lerp float
function ALightCullingSingleton:SetOverrideCharacterLightingFeaturesLerp(WorldContextObject, OverrideOwner, Lerp) end
---@param light ULightComponent
---@param Mobility EComponentMobility::Type
function ALightCullingSingleton:SetMobility(light, Mobility) end
---@param light ULightComponent
---@param MaxDrawDistance float
function ALightCullingSingleton:SetMaxDrawDistance(light, MaxDrawDistance) end
---@param light ULightComponent
---@param MaxDistanceFadeRange float
function ALightCullingSingleton:SetMaxDistanceFadeRange(light, MaxDistanceFadeRange) end
---@param light ULocalLightComponent
---@param ShadowSlopeBias float
function ALightCullingSingleton:SetLightShadowSlopeBias(light, ShadowSlopeBias) end
---@param light ULocalLightComponent
---@param ShadowSharpen float
function ALightCullingSingleton:SetLightShadowSharpen(light, ShadowSharpen) end
---@param light ULocalLightComponent
---@param ShadowResolutionScale float
function ALightCullingSingleton:SetLightShadowResolutionScale(light, ShadowResolutionScale) end
---@param light ULocalLightComponent
---@param ShadowBias float
function ALightCullingSingleton:SetLightShadowBias(light, ShadowBias) end
---@param light ULightComponent
---@param ContactShadowLength float
function ALightCullingSingleton:SetContactShadowLength(light, ContactShadowLength) end
---@param light ULightComponent
---@param bCastVolumetricShadow boolean
function ALightCullingSingleton:SetCastVolumetricShadow(light, bCastVolumetricShadow) end
---@param light ULightComponent
---@param ShadowQualityLevel EShadowQualityLevels
function ALightCullingSingleton:SetCastShadowsThreshold(light, ShadowQualityLevel) end
---@param light ULightComponent
---@param bCastShadows boolean
function ALightCullingSingleton:SetCastDynamicShadows(light, bCastShadows) end
---@param WorldContextObject UObject
---@param Settings ULightCullingSettings
function ALightCullingSingleton:PushSettings(WorldContextObject, Settings) end
---@param WorldContextObject UObject
---@param Settings ULightCullingSettings
function ALightCullingSingleton:PopSettings(WorldContextObject, Settings) end
---@param WorldContextObject UObject
---@param OverrideOwner UObject
---@param TargetSettings FCharacterLightingFeaturesSettings
---@param Lerp float
function ALightCullingSingleton:OverrideCharacterLightingFeatures(WorldContextObject, OverrideOwner, TargetSettings, Lerp) end
---@param Actor AActor
---@param bRestoreMobility boolean
---@return boolean
function ALightCullingSingleton:LightCullingUnmanageLightsMobility(Actor, bRestoreMobility) end
---@param light ULocalLightComponent
---@param bRestoreMobility boolean
---@return boolean
function ALightCullingSingleton:LightCullingUnmanageLightMobility(light, bRestoreMobility) end
---@param Character ACharacter
---@param bRemoved boolean
function ALightCullingSingleton:LightCullingRemoveIgnoreCharacter(Character, bRemoved) end
---@param Actor AActor
---@return boolean
function ALightCullingSingleton:LightCullingManageLightsMobility(Actor) end
---@param light ULocalLightComponent
---@return boolean
function ALightCullingSingleton:LightCullingManageLightMobility(light) end
---@param light ULocalLightComponent
---@return boolean
function ALightCullingSingleton:LightCullingIsManagingLightMobility(light) end
---@param light ULightComponent
---@param bIsIgnoredLight boolean
function ALightCullingSingleton:LightCullingIsIgnoredLight(light, bIsIgnoredLight) end
---@param Character ACharacter
---@param bIsIgnoredCharacter boolean
function ALightCullingSingleton:LightCullingIsIgnoreCharacter(Character, bIsIgnoredCharacter) end
---@param Lights TArray<ULightComponent>
---@param bIgnoreLight boolean
function ALightCullingSingleton:LightCullingIgnoreLights(Lights, bIgnoreLight) end
---@param light ULightComponent
---@param bIgnoreLight boolean
function ALightCullingSingleton:LightCullingIgnoreLight(light, bIgnoreLight) end
---@param Character ACharacter
---@param bAdded boolean
function ALightCullingSingleton:LightCullingAddIgnoreCharacter(Character, bAdded) end
---@param light ULightComponent
---@param status ELightCullingLightStatus
function ALightCullingSingleton:GetLightStatus(light, status) end
---@param WorldContextObject UObject
---@param Enabled boolean
function ALightCullingSingleton:GetEnabled(WorldContextObject, Enabled) end
---@param WorldContextObject UObject
---@param Settings ULightCullingSettings
function ALightCullingSingleton:GetCurrentSettings(WorldContextObject, Settings) end
---@param light ULightComponent
---@param ShadowQualityLevel EShadowQualityLevels
function ALightCullingSingleton:GetCastShadowsThreshold(light, ShadowQualityLevel) end
---@param WorldContextObject UObject
---@param CharacterLightingFeaturesSettings FCharacterLightingFeaturesSettings
function ALightCullingSingleton:GetBaseCharacterLightingFeatures(WorldContextObject, CharacterLightingFeaturesSettings) end
---@param light ULightComponent
function ALightCullingSingleton:Flush(light) end
---@param WorldContextObject UObject
function ALightCullingSingleton:DisableStart(WorldContextObject) end
---@param WorldContextObject UObject
function ALightCullingSingleton:DisableEnd(WorldContextObject) end
---@param WorldContextObject UObject
---@param OverrideOwner UObject
function ALightCullingSingleton:ClearOverrideCharacterLightingFeatures(WorldContextObject, OverrideOwner) end


---@class ALightStatsSingleton : AActor
local ALightStatsSingleton = {}


---@class APointLightWithCullingSettings : Alight
---@field PointLightComponent UPointLightComponentWithCullingSettings
local APointLightWithCullingSettings = {}

function APointLightWithCullingSettings:Copy() end


---@class ARectLightWithCullingSettings : Alight
---@field RectLightComponent URectLightComponentWithCullingSettings
local ARectLightWithCullingSettings = {}

function ARectLightWithCullingSettings:Copy() end


---@class ASpotLightWithCullingSettings : Alight
---@field SpotLightComponent USpotLightComponentWithCullingSettings
local ASpotLightWithCullingSettings = {}

function ASpotLightWithCullingSettings:Copy() end


---@class FCharacterLightingFeatures
---@field OPTIONS FCharacterLightingFeaturesOptions
---@field IgnoreCharacters TSet<TWeakObjectPtr<AActor>>
---@field PendingCharacters TArray<TWeakObjectPtr<AActor>>
---@field Characters TMap<TWeakObjectPtr<AActor>, FCharacterLightingFeaturesState>
local FCharacterLightingFeatures = {}



---@class FCharacterLightingFeaturesOptions
---@field bAutoAddDeleteCharacters boolean
---@field bAutoDetectCharacterChanges boolean
local FCharacterLightingFeaturesOptions = {}



---@class FCharacterLightingFeaturesSettings
---@field CharacterProjectedShadowsEndMeters float
---@field MaxCharacterProjectedShadows int32
---@field CapsuleShadowsEndMeters float
---@field MaxCharacterCapsuleShadows int32
---@field CharacterContactShadowsStartMeters float
---@field CharacterContactShadowsEndMeters float
---@field MaxCharacterContactShadows int32
---@field BlobShadowsEndMeters float
---@field MaxCharacterBlobShadows int32
---@field CharacterIndirectCapsuleShadowsEndMeters float
---@field CapsuleIndirectShadowMinVisibility float
---@field MaxCharacterIndirectCapsuleShadows int32
---@field CharacterLightChannelEndMeters float
---@field MaxCharactersInLightChannel int32
---@field CameraSetup FLightCullingCameraSetup
---@field bLimitCharacterProjectedShadows boolean
---@field bLimitCharacterCapsuleShadows boolean
---@field bLimitCharactersInLightChannel boolean
---@field bEnableCharacterIndirectCapsuleShadows boolean
---@field bLimitCharacterIndirectCapsuleShadows boolean
---@field bLimitCharacterContactShadows boolean
---@field bUseCharacterContactShadowsStart boolean
---@field bUseCharacterContactShadowsEnd boolean
---@field bDisablePlayerContactShadows boolean
---@field bEnableCharacterBlobShadows boolean
---@field bLimitCharacterBlobShadows boolean
local FCharacterLightingFeaturesSettings = {}



---@class FCharacterLightingFeaturesSettingsOverride
---@field Owner TWeakObjectPtr<UObject>
---@field Settings FCharacterLightingFeaturesSettings
---@field Lerp float
local FCharacterLightingFeaturesSettingsOverride = {}



---@class FCharacterLightingFeaturesState
---@field Meshes TMap<TWeakObjectPtr<USkeletalMeshComponent>, FLightingFeaturesSkeletalMeshState>
local FCharacterLightingFeaturesState = {}



---@class FForceCapsuleShadowsSettings
---@field DynamicShadowEndDistanceMeters float
---@field CapsuleShadowStartDistanceMeters float
---@field CapsuleShadowEndDistanceMeters float
---@field CapsuleIndirectShadowStartDistanceMeters float
---@field CapsuleIndirectShadowEndDistanceMeters float
---@field CapsuleIndirectShadowMinVisibilityAtStart float
---@field CapsuleIndirectShadowMinVisibilityAtEnd float
---@field bControlDynamicShadow boolean
---@field bControlCapsuleShadow boolean
---@field bControlCapsuleIndirectShadow boolean
local FForceCapsuleShadowsSettings = {}



---@class FLightCulling
---@field Lights TMap<TWeakObjectPtr<ULocalLightComponent>, FLightCullingLight>
---@field IgnoreLights TArray<TWeakObjectPtr<ULocalLightComponent>>
local FLightCulling = {}



---@class FLightCullingCameraSetup
---@field PlayerDistanceBiasMeters float
local FLightCullingCameraSetup = {}



---@class FLightCullingCameraState
---@field Player AActor
local FLightCullingCameraState = {}



---@class FLightCullingLevelName
---@field Name FName
local FLightCullingLevelName = {}



---@class FLightCullingLight
---@field PhysicsParent FLightCullingLightPhysicsParent
local FLightCullingLight = {}



---@class FLightCullingLightPhysicsParent
---@field PhysicsParentPtr TWeakObjectPtr<UPrimitiveComponent>
local FLightCullingLightPhysicsParent = {}



---@class FLightCullingPerLevelSettings
---@field Level FLightCullingLevelName
---@field LevelPartialMatch FString
---@field Settings ULightCullingSettings
---@field bUseSubString boolean
local FLightCullingPerLevelSettings = {}



---@class FLightCullingPerLightAdvancedSettings
---@field bDisableMoveableCulling boolean
---@field bDisableTickInterfaceCulling boolean
local FLightCullingPerLightAdvancedSettings = {}



---@class FLightCullingPerLightFeatureSettings
---@field bDisableShadowCulling boolean
---@field bDisableVolumetricScatterCulling boolean
---@field bDisableVolumetricShadowCulling boolean
---@field bDisableContactShadowsCulling boolean
---@field bDisableTranslucentLightingCulling boolean
---@field bDisableVolumetricLightingCulling boolean
local FLightCullingPerLightFeatureSettings = {}



---@class FLightCullingPerLightSettings
---@field LightingFeatures FLightCullingPerLightFeatureSettings
---@field Advanced FLightCullingPerLightAdvancedSettings
---@field bDisableDistanceCullingOverride boolean
local FLightCullingPerLightSettings = {}



---@class FLightCullingSettingsStack
---@field Stack TArray<FLightCullingSettingsStackEntry>
local FLightCullingSettingsStack = {}



---@class FLightCullingSettingsStackEntry
---@field Owner TWeakObjectPtr<UObject>
---@field Settings TWeakObjectPtr<ULightCullingSettings>
local FLightCullingSettingsStackEntry = {}



---@class FLightCullingSettingsWorldStacks
---@field WorldMap TMap<TWeakObjectPtr<UWorld>, FLightCullingSettingsStack>
local FLightCullingSettingsWorldStacks = {}



---@class FLightingFeaturesSkeletalMeshState
local FLightingFeaturesSkeletalMeshState = {}


---@class FSimpleBlobShadowDecalComponentEntry
---@field bUseActorClass boolean
---@field ActorClass TSoftClassPtr<AActor>
---@field bIncludeActorSubclasses boolean
---@field bUseMovementComponentClass boolean
---@field MovementComponentClass TSoftClassPtr<UMovementComponent>
---@field bIncludeMovementComponentSubclasses boolean
---@field BlobShadowDecalComponentClass TSubclassOf<USimpleBlobShadowDecalComponent>
---@field OverrideDecalMaterial UMaterialInterface
local FSimpleBlobShadowDecalComponentEntry = {}



---@class FSimpleBlobShadowDecalComponentMapper
---@field Entries TArray<FSimpleBlobShadowDecalComponentEntry>
local FSimpleBlobShadowDecalComponentMapper = {}



---@class ILightCullingPerLightInterface : IInterface
local ILightCullingPerLightInterface = {}


---@class ILightTickInterface : IInterface
local ILightTickInterface = {}

---@param LightComponent ULightComponent
function ILightTickInterface:OnExitLightTickRange(LightComponent) end
---@param LightComponent ULightComponent
function ILightTickInterface:OnEnterLightTickRange(LightComponent) end


---@class UForceCapsuleShadowsComponent : UActorComponent
---@field Settings FForceCapsuleShadowsSettings
---@field bDisable boolean
local UForceCapsuleShadowsComponent = {}

---@param NewSettings FForceCapsuleShadowsSettings
function UForceCapsuleShadowsComponent:UpdateSettings(NewSettings) end
---@param bEnabled boolean
function UForceCapsuleShadowsComponent:Enabled(bEnabled) end
---@param bEnable boolean
function UForceCapsuleShadowsComponent:Enable(bEnable) end
---@param Owner AActor
---@param ExistingForceCapsuleShadowsComponent UForceCapsuleShadowsComponent
function UForceCapsuleShadowsComponent:DetachAndDestroyForceCapsuleShadows(Owner, ExistingForceCapsuleShadowsComponent) end
function UForceCapsuleShadowsComponent:DestroyForceCapsuleShadows() end
---@param Owner AActor
---@param NewSettings FForceCapsuleShadowsSettings
---@param NewForceCapsuleShadowsComponent UForceCapsuleShadowsComponent
---@param bTransient boolean
function UForceCapsuleShadowsComponent:CreateAndAttachForceCapsuleShadows(Owner, NewSettings, NewForceCapsuleShadowsComponent, bTransient) end


---@class ULightCullingLevelSettings : UDataAsset
---@field LevelDefaultSettings ULightCullingSettings
---@field LevelSettings TArray<FLightCullingPerLevelSettings>
---@field DisableLevels TArray<FLightCullingLevelName>
---@field DisableProceduralLevels TArray<FName>
---@field SimpleBlobShadowDecalComponentMapper FSimpleBlobShadowDecalComponentMapper
local ULightCullingLevelSettings = {}



---@class ULightCullingSettings : UDataAsset
---@field DistanceOverride ELightCullingDistanceOverride
---@field MaxDrawDistanceMeters float
---@field MaxDistanceFadeRangeMeters float
---@field AutoMaxDistanceFadeRangePercentage float
---@field SuspiciouslyLargeMaxDrawDistanceMeters float
---@field MovableShadowsStartDistanceMeters float
---@field LimitMovableShadowCastingLights int32
---@field NonMovableShadowsStartDistanceMeters float
---@field LimitNonMovableShadowCastingLights int32
---@field AffectVolumetricLightingStartDistanceMeters float
---@field LimitAffectVolumetricLightingLights int32
---@field VolumetricScatteringDistanceMeters float
---@field VolumetricScatteringFadeRangeMeters float
---@field LimitVolumetricScatteringLights int32
---@field VolumetricShadowStartDistanceMeters float
---@field LimitVolumetricShadowingLights int32
---@field AffectTranslucentLightingStartDistanceMeters float
---@field LimitAffectTranslucentLightingLights int32
---@field ContactShadowsStartDistanceMeters float
---@field LimitContactShadowingLights int32
---@field MoveableLightStartDistanceMeters float
---@field LimitMoveableLights int32
---@field TickingLightStartDistanceMeters float
---@field CharacterProjectedShadowsEndMeters float
---@field MaxCharacterProjectedShadows int32
---@field CapsuleShadowsEndMeters float
---@field MaxCharacterCapsuleShadows int32
---@field CharacterContactShadowsStartMeters float
---@field CharacterContactShadowsEndMeters float
---@field MaxCharacterContactShadows int32
---@field BlobShadowsEndMeters float
---@field MaxCharacterBlobShadows int32
---@field CharacterIndirectCapsuleShadowsEndMeters float
---@field CapsuleIndirectShadowMinVisibility float
---@field MaxCharacterIndirectCapsuleShadows int32
---@field CharacterLightChannelEndMeters float
---@field MaxCharactersInLightChannel int32
---@field CameraSetup FLightCullingCameraSetup
---@field DistanceCulledUpdateMarginMeters float
---@field bControlMovableShadowsStart boolean
---@field bControlNonMovableShadowsStart boolean
---@field bControlVolumetricIntensity boolean
---@field bControlVolumetricShadow boolean
---@field bControlAffectVolumetricLighting boolean
---@field bControlAffectTranslucentLighting boolean
---@field bControlContactShadows boolean
---@field bControlMoveable boolean
---@field bControlTicking boolean
---@field bAutoMaxDistanceFadeRangePercentage boolean
---@field bLimitMovableShadowCastingLights boolean
---@field bLimitNonMovableShadowCastingLights boolean
---@field bLimitVolumetricScatteringLights boolean
---@field bLimitVolumetricShadowingLights boolean
---@field bLimitAffectVolumetricLighting boolean
---@field bLimitAffectTranslucentLighting boolean
---@field bLimitContactShadowingLights boolean
---@field bLimitMoveableLights boolean
---@field bLimitCharacterProjectedShadows boolean
---@field bLimitCharacterCapsuleShadows boolean
---@field bLimitCharactersInLightChannel boolean
---@field bEnableCharacterIndirectCapsuleShadows boolean
---@field bLimitCharacterIndirectCapsuleShadows boolean
---@field bLimitCharacterContactShadows boolean
---@field bUseCharacterContactShadowsStart boolean
---@field bUseCharacterContactShadowsEnd boolean
---@field bDisablePlayerContactShadows boolean
---@field bEnableCharacterBlobShadows boolean
---@field bLimitCharacterBlobShadows boolean
---@field bEnableCharacterFadeOut boolean
---@field bUseTrueLightShapes boolean
local ULightCullingSettings = {}



---@class ULightMobilityManager : UObject
---@field World UWorld
---@field bAutoManageMobility boolean
local ULightMobilityManager = {}



---@class UPointLightComponentWithCullingSettings : UPointLightComponent
---@field LightCullingSettings FLightCullingPerLightSettings
local UPointLightComponentWithCullingSettings = {}



---@class URectLightComponentWithCullingSettings : URectLightComponent
---@field LightCullingSettings FLightCullingPerLightSettings
local URectLightComponentWithCullingSettings = {}



---@class USimpleBlobShadowDecalCharacterComponent : USimpleBlobShadowDecalComponent
local USimpleBlobShadowDecalCharacterComponent = {}


---@class USimpleBlobShadowDecalComponent : UDecalComponent
---@field Scale float
---@field ZTweak float
---@field MaxDrawDistance float
---@field InAirFadeDistanceStart float
---@field InAirFadeDistance float
---@field MinOpacityDistance float
---@field MinOpacity float
---@field MaxOpacityDistance float
---@field MaxOpacity float
---@field bUseBoundsCenter boolean
---@field DefaultDecalMaterial UMaterialInterface
---@field DecalMID UMaterialInstanceDynamic
---@field bEnabled boolean
local USimpleBlobShadowDecalComponent = {}



---@class USimpleBlobShadowDecalNoDrawComponent : USimpleBlobShadowDecalComponent
local USimpleBlobShadowDecalNoDrawComponent = {}


---@class USpotLightComponentWithCullingSettings : USpotLightComponent
---@field LightCullingSettings FLightCullingPerLightSettings
local USpotLightComponentWithCullingSettings = {}



