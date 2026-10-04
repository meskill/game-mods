---@meta

---@class AAnimationArchitect_Character : ACharacter
---@field AnimationArchitectComponent UAnimationArchitectComponent
local AAnimationArchitect_Character = {}

---@return UAnimationArchitectComponent
function AAnimationArchitect_Character:GetAnimationArchitectComponent() end
---@param InAnimTagContainer FGameplayTagContainer
---@param assets TArray<UObject>
---@return boolean
function AAnimationArchitect_Character:FindArchitectAssets(InAnimTagContainer, assets) end
---@param InAssetTypeTagContainer FGameplayTagContainer
---@param InTagContainer FGameplayTagContainer
---@param OutAsset UObject
---@param bForceFirstOnly boolean
function AAnimationArchitect_Character:FindArchitectAssetFromMonolythicAsset(InAssetTypeTagContainer, InTagContainer, OutAsset, bForceFirstOnly) end
---@param InAnimTagContainer FGameplayTagContainer
---@param OutAsset UObject
---@param bForceFirstOnly boolean
function AAnimationArchitect_Character:FindArchitectAsset(InAnimTagContainer, OutAsset, bForceFirstOnly) end
---@param InGamepayTag FGameplayTag
function AAnimationArchitect_Character:AddInteractionArchitectGameplayTag(InGamepayTag) end
---@param InGameplayTag FGameplayTag
function AAnimationArchitect_Character:AddAnimationArchitectGameplayTag(InGameplayTag) end


---@class APreloadArchitectHUD : AHUD
local APreloadArchitectHUD = {}

function APreloadArchitectHUD:TogglePreloadArchitectHUD() end


---@class FAnimationArchitectAsset_AssetProxy : FBaseArchitectAsset_AssetProxy
---@field AnimationAsset UAnimationAsset
---@field Probability float
local FAnimationArchitectAsset_AssetProxy = {}



---@class FAnimationArchitectAsset_Connection : FBaseArchitectAsset_Connection
---@field GameplayTags FGameplayTagContainer
---@field AssetProxies TArray<FAnimationArchitectAsset_AssetProxy>
local FAnimationArchitectAsset_Connection = {}



---@class FBaseArchitectAsset_AssetProxy
---@field AssetName FName
---@field ExternalName FName
local FBaseArchitectAsset_AssetProxy = {}



---@class FBaseArchitectAsset_Connection
local FBaseArchitectAsset_Connection = {}


---@class FBaseArchitectAsset_SoftDependencyContainer
---@field Category FName
---@field AssetNames TArray<FName>
local FBaseArchitectAsset_SoftDependencyContainer = {}



---@class FBaseArchitectCandidate
local FBaseArchitectCandidate = {}


---@class FBaseArchitectMonolithicAsset_AssetProxy
---@field AssetName FName
---@field Probability float
local FBaseArchitectMonolithicAsset_AssetProxy = {}



---@class FBaseArchitectMonolithicAsset_Class
---@field Categories TArray<FName>
---@field ConnectionArray TArray<FBaseArchitectMonolithicAsset_Connection>
local FBaseArchitectMonolithicAsset_Class = {}



---@class FBaseArchitectMonolithicAsset_Connection : FBaseArchitectAsset_Connection
---@field GameplayTags FGameplayTagContainer
---@field AssetProxies TArray<FBaseArchitectMonolithicAsset_AssetProxy>
local FBaseArchitectMonolithicAsset_Connection = {}



---@class FBaseArchitectMonolithicAsset_DefaultKeyOrder
---@field DefaultKeyOrder TArray<FGameplayTag>
local FBaseArchitectMonolithicAsset_DefaultKeyOrder = {}



---@class FBaseArchitectTransition
---@field EndState TWeakObjectPtr<UBaseArchitectState>
---@field TransitionAnim UAnimationAsset
local FBaseArchitectTransition = {}



---@class FInteractionArchitectAsset_AssetProxy : FBaseArchitectAsset_AssetProxy
---@field GeneratedClass UClass
---@field Probability float
local FInteractionArchitectAsset_AssetProxy = {}



---@class FInteractionArchitectAsset_Connection : FBaseArchitectAsset_Connection
---@field KeyValueGroups TArray<FInteractionArchitectAsset_KeyValueGroup>
---@field AssetProxies TArray<FInteractionArchitectAsset_AssetProxy>
---@field bIsAdditive boolean
local FInteractionArchitectAsset_Connection = {}



---@class FInteractionArchitectAsset_KeyValueGroup
---@field Asset UBaseArchitectAsset
---@field GameplayTags FGameplayTagContainer
local FInteractionArchitectAsset_KeyValueGroup = {}



---@class FObjectArchitectAsset_AssetProxy : FBaseArchitectAsset_AssetProxy
---@field ObjectAsset UObject
---@field Probability float
local FObjectArchitectAsset_AssetProxy = {}



---@class FObjectArchitectAsset_Connection : FBaseArchitectAsset_Connection
---@field GameplayTags FGameplayTagContainer
---@field AssetProxies TArray<FObjectArchitectAsset_AssetProxy>
local FObjectArchitectAsset_Connection = {}



---@class FPreLoadAssetArchitectAsset_AssetProxy : FBaseArchitectAsset_AssetProxy
---@field ObjectAsset UObject
---@field Probability float
local FPreLoadAssetArchitectAsset_AssetProxy = {}



---@class FPreLoadAssetArchitectAsset_Connection : FBaseArchitectAsset_Connection
---@field GameplayTags FGameplayTagContainer
---@field AssetProxies TArray<FPreLoadAssetArchitectAsset_AssetProxy>
local FPreLoadAssetArchitectAsset_Connection = {}



---@class FPreloadArchitectHUDStyle : FSlateWidgetStyle
---@field WorldTextStyle FTextBlockStyle
---@field LevelTextStyle FTextBlockStyle
---@field LoadedAssetTextStyle FTextBlockStyle
---@field LoadingAssetTextStyle FTextBlockStyle
---@field TreeRowStyle FTableRowStyle
---@field HUDMargin FMargin
---@field TreeMargin FMargin
local FPreloadArchitectHUDStyle = {}



---@class FStationArchitectAsset_AssetProxy : FBaseArchitectAsset_AssetProxy
---@field StationAsset UObject
---@field Probability float
local FStationArchitectAsset_AssetProxy = {}



---@class FStationArchitectAsset_Connection : FBaseArchitectAsset_Connection
---@field GameplayTags FGameplayTagContainer
---@field AssetProxies TArray<FStationArchitectAsset_AssetProxy>
local FStationArchitectAsset_Connection = {}



---@class IAnimationArchitect_ActorInterface : IInterface
local IAnimationArchitect_ActorInterface = {}

---@return UAnimationArchitectComponent
function IAnimationArchitect_ActorInterface:GetAnimationArchitectComponent() end
---@param InAnimTagContainer FGameplayTagContainer
---@param OutSceneRig UObject
function IAnimationArchitect_ActorInterface:FindSceneRigAsset(InAnimTagContainer, OutSceneRig) end
---@param InTagContainer FGameplayTagContainer
---@param assets TArray<UObject>
---@return boolean
function IAnimationArchitect_ActorInterface:FindArchitectAssets(InTagContainer, assets) end
---@param InAssetTypeTagContainer FGameplayTagContainer
---@param InTagContainer FGameplayTagContainer
---@param OutAsset UObject
---@param bForceFirstOnly boolean
function IAnimationArchitect_ActorInterface:FindArchitectAssetFromMonolythicAsset(InAssetTypeTagContainer, InTagContainer, OutAsset, bForceFirstOnly) end
---@param InAnimTagContainer FGameplayTagContainer
---@param OutAsset UObject
---@param bForceFirstOnly boolean
function IAnimationArchitect_ActorInterface:FindArchitectAsset(InAnimTagContainer, OutAsset, bForceFirstOnly) end
---@param InGameplayTag FGameplayTag
function IAnimationArchitect_ActorInterface:AddAnimationArchitectGamplayTag(InGameplayTag) end
---@param InArchitectAsset UAnimationArchitectAsset
function IAnimationArchitect_ActorInterface:AddAnimationArchitectAsset(InArchitectAsset) end


---@class IAnimationArchitect_ComponentOwnerInterface : IInterface
local IAnimationArchitect_ComponentOwnerInterface = {}


---@class IAnimationArchitect_TagProviderInterface : IInterface
local IAnimationArchitect_TagProviderInterface = {}


---@class IPreLoadAssetInterface : IInterface
local IPreLoadAssetInterface = {}


---@class UAAFilter_AnimationLength : UBaseArchitectFilter
---@field MaxAnimationLength float
local UAAFilter_AnimationLength = {}



---@class UAnimTag_Direct : UAnimationArchitectTagProvider
---@field Tags FGameplayTagContainer
local UAnimTag_Direct = {}



---@class UAnimationArchitectAsset : UBaseArchitectAsset
---@field ConnectionArray TArray<FAnimationArchitectAsset_Connection>
---@field ConnectionsCluster UAnimationArcitectAsset_ConnectionsCluster
local UAnimationArchitectAsset = {}



---@class UAnimationArchitectComponent : UActorComponent
---@field AssetType ArchitectType
---@field HardAnimationArchitectAssets TArray<UAnimationArchitectAsset>
---@field TempAnimationArchitectAsset UAnimationArchitectAsset
---@field HardStationArchitectAssets TArray<UStationArchitectAsset>
---@field HardStationArchitectSceneRigAssets TArray<UStationArchitectAsset>
---@field HardObjectArchitectAssets TArray<UObjectArchitectAsset>
---@field HardInteractionAssetMap TMap<EInteractionProject, UInteractionArchitectAsset>
---@field AnimationArchitectGameplayTags FGameplayTagContainer
---@field AnimationArchitectPersistentGamePlayTags FGameplayTagContainer
---@field AnimationTagProviders TArray<UAnimationArchitectTagProvider>
---@field InteractionArchitectGameplayTags FGameplayTagContainer
---@field InteractionArchitectPersistentGamePlayTags FGameplayTagContainer
---@field StationArchitectGamePlayTags FGameplayTagContainer
---@field StationArchitectSceneRigTags FGameplayTagContainer
---@field ObjectArchitectGamePlayTags FGameplayTagContainer
---@field AnimationArchitectAssetTagContainer FGameplayTagContainer
---@field InteractionReactionAssetTagContainer FGameplayTagContainer
---@field DynamicAnimationArchitectAssets TArray<UAnimationArchitectAsset>
---@field AnimationArchitectTagsChangedDelegate FAnimationArchitectComponentAnimationArchitectTagsChangedDelegate
---@field InteractionArchitectTagsChangedDelegate FAnimationArchitectComponentInteractionArchitectTagsChangedDelegate
---@field StationArchitectTagsChangedDelegate FAnimationArchitectComponentStationArchitectTagsChangedDelegate
---@field ObjectArchitectTagsChangedDelegate FAnimationArchitectComponentObjectArchitectTagsChangedDelegate
local UAnimationArchitectComponent = {}

---@param InGameplayTag FGameplayTag
function UAnimationArchitectComponent:RemoveObjectArchitectGameplayTag(InGameplayTag) end
---@param InGameplayTag FGameplayTag
function UAnimationArchitectComponent:RemoveInteractionArchitectGameplayTag(InGameplayTag) end
---@param InGameplayTag FGameplayTag
function UAnimationArchitectComponent:RemoveAnimationArchitectGameplayTag(InGameplayTag) end
---@param InGameplayTag FGameplayTag
---@return boolean
function UAnimationArchitectComponent:InteractionArchitectTagContainerHasTag(InGameplayTag) end
---@param InGameplayTagContainer FGameplayTagContainer
---@return boolean
function UAnimationArchitectComponent:InteractionArchitectTagContainerHasAny(InGameplayTagContainer) end
---@param InGameplayTag FGameplayTag
function UAnimationArchitectComponent:AddObjectArchitectGameplayTag(InGameplayTag) end
---@param InGameplayTags FGameplayTagContainer
function UAnimationArchitectComponent:AddInteractionArchitectPersistentGameplayTags(InGameplayTags) end
---@param InGameplayTag FGameplayTag
function UAnimationArchitectComponent:AddInteractionArchitectGameplayTag(InGameplayTag) end
---@param InGameplayTags FGameplayTagContainer
function UAnimationArchitectComponent:AddAnimationArchitectPersistentGameplayTags(InGameplayTags) end
---@param InGameplayTag FGameplayTag
function UAnimationArchitectComponent:AddAnimationArchitectGameplayTag(InGameplayTag) end


---@class UAnimationArchitectFilter : UObject
local UAnimationArchitectFilter = {}


---@class UAnimationArchitectTagProvider : UObject
local UAnimationArchitectTagProvider = {}


---@class UAnimationArchitect_AnimInstance : UAnimInstance
local UAnimationArchitect_AnimInstance = {}


---@class UAnimationArcitectAsset_ConnectionsCluster : UObject
---@field ConnectionArray TArray<FAnimationArchitectAsset_Connection>
local UAnimationArcitectAsset_ConnectionsCluster = {}



---@class UArchitectGameInstance : UGameInstance
---@field HardInteractionArchitectAssets TArray<UInteractionArchitectAsset>
---@field MonolithicObjectArchitectAsset UObjectArchitectMonolithicAsset
---@field PreloadMonolithicArchitectAsset UPreLoadArchitectMonolithicAsset
local UArchitectGameInstance = {}

---@return UArchitectGameInstance
function UArchitectGameInstance:GetArchitectGameInstance() end


---@class UBaseArchitectAsset : UDataAsset
---@field HardDependencies TArray<UBaseArchitectAsset>
---@field SoftDependencies TArray<FBaseArchitectAsset_SoftDependencyContainer>
---@field DefaultKeyOrder TArray<FGameplayTag>
local UBaseArchitectAsset = {}



---@class UBaseArchitectComponent : UActorComponent
---@field HardBaseArchitectAssets TArray<TSoftObjectPtr<UBaseArchitectAsset>>
---@field AnimationTagProviders TArray<UAnimationArchitectTagProvider>
---@field BaseArchitectGamePlayTags FGameplayTagContainer
---@field RequestedLoadedAssets TArray<UObject>
local UBaseArchitectComponent = {}

---@param InGameplayTag FGameplayTag
function UBaseArchitectComponent:RemoveGameplayTag(InGameplayTag) end
---@param InGameplayTag FGameplayTag
---@return boolean
function UBaseArchitectComponent:GameplayTagContainerHasTag(InGameplayTag) end
---@param InGameplayTag FGameplayTag
function UBaseArchitectComponent:AddGameplayTag(InGameplayTag) end


---@class UBaseArchitectFilter : UObject
local UBaseArchitectFilter = {}


---@class UBaseArchitectMonolithicAsset : UDataAsset
---@field ClassMap TMap<FName, FBaseArchitectMonolithicAsset_Class>
---@field DefaultKeyOrderMap TMap<FName, FBaseArchitectMonolithicAsset_DefaultKeyOrder>
local UBaseArchitectMonolithicAsset = {}



---@class UBaseArchitectState : UDataAsset
---@field StateAsset UBaseArchitectAsset
---@field TransitionsTo TArray<FBaseArchitectTransition>
local UBaseArchitectState = {}



---@class UInteractionArchitectAsset : UBaseArchitectAsset
---@field ConnectionArray TArray<FInteractionArchitectAsset_Connection>
local UInteractionArchitectAsset = {}

---@param InSourceTagContainer FGameplayTagContainer
---@param InTargetAssets TArray<UInteractionArchitectAsset>
---@param InTargetTags TArray<FGameplayTagContainer>
---@return TArray<UClass>
function UInteractionArchitectAsset:K2_FindAbilityConnectionArray(InSourceTagContainer, InTargetAssets, InTargetTags) end


---@class UObjectArchitectAsset : UBaseArchitectAsset
---@field ConnectionArray TArray<FObjectArchitectAsset_Connection>
local UObjectArchitectAsset = {}



---@class UObjectArchitectMonolithicAsset : UBaseArchitectMonolithicAsset
local UObjectArchitectMonolithicAsset = {}


---@class UPreLoadArchitectMonolithicAsset : UBaseArchitectMonolithicAsset
local UPreLoadArchitectMonolithicAsset = {}


---@class UPreLoadAssetArchitectAsset : UBaseArchitectAsset
---@field ConnectionArray TArray<FPreLoadAssetArchitectAsset_Connection>
local UPreLoadAssetArchitectAsset = {}



---@class UPreloadArchitectHUDWidgetStyle : USlateWidgetStyleContainerBase
---@field PreloadArchitectHUDStyle FPreloadArchitectHUDStyle
local UPreloadArchitectHUDWidgetStyle = {}



---@class UStationArchitectAsset : UBaseArchitectAsset
---@field ConnectionArray TArray<FStationArchitectAsset_Connection>
---@field ConnectionCluster UStationArcitectAsset_ConnectionsCluster
local UStationArchitectAsset = {}



---@class UStationArchitectComponent : UBaseArchitectComponent
---@field HardSceneRigAssets TArray<TSoftObjectPtr<UStationArchitectAsset>>
local UStationArchitectComponent = {}



---@class UStationArcitectAsset_ConnectionsCluster : UObject
---@field ConnectionArray TArray<FStationArchitectAsset_Connection>
local UStationArcitectAsset_ConnectionsCluster = {}



