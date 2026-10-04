---@meta

---@class ABakedRagdollPoseActor : AActor
---@field BakedPoseComponent UBakedRagdollPoseComponent
---@field SkelMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field ActorConstrainedToUs AActor
local ABakedRagdollPoseActor = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param ImpulseNormal FVector
---@param HitReslt FHitResult
function ABakedRagdollPoseActor:HandleOnActorHit(SelfActor, OtherActor, ImpulseNormal, HitReslt) end


---@class FAudioLayerBehaviorState
local FAudioLayerBehaviorState = {}


---@class FAuthoredImpact
---@field Name FName
---@field ReactionStrength EImpactReactionStrength
---@field AffectedBodies TArray<FName>
---@field ImpactedBodies TArray<FName>
---@field ImpactDirection FVector
---@field ImpactLocationLocal FVector
---@field ImpactMaxYaw float
---@field ImpactMaxPitch float
---@field ImpactVariationYaw float
---@field ImpactVariationPitch float
---@field ImpactStrengthMin float
---@field ImpactStrengthMax float
---@field ImpactDuration float
---@field ImpactEaseInDuration float
---@field BlendBackDelay float
---@field BlendBackDuration float
---@field bUseGivenImpactStength boolean
local FAuthoredImpact = {}



---@class FGetupAnimationProfile
---@field Name FName
---@field GetupAnimationTags TArray<FGameplayTagContainer>
local FGetupAnimationProfile = {}



---@class FPhysicsForceAndTorquePD
---@field VerticalForce FPhysicsPD
---@field HorizontalForce FPhysicsPD
---@field Torque FPhysicsPD
local FPhysicsForceAndTorquePD = {}



---@class FPhysicsPD
---@field Stiffness float
---@field Damping float
---@field Max float
local FPhysicsPD = {}



---@class FPhysicsPoseDrivingConfig
---@field VirtualForces TMap<FName, FPhysicsVirtualForcePD>
---@field GravityCompensation float
local FPhysicsPoseDrivingConfig = {}



---@class FPhysicsVirtualForcePD
---@field PD FPhysicsPD
---@field ForceLocationLocal FVector
---@field GravityCompensation float
---@field Depth int32
---@field Application EPhysicsVirtualForceApplication
local FPhysicsVirtualForcePD = {}



---@class FRagdollAudioBehaviorLayer
---@field LayerName FName
---@field AudioBehaviors TArray<URagdollAudioBehavior>
local FRagdollAudioBehaviorLayer = {}



---@class FRagdollBodyAttachment
---@field AttachBoneName FName
---@field AttachBodyNames TArray<FName>
local FRagdollBodyAttachment = {}



---@class FRagdollBodyConstraintsConfig
---@field ConstrainedBodies TSet<FName>
---@field EaseInDuration float
local FRagdollBodyConstraintsConfig = {}



---@class FRagdollControlPostAnimationTickFunction : FTickFunction
local FRagdollControlPostAnimationTickFunction = {}


---@class FRagdollGetupOptions
---@field RequiredState FRagdollState
---@field TargetGetupProfile FName
local FRagdollGetupOptions = {}



---@class FRagdollPhysicsBodyPredicate
---@field WhenPhysicsAsset UPhysicsAsset
---@field IncludedPhysicBodyBones TArray<FName>
---@field ExcludedPhysicBodyBones TArray<FName>
local FRagdollPhysicsBodyPredicate = {}



---@class FRagdollPoseState
---@field Name FName
---@field PoseMatches TArray<FRagdollUprightRange>
local FRagdollPoseState = {}



---@class FRagdollSensoryBehavior
---@field Relativity ERagdollSensoryBehaviorEnum
---@field Behavior URagdollBehavior
---@field status boolean
local FRagdollSensoryBehavior = {}



---@class FRagdollSensoryCollision
---@field ImpactImpulseMin float
---@field ImpactImpulseMax float
---@field IfOutOfRange boolean
---@field RequireNormalToWorldUpRealitiveRange boolean
---@field NormalToWorldUpAngleMin float
---@field NormalToWorldUpAngleMax float
---@field PhysicsBodyRequirements TArray<FRagdollPhysicsBodyPredicate>
---@field status boolean
local FRagdollSensoryCollision = {}



---@class FRagdollSensoryRange
---@field SensoryValue ERagdollSensoryRangeValueEnum
---@field Min float
---@field Max float
---@field IfOutOfRange boolean
local FRagdollSensoryRange = {}



---@class FRagdollSensoryStatus
---@field SensoryValue ERagdollSensoryStatusValueEnum
---@field status boolean
local FRagdollSensoryStatus = {}



---@class FRagdollState
---@field RequiredAll TArray<URagdollSensoryState>
---@field RequiredAny TArray<URagdollSensoryState>
---@field RequiredNone TArray<URagdollSensoryState>
local FRagdollState = {}



---@class FRagdollUprightRange
---@field CompareWorldUpTo ERagdollBodyLineUprightEnum
---@field Min float
---@field Max float
local FRagdollUprightRange = {}



---@class UBakedRagdollPoseComponent : UPrimitiveComponent
---@field RagdollPoseBodySetup UBodySetup
local UBakedRagdollPoseComponent = {}



---@class URagdollAudioBehavior : URagdollBehaviorBase
---@field Event UAvaAudioDialogueEvent
---@field StopOnExit boolean
---@field AlwaysInterrupt boolean
---@field CanInterruptAudioBehaviors TArray<URagdollAudioBehavior>
local URagdollAudioBehavior = {}



---@class URagdollAudioBehaviorProfile : UDataAsset
---@field BehaviorLayers TArray<FRagdollAudioBehaviorLayer>
local URagdollAudioBehaviorProfile = {}



---@class URagdollBehavior : URagdollBehaviorBase
---@field ExitToBehaviors TArray<URagdollBehavior>
---@field AllowGetup boolean
---@field COMLocationDriveMode ERagdollCOMLocationDrivingMode
---@field COMRotationDriveMode ERagdollCOMRotationDrivingMode
---@field DriveAnimationMode ERagdollDriveAnimEnum
---@field DriveToAnimationTags FGameplayTagContainer
---@field ForceAnimResetIfPriorAnimDrivesToSameTags boolean
---@field PoseDriveMode ERagdollPoseDrivingMode
---@field PoseDriveBlendTime float
---@field StrengthOverTime UCurveFloat
---@field StrengthBlendInTime float
---@field CommitToGetupPose boolean
---@field EndBehavior boolean
---@field AllowRemoval boolean
---@field AllowHibrnate boolean
---@field ForceFreezeInPlace boolean
local URagdollBehavior = {}



---@class URagdollBehaviorBase : UDataAsset
---@field RequireStatesAlways FRagdollState
---@field RequireStatesToEnter FRagdollState
---@field RequireStatesToMantain FRagdollState
local URagdollBehaviorBase = {}



---@class URagdollBehaviorComponent : UActorComponent
---@field Config URagdollBehaviorConfigAsset
---@field OnRagdollHitActor FRagdollBehaviorComponentOnRagdollHitActor
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field RagdollControlComponent URagdollControlComponent
---@field CurBehavior URagdollBehavior
---@field PriorBehavior URagdollBehavior
---@field CurRecoveryAssistBehavior URagdollRecoveryAssistBehavior
---@field PriorRecoveryAssistBehavior URagdollRecoveryAssistBehavior
local URagdollBehaviorComponent = {}

---@param InSkeletalMeshComponent USkeletalMeshComponent
function URagdollBehaviorComponent:SetSkeletalMeshComponent(InSkeletalMeshComponent) end
---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function URagdollBehaviorComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end
---@param targetSensoryState FName
---@return boolean
function URagdollBehaviorComponent:IsSensoryStateStatisfied(targetSensoryState) end
---@param targetPose FName
---@return boolean
function URagdollBehaviorComponent:IsPoseStateStatisfied(targetPose) end
---@return boolean
function URagdollBehaviorComponent:IsGetupAllowed() end
---@return boolean
function URagdollBehaviorComponent:HasValidSetup() end
---@param rLayerState FAudioLayerBehaviorState
function URagdollBehaviorComponent:DoAudioBehaviorChangeEvent(rLayerState) end


---@class URagdollBehaviorConfigAsset : UDataAsset
---@field BehaviorProfile URagdollBehaviorProfile
---@field AudioBehaviorProfile URagdollAudioBehaviorProfile
---@field RecoveryAssistBehaviorProfile URagdollRecoveryAssistBehaviorProfile
---@field GetupAnimationTagStateFilter TArray<FRagdollGetupOptions>
---@field RagdollShoulderLeftName FName
---@field RagdollShoulderRightName FName
---@field RagdollHipsLeftName FName
---@field RagdollHipsRightName FName
---@field RagdollSpineLowerBoneName FName
---@field RagdollSpineUpperBoneName FName
---@field IdentifiablePoseStates TArray<FRagdollPoseState>
---@field NavigationLayer uint32
---@field MinMoveDist2DRetestNavPosition float
---@field MaxGroundTestDistance float
local URagdollBehaviorConfigAsset = {}



---@class URagdollBehaviorProfile : UDataAsset
---@field Behaviors TArray<URagdollBehavior>
local URagdollBehaviorProfile = {}



---@class URagdollControlComponent : UActorComponent
---@field Config URagdollControlConfig
---@field RagdollBehaviorClass TSubclassOf<URagdollBehaviorComponent>
---@field RagdollBehaviorConfig URagdollBehaviorConfigAsset
---@field OnBakedRigidBodyAttachedEvent FRagdollControlComponentOnBakedRigidBodyAttachedEvent
---@field OnBakedRigidbodyRemovedEvent FRagdollControlComponentOnBakedRigidbodyRemovedEvent
---@field OnFullRagdollStartEvent FRagdollControlComponentOnFullRagdollStartEvent
---@field OnFullRagdollEndEvent FRagdollControlComponentOnFullRagdollEndEvent
---@field PostAnimationTickFunction FRagdollControlPostAnimationTickFunction
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field RagdollBehaviorComponent URagdollBehaviorComponent
local URagdollControlComponent = {}

function URagdollControlComponent:StartReaction() end
---@param InReactionStrength EImpactReactionStrength
---@param InWorldLocation FVector
---@param InWorldDirection FVector
---@param InWorldImpactStrength float
function URagdollControlComponent:StartImpactReaction(InReactionStrength, InWorldLocation, InWorldDirection, InWorldImpactStrength) end
---@param InReactionStrength EImpactReactionStrength
---@param InWorldLocation FVector
---@param InWorldDirection FVector
---@param InWorldImpactStrength float
function URagdollControlComponent:ShowImpactReaction(InReactionStrength, InWorldLocation, InWorldDirection, InWorldImpactStrength) end
---@param InSkeletalMeshComponent USkeletalMeshComponent
function URagdollControlComponent:SetSkeletalMeshComponent(InSkeletalMeshComponent) end
---@param InPoseDrivingMode ERagdollPoseDrivingMode
---@param InBlendDuration float
function URagdollControlComponent:SetPoseDrivingMode(InPoseDrivingMode, InBlendDuration) end
function URagdollControlComponent:SetOwnerResurrected() end
function URagdollControlComponent:SetOwnerIsDead() end
---@param bInWater boolean
function URagdollControlComponent:SetInWater(bInWater) end
---@param InLocationDrivingMode ERagdollCOMLocationDrivingMode
---@param InRotationDrivingMode ERagdollCOMRotationDrivingMode
function URagdollControlComponent:SetCOMDrivingModes(InLocationDrivingMode, InRotationDrivingMode) end
---@param InContextName FName
---@param bInEnable boolean
function URagdollControlComponent:SetBodyConstraintContext(InContextName, bInEnable) end
function URagdollControlComponent:RemoveBakedRigidbody() end
---@return boolean
function URagdollControlComponent:IsFullRagdoll() end
---@return boolean
function URagdollControlComponent:IsBakedToRigidbody() end
---@return boolean
function URagdollControlComponent:HasValidSetup() end
function URagdollControlComponent:ForcePopOutOfRagdollImmediately() end
function URagdollControlComponent:DisallowBlendingOutOfRagdollUntilForced() end
function URagdollControlComponent:DisableCcd() end
---@param InActor AActor
---@param InCollisionProfile FName
function URagdollControlComponent:DeepFreezeWithActor(InActor, InCollisionProfile) end
---@return boolean
function URagdollControlComponent:CanGetup() end
---@param bInStationaryCapsuleWhileBlending boolean
---@param InBlendDurationOverride float
function URagdollControlComponent:BlendBack(bInStationaryCapsuleWhileBlending, InBlendDurationOverride) end
function URagdollControlComponent:AttachBakedRigidbody() end


---@class URagdollControlConfig : UDataAsset
---@field RagdollMeshCollisionProfile FName
---@field RagdollMeshCollisionProfileAlive FName
---@field RagdollCapsuleCollisionProfile FName
---@field NonRagdollMeshCollisionProfile FName
---@field NonRagdollCapsuleCollisionProfile FName
---@field BakedRagdollCollisionProfile FName
---@field BakedMeshCollisionProfile FName
---@field PoseDrivingProfiles TMap<ERagdollPoseDrivingMode, FPhysicsPoseDrivingConfig>
---@field TargetPoseInterpSpeed float
---@field bCcdAlwaysOn boolean
---@field bSweepCapsule boolean
---@field bAdjustConstraintsToTargetPose boolean
---@field ContextualBodyConstraints TMap<FName, FRagdollBodyConstraintsConfig>
---@field ArtificialGravityScale float
---@field AuthoredImpacts TArray<FAuthoredImpact>
---@field BodiesForPoseMatching TArray<FName>
---@field GetupBlendDuration float
---@field GetupBlendDelay float
---@field InWaterRecoveryDelay float
---@field bCanGetupFromGround boolean
---@field bCanRecoverInAir boolean
---@field MinGetupBlendVelocity float
---@field MinGetupBlendAngularVelocity float
---@field GroundDetectionRaycastDistance float
---@field GetupAnimationProfiles TArray<FGetupAnimationProfile>
---@field GetupAnimationTags TArray<FGameplayTagContainer>
---@field bPhysicsHovering boolean
---@field HoverForces FPhysicsForceAndTorquePD
---@field HoverGravityCompensation float
---@field HoverBodyForceAmount TMap<FName, float>
---@field BodyAttachments TMap<FName, FRagdollBodyAttachment>
---@field bMonitorCenterOfMassForImpacts boolean
---@field ImpactImpulseRange FFloatRange
---@field ImpactCameraShake TSubclassOf<UCameraShakeBase>
---@field ImpactCameraShakeScale float
---@field ImpactCameraShakeRadiusRange FFloatRange
---@field bBlendToKinematic boolean
---@field bSyncCapsule boolean
---@field bDebugDrawImpacts boolean
---@field bDebugDrawTargetPose boolean
---@field bDebugDrawPoseMatching boolean
---@field bDebugDrawBlends boolean
local URagdollControlConfig = {}



---@class URagdollRecoveryAssistBehavior : URagdollBehaviorBase
---@field RunAssistPlugin URagdollRecoveryAssistPlugin
local URagdollRecoveryAssistBehavior = {}



---@class URagdollRecoveryAssistBehaviorProfile : UDataAsset
---@field Behaviors TArray<URagdollRecoveryAssistBehavior>
local URagdollRecoveryAssistBehaviorProfile = {}



---@class URagdollRecoveryAssistPlugin : UObject
local URagdollRecoveryAssistPlugin = {}


---@class URagdollRecoveryAssistPlugin_ForceKill : URagdollRecoveryAssistPlugin
local URagdollRecoveryAssistPlugin_ForceKill = {}


---@class URagdollRecoveryAssistPlugin_GuideToSafeRecovery : URagdollRecoveryAssistPlugin
---@field PushStrengthToTime UCurveFloat
---@field PushCutoffDistance float
local URagdollRecoveryAssistPlugin_GuideToSafeRecovery = {}



---@class URagdollSensoryState : UDataAsset
---@field SensoryRangeMatches TArray<FRagdollSensoryRange>
---@field SensoryStatusMatches TArray<FRagdollSensoryStatus>
---@field SensoryBehaviorsMatches TArray<FRagdollSensoryBehavior>
---@field SensoryCollisionMatches TArray<FRagdollSensoryCollision>
---@field AndRequire FRagdollState
local URagdollSensoryState = {}



