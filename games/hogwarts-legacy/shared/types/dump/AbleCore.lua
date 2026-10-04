---@meta

---@class AAbleHUD : APreloadArchitectHUD
local AAbleHUD = {}

function AAbleHUD:UpdateDebugTarget() end
function AAbleHUD:ToggleAbleHUD() end
---@param InActor AActor
function AAbleHUD:SetTarget(InActor) end


---@class AAble_Character : AAnimationArchitect_Character
---@field GameplayHierarchyTag FGameplayTag
---@field AblAbilityComponent UAblAbilityComponent
---@field RagdollControlComponent URagdollControlComponent
---@field PhysicalBodyManager UAblPhysicalBodyManager
local AAble_Character = {}

---@param InAbilityChannelName FName
---@param InAblAbilitClass UClass
---@param InInstigator AActor
---@return boolean
function AAble_Character:PlayAbilityByClass(InAbilityChannelName, InAblAbilitClass, InInstigator) end
---@param InSourceTagContainer FGameplayTagContainer
---@param InArchitectAssets TArray<UInteractionArchitectAsset>
---@param InArchitectTags TArray<FGameplayTagContainer>
---@param Project EInteractionProject
---@param bOutIsAdditive boolean
---@param OutAbilityClass TSubclassOf<UAblAbility>
---@return boolean
function AAble_Character:GetAbilityWithMultipleAssetsAndTags(InSourceTagContainer, InArchitectAssets, InArchitectTags, Project, bOutIsAdditive, OutAbilityClass) end
---@param InSourceTagContainer FGameplayTagContainer
---@param InArchitectAssets TArray<UInteractionArchitectAsset>
---@param InArchitectTagContainer FGameplayTagContainer
---@param Project EInteractionProject
---@param bOutIsAdditive boolean
---@param OutAbilityClass TSubclassOf<UAblAbility>
---@return boolean
function AAble_Character:GetAbilityWithMultipleAssets(InSourceTagContainer, InArchitectAssets, InArchitectTagContainer, Project, bOutIsAdditive, OutAbilityClass) end
---@param InSourceTagContainer FGameplayTagContainer
---@param InArchitectAsset UInteractionArchitectAsset
---@param InArchitectTagContainer FGameplayTagContainer
---@param Project EInteractionProject
---@param bOutIsAdditive boolean
---@param OutAbilityClass TSubclassOf<UAblAbility>
---@return boolean
function AAble_Character:GetAbilityFromInteractionArchitect(InSourceTagContainer, InArchitectAsset, InArchitectTagContainer, Project, bOutIsAdditive, OutAbilityClass) end
---@param ChannelName FName
---@param InAblAbilitClass UClass
---@param InInstigator AActor
---@return boolean
function AAble_Character:ExecuteAbilityOnChannelByClass(ChannelName, InAblAbilitClass, InInstigator) end
---@param InAblAbilitClass UClass
---@param InInstigator AActor
---@return boolean
function AAble_Character:ExecuteAbilityByClass(InAblAbilitClass, InInstigator) end
---@param InAblAbilityContext UAblAbilityContext
function AAble_Character:CancelAbilityByContext(InAblAbilityContext) end
---@param InAbilityChannelName FName
function AAble_Character:CancelAbilityByChannel(InAbilityChannelName) end


---@class AAble_GameMode : AGameMode
---@field OnPauseGameEvent FAble_GameModeOnPauseGameEvent
---@field OnClearPauseGameEvent FAble_GameModeOnClearPauseGameEvent
local AAble_GameMode = {}



---@class FAbilityComponentPostAnimationTickFunction : FTickFunction
local FAbilityComponentPostAnimationTickFunction = {}


---@class FAblAbilityChannel
---@field Priority int32
---@field bIsAdditive boolean
---@field BoneBlendWeightAsset UAblBoneBlendWeightAsset
---@field ActiveAbilityInstance UAblAbilityInstance
---@field PassiveAbilityInstances TArray<UAblAbilityInstance>
---@field PendingContext TArray<UAblAbilityContext>
---@field PendingResult TArray<EAblAbilityTaskResult>
---@field AsyncContexts TArray<UAblAbilityContext>
---@field FadingAbilities TArray<UAblAbilityInstance>
local FAblAbilityChannel = {}



---@class FAblAbilityCooldown
local FAblAbilityCooldown = {}


---@class FAblAbilityNetworkContext
---@field m_Ability TWeakObjectPtr<UAblAbility>
---@field m_AbilityComponent TWeakObjectPtr<UAblAbilityComponent>
---@field m_Owner TWeakObjectPtr<AActor>
---@field m_Instigator TWeakObjectPtr<AActor>
---@field m_TargetActors TArray<TWeakObjectPtr<AActor>>
---@field m_CurrentStacks int8
---@field m_TimeStamp float
local FAblAbilityNetworkContext = {}



---@class FAblAbilityTargetTypeLocation
---@field m_Source EAblAbilityTargetType
---@field m_Offset FVector
---@field m_Rotation FRotator
---@field m_Socket FName
---@field m_UseSocketRotation boolean
local FAblAbilityTargetTypeLocation = {}



---@class FAblAnimation
---@field SortedAnimationChannels TArray<FAblAnimationChannel>
local FAblAnimation = {}



---@class FAblAnimationChannel
---@field Priority int32
---@field bIsAdditive boolean
---@field BoneBlendWeightAsset UAblBoneBlendWeightAsset
local FAblAnimationChannel = {}



---@class FAblAvaAnimationPlaybackOptions
---@field PlayRateType EAnimTrackPlaybackSpeed
---@field ForcedDuration UFloatProvider
---@field ForcedPlayRate UFloatProvider
local FAblAvaAnimationPlaybackOptions = {}



---@class FAblBlendTimes
---@field m_BlendIn float
---@field m_BlendOut float
local FAblBlendTimes = {}



---@class FAblDynamicAbilityChannel : FAblAbilityChannel
local FAblDynamicAbilityChannel = {}


---@class FAblDynamicAnimationChannel : FAblAnimationChannel
local FAblDynamicAnimationChannel = {}


---@class FAblQueryResult
---@field PrimitiveComponent TWeakObjectPtr<UPrimitiveComponent>
---@field Actor TWeakObjectPtr<AActor>
local FAblQueryResult = {}



---@class FAblReactionHandle
---@field Handle uint64
local FAblReactionHandle = {}



---@class FAblReactionsList
---@field Reactions TArray<UAblReactionData>
local FAblReactionsList = {}



---@class FAblRootMode
---@field m_UseSourceRootMotion EEvaluatorRootMotion::Type
---@field m_UseDestRootMotion EEvaluatorRootMotion::Type
local FAblRootMode = {}



---@class FAblUberAbility
---@field SortedAbilityChannels TArray<FAblAbilityChannel>
local FAblUberAbility = {}



---@class FAbleAvaAnimationClipRange
---@field StartOffset UFloatProvider
---@field EndOffset UFloatProvider
local FAbleAvaAnimationClipRange = {}



---@class FAbleAvaAnimationPlacementOptions
---@field InitialPlacementTransform UTransformProvider
---@field ConstrainedToPlacement UBoolProvider
---@field PlacementIsMoving UBoolProvider
---@field HandledByRequest UBoolProvider
---@field PlacementProvider UTransformProvider
---@field AnimationPlacementOffset UAnimationTransformProvider
local FAbleAvaAnimationPlacementOptions = {}



---@class FAbleHUDStyle : FSlateWidgetStyle
---@field CurrentActorTextStyle FTextBlockStyle
---@field FootPlantTextStyle FTextBlockStyle
---@field ChannelTextStyle FTextBlockStyle
---@field AbilityTextStyle FTextBlockStyle
---@field AnimationTextStyle FTextBlockStyle
---@field AnimationBlendTextStyle FTextBlockStyle
---@field BlendInputTextStyle FTextBlockStyle
---@field PlayRateTextStyle FTextBlockStyle
---@field AdditiveTextStyle FTextBlockStyle
---@field BlendWeightTextStyle FTextBlockStyle
---@field RootMotionTextStyle FTextBlockStyle
---@field AssetLengthTextStyle FTextBlockStyle
---@field GameplayTagTextStyle FTextBlockStyle
---@field ActorTagTextStyle FTextBlockStyle
---@field TreeRowStyle FTableRowStyle
---@field HUDMargin FMargin
---@field TreeMargin FMargin
---@field AnimationInfoTextStyle FTextBlockStyle
local FAbleHUDStyle = {}



---@class FAnimNode_AbilityAnimPlayer : FAnimNode_AssetPlayerBase
---@field AblAnimation FAblAnimation
local FAnimNode_AbilityAnimPlayer = {}



---@class FBTCustomActionTaskEntry
local FBTCustomActionTaskEntry = {}


---@class FBlendTrackInfo
---@field AnimationTags FGameplayTagContainer
---@field BlendSpaceParameterGetter UAblBlendSpaceParameterGetter
---@field bIsAdditive boolean
---@field bRotationOffsetMeshSpace boolean
---@field bOverrideMeshSpaceRotationBlend boolean
---@field bMeshSpaceRotationBlend boolean
---@field bLoop boolean
---@field BoneWeightAsset UAblBoneBlendWeightAsset
local FBlendTrackInfo = {}



---@class FBodyPartMatchingSmartNames
local FBodyPartMatchingSmartNames = {}


---@class FCollisionLayerResponseEntry
local FCollisionLayerResponseEntry = {}


---@class FHermesSendMessageToTaskEntry
local FHermesSendMessageToTaskEntry = {}


---@class FKIKBone
---@field FKBoneName FName
---@field IKBoneName FName
---@field FKIKBranch EFKIKBranchType
local FKIKBone = {}



---@class FKeyToAbilityMapping : FTableRowBase
---@field bAdditive boolean
---@field Ability TSubclassOf<UAblAbility>
local FKeyToAbilityMapping = {}



---@class FMyBranchFilter
---@field BoneName FName
---@field BlendDepth int32
local FMyBranchFilter = {}



---@class FMyInputBlendPose
---@field BranchFilters TArray<FBranchFilter>
local FMyInputBlendPose = {}



---@class FObjectTracker
local FObjectTracker = {}


---@class FPhysicalBodyNameWeightPair
---@field BoneName FName
---@field BoneWeight float
local FPhysicalBodyNameWeightPair = {}



---@class FQueueReactionParams
---@field Duration float
---@field ImpactDirection FVector
---@field ImpactLocation FVector
---@field InitialVelocity FVector
---@field TargetPosition FVector
---@field TargetDirection FVector
---@field Instigator TWeakObjectPtr<AActor>
---@field TargetActor TWeakObjectPtr<AActor>
---@field bActiveAbilityOwnsPassives boolean
---@field MunitionTags FGameplayTagContainer
local FQueueReactionParams = {}



---@class FRelativeTime
---@field Offset float
---@field OffsetType EOffsetTypeEnum
---@field RelativeToType ERelativeToEnum
---@field RelativeToObject UObject
---@field bEditable boolean
local FRelativeTime = {}



---@class FTurnToTaskEntry
local FTurnToTaskEntry = {}


---@class IAble_AnimInstance_Interface : IInterface
local IAble_AnimInstance_Interface = {}

---@param InWorldDirection FVector
function IAble_AnimInstance_Interface:Set_LastDesiredWorldDirection(InWorldDirection) end
---@param InSpeed float
function IAble_AnimInstance_Interface:Set_DesiredWorldSpeed(InSpeed) end
---@param InWorldDirection FVector
function IAble_AnimInstance_Interface:Set_DesiredWorldDirection(InWorldDirection) end
function IAble_AnimInstance_Interface:GoToLoco2() end
function IAble_AnimInstance_Interface:GoToLoco1() end
---@param OutWorldDirection FVector
function IAble_AnimInstance_Interface:Get_LastDesiredWorldDirection(OutWorldDirection) end
---@param OutSpeed float
function IAble_AnimInstance_Interface:Get_DesiredWorldSpeed(OutSpeed) end
---@param OutWorldDirection FVector
function IAble_AnimInstance_Interface:Get_DesiredWorldDirection(OutWorldDirection) end


---@class IAble_Character_Interface : IInterface
local IAble_Character_Interface = {}

---@param InAbilityChannelName FName
---@param InAblAbilitClass UClass
---@param InInstigator AActor
---@return boolean
function IAble_Character_Interface:PlayAbilityByClass(InAbilityChannelName, InAblAbilitClass, InInstigator) end
---@param InSourceTagContainer FGameplayTagContainer
---@param InArchitectAssets TArray<UInteractionArchitectAsset>
---@param InArchitectTags TArray<FGameplayTagContainer>
---@param Project EInteractionProject
---@param bOutIsAdditive boolean
---@param OutAbilityClass TSubclassOf<UAblAbility>
---@return boolean
function IAble_Character_Interface:GetAbilityWithMultipleAssetsAndTags(InSourceTagContainer, InArchitectAssets, InArchitectTags, Project, bOutIsAdditive, OutAbilityClass) end
---@param InSourceTagContainer FGameplayTagContainer
---@param InArchitectAssets TArray<UInteractionArchitectAsset>
---@param InArchitectTagContainer FGameplayTagContainer
---@param Project EInteractionProject
---@param bOutIsAdditive boolean
---@param OutAbilityClass TSubclassOf<UAblAbility>
---@return boolean
function IAble_Character_Interface:GetAbilityWithMultipleAssets(InSourceTagContainer, InArchitectAssets, InArchitectTagContainer, Project, bOutIsAdditive, OutAbilityClass) end
---@param InSourceTagContainer FGameplayTagContainer
---@param InArchitectAsset UInteractionArchitectAsset
---@param InArchitectTagContainer FGameplayTagContainer
---@param Project EInteractionProject
---@param bOutIsAdditive boolean
---@param OutAbilityClass TSubclassOf<UAblAbility>
---@return boolean
function IAble_Character_Interface:GetAbilityFromInteractionArchitect(InSourceTagContainer, InArchitectAsset, InArchitectTagContainer, Project, bOutIsAdditive, OutAbilityClass) end
---@param ChannelName FName
---@param InAblAbilitClass UClass
---@param InInstigator AActor
---@return boolean
function IAble_Character_Interface:ExecuteAbilityOnChannelByClass(ChannelName, InAblAbilitClass, InInstigator) end
---@param InAblAbilitClass UClass
---@param InInstigator AActor
---@return boolean
function IAble_Character_Interface:ExecuteAbilityByClass(InAblAbilitClass, InInstigator) end
---@param InAblAbilityContext UAblAbilityContext
function IAble_Character_Interface:CancelAbilityByContext(InAblAbilityContext) end
---@param InAbilityChannelName FName
function IAble_Character_Interface:CancelAbilityByChannel(InAbilityChannelName) end


---@class UAblAbility : UObject
---@field m_Length float
---@field m_Cooldown float
---@field m_PlayRate float
---@field m_bOverrideGlobalPlayRate boolean
---@field m_IsPassive boolean
---@field m_MaxStacks int32
---@field m_RefreshDurationOnNewStack boolean
---@field m_AlwaysRefreshDuration boolean
---@field m_OnlyRefreshLoopTime boolean
---@field m_RequiresAllTasksComplete boolean
---@field m_Loop boolean
---@field m_LoopStart float
---@field m_LoopEnd float
---@field m_LoopMaxIterations uint32
---@field m_RequiresTarget boolean
---@field m_Targeting UAblTargetingBase
---@field m_IsChanneled boolean
---@field m_ChannelConditions TArray<UAblChannelingBase>
---@field m_MustPassAllChannelConditions boolean
---@field m_TagContainer FGameplayTagContainer
---@field m_Tasks TArray<UAblAbilityTask>
---@field m_Events TArray<UAblAbilityEvent>
---@field m_AbilityNameHash uint32
---@field m_AbilityRealm EAblAbilityTaskRealm
local UAblAbility = {}

---@return boolean
function UAblAbility:RequiresTarget() end
---@return boolean
function UAblAbility:RequiresAllTasksComplete() end
---@return boolean
function UAblAbility:RefreshLoopTimeOnly() end
---@return boolean
function UAblAbility:RefreshDurationOnNewStack() end
---@param Context UAblAbilityContext
---@param EventName FName
---@param SpawnedActor AActor
function UAblAbility:OnSpawnedActorEvent(Context, EventName, SpawnedActor) end
---@param Context UAblAbilityContext
---@param EventName FName
---@param HitResults TArray<FHitResult>
function UAblAbility:OnRaycastEvent(Context, EventName, HitResults) end
---@param Context UAblAbilityContext
---@param EventName FName
---@return UAblAbility
function UAblAbility:OnGetBranchAbility(Context, EventName) end
---@param Context UAblAbilityContext
---@param EventName FName
function UAblAbility:OnCustomEvent(Context, EventName) end
---@param Context UAblAbilityContext
---@param EventName FName
---@param HitEntities TArray<FAblQueryResult>
function UAblAbility:OnCollisionEvent(Context, EventName, HitEntities) end
---@param Context UAblAbilityContext
function UAblAbility:OnAbilityStart(Context) end
---@param Context UAblAbilityContext
function UAblAbility:OnAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
function UAblAbility:OnAbilityEnd(Context) end
---@param Context UAblAbilityContext
---@param NextAbility UAblAbility
function UAblAbility:OnAbilityBranch(Context, NextAbility) end
---@return boolean
function UAblAbility:MustPassAllChannelConditions() end
---@return boolean
function UAblAbility:IsPassive() end
---@return boolean
function UAblAbility:IsLooping() end
---@return boolean
function UAblAbility:IsChanneled() end
---@return float
function UAblAbility:GetRange() end
---@param Context UAblAbilityContext
---@return int32
function UAblAbility:GetMaxStacks(Context) end
---@return FVector2D
function UAblAbility:GetLoopRange() end
---@return int32
function UAblAbility:GetLoopMaxIterationsBP() end
---@return float
function UAblAbility:GetLength() end
---@return FString
function UAblAbility:GetDisplayName() end
---@return float
function UAblAbility:GetCooldown() end
---@return float
function UAblAbility:GetBasePlayRate() end
---@return int32
function UAblAbility:GetBaseMaxStacks() end
---@return float
function UAblAbility:GetBaseCooldown() end
---@return FGameplayTagContainer
function UAblAbility:GetAbilityTagContainer() end
---@param Context UAblAbilityContext
---@param FoundTargets TArray<AActor>
function UAblAbility:CustomTargetingFindTargets(Context, FoundTargets) end
---@param Context UAblAbilityContext
---@param EventName FName
---@param Actor AActor
---@return boolean
function UAblAbility:CustomFilterCondition(Context, EventName, Actor) end
---@param Context UAblAbilityContext
---@return boolean
function UAblAbility:CustomCanLoopExecute(Context) end
---@param Context UAblAbilityContext
---@return boolean
function UAblAbility:CustomCanBranchTo(Context) end
---@param Context UAblAbilityContext
---@return boolean
function UAblAbility:CustomCanAbilityExecute(Context) end
---@param Context UAblAbilityContext
---@param EventName FName
---@return boolean
function UAblAbility:CheckCustomChannelConditional(Context, EventName) end
---@param Context UAblAbilityContext
---@param CurrentAbility UAblAbility
---@return boolean
function UAblAbility:CanInterruptAbility(Context, CurrentAbility) end
---@param Context UAblAbilityContext
---@param EventName FName
---@param BaseDamage float
---@param Actor AActor
---@return float
function UAblAbility:CalculateDamageForActor(Context, EventName, BaseDamage, Actor) end
---@param Context UAblAbilityContext
---@return float
function UAblAbility:CalculateCooldown(Context) end
---@return boolean
function UAblAbility:AlwaysRefreshDuration() end


---@class UAblAbilityAnimNotifyEventScratchPad : UAblAbilityEventScratchPad
local UAblAbilityAnimNotifyEventScratchPad = {}

---@param InCurrentTime float
---@param InAnimationAsset UAnimationAsset
---@param Context UAblAbilityContext
function UAblAbilityAnimNotifyEventScratchPad:OnAnimationPlayed(InCurrentTime, InAnimationAsset, Context) end


---@class UAblAbilityAsset : UDataAsset
---@field AbilityChannelMap TMap<FName, FAblAbilityChannel>
local UAblAbilityAsset = {}



---@class UAblAbilityBaseScratchPad : UObject
local UAblAbilityBaseScratchPad = {}


---@class UAblAbilityBlueprint : UBlueprint
local UAblAbilityBlueprint = {}


---@class UAblAbilityBlueprintGeneratedClass : UBlueprintGeneratedClass
local UAblAbilityBlueprintGeneratedClass = {}


---@class UAblAbilityBlueprintLibrary : UBlueprintFunctionLibrary
local UAblAbilityBlueprintLibrary = {}

---@param Enable boolean
---@return boolean
function UAblAbilityBlueprintLibrary:SetDrawCollisionQueries(Enable) end
---@param Result EAblAbilityStartResult
---@return boolean
function UAblAbilityBlueprintLibrary:IsSuccessfulStartResult(Result) end
---@return boolean
function UAblAbilityBlueprintLibrary:GetDrawCollisionQueries() end
---@param Class UClass
---@return UAblAbility
function UAblAbilityBlueprintLibrary:GetAbilityObjectFromClass(Class) end
---@param Context UAblAbilityContext
---@param ScratchPadClass TSubclassOf<UAblCustomTaskScratchPad>
---@return UAblCustomTaskScratchPad
function UAblAbilityBlueprintLibrary:CreateCustomScratchPad(Context, ScratchPadClass) end
---@param Ability UAblAbility
---@param AbilityComponent UAblAbilityComponent
---@param Owner AActor
---@param Instigator AActor
---@return UAblAbilityContext
function UAblAbilityBlueprintLibrary:CreateAbilityContext(Ability, AbilityComponent, Owner, Instigator) end
---@param Context UAblAbilityContext
---@return EAblAbilityStartResult
function UAblAbilityBlueprintLibrary:ActivateAbility(Context) end


---@class UAblAbilityChannelingScratchPad : UAblAbilityBaseScratchPad
local UAblAbilityChannelingScratchPad = {}


---@class UAblAbilityComponent : UActorComponent
---@field GlobalPlayRate float
---@field GlobalMeshScale float
---@field m_Verbose boolean
---@field AblAbilityAsset UAblAbilityAsset
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field m_Settings TWeakObjectPtr<UAbleSettings>
---@field m_TagContainer FGameplayTagContainer
---@field AblUberAbility FAblUberAbility
local UAblAbilityComponent = {}

function UAblAbilityComponent:UnpauseAllAbilities() end
---@param AbleOwner AActor
---@param AbleSender AActor
---@param EventName FName
function UAblAbilityComponent:TriggerAbleEvent(AbleOwner, AbleSender, EventName) end
---@param bFlag boolean
function UAblAbilityComponent:SetIgnorePlayAbility(bFlag) end
---@param Tag FGameplayTag
function UAblAbilityComponent:RemoveTag(Tag) end
function UAblAbilityComponent:PauseAllAbilities() end
---@param bEnable boolean
---@param Abilit UAblAbility
function UAblAbilityComponent:PauseAbility(bEnable, Abilit) end
---@param Query FGameplayTagQuery
---@return boolean
function UAblAbilityComponent:MatchesQuery(Query) end
---@param Container FGameplayTagContainer
---@return boolean
function UAblAbilityComponent:MatchesAnyTag(Container) end
---@param Container FGameplayTagContainer
---@return boolean
function UAblAbilityComponent:MatchesAllTags(Container) end
---@return boolean
function UAblAbilityComponent:IsPlayingAbility() end
---@param Ability UAblAbility
---@return boolean
function UAblAbilityComponent:IsPassiveActive(Ability) end
---@param Ability UAblAbility
---@return boolean
function UAblAbilityComponent:IsAbilityPaused(Ability) end
---@param Tag FGameplayTag
---@return boolean
function UAblAbilityComponent:HasTag(Tag) end
---@return boolean
function UAblAbilityComponent:HasAbilityAnimation() end
---@return FGameplayTagContainer
function UAblAbilityComponent:GetGameplayTagContainerBP() end
---@param ChannelName FName
---@return UAblAbility
function UAblAbilityComponent:GetActiveAbility_New(ChannelName) end
---@return UAblAbility
function UAblAbilityComponent:GetActiveAbility() end
---@param ResultToUse EAblAbilityTaskResult
---@param bHideActor boolean
function UAblAbilityComponent:CancelAllAbilities(ResultToUse, bHideActor) end
---@param ChannelName FName
---@param ResultToUse EAblAbilityTaskResult
---@param bHideActor boolean
function UAblAbilityComponent:CancelAbilityChannel(ChannelName, ResultToUse, bHideActor) end
---@param Ability UAblAbility
---@param ResultToUse EAblAbilityTaskResult
function UAblAbilityComponent:CancelAbility(Ability, ResultToUse) end
---@param Context UAblAbilityContext
---@return EAblAbilityStartResult
function UAblAbilityComponent:CanActivateAbility(Context) end
---@param Context UAblAbilityContext
---@return EAblAbilityStartResult
function UAblAbilityComponent:BranchAbility(Context) end
---@param Tag FGameplayTag
function UAblAbilityComponent:AddTag(Tag) end
function UAblAbilityComponent:ActorHiddenTimeout() end
---@param Context UAblAbilityContext
---@return EAblAbilityStartResult
function UAblAbilityComponent:ActivateAbility(Context) end


---@class UAblAbilityContext : UObject
---@field m_Ability UAblAbility
---@field m_AbilityComponent UAblAbilityComponent
---@field m_StackCount int32
---@field m_CurrentTime float
---@field m_Owner TWeakObjectPtr<AActor>
---@field m_Instigator TWeakObjectPtr<AActor>
---@field m_TargetActors TArray<TWeakObjectPtr<AActor>>
---@field m_TaskScratchPadMap TMap<uint32, UAblAbilityTaskScratchPad>
---@field m_EventScratchPadMap TMap<uint32, UAblAbilityEventScratchPad>
---@field m_ChannelingScratchPadMap TMap<uint32, UAblAbilityChannelingScratchPad>
---@field m_AsyncQueryTransform FTransform
---@field m_TransitionBlendIn FAlphaBlend
---@field m_TransitionBlendOut FAlphaBlend
---@field AbilityScratchPad UAblAbilityBaseScratchPad
---@field m_UseSourceRootMotion EEvaluatorRootMotion::Type
---@field m_UseDestRootMotion EEvaluatorRootMotion::Type
---@field m_BlendTickStyle EAnimBlendTickStyle
local UAblAbilityContext = {}

---@param Stack int32
function UAblAbilityContext:SetStackCount(Stack) end
---@return TArray<AActor>
function UAblAbilityContext:GetTargetActors() end
---@return AActor
function UAblAbilityContext:GetSelfActor() end
---@return UAblAbilityComponent
function UAblAbilityContext:GetSelfAbilityComponent() end
---@return AActor
function UAblAbilityContext:GetOwner() end
---@return AActor
function UAblAbilityContext:GetInstigator() end
---@return float
function UAblAbilityContext:GetCurrentTimeRatio() end
---@return float
function UAblAbilityContext:GetCurrentTime() end
---@return int32
function UAblAbilityContext:GetCurrentStackCount() end


---@class UAblAbilityEvent : UAblAbilityNode
---@field m_StartTime FRelativeTime
---@field m_EventName FName
---@field m_Verbose boolean
---@field m_IsDone boolean
local UAblAbilityEvent = {}



---@class UAblAbilityEventScratchPad : UAblAbilityBaseScratchPad
---@field AbilityEventPtr TWeakObjectPtr<UAblAbilityEvent>
local UAblAbilityEventScratchPad = {}

---@param Caller UObject
function UAblAbilityEventScratchPad:EventReceived(Caller) end


---@class UAblAbilityInstance : UObject
---@field m_CurrentIteration uint32
---@field m_AsyncTasks TArray<UAblAbilityTask>
---@field m_ActiveAsyncTasks TArray<UAblAbilityTask>
---@field m_FinishedASyncTasks TArray<UAblAbilityTask>
---@field m_SyncTasks TArray<UAblAbilityTask>
---@field m_ActiveSyncTasks TArray<UAblAbilityTask>
---@field m_FinishedSyncTasks TArray<UAblAbilityTask>
---@field m_Ability UAblAbility
---@field m_Context UAblAbilityContext
---@field m_AdditionalTargets TArray<TWeakObjectPtr<AActor>>
---@field m_FadingTasks TArray<UAblAbilityTask>
local UAblAbilityInstance = {}



---@class UAblAbilityNode : UObject
local UAblAbilityNode = {}


---@class UAblAbilityTargetingFilter : UObject
local UAblAbilityTargetingFilter = {}


---@class UAblAbilityTargetingFilterClass : UAblAbilityTargetingFilter
---@field m_Class UClass
---@field m_Negate boolean
local UAblAbilityTargetingFilterClass = {}



---@class UAblAbilityTargetingFilterCustom : UAblAbilityTargetingFilter
---@field m_EventName FName
---@field m_UseAsync boolean
local UAblAbilityTargetingFilterCustom = {}



---@class UAblAbilityTargetingFilterInstigator : UAblAbilityTargetingFilter
local UAblAbilityTargetingFilterInstigator = {}


---@class UAblAbilityTargetingFilterMaxTargets : UAblAbilityTargetingFilter
---@field m_MaxTargets int32
local UAblAbilityTargetingFilterMaxTargets = {}



---@class UAblAbilityTargetingFilterOwner : UAblAbilityTargetingFilter
local UAblAbilityTargetingFilterOwner = {}


---@class UAblAbilityTargetingFilterSelf : UAblAbilityTargetingFilter
local UAblAbilityTargetingFilterSelf = {}


---@class UAblAbilityTargetingFilterSortByDistance : UAblAbilityTargetingFilter
---@field m_Use2DDistance boolean
---@field m_SortDirection EAblTargetingFilterSort
local UAblAbilityTargetingFilterSortByDistance = {}



---@class UAblAbilityTask : UAblAbilityNode
---@field m_StartTime FRelativeTime
---@field m_EndTime FRelativeTime
---@field m_TaskTargets TArray<EAblAbilityTargetType>
---@field m_Verbose boolean
---@field m_IsDone boolean
local UAblAbilityTask = {}



---@class UAblAbilityTaskScratchPad : UAblAbilityBaseScratchPad
local UAblAbilityTaskScratchPad = {}


---@class UAblAnimNotify : UAnimNotify
---@field EventName FName
local UAblAnimNotify = {}



---@class UAblAnimNotifyEvent : UAblGeneratedEvent
local UAblAnimNotifyEvent = {}


---@class UAblAnimNotifyPure : UAblAnimNotify
local UAblAnimNotifyPure = {}


---@class UAblAnimNotifyPureEvent : UAblAnimNotifyEvent
local UAblAnimNotifyPureEvent = {}


---@class UAblAnimRateGetter : UObject
local UAblAnimRateGetter = {}


---@class UAblAnimRateGetter_Random : UAblAnimRateGetter
---@field MinPlayRate float
---@field MaxPlayRate float
local UAblAnimRateGetter_Random = {}



---@class UAblAnimTransitionInOverriderer : UObject
local UAblAnimTransitionInOverriderer = {}


---@class UAblAnimationAssetChooser : UObject
---@field AnimationAssets TArray<UAnimationAsset>
---@field AnimationTags TArray<FGameplayTagContainer>
local UAblAnimationAssetChooser = {}



---@class UAblAnimationEndCallback : UObject
local UAblAnimationEndCallback = {}


---@class UAblAnimationModifier : UObject
local UAblAnimationModifier = {}


---@class UAblAnimationModifier_SpeedWarping : UAblAnimationModifier
---@field FKIKBranches TArray<FKIKBone>
local UAblAnimationModifier_SpeedWarping = {}



---@class UAblAnimationTagChooser : UObject
---@field AnimationAssets TArray<UAnimationAsset>
---@field AnimationTags TArray<FGameplayTagContainer>
---@field bAppendAnimationTags boolean
local UAblAnimationTagChooser = {}



---@class UAblAnimationTagChooser_AppendToBase : UAblAnimationTagChooser
---@field BaseAnimationTag FGameplayTagContainer
---@field Choosers TArray<UAblAnimationTagChooser_AppendToBaseChooser>
local UAblAnimationTagChooser_AppendToBase = {}



---@class UAblAnimationTagChooser_AppendToBaseChooser : UObject
local UAblAnimationTagChooser_AppendToBaseChooser = {}


---@class UAblAvaAnimationTask : UAblAbilityTask
---@field AnimationProvider UAnimationProvider
---@field Layer FAnimationRequestLayerReference
---@field PlacementOptions FAbleAvaAnimationPlacementOptions
---@field ClipRange FAbleAvaAnimationClipRange
---@field PlaybackOptions FAblAvaAnimationPlaybackOptions
---@field ReselectOnLoopBoundaries UBoolProvider
---@field weight UFloatProvider
---@field BlendInTime UFloatProvider
---@field BlendOutTime UFloatProvider
---@field LoopIndefinitely UBoolProvider
local UAblAvaAnimationTask = {}



---@class UAblAvaAnimationTaskScratchPad : UAblAbilityTaskScratchPad
---@field AnimationTrack FAnimationTrack
---@field OwningActor TWeakObjectPtr<AActor>
---@field SkeletalMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field CurrentBlendWeight float
local UAblAvaAnimationTaskScratchPad = {}



---@class UAblBTCustomActionTask : UAblAbilityTask
---@field BTCustomAction FBTCustomAction
---@field BTCustomActionType EBTCustomActionType::Type
---@field VarMapKeyedBools TMap<FName, boolean>
---@field VarMapKeyedInts TMap<FName, int32>
---@field VarMapKeyedFloats TMap<FName, float>
---@field VarMapKeyedNames TMap<FName, FName>
---@field VarMapKeyedVector2Ds TMap<FName, FVector2D>
---@field VarMapKeyedVectors TMap<FName, FVector>
---@field VarMapKeyedStrings TMap<FName, FString>
---@field EndBTCustomAction FBTCustomAction
---@field EndBTCustomActionType EBTCustomActionType::Type
local UAblBTCustomActionTask = {}



---@class UAblBTCustomActionTaskScratchPad : UAblAbilityTaskScratchPad
---@field InProgressMessage TArray<FBTCustomActionTaskEntry>
local UAblBTCustomActionTaskScratchPad = {}



---@class UAblBlendSpaceParameterGetter : UObject
local UAblBlendSpaceParameterGetter = {}


---@class UAblBlendWeightMultiplierGetter : UObject
local UAblBlendWeightMultiplierGetter = {}


---@class UAblBoneBlendWeightAsset : UDataAsset
---@field DefaultBoneWeight float
---@field Skeleton USkeleton
---@field PerBoneBlendWeights TArray<FPerBoneBlendWeight>
---@field InversePerBoneBlendWeights TArray<FPerBoneBlendWeight>
---@field SkeletonGuid FGuid
---@field VirtualBoneGuid FGuid
---@field bMeshSpaceRotationBlend boolean
---@field BlendWeightsDirty boolean
local UAblBoneBlendWeightAsset = {}



---@class UAblBranchCondition : UObject
---@field m_Negate boolean
local UAblBranchCondition = {}



---@class UAblBranchConditionAlways : UAblBranchCondition
local UAblBranchConditionAlways = {}


---@class UAblBranchConditionAnimNotify : UAblBranchCondition
---@field Name FName
---@field bResultIfNotifyDoesNotExist boolean
local UAblBranchConditionAnimNotify = {}



---@class UAblBranchConditionAnimNotify_New : UAblTaskCondition
---@field Names TSet<FName>
---@field bResultIfNotifyDoesNotExist boolean
local UAblBranchConditionAnimNotify_New = {}



---@class UAblBranchConditionCustom : UAblBranchCondition
local UAblBranchConditionCustom = {}


---@class UAblBranchConditionLogicalOR : UAblBranchCondition
---@field Conditions TArray<UAblBranchCondition>
local UAblBranchConditionLogicalOR = {}



---@class UAblBranchConditionOnInput : UAblBranchCondition
---@field m_InputActions TArray<FName>
---@field m_MustBeRecentlyPressed boolean
---@field m_RecentlyPressedTimeLimit float
local UAblBranchConditionOnInput = {}



---@class UAblBranchEvent : UAblAbilityEvent
---@field m_BranchAbility TSubclassOf<UAblAbility>
---@field m_DynamicBranchAbility boolean
---@field m_DynamicBranchEventName FName
---@field m_Conditions TArray<UAblBranchCondition>
---@field m_MustPassAllConditions boolean
---@field m_CopyTargetsOnBranch boolean
---@field m_TransitionBlend FAlphaBlend
---@field m_TransitionBlendOut FAlphaBlend
local UAblBranchEvent = {}



---@class UAblBranchEventScratchPad : UAblAbilityEventScratchPad
---@field BranchAbility UAblAbility
---@field CachedKeys TArray<FKey>
local UAblBranchEventScratchPad = {}



---@class UAblBranchFilterBlendWeightAsset : UAblBoneBlendWeightAsset
---@field LayerSetup TArray<FMyInputBlendPose>
local UAblBranchFilterBlendWeightAsset = {}



---@class UAblBranchTask : UAblAbilityTask
---@field m_BranchAbility TSubclassOf<UAblAbility>
---@field m_BranchScratchpad TSubclassOf<UAblBranchTaskScratchPad>
---@field m_DynamicBranchAbility boolean
---@field m_DynamicBranchEventName FName
---@field m_Conditions TArray<UAblBranchCondition>
---@field m_MustPassAllConditions boolean
---@field m_CopyTargetsOnBranch boolean
---@field m_TransitionBlend FAlphaBlend
---@field m_TransitionBlendOut FAlphaBlend
---@field m_bOverrideTransitionBlend boolean
---@field m_bOverrideTransitionBlendOut boolean
---@field bClampBlendOutTime boolean
---@field m_OverrideRootMotion boolean
---@field m_UseSourceRootMotion EEvaluatorRootMotion::Type
---@field m_UseDestRootMotion EEvaluatorRootMotion::Type
---@field m_OverrideBlendTickStyle boolean
---@field m_BlendTickStyle EAnimBlendTickStyle
---@field bPreBranchTick boolean
local UAblBranchTask = {}



---@class UAblBranchTaskScratchPad : UAblAbilityTaskScratchPad
---@field CachedKeys TArray<FKey>
---@field bEventReceived boolean
---@field bEventExists boolean
---@field bCanEverPassConditions boolean
local UAblBranchTaskScratchPad = {}

---@param InCurrentTime float
---@param InAnimationAsset UAnimationAsset
---@param Context UAblAbilityContext
function UAblBranchTaskScratchPad:OnAnimationPlayed(InCurrentTime, InAnimationAsset, Context) end


---@class UAblCamShakeTask : UAblAbilityTask
---@field Shake TSubclassOf<UCameraShakeBase>
---@field InnerRadius float
---@field OuterRadius float
---@field epicenter FVector
---@field Falloff float
---@field bUseActorPositionAsEpicenter boolean
---@field bOrientShakeTowardsEpicenter boolean
---@field bPlayerOnly boolean
---@field Conditions TArray<UAblTaskCondition>
---@field bMustPassAllConditions boolean
local UAblCamShakeTask = {}



---@class UAblCancelAnimationTask : UAblAbilityTask
local UAblCancelAnimationTask = {}


---@class UAblChannelingBase : UObject
---@field m_Negate boolean
local UAblChannelingBase = {}



---@class UAblChannelingCustomConditional : UAblChannelingBase
---@field m_EventName FName
local UAblChannelingCustomConditional = {}



---@class UAblChannelingInputConditional : UAblChannelingBase
---@field m_InputActions TArray<FName>
local UAblChannelingInputConditional = {}



---@class UAblChannelingObjectArchitectConditional : UAblChannelingBase
---@field BranchTags FGameplayTagContainer
---@field BranchAbility TSubclassOf<UAblAbility>
---@field ObjectArchitectAsset UObjectArchitectAsset
local UAblChannelingObjectArchitectConditional = {}



---@class UAblChannelingObjectArchitectScratchPad : UAblAbilityChannelingScratchPad
local UAblChannelingObjectArchitectScratchPad = {}

---@param Actor AActor
---@param GameplayTag FGameplayTag
---@param TagsChanged TagsChangedEvent
function UAblChannelingObjectArchitectScratchPad:TagsChanged(Actor, GameplayTag, TagsChanged) end


---@class UAblChannelingVelocityConditional : UAblChannelingBase
---@field m_VelocityThreshold float
---@field m_UseXYSpeed boolean
local UAblChannelingVelocityConditional = {}



---@class UAblCollisionFilter : UObject
local UAblCollisionFilter = {}


---@class UAblCollisionFilterByClass : UAblCollisionFilter
---@field m_Class UClass
---@field m_Negate boolean
local UAblCollisionFilterByClass = {}



---@class UAblCollisionFilterCustom : UAblCollisionFilter
---@field m_EventName FName
---@field m_UseAsync boolean
local UAblCollisionFilterCustom = {}



---@class UAblCollisionFilterInstigator : UAblCollisionFilter
local UAblCollisionFilterInstigator = {}


---@class UAblCollisionFilterMaxResults : UAblCollisionFilter
---@field m_MaxEntities int32
local UAblCollisionFilterMaxResults = {}



---@class UAblCollisionFilterOwner : UAblCollisionFilter
local UAblCollisionFilterOwner = {}


---@class UAblCollisionFilterSelf : UAblCollisionFilter
local UAblCollisionFilterSelf = {}


---@class UAblCollisionFilterSortByDistance : UAblCollisionFilter
---@field m_SortDirection EAblCollisionFilterSort
---@field m_location FAblAbilityTargetTypeLocation
---@field m_Use2DDistance boolean
local UAblCollisionFilterSortByDistance = {}



---@class UAblCollisionQueryTask : UAblAbilityTask
---@field m_fireEvent boolean
---@field m_name FName
---@field m_QueryShape UAblCollisionShape
---@field m_Filters TArray<UAblCollisionFilter>
---@field m_CopyResultsToContext boolean
---@field m_AllowDuplicateEntries boolean
---@field m_TaskRealm EAblAbilityTaskRealm
local UAblCollisionQueryTask = {}



---@class UAblCollisionQueryTaskScratchPad : UAblAbilityTaskScratchPad
---@field QueryTransform FTransform
---@field AsyncProcessed boolean
local UAblCollisionQueryTaskScratchPad = {}



---@class UAblCollisionShape : UObject
---@field m_QueryLocation FAblAbilityTargetTypeLocation
---@field m_CollisionChannel ECollisionChannel
---@field m_UseAsyncQuery boolean
local UAblCollisionShape = {}



---@class UAblCollisionShapeBox : UAblCollisionShape
---@field m_HalfExtents FVector
local UAblCollisionShapeBox = {}



---@class UAblCollisionShapeCapsule : UAblCollisionShape
---@field m_Height float
---@field m_radius float
local UAblCollisionShapeCapsule = {}



---@class UAblCollisionShapeCone : UAblCollisionShape
---@field m_FOV float
---@field m_Length float
---@field m_Height float
---@field m_Is2DQuery boolean
local UAblCollisionShapeCone = {}



---@class UAblCollisionShapeSphere : UAblCollisionShape
---@field m_radius float
local UAblCollisionShapeSphere = {}



---@class UAblCollisionSweepBox : UAblCollisionSweepShape
---@field m_HalfExtents FVector
local UAblCollisionSweepBox = {}



---@class UAblCollisionSweepCapsule : UAblCollisionSweepShape
---@field m_radius float
---@field m_Height float
local UAblCollisionSweepCapsule = {}



---@class UAblCollisionSweepShape : UObject
---@field m_SweepLocation FAblAbilityTargetTypeLocation
---@field m_CollisionChannel ECollisionChannel
---@field m_OnlyReturnBlockingHit boolean
---@field m_UseAsyncQuery boolean
local UAblCollisionSweepShape = {}



---@class UAblCollisionSweepSphere : UAblCollisionSweepShape
---@field m_radius float
local UAblCollisionSweepSphere = {}



---@class UAblCollisionSweepTask : UAblAbilityTask
---@field m_SweepShape UAblCollisionSweepShape
---@field m_fireEvent boolean
---@field m_name FName
---@field m_Filters TArray<UAblCollisionFilter>
---@field m_CopyResultsToContext boolean
---@field m_AllowDuplicateEntries boolean
---@field m_TaskRealm EAblAbilityTaskRealm
local UAblCollisionSweepTask = {}



---@class UAblCollisionSweepTaskScratchPad : UAblAbilityTaskScratchPad
---@field SourceTransform FTransform
---@field AsyncProcessed boolean
local UAblCollisionSweepTaskScratchPad = {}



---@class UAblConditionalBranchScratchpad : UAblAbilityTaskScratchPad
---@field BranchConditionScratchpads TArray<UAblTaskConditionScratchpad>
local UAblConditionalBranchScratchpad = {}



---@class UAblConditionalBranchTask : UAblConditionalBranchTaskBase
---@field BranchAbilityClass TSubclassOf<UAblAbility>
local UAblConditionalBranchTask = {}



---@class UAblConditionalBranchTaskBase : UAblAbilityTask
---@field BranchConditions TArray<UAblTaskCondition>
---@field bMustPassAllConditions boolean
---@field bOverrideAnimationBlendIn boolean
---@field AnimationBlendInOverride FAlphaBlend
---@field bClampBlendOutTime boolean
---@field bOverrideRootMotion boolean
---@field SourceRootMotion EEvaluatorRootMotion::Type
---@field DestRootMotion EEvaluatorRootMotion::Type
---@field bOverrideBlendTickStyle boolean
---@field BlendTickStyleOverride EAnimBlendTickStyle
local UAblConditionalBranchTaskBase = {}



---@class UAblCustomEventListenerOnceScratchpad : UAblCustomEventListenerScratchpad
local UAblCustomEventListenerOnceScratchpad = {}


---@class UAblCustomEventListenerOnceTask : UAblCustomEventListenerTask
---@field EventName FName
local UAblCustomEventListenerOnceTask = {}



---@class UAblCustomEventListenerScratchpad : UAblAbilityTaskScratchPad
local UAblCustomEventListenerScratchpad = {}

---@param Context UAblAbilityContext
---@param CallerContext UAblAbilityContext
---@param EventName FName
function UAblCustomEventListenerScratchpad:OnCustomEvent(Context, CallerContext, EventName) end


---@class UAblCustomEventListenerStartEndScratchpad : UAblCustomEventListenerScratchpad
local UAblCustomEventListenerStartEndScratchpad = {}


---@class UAblCustomEventListenerStartEndTask : UAblCustomEventListenerTask
---@field StartEventName FName
---@field EndEventName FName
local UAblCustomEventListenerStartEndTask = {}



---@class UAblCustomEventListenerTask : UAblAbilityTask
local UAblCustomEventListenerTask = {}


---@class UAblCustomEventTask : UAblAbilityTask
---@field m_EventName FName
---@field m_TaskRealm EAblAbilityTaskRealm
---@field bNotifyOtherAbilitiesOnChannel boolean
local UAblCustomEventTask = {}



---@class UAblCustomTask : UAblAbilityTask
local UAblCustomTask = {}

---@param Context UAblAbilityContext
---@param DeltaTime float
function UAblCustomTask:OnTaskTickBP(Context, DeltaTime) end
---@param Context UAblAbilityContext
function UAblCustomTask:OnTaskStartBP(Context) end
---@param Context UAblAbilityContext
---@param Result EAblAbilityTaskResult
function UAblCustomTask:OnTaskEndBP(Context, Result) end
---@return boolean
function UAblCustomTask:IsSingleFrameBP() end
---@param Context UAblAbilityContext
---@return boolean
function UAblCustomTask:IsDoneBP(Context) end
---@return EAblAbilityTaskRealm
function UAblCustomTask:GetTaskRealmBP() end
---@return FText
function UAblCustomTask:GetTaskNameBP() end
---@return FText
function UAblCustomTask:GetTaskDescriptionBP() end
---@return FLinearColor
function UAblCustomTask:GetTaskColorBP() end
---@return FText
function UAblCustomTask:GetTaskCategoryBP() end
---@param Context UAblAbilityContext
---@return UAblCustomTaskScratchPad
function UAblCustomTask:GetScratchPad(Context) end
---@return FText
function UAblCustomTask:GetDescriptiveTaskNameBP() end
---@param Context UAblAbilityContext
---@param OutActorArray TArray<AActor>
function UAblCustomTask:GetActorsForTaskBP(Context, OutActorArray) end
---@param Context UAblAbilityContext
---@return UAblCustomTaskScratchPad
function UAblCustomTask:CreateScratchPadBP(Context) end


---@class UAblCustomTaskScratchPad : UAblAbilityTaskScratchPad
local UAblCustomTaskScratchPad = {}


---@class UAblDamageEventTask : UAblAbilityTask
---@field m_damage float
---@field m_DamageSource EAblAbilityTargetType
---@field m_DamageTargets TArray<EAblAbilityTargetType>
---@field m_EventName FName
---@field m_TaskRealm EAblAbilityTaskRealm
---@field m_UseAsyncCalculate boolean
local UAblDamageEventTask = {}



---@class UAblDamageEventTaskScratchPad : UAblAbilityTaskScratchPad
---@field DamageValues TArray<float>
local UAblDamageEventTaskScratchPad = {}



---@class UAblForceFeedbackTask : UAblAbilityTask
---@field ForceFeedbackEffect UForceFeedbackEffect
---@field FeedbackTagName FName
---@field bStopFeedbackAtTaskEnd boolean
---@field bLoop boolean
---@field AttenuateDistanceFromPlayerCurve UCurveFloat
---@field AttenuateDistanceFromCameraCurve UCurveFloat
---@field bPlayerOnly boolean
local UAblForceFeedbackTask = {}



---@class UAblGeneratedEvent : UAblAbilityEvent
---@field bIsActive boolean
---@field bRemovable boolean
local UAblGeneratedEvent = {}



---@class UAblHasTagTaskCondition : UAblTaskCondition
---@field Tag FName
---@field bInverse boolean
local UAblHasTagTaskCondition = {}



---@class UAblHermesSendMessageToTask : UAblAbilityTask
---@field m_MessageSender EAblAbilityTargetType
---@field m_MessageTarget EAblAbilityTargetType
---@field m_MessageName FName
---@field m_CleanupMessageName FName
local UAblHermesSendMessageToTask = {}



---@class UAblHermesSendMessageToTaskScratchPad : UAblAbilityTaskScratchPad
---@field InProgressMessage TArray<FHermesSendMessageToTaskEntry>
local UAblHermesSendMessageToTaskScratchPad = {}



---@class UAblHideActorScratchpad : UAblAbilityTaskScratchPad
---@field TaskConditionScratchpads TArray<UAblTaskConditionScratchpad>
local UAblHideActorScratchpad = {}



---@class UAblHideActorTask : UAblAbilityTask
---@field bHideThroughManagedState boolean
---@field bIgnoreParticleEmitters boolean
---@field bIgnoreStaticMeshes boolean
---@field Conditions TArray<UAblTaskCondition>
---@field bMustPassAllConditions boolean
local UAblHideActorTask = {}



---@class UAblParticleEffectParam : UObject
---@field m_ParameterName FName
local UAblParticleEffectParam = {}



---@class UAblParticleEffectParamContextActor : UAblParticleEffectParam
---@field m_ContextActor EAblAbilityTargetType
local UAblParticleEffectParamContextActor = {}



---@class UAblParticleEffectParamLocation : UAblParticleEffectParam
---@field m_location FAblAbilityTargetTypeLocation
local UAblParticleEffectParamLocation = {}



---@class UAblPhysicalBodyManager : UObject
---@field GlobalBlendedWeights TArray<float>
---@field PhysicalBodyBlendChannelMap TMap<int32, UPhysicalBodyBlendChannel>
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field NumBodies int32
local UAblPhysicalBodyManager = {}



---@class UAblPlaceableEvent : UAblAbilityEvent
local UAblPlaceableEvent = {}


---@class UAblPlayAbilityByChannelScratchpad : UAblAbilityTaskScratchPad
---@field TaskConditionScratchpads TArray<UAblTaskConditionScratchpad>
local UAblPlayAbilityByChannelScratchpad = {}



---@class UAblPlayAbilityByChannelTask : UAblAbilityTask
---@field m_Ability TSubclassOf<UAblAbility>
---@field m_Owner EAblAbilityTargetType
---@field m_Instigator EAblAbilityTargetType
---@field m_ChannelName FName
---@field TaskConditions TArray<UAblTaskCondition>
local UAblPlayAbilityByChannelTask = {}



---@class UAblPlayAbilityTask : UAblAbilityTask
---@field m_Ability TSubclassOf<UAblAbility>
---@field m_Owner EAblAbilityTargetType
---@field m_Instigator EAblAbilityTargetType
local UAblPlayAbilityTask = {}



---@class UAblPlayAnimationArchitectTask : UAblAbilityTask
---@field m_AnimationSet FGameplayTagContainer
---@field m_AnimationAssetChooser UAblAnimationAssetChooser
---@field m_AnimTransitionInOverriderer UAblAnimTransitionInOverriderer
---@field m_AnimationTags FGameplayTagContainer
---@field m_PreviewAnimationTags FGameplayTagContainer
---@field m_AnimationTagChooser UAblAnimationTagChooser
---@field m_BlendSpaceParameterGetter UAblBlendSpaceParameterGetter
---@field m_AnimRateGetter UAblAnimRateGetter
---@field m_StartPositionGetter UAblStartPositionGetter
---@field m_BlendWeightMultiplierGetter UAblBlendWeightMultiplierGetter
---@field m_AnimationModifiers TArray<UAblAnimationModifier>
---@field m_StateMachineName FName
---@field m_AbilityStateName FName
---@field m_EndCallback UAblAnimationEndCallback
---@field m_BlendTracks TArray<FBlendTrackInfo>
---@field m_BlendTickStyle EAnimBlendTickStyle
---@field m_BlendIn FAlphaBlend
---@field m_OverrideBlendOut boolean
---@field m_BlendOut FAlphaBlend
---@field m_FadeOut FAlphaBlend
---@field bFadeOutToEndOfAnimation boolean
---@field m_Loop boolean
---@field m_PlayRate float
---@field m_ScaleWithAbilityPlayRate boolean
---@field m_MatchPhase boolean
---@field m_PlayOnServer boolean
---@field m_RootMode FAblRootMode
---@field m_BoneWeightAsset UAblBoneBlendWeightAsset
---@field m_RotationOffsetMeshSpace boolean
---@field m_IsAdditive boolean
---@field m_IsFacialAnimation boolean
local UAblPlayAnimationArchitectTask = {}



---@class UAblPlayAnimationArchitectTaskScratchPad : UAblAbilityTaskScratchPad
---@field TargetActor AActor
---@field OnAnimationPlayedDelegate FAblPlayAnimationArchitectTaskScratchPadOnAnimationPlayedDelegate
---@field AnimationAsset UAnimationAsset
---@field BlendTrackAnimationAssets TArray<UAnimationAsset>
---@field AssetEndTimeAdjust float
---@field BlendIn FAlphaBlend
---@field BlendOut FAlphaBlend
local UAblPlayAnimationArchitectTaskScratchPad = {}



---@class UAblPlayAnimationTask : UAblAbilityTask
---@field m_AnimationAssetChooser UAblAnimationAssetChooser
---@field m_AnimationAsset UAnimationAsset
---@field m_BlendSpaceParameterGetter UAblBlendSpaceParameterGetter
---@field m_AnimRateGetter UAblAnimRateGetter
---@field m_StartPositionGetter UAblStartPositionGetter
---@field m_BlendWeightMultiplierGetter UAblBlendWeightMultiplierGetter
---@field m_AnimationModifiers TArray<UAblAnimationModifier>
---@field m_AnimationMode EAblPlayAnimationTaskAnimMode
---@field m_StateMachineName FName
---@field m_AbilityStateName FName
---@field m_BlendIn FAlphaBlend
---@field m_OverrideBlendOut boolean
---@field m_BlendOut FAlphaBlend
---@field m_FadeOut FAlphaBlend
---@field m_Loop boolean
---@field m_DynamicMontageBlend FAblBlendTimes
---@field m_PlayRate float
---@field m_ScaleWithAbilityPlayRate boolean
---@field m_StopAnimationOnInterrupt boolean
---@field m_MatchPhase boolean
---@field m_PlayOnServer boolean
---@field m_bOverrideAnimGraphRootMotionProperties boolean
---@field m_RootMode FAblRootMode
---@field m_BoneWeightAsset UAblBoneBlendWeightAsset
---@field m_RotationOffsetMeshSpace boolean
---@field m_IsAdditive boolean
local UAblPlayAnimationTask = {}



---@class UAblPlayAnimationTaskScratchPad : UAblAbilityTaskScratchPad
---@field OnAnimationPlayedDelegate FAblPlayAnimationTaskScratchPadOnAnimationPlayedDelegate
---@field AbilityComponents TArray<TWeakObjectPtr<UAblAbilityComponent>>
---@field SingleNodeSkeletalComponents TArray<TWeakObjectPtr<USkeletalMeshComponent>>
---@field EndTimeAdjust float
local UAblPlayAnimationTaskScratchPad = {}



---@class UAblPlayParticleEffectTask : UAblAbilityTask
---@field m_EffectTemplate UParticleSystem
---@field m_SocketName FName
---@field m_AttachToSocket boolean
---@field m_UseSocketRotation boolean
---@field m_LocationOffset FVector
---@field m_RotationOffset FRotator
---@field m_Scale float
---@field m_DestroyAtEnd boolean
---@field m_Parameters TArray<UAblParticleEffectParam>
local UAblPlayParticleEffectTask = {}



---@class UAblPlayParticleEffectTaskScratchPad : UAblAbilityTaskScratchPad
---@field SpawnedEffects TArray<TWeakObjectPtr<UParticleSystemComponent>>
local UAblPlayParticleEffectTaskScratchPad = {}



---@class UAblPlaySoundTask : UAblAbilityTask
---@field m_Sound USoundBase
---@field m_2DSound boolean
---@field m_LocationOffset FVector
---@field m_SocketName FName
---@field m_AttachToSocket boolean
---@field m_DestroyOnEnd boolean
---@field m_DestroyFadeOutDuration float
local UAblPlaySoundTask = {}



---@class UAblPlaySoundTaskScratchPad : UAblAbilityTaskScratchPad
---@field AttachedSounds TArray<TWeakObjectPtr<UAudioComponent>>
local UAblPlaySoundTaskScratchPad = {}



---@class UAblPossessionTask : UAblAbilityTask
---@field m_Possessor EAblAbilityTargetType
---@field m_PossessionTarget EAblAbilityTargetType
---@field m_UnPossessOnEnd boolean
local UAblPossessionTask = {}



---@class UAblPossessionTaskScratchPad : UAblAbilityTaskScratchPad
---@field PossessorController TWeakObjectPtr<APlayerController>
local UAblPossessionTaskScratchPad = {}



---@class UAblPrintToScreenTask : UAblAbilityTask
---@field DebugMessage FString
local UAblPrintToScreenTask = {}



---@class UAblRayCastQueryTask : UAblAbilityTask
---@field m_Length float
---@field m_OnlyReturnBlockingHit boolean
---@field m_QueryLocation FAblAbilityTargetTypeLocation
---@field m_CollisionChannel ECollisionChannel
---@field m_fireEvent boolean
---@field m_name FName
---@field m_CopyResultsToContext boolean
---@field m_AllowDuplicateEntries boolean
---@field m_TaskRealm EAblAbilityTaskRealm
---@field m_UseAsyncQuery boolean
local UAblRayCastQueryTask = {}



---@class UAblRayCastQueryTaskScratchPad : UAblAbilityTaskScratchPad
---@field AsyncProcessed boolean
local UAblRayCastQueryTaskScratchPad = {}



---@class UAblReactionAbility : UAblAbility
---@field AbleAbilityChannelName FName
---@field ChannelType EAblNpcReactChannelType
---@field PlayerInstigatorTicketTimeIncrease float
---@field bAddDeadTagIfDead boolean
---@field bWarmUpRagdollPhysics boolean
---@field bBranchToRagdollInWater boolean
local UAblReactionAbility = {}

---@param Context UAblAbilityContext
---@return UAblReactionData
function UAblReactionAbility:GetReactionData(Context) end


---@class UAblReactionAbilityScratchPad : UAblAbilityBaseScratchPad
---@field ReactionData UAblReactionData
---@field OnReactionAbilityStart FAblReactionAbilityScratchPadOnReactionAbilityStart
---@field OnReactionAbilityInterrupt FAblReactionAbilityScratchPadOnReactionAbilityInterrupt
---@field OnReactionAbilityEnd FAblReactionAbilityScratchPadOnReactionAbilityEnd
---@field OnReactionAbilityBranched FAblReactionAbilityScratchPadOnReactionAbilityBranched
local UAblReactionAbilityScratchPad = {}



---@class UAblReactionComponent : UActorComponent
---@field OnReactionReceived FAblReactionComponentOnReactionReceived
---@field OnReactionQueued FAblReactionComponentOnReactionQueued
---@field OnReactionFinished FAblReactionComponentOnReactionFinished
---@field AbleAbilityComp UAblAbilityComponent
---@field AnimationArchitectComp UAnimationArchitectComponent
---@field QueuedReactions TMap<FName, FAblReactionsList>
---@field RunningReactions TMap<FName, FAblReactionsList>
local UAblReactionComponent = {}

---@param ReactionParams FQueueReactionParams
---@return UAblReactionData
function UAblReactionComponent:QueueReaction(ReactionParams) end
---@param ReactionAbility TSubclassOf<UAblReactionAbility>
---@param ReactionParams FQueueReactionParams
---@return UAblReactionData
function UAblReactionComponent:QueueGivenReactionAbility(ReactionAbility, ReactionParams) end
---@param ReactionAbilities TArray<TSubclassOf<UAblReactionAbility>>
---@param ReactionParams FQueueReactionParams
---@return UAblReactionData
function UAblReactionComponent:QueueGivenReactionAbilities(ReactionAbilities, ReactionParams) end
---@param ReactionData UAblReactionData
---@return FQueueReactionParams
function UAblReactionComponent:MakeReactionParamsFromReactionData(ReactionData) end
---@return boolean
function UAblReactionComponent:IsAnyReactionRunning() end
---@param Context UAblAbilityContext
function UAblReactionComponent:HandleReactionAbilityStart(Context) end
---@param Context UAblAbilityContext
function UAblReactionComponent:HandleReactionAbilityInterrupt(Context) end
---@param Context UAblAbilityContext
function UAblReactionComponent:HandleReactionAbilityEnd(Context) end
---@param CurrentContext UAblAbilityContext
---@param NextContext UAblAbilityContext
function UAblReactionComponent:HandleReactionAbilityBranch(CurrentContext, NextContext) end
function UAblReactionComponent:EnableReactions() end
function UAblReactionComponent:DisableReactions() end


---@class UAblReactionData : UObject
---@field MunitionTags FGameplayTagContainer
---@field ReactionEffectComponent TWeakObjectPtr<UActorComponent>
---@field bDestroyEffectComponentOnReactionEnd boolean
local UAblReactionData = {}

---@return boolean
function UAblReactionData:IsPassive() end
---@return AActor
function UAblReactionData:GetTarget() end
---@return AActor
function UAblReactionData:GetInstigator() end
---@return FName
function UAblReactionData:GetChannelName() end


---@class UAblRemoveGameplayTagTask : UAblAbilityTask
---@field m_TagList TArray<FGameplayTag>
local UAblRemoveGameplayTagTask = {}



---@class UAblRenderStencil : UAblAbilityTask
---@field StencilEffect FStencilManagerEffectName
---@field resetStencilOnExit boolean
local UAblRenderStencil = {}



---@class UAblSetArchitectTagTask : UAblAbilityTask
---@field ArchitectTag FGameplayTag
---@field RemoveTagAtEndOfTask boolean
---@field AddThisTag boolean
---@field RemoveThisTag boolean
---@field Type ArchitectType
---@field ApplyToAnimationArchitect boolean
---@field ApplyToInteractionArchitect boolean
local UAblSetArchitectTagTask = {}



---@class UAblSetArchitectTagsTask : UAblAbilityTask
---@field ArchitectTags FGameplayTagContainer
---@field RemoveTagsAtEndOfTask boolean
---@field AddTheseTags boolean
---@field RemoveTheseTags boolean
---@field Type ArchitectType
local UAblSetArchitectTagsTask = {}



---@class UAblSetCollisionChannelResponseTask : UAblAbilityTask
---@field m_Channel ECollisionChannel
---@field m_Response ECollisionResponse
---@field m_SetAllChannelsToResponse boolean
---@field m_RestoreOnEnd boolean
local UAblSetCollisionChannelResponseTask = {}



---@class UAblSetCollisionChannelResponseTaskScratchPad : UAblAbilityTaskScratchPad
---@field PreviousCollisionValues TArray<FCollisionLayerResponseEntry>
local UAblSetCollisionChannelResponseTaskScratchPad = {}



---@class UAblSetCollisionChannelTask : UAblAbilityTask
---@field m_Channel ECollisionChannel
---@field m_RestoreOnEnd boolean
local UAblSetCollisionChannelTask = {}



---@class UAblSetCollisionChannelTaskScratchPad : UAblAbilityTaskScratchPad
---@field PrimitiveToChannelMap TMap<TWeakObjectPtr<UPrimitiveComponent>, ECollisionChannel>
local UAblSetCollisionChannelTaskScratchPad = {}



---@class UAblSetGameplayTagTask : UAblAbilityTask
---@field m_TagList TArray<FGameplayTag>
---@field m_RemoveOnEnd boolean
local UAblSetGameplayTagTask = {}



---@class UAblSetParameterValue : UObject
local UAblSetParameterValue = {}


---@class UAblSetScalarParameterValue : UAblSetParameterValue
---@field m_Scalar float
local UAblSetScalarParameterValue = {}



---@class UAblSetShaderParameterTask : UAblAbilityTask
---@field m_ParameterName FName
---@field m_value UAblSetParameterValue
---@field m_BlendIn FAlphaBlend
---@field m_RestoreValueOnEnd boolean
---@field m_BlendOut FAlphaBlend
local UAblSetShaderParameterTask = {}



---@class UAblSetShaderParameterTaskScratchPad : UAblAbilityTaskScratchPad
---@field DynamicMaterials TArray<UMaterialInstanceDynamic>
---@field PreviousValues TArray<UAblSetParameterValue>
---@field BlendIn FAlphaBlend
---@field BlendOut FAlphaBlend
local UAblSetShaderParameterTaskScratchPad = {}



---@class UAblSetTextureParameterValue : UAblSetParameterValue
---@field m_Texture UTexture
local UAblSetTextureParameterValue = {}



---@class UAblSetVectorParameterValue : UAblSetParameterValue
---@field m_Vector FLinearColor
local UAblSetVectorParameterValue = {}



---@class UAblSimpleBlendWeightAsset : UAblBoneBlendWeightAsset
---@field BlendWeightMap TMap<FName, float>
local UAblSimpleBlendWeightAsset = {}



---@class UAblSpawnActorTask : UAblAbilityTask
---@field m_actorClass TSubclassOf<AActor>
---@field m_SpawnLocation FAblAbilityTargetTypeLocation
---@field m_InitialVelocity FVector
---@field m_SetOwner boolean
---@field m_OwnerTargetType EAblAbilityTargetType
---@field m_AttachToOwnerSocket boolean
---@field m_AttachmentRule EAttachmentRule
---@field m_SocketName FName
---@field m_Offset FVector
---@field m_InheritOwnerLinearVelocity boolean
---@field m_MarkAsTransient boolean
---@field m_DestroyAtEnd boolean
---@field m_fireEvent boolean
---@field m_name FName
local UAblSpawnActorTask = {}



---@class UAblSpawnActorTaskScratchPad : UAblAbilityTaskScratchPad
---@field SpawnedActor TWeakObjectPtr<AActor>
local UAblSpawnActorTaskScratchPad = {}



---@class UAblSpeedCompensateBlendSpaceParameterGetter : UAblBlendSpaceParameterGetter
local UAblSpeedCompensateBlendSpaceParameterGetter = {}


---@class UAblStartPositionGetter : UObject
local UAblStartPositionGetter = {}


---@class UAblTargetingBase : UObject
---@field m_AutoCalculateRange boolean
---@field m_Range float
---@field m_CalculateAs2DRange boolean
---@field m_location FAblAbilityTargetTypeLocation
---@field m_CollisionChannel ECollisionChannel
---@field m_Filters TArray<UAblAbilityTargetingFilter>
---@field m_UseAsync boolean
local UAblTargetingBase = {}



---@class UAblTargetingBox : UAblTargetingBase
---@field m_HalfExtents FVector
local UAblTargetingBox = {}



---@class UAblTargetingCapsule : UAblTargetingBase
---@field m_Height float
---@field m_radius float
local UAblTargetingCapsule = {}



---@class UAblTargetingCone : UAblTargetingBase
---@field m_FOV float
---@field m_Length float
---@field m_Height float
---@field m_2DQuery boolean
local UAblTargetingCone = {}



---@class UAblTargetingCustom : UAblTargetingBase
local UAblTargetingCustom = {}


---@class UAblTargetingInstigator : UAblTargetingBase
local UAblTargetingInstigator = {}


---@class UAblTargetingOwner : UAblTargetingBase
local UAblTargetingOwner = {}


---@class UAblTargetingRaycast : UAblTargetingBase
---@field m_Length float
---@field m_OnlyWantBlockingObject boolean
local UAblTargetingRaycast = {}



---@class UAblTargetingSelf : UAblTargetingBase
local UAblTargetingSelf = {}


---@class UAblTargetingSphere : UAblTargetingBase
---@field m_radius float
local UAblTargetingSphere = {}



---@class UAblTaskCondition : UObject
local UAblTaskCondition = {}


---@class UAblTaskConditionAnimNotifyScratchpad : UAblTaskConditionScratchpad
---@field EventNames TSet<FName>
---@field bEventReceived boolean
---@field bEventExists boolean
local UAblTaskConditionAnimNotifyScratchpad = {}

---@param InCurrentTime float
---@param InAnimationAsset UAnimationAsset
---@param Context UAblAbilityContext
function UAblTaskConditionAnimNotifyScratchpad:OnAnimationPlayed(InCurrentTime, InAnimationAsset, Context) end


---@class UAblTaskConditionScratchpad : UObject
local UAblTaskConditionScratchpad = {}


---@class UAblTimeDilationTask : UAblAbilityTask
---@field TimeDilationTarget ETimeDilationTarget::Type
---@field TimeDilationCurve UCurveFloat
---@field TimeDilation float
---@field EaseInDuration float
---@field bCounterWorld boolean
---@field bEndTaskOnReactionDone boolean
---@field bTestAgainstWorldTime boolean
local UAblTimeDilationTask = {}



---@class UAblTurnToTask : UAblAbilityTask
---@field m_RotationTarget EAblAbilityTargetType
---@field m_TrackTarget boolean
---@field m_RotationOffset FRotator
---@field m_SetYaw boolean
---@field m_SetPitch boolean
---@field m_Blend FAlphaBlend
local UAblTurnToTask = {}



---@class UAblTurnToTaskScratchPad : UAblAbilityTaskScratchPad
---@field InProgressTurn TArray<FTurnToTaskEntry>
---@field TurningBlend FAlphaBlend
local UAblTurnToTaskScratchPad = {}



---@class UAbleHUDWidgetStyle : USlateWidgetStyleContainerBase
---@field AbleHUDWidgetStyle FAbleHUDStyle
local UAbleHUDWidgetStyle = {}



---@class UAbleSettings : UObject
---@field m_EnableAsync boolean
---@field m_AllowAsyncAbilityUpdate boolean
---@field m_AllowAsyncCooldownUpdate boolean
---@field m_LogAbilityFailues boolean
---@field m_LogVerbose boolean
---@field m_EchoVerboseToScreen boolean
---@field m_VerboseScreenOutputLifetime float
local UAbleSettings = {}



---@class UAble_AnimInstance : UAnimationArchitect_AnimInstance
---@field MapSequenceToPhaseVote TMap<UAnimSequence, float>
---@field InIdle boolean
---@field AnimationModifiers TArray<UAblAnimationModifier>
---@field DesiredWorldDirection FVector
---@field LastDesiredWorldDirection FVector
---@field DesiredWorldSpeed float
---@field RateMultiplierOverride float
---@field FixedYawRemaining float
---@field FixedYawOffset float
---@field FixedYawSampleTime float
---@field AbleAbilityComponent UAblAbilityComponent
local UAble_AnimInstance = {}

---@param InWorldDirection FVector
function UAble_AnimInstance:Set_LastDesiredWorldDirection(InWorldDirection) end
---@param InFixedYawRemaining float
---@param InFixedYawOffset float
---@param SampleTime float
function UAble_AnimInstance:Set_FixedYaw(InFixedYawRemaining, InFixedYawOffset, SampleTime) end
---@param InSpeed float
function UAble_AnimInstance:Set_DesiredWorldSpeed(InSpeed) end
---@param InWorldDirection FVector
function UAble_AnimInstance:Set_DesiredWorldDirection(InWorldDirection) end
---@param OutWorldDirection FVector
function UAble_AnimInstance:Get_LastDesiredWorldDirection(OutWorldDirection) end
---@param OutFixedYawSampleTime float
function UAble_AnimInstance:Get_FixedYawSampleTime(OutFixedYawSampleTime) end
---@param OutFixedYawRemaining float
function UAble_AnimInstance:Get_FixedYawRemaining(OutFixedYawRemaining) end
---@param OutFixedYawOffset float
function UAble_AnimInstance:Get_FixedYawOffset(OutFixedYawOffset) end
---@param OutSpeed float
function UAble_AnimInstance:Get_DesiredWorldSpeed(OutSpeed) end
---@param OutWorldDirection FVector
function UAble_AnimInstance:Get_DesiredWorldDirection(OutWorldDirection) end


---@class UAble_MovementComponent : UCharacterMovementComponent
---@field RootMotionModifierArray TArray<URootMotionModifier>
local UAble_MovementComponent = {}

---@param InRootMotionModifierProperties URootMotionModifierProperties
function UAble_MovementComponent:RemoveRootMotionModifier(InRootMotionModifierProperties) end
---@param InRootMotionModifierProperties URootMotionModifierProperties
---@param Instigator AActor
---@param Duration float
---@return URootMotionModifier
function UAble_MovementComponent:AddRootMotionModifier(InRootMotionModifierProperties, Instigator, Duration) end


---@class UAnimNotify_AbilityBranch : UAnimNotify
---@field Name FName
---@field Names TSet<FName>
local UAnimNotify_AbilityBranch = {}



---@class UAnimationClip_AblAbility : UAnimationClipProvider
local UAnimationClip_AblAbility = {}


---@class UBTDecorator_HasActivePassiveAbility : UBTDecorator
---@field ActorToCheck FBlackboardKeySelector
---@field Ability TSubclassOf<UAblAbility>
local UBTDecorator_HasActivePassiveAbility = {}



---@class UBTDecorator_IsAbilityOnCooldown : UBTDecorator
---@field ActorToCheck FBlackboardKeySelector
---@field Ability TSubclassOf<UAblAbility>
local UBTDecorator_IsAbilityOnCooldown = {}



---@class UBTDecorator_IsInAbilityRange : UBTDecorator
---@field PointA FBlackboardKeySelector
---@field PointB FBlackboardKeySelector
---@field Ability TSubclassOf<UAblAbility>
---@field XYDistance boolean
local UBTDecorator_IsInAbilityRange = {}



---@class UBTDecorator_IsPlayingAbility : UBTDecorator
---@field ActorToCheck FBlackboardKeySelector
local UBTDecorator_IsPlayingAbility = {}



---@class UBTTask_PlayAbility : UBTTask_PlayAbilityBase
---@field Ability TSubclassOf<UAblAbility>
local UBTTask_PlayAbility = {}



---@class UBTTask_PlayAbilityBase : UBTTaskNode
---@field AbilityChannelName FName
---@field MarkAsInProgressDuringExecution boolean
---@field bWaitForHermesMessage boolean
---@field MessageName FName
local UBTTask_PlayAbilityBase = {}



---@class UBTTask_PlayArchitectAbility : UBTTask_PlayAbilityBase
---@field InteractionArchitectAsset UInteractionArchitectAsset
---@field Project EInteractionProject
---@field SourceTags FGameplayTagContainer
---@field TargetTags FGameplayTagContainer
local UBTTask_PlayArchitectAbility = {}



---@class UBTTask_StopAbility : UBTTaskNode
---@field CancelActive boolean
---@field Ability TSubclassOf<UAblAbility>
---@field ResultToUse EAblAbilityTaskResult
local UBTTask_StopAbility = {}



---@class UDefault__AblAbilityBlueprintGeneratedClass
local UDefault__AblAbilityBlueprintGeneratedClass = {}


---@class UIKDriver_GroundAdjustment_Able : UIKDriver_GroundAdjustment
local UIKDriver_GroundAdjustment_Able = {}


---@class UObjectTrackerManager : UObject
local UObjectTrackerManager = {}


---@class UPhysicalBodyBlendChannel : UObject
---@field ChannelBlendedWeights TArray<float>
---@field ChannelFadeWeights TArray<float>
---@field PhysicalBodyBlendArray TArray<UPhysicalBodyBlendInfo>
local UPhysicalBodyBlendChannel = {}



---@class UPhysicalBodyBlendInfo : UObject
---@field SourceBodyWeights TArray<float>
---@field DestBodyWeights TArray<float>
---@field BlendState EPhysicalBodyBlendState
---@field BlendFilter FAlphaBlend
---@field ChannelIndex int32
---@field bContinuous boolean
---@field bMarkedForDestroy boolean
local UPhysicalBodyBlendInfo = {}



---@class URootMotionModifier : UObject
---@field RootMotionModifierProperties URootMotionModifierProperties
---@field Instigator AActor
---@field RootMotionModifierOrder ERootMotionModifierOrder
---@field Duration float
local URootMotionModifier = {}



---@class URootMotionModifierProperties : UObject
---@field RootMotionModifierOrder ERootMotionModifierOrder
local URootMotionModifierProperties = {}



---@class URootMotionModifierUltimate : URootMotionModifier
local URootMotionModifierUltimate = {}


---@class UablTimeDilationTaskScratchPad : UAblAbilityTaskScratchPad
local UablTimeDilationTaskScratchPad = {}


