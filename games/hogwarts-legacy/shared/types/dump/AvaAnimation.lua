---@meta

---@class FAnimInstanceProxy_RetrieveActorTransform : FAnimInstanceProxy
local FAnimInstanceProxy_RetrieveActorTransform = {}


---@class FAnimMaskAssetIO
---@field Skeleton USkeleton
---@field ParentMask UAnimMaskAsset
---@field BoneMask TMap<FAnimMaskBoneReference, float>
---@field CurveMask TMap<FAnimMaskCurveReference, float>
local FAnimMaskAssetIO = {}



---@class FAnimMaskAssetRow : FTableRowBase
---@field AnimMaskAsset UAnimMaskAsset
local FAnimMaskAssetRow = {}



---@class FAnimMaskBoneReference
---@field BoneName FName
local FAnimMaskBoneReference = {}



---@class FAnimMaskCurveReference
---@field CurveName FName
local FAnimMaskCurveReference = {}



---@class FAnimMaskInstance
local FAnimMaskInstance = {}


---@class FAnimMaskKey
local FAnimMaskKey = {}


---@class FAnimNode_AdjustWorldSpaceTransform : FAnimNode_Base
---@field BasePose FPoseLink
---@field TranslationOffset FVector
---@field RotationOffset FRotator
local FAnimNode_AdjustWorldSpaceTransform = {}



---@class FAnimNode_AimWithPivot : FAnimNode_Base
---@field BasePose FPoseLink
---@field PivotBone FBoneReference
---@field LeverBone FBoneReference
---@field UpAxisInLeverSpace FVector
---@field ForwardAxisInLeverSpace FVector
---@field GuideBone FBoneReference
---@field AimAlpha float
---@field TargetInWorldSpace FVector
local FAnimNode_AimWithPivot = {}



---@class FAnimNode_AmbientFacial : FAnimNode_Base
---@field BasePose FPoseLink
---@field AimEyesData UAimEyesData
local FAnimNode_AmbientFacial = {}



---@class FAnimNode_AvaInertialization : FAnimNode_Inertialization
---@field AnimComponent UAnimationComponent
local FAnimNode_AvaInertialization = {}



---@class FAnimNode_BipedIK : FAnimNode_Base
---@field BasePose FPoseLink
---@field ControlParameters FPoseUtilityBipedController
local FAnimNode_BipedIK = {}



---@class FAnimNode_BoneTransformMultiplier : FAnimNode_SkeletalControlBase
---@field BoneToModify FBoneReference
---@field TranslationMultiplier FVector
---@field RotationMultiplier FVector
---@field ScaleMultiplier FVector
---@field TransformSpace EBoneControlSpace
local FAnimNode_BoneTransformMultiplier = {}



---@class FAnimNode_CameraFixup : FAnimNode_Base
---@field BasePose FPoseLink
---@field RootBone FBoneReference
---@field CameraBone FBoneReference
---@field TargetBone FBoneReference
local FAnimNode_CameraFixup = {}



---@class FAnimNode_EyeTarget : FAnimNode_Base
---@field BasePose FPoseLink
---@field LODThreshold int32
local FAnimNode_EyeTarget = {}



---@class FAnimNode_IKMasterNode : FAnimNode_ControlRigBase
---@field PoseBlendAlpha float
local FAnimNode_IKMasterNode = {}



---@class FAnimNode_InitializeEffectors : FAnimNode_Base
---@field BasePose FPoseLink
---@field EffectorData TArray<FInitializeEffectorData>
local FAnimNode_InitializeEffectors = {}



---@class FAnimNode_MirrorPoseFromMesh : FAnimNode_Base
---@field SourceMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field bUseAttachedParent boolean
---@field bCopyCurves boolean
---@field bCopyCustomAttributes boolean
---@field bUseMeshPose boolean
---@field RootBoneToCopy FName
local FAnimNode_MirrorPoseFromMesh = {}



---@class FAnimNode_MotionMatcher : FAnimNode_Base
---@field PoseTable UDataTable
---@field IdleAnimations TArray<UAnimSequence>
---@field GoalDelegate UObject
---@field Responsiveness float
---@field BonusForSameMotion float
---@field BlendDuration float
---@field bAnimationDrivesPill boolean
---@field bAlignRootDirection boolean
---@field bStrideWarping boolean
---@field bHoldFootPositionWhenPlanted boolean
---@field ShowGoal boolean
---@field ShowTrail boolean
---@field ShowBestPath boolean
---@field ShowFeet boolean
---@field ShowVelocity boolean
---@field ShowCapsuleVsAnimation boolean
---@field CandidatesToDrawPerFrame float
---@field TimeToHoldEachCandidate float
---@field CurrentAnimSequence UAnimSequence
local FAnimNode_MotionMatcher = {}



---@class FAnimNode_MultiplyBoneTransforms : FAnimNode_SkeletalControlBase
---@field SourceBone FBoneReference
---@field TargetBones TArray<FBoneReference>
---@field bInvert boolean
local FAnimNode_MultiplyBoneTransforms = {}



---@class FAnimNode_RequestedLayerBlend : FAnimNode_Base
---@field BasePose FPoseLink
local FAnimNode_RequestedLayerBlend = {}



---@class FAnimNode_StrideWarping : FAnimNode_Base
---@field BasePose FPoseLink
---@field StrideWarping float
---@field StartTransform FTransform
---@field EnableFootRayCasts boolean
---@field FootPlantedThreshold float
---@field LeftKneeJointOffset FVector
---@field RightKneeJointOffset FVector
---@field DrawDebug boolean
local FAnimNode_StrideWarping = {}



---@class FAnimNode_Template : FAnimNode_Base
---@field BasePose FPoseLink
local FAnimNode_Template = {}



---@class FAnimNode_TransformRootBone : FAnimNode_Base
---@field BasePose FPoseLink
---@field Translate FVector
---@field Rotate FRotator
local FAnimNode_TransformRootBone = {}



---@class FAnimRequest
local FAnimRequest = {}


---@class FAnimRequestInput
local FAnimRequestInput = {}


---@class FAnimTrackClipRange
---@field RangeType EAnimTrackPlaybackRange
---@field TimingOffset FAnimTrackRangedFloat
---@field StartOffset FAnimTrackRangedFloat
---@field EndOffset FAnimTrackRangedFloat
---@field Duration FAnimTrackRangedFloat
local FAnimTrackClipRange = {}



---@class FAnimTrackPlacementOptions
---@field ComponentInPlacementSpace FTransform
---@field RootInPlacementSpace FTransform
---@field PlacementInWorldSpace FTransform
---@field PlacementIsValid boolean
---@field RootMotionIsValid boolean
---@field InitialPlacementTransform FTransform
---@field ConstrainedToPlacement boolean
---@field PlacementIsMoving boolean
---@field HandledByRequest boolean
---@field RootEvaluationMode EAnimTrackRootMode
---@field AccumulateRootMotion boolean
---@field PlacementProvider UTransformProvider
---@field AnimationPlacementOffset UAnimationTransformProvider
local FAnimTrackPlacementOptions = {}



---@class FAnimTrackPlaybackOptions
---@field PlayRateType EAnimTrackPlaybackSpeed
---@field ForcedDuration float
---@field ForcedPlayRate float
local FAnimTrackPlaybackOptions = {}



---@class FAnimTrackRangedFloat
---@field UseRange boolean
---@field RangeMin float
---@field RangeMax float
local FAnimTrackRangedFloat = {}



---@class FAnimatedBoolPropertyDriver : FAnimatedPropertyDriverBase
---@field DefaultValue boolean
local FAnimatedBoolPropertyDriver = {}



---@class FAnimatedFloatPropertyDriver : FAnimatedPropertyDriverBase
---@field DefaultValue float
local FAnimatedFloatPropertyDriver = {}



---@class FAnimatedIntegerPropertyDriver : FAnimatedPropertyDriverBase
---@field DefaultValue int32
local FAnimatedIntegerPropertyDriver = {}



---@class FAnimatedPropertyDriverBase
local FAnimatedPropertyDriverBase = {}


---@class FAnimatedVectorPropertyDriver
---@field DefaultValue FVector
local FAnimatedVectorPropertyDriver = {}



---@class FAnimationClip_RandomEntry
---@field ClipProvider UAnimationClipProvider
---@field weight float
local FAnimationClip_RandomEntry = {}



---@class FAnimationLayer_Additive : FAnimationRequestLayerInstance
local FAnimationLayer_Additive = {}


---@class FAnimationLayer_BlendAndAdd : FAnimationRequestLayerInstance
local FAnimationLayer_BlendAndAdd = {}


---@class FAnimationLayer_BlendAndReplace : FAnimationRequestLayerInstance
local FAnimationLayer_BlendAndReplace = {}


---@class FAnimationLayer_Modify : FAnimationRequestLayerInstance
local FAnimationLayer_Modify = {}


---@class FAnimationLayer_Replace : FAnimationRequestLayerInstance
local FAnimationLayer_Replace = {}


---@class FAnimationRequestLayer
---@field LayerName FName
---@field MaxLODLevel int32
---@field BlendType EAnimationRequestLayerBlendType
---@field bRecordLastSequence boolean
---@field LayerMask UAnimMaskAsset
local FAnimationRequestLayer = {}



---@class FAnimationRequestLayerInstance
---@field AnimRequestProviders TArray<TWeakObjectPtr<UObject>>
---@field PlacementRequestProviders TArray<TWeakObjectPtr<UObject>>
---@field RootMotionRequestProviders TArray<TWeakObjectPtr<UObject>>
---@field AnimRequests TArray<FAnimRequest>
---@field PlacementRequests TArray<FMoveRequest>
---@field RootMotionRequests TArray<FMoveRequest>
---@field LayerWeight float
local FAnimationRequestLayerInstance = {}



---@class FAnimationRequestLayerReference
---@field LayerName FName
local FAnimationRequestLayerReference = {}



---@class FAnimationSet
---@field AnimationEntries TArray<FAnimationSetEntry>
local FAnimationSet = {}



---@class FAnimationSetEntry
---@field EntryName FName
---@field AnimationAsset UAnimationAsset
---@field InWorldStatus AnimationValidatedInWorld
---@field bSelectedForNextUse boolean
local FAnimationSetEntry = {}



---@class FAnimationTrack
---@field ParentObject TWeakObjectPtr<UObject>
---@field Animation UAnimationAsset
---@field LocalAnimDuration float
---@field PlayRate float
---@field LocalAnimStart float
---@field TimingOffset float
---@field CurrentBlendSampleData TArray<FBlendSampleData>
---@field AnimStart float
---@field AnimEnd float
---@field CurrentLocalTime float
---@field PreviousLocalTime float
---@field CurrentTime float
---@field CurrentBlendWeight float
---@field AnimationInPlacementSpace FTransform
---@field AnimationProvider UAnimationProvider
---@field BlendSpaceInput UBlendSpaceInputProvider
---@field ReselectOnLoopBoundaries boolean
---@field ClipSubRange FAnimTrackClipRange
---@field PlacementOptions FAnimTrackPlacementOptions
---@field PlaybackOptions FAnimTrackPlaybackOptions
local FAnimationTrack = {}



---@class FBoneIndexProperty
---@field BoneIndex int32
local FBoneIndexProperty = {}



---@class FBoneReferenceEx : FBoneReference
local FBoneReferenceEx = {}


---@class FCachedMoveRequestProvider
local FCachedMoveRequestProvider = {}


---@class FClothOptionsInstanceData
local FClothOptionsInstanceData = {}


---@class FConditionalStaticMeshPool
---@field TimeRange FVector2D
---@field StaticMeshPool TArray<TSoftObjectPtr<UStaticMesh>>
local FConditionalStaticMeshPool = {}



---@class FControlRigConeConstraint
---@field YawLimit float
---@field PitchLimit float
---@field RollLimit float
---@field ConeRotation FRotator
local FControlRigConeConstraint = {}



---@class FConversationCameraRegistration
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field CameraTags FGameplayTagContainer
---@field AvoidTransitionCameraNames TArray<UNameProvider>
local FConversationCameraRegistration = {}



---@class FConversationCameraRegistrationReference
---@field CameraRegistrationName FName
local FConversationCameraRegistrationReference = {}



---@class FConversationEmotion
---@field Emotion EFacialEmotion
---@field HoldTime float
local FConversationEmotion = {}



---@class FConversationExplicitCameraShot
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field AvatarCameras TArray<FConversationExplicitCameraShot_CameraListItem>
---@field InteractionActorCameras TArray<FConversationExplicitCameraShot_CameraListItem>
local FConversationExplicitCameraShot = {}



---@class FConversationExplicitCameraShotReference
---@field CameraShotName FName
local FConversationExplicitCameraShotReference = {}



---@class FConversationExplicitCameraShot_CameraListItem
---@field Camera UActorProvider
---@field weight float
local FConversationExplicitCameraShot_CameraListItem = {}



---@class FConversationExplicitLayeredAnimation
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field Tags FGameplayTagContainer
---@field Layer FAnimationRequestLayerReference
---@field Mask UAnimMaskAsset
---@field BlendWeight float
---@field BlendWeightVariability float
---@field ComputedBlendWeight UFloatProvider
---@field BlendTime float
---@field BlendTimeVariability float
---@field Blocking boolean
local FConversationExplicitLayeredAnimation = {}



---@class FConversationExplicitLayeredAnimationCategory
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field Animations TArray<FConversationExplicitLayeredAnimation>
local FConversationExplicitLayeredAnimationCategory = {}



---@class FConversationExplicitLayeredAnimationReference
---@field CategoryName FName
---@field animationName FName
local FConversationExplicitLayeredAnimationReference = {}



---@class FConversationExplicitPoseGroup
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field Tags FGameplayTagContainer
local FConversationExplicitPoseGroup = {}



---@class FConversationExplicitPoseGroupReference
---@field PoseGroupName FName
local FConversationExplicitPoseGroupReference = {}



---@class FConversationLayeredAnimationWeight
---@field WeightEntryName FName
local FConversationLayeredAnimationWeight = {}



---@class FConversationLayeredAnimationWeightEntry
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field Provider UFloatProvider
local FConversationLayeredAnimationWeightEntry = {}



---@class FConversationPreset
---@field Name FName
---@field DisplayName FString
---@field Description FString
---@field DefaultPresetTalkTo boolean
---@field DefaultPresetForced boolean
---@field SceneRigTags FGameplayTagContainer
---@field CameraTags FGameplayTagContainer
---@field InteractionActorSettings FConversation_InteractionActorSettings
---@field AvatarSettings FConversation_AvatarSettings
local FConversationPreset = {}



---@class FConversationPresetReference
---@field PresetName FName
local FConversationPresetReference = {}



---@class FConversation_AvatarSettings
---@field InitialTransformSettings FConversation_InitialTransformSettings
---@field Placements TArray<UConversationPreset_AvatarPlacement>
---@field EnableFinalPositionOverride boolean
---@field FinalPositionOverrideCheckGroundCollision boolean
---@field FinalPositionOverrideCheckNavMesh boolean
---@field FinalTransformSettings FConversation_FinalTransformSettings
---@field PreInitInvokePlacement UConversationPreset_PreInitInvoke_Placement
local FConversation_AvatarSettings = {}



---@class FConversation_FinalTransformSettings
---@field TransformType UConversationPreset_FinalTransform
---@field CheckGroundCollision boolean
---@field CheckNavMesh boolean
local FConversation_FinalTransformSettings = {}



---@class FConversation_InitialTransformSettings
---@field TransformType UConversationPreset_InitialTransform
---@field CheckGroundCollision boolean
---@field CheckNavMesh boolean
local FConversation_InitialTransformSettings = {}



---@class FConversation_InteractionActorSettings
---@field EnableInitialPositionOverride boolean
---@field InitialPositionOverrideCheckGroundCollision boolean
---@field InitialPositionOverrideCheckNavMesh boolean
---@field EnableInitialPositionFromStationSockets boolean
---@field InitialPositionFromStationSocketsCheckGroundCollision boolean
---@field InitialPositionFromStationSocketsCheckNavMesh boolean
---@field InitialTransformSettings FConversation_InitialTransformSettings
---@field FinalTransformSettings FConversation_FinalTransformSettings
local FConversation_InteractionActorSettings = {}



---@class FCurveIndexProperty
---@field CurveIndex uint16
local FCurveIndexProperty = {}



---@class FCurveNameProperty
---@field CurveName FName
local FCurveNameProperty = {}



---@class FDampedSpringAngle
---@field Frequency float
---@field DampingRatio float
local FDampedSpringAngle = {}



---@class FDampedSpringQuat
---@field Frequency float
---@field DampingRatio float
local FDampedSpringQuat = {}



---@class FDampedSpringRotator
---@field Frequency float
---@field DampingRatio float
local FDampedSpringRotator = {}



---@class FDampedSpringScalar
---@field Frequency float
---@field DampingRatio float
local FDampedSpringScalar = {}



---@class FDampedSpringVector
---@field Frequency float
---@field DampingRatio float
---@field MaxAcceleration float
local FDampedSpringVector = {}



---@class FDialogueLineData : FTableRowBase
---@field PreRoll float
---@field PostRoll float
---@field AnimLen float
---@field Type EAnimTypeEnum
---@field Meta FString
local FDialogueLineData = {}



---@class FDialogueLineDataHardRef : FDialogueLineData
---@field DialogueLineAnim UAnimSequence
local FDialogueLineDataHardRef = {}



---@class FDialogueLineDataSoftRef : FDialogueLineData
---@field DialogueLineAnim TSoftObjectPtr<UAnimSequence>
local FDialogueLineDataSoftRef = {}



---@class FFacialAnimation
---@field Transition float
---@field AnimTags FGameplayTagContainer
---@field bStartAtRandomTime boolean
local FFacialAnimation = {}



---@class FFeatureVector : FTableRowBase
---@field AnimSequence UAnimSequence
---@field Time float
---@field Velocity FVector
---@field Position33 FVector
---@field FacingDir33 FVector2D
---@field Position66 FVector
---@field FacingDir66 FVector2D
---@field Position99 FVector
---@field FacingDir99 FVector2D
---@field LeftFootPosition FVector
---@field LeftFootVelocity FVector
---@field RightFootPosition FVector
---@field RightFootVelocity FVector
local FFeatureVector = {}



---@class FIKDriver_AimAtConeOnlyControl
---@field AimBoneReference FBoneReferenceEx
---@field NeckBoneReference FBoneReferenceEx
---@field DirectionDriver EAnimationDirections
---@field YawLimit float
---@field PitchLimit float
---@field ReduceConeWithSpeed boolean
---@field SpeedForReduction float
---@field RatioToReduce float
---@field BackDeadZoneAngle float
---@field ConeRotationOffset FRotator
---@field TaskRotationOffset FRotator
---@field BlendSpeedRange FVector2D
---@field Speed2BlendSpeedRange FVector2D
---@field TimeDelay float
---@field DelayStartTime float
---@field PrevTargetDirection FVector
local FIKDriver_AimAtConeOnlyControl = {}



---@class FIKDriver_AimAtConstrainedControl
---@field DirectionDriver EAnimationDirections
---@field AimBoneReference FBoneReferenceEx
---@field NeckBoneReference FBoneReferenceEx
---@field RotationOffset FRotator
---@field AimAlphaVariableName FName
---@field AimTargetVariableName FName
---@field AimLoosenessVariableName FName
---@field SpineMobilityVariableName FName
---@field ApplyConstraintsVariableName FName
---@field bLimitDirectionToCone boolean
---@field YawLimit float
---@field PitchLimit float
---@field LimitFactorOverSpeed FRuntimeFloatCurve
---@field YawFrequency float
---@field YawDampingRatio float
---@field PitchFrequency float
---@field PitchDampingRatio float
---@field BlendInDuration float
---@field BlendOutDuration float
---@field BackDeadZoneAngle float
---@field DisableCurve FCurveIndexProperty
---@field YawFrequencyCurve FCurveIndexProperty
---@field PitchFrequencyCurve FCurveIndexProperty
---@field DisableCurveName FCurveNameProperty
---@field YawFrequencyCurveName FCurveNameProperty
---@field PitchFrequencyCurveName FCurveNameProperty
local FIKDriver_AimAtConstrainedControl = {}



---@class FIKDriver_AimAtControl
---@field Task FIKTaskReferenceProperty
---@field DirectionDriver EAnimationDirections
local FIKDriver_AimAtControl = {}



---@class FIKDriver_AnimationDrivenData
---@field Task FIKTaskReferenceProperty
---@field RotationTargetBone FBoneIndexProperty
---@field TranslationTargetBone FBoneIndexProperty
---@field RotationWeightCurve FCurveIndexProperty
---@field TranslationWeightCurve FCurveIndexProperty
---@field RotationWeightCurveName FCurveNameProperty
---@field TranslationWeightCurveName FCurveNameProperty
local FIKDriver_AnimationDrivenData = {}



---@class FIKDriver_FloorContactControl
---@field BoneRef FBoneReferenceEx
---@field AlphaVariableName FName
---@field TransformVariableName FName
---@field RampInHeight float
---@field RampOutHeight float
---@field TranslationInterpRate float
---@field RotationInterpRate float
---@field FixupHeight float
---@field FixupRotation FQuat
---@field Shape FCEShape::Type
---@field Extents FVector
---@field Offset FTransform
---@field DrawDebug boolean
---@field UseCustomScale boolean
---@field CustomRayTraceStartScale float
---@field CustomRayTraceFinishScale float
---@field bUseFKOrientation boolean
---@field MeshOffset float
---@field Alpha float
local FIKDriver_FloorContactControl = {}



---@class FIKDriver_FloorContactProfile
---@field Name FName
---@field SlopeRange FVector2D
---@field SpeedRange FVector2D
---@field SupportType FCPSupportType
---@field MovementType FCPMovementType
---@field BlendInTime float
---@field OverrideSettings FIKDriver_FloorContactProfileSettings
local FIKDriver_FloorContactProfile = {}



---@class FIKDriver_FloorContactProfileSettings
---@field HipMultiplier float
---@field MaxLegExtension float
---@field ReverseFootFactor float
---@field PitchLimit float
---@field StabilizationThreshold float
local FIKDriver_FloorContactProfileSettings = {}



---@class FIKDriver_GroundAdjustment_Control
---@field BoneReference FBoneReferenceEx
---@field TraceBoneReference FBoneReferenceEx
---@field TraceShape EIKDriver_GroundAdjustment_TraceShape
---@field TraceShapeLocalOffset FTransform
---@field bTraceComplex boolean
---@field bRequireOnGroundForStepDown boolean
---@field MaxStepUpHeight float
---@field MaxStepDownHeight float
---@field MaxAdjustmentAngle float
---@field MaxControlHeight float
---@field TimeToContactCurve FCurveIndexProperty
---@field TimeToContactCurveName FCurveNameProperty
---@field AnticipationTargetBoneReference FBoneReferenceEx
---@field AlphaVariableName FName
---@field TargetTransformVariableName FName
---@field ExtensionVariableName FName
---@field MaxLegExtension float
local FIKDriver_GroundAdjustment_Control = {}



---@class FIKDriver_GroundAdjustment_ReachControl
---@field BoneReference FBoneReferenceEx
---@field EndEffectorBoneReferences TArray<FBoneReferenceEx>
---@field InterpSpeed float
---@field InterpDampingFactor float
---@field FilteringSpeed float
---@field FilteringDampingFactor float
---@field LowestOrAverage float
---@field MaxControlAdjustment float
---@field AlphaVariableName FName
---@field TargetTransformVariableName FName
local FIKDriver_GroundAdjustment_ReachControl = {}



---@class FIKDriver_LadderContactControl
---@field Task FIKTaskReferenceProperty
---@field Enable boolean
---@field DebugDraw boolean
---@field OffsetZ float
---@field HandOffset float
---@field LadderUpPlaneOffset float
---@field LadderDownPlaneOffset float
---@field LockVelocityThreshold float
---@field UnlockVelocityThreshold float
---@field UnlockMoveThreshold float
---@field JumpToNextRungThreshold float
---@field UnlockPastTopExtentThreshold float
---@field LockBlendTime float
---@field UnlockBlendTime float
---@field InitDelay float
local FIKDriver_LadderContactControl = {}



---@class FIKDriver_LedgeContactFootControl
---@field AlphaVariableName FName
---@field TargetTransformVariableName FName
---@field ExtensionVariableName FName
---@field ToeTransformVariableName FName
---@field BoneReference FBoneReferenceEx
---@field ToeBoneReference FBoneReferenceEx
---@field SweepRadius float
---@field WallLocationRelativeToBone FVector
---@field MaxLegExtension float
local FIKDriver_LedgeContactFootControl = {}



---@class FIKDriver_LedgeContactHandControl
---@field AlphaVariableName FName
---@field TargetTransformVariableName FName
---@field BoneReference FBoneReferenceEx
---@field SweepRadius float
---@field LedgeLocationRelativeToBone FVector
local FIKDriver_LedgeContactHandControl = {}



---@class FIKDriver_LedgeContactHipsControl
---@field AlphaVariableName FName
---@field TargetTransformVariableName FName
---@field BoneReference FBoneReferenceEx
---@field MaxRotationAngleAwayFromWall float
---@field MinDistanceFromWall float
local FIKDriver_LedgeContactHipsControl = {}



---@class FIKPoseFixupDefinition
---@field ControlledBoneName FName
---@field ReferenceBoneName FName
---@field IkInputTransformName FName
---@field ControlledOffsetProvider UTransformProvider
---@field ControlledOffset FTransform
---@field IkInputAlphaName FName
---@field AlphaCurveName FName
---@field bApplyBlendToAlphaCurve boolean
---@field BlendInTime float
---@field BlendOutTime float
---@field TranslateOnly boolean
---@field ReferenceScale float
---@field IkInputCushionAmountName FName
---@field CushionAmount float
---@field TargetTransform UTransformProvider
---@field TargetOffsetProvider UTransformProvider
---@field TargetOffset FTransform
local FIKPoseFixupDefinition = {}



---@class FIKTaskReferenceProperty
---@field TaskIndex int32
local FIKTaskReferenceProperty = {}



---@class FInitializeEffectorData
---@field FKBone FBoneReference
---@field EffectorBone FBoneReference
---@field TranslationControlCurve FName
---@field RotationControlCurve FName
local FInitializeEffectorData = {}



---@class FLookLimits
---@field Horizontal float
---@field Vertical float
local FLookLimits = {}



---@class FMoveRequest
local FMoveRequest = {}


---@class FMoveRequestInput
local FMoveRequestInput = {}


---@class FPerClipLayerGroupLayer
---@field LayerAnimation UAnimationAsset
---@field LayerName FName
---@field LayerReference FAnimationRequestLayerReference
---@field ScaleToFit boolean
local FPerClipLayerGroupLayer = {}



---@class FPoseGroupTransition
---@field EndState UPoseGroup
---@field TransitionAnim UAnimationAsset
---@field TransitionAnimation UAnimationProvider
---@field TransitionAnimationClips TArray<TSoftObjectPtr<UAnimSequenceBase>>
---@field bBlockLayeredAnimations boolean
local FPoseGroupTransition = {}



---@class FPoseUtilityBipedController
---@field Pelvis FBoneReference
---@field PelvisTarget FBoneReference
---@field RightLeg FPoseUtilityIK
---@field LeftLeg FPoseUtilityIK
---@field Spine FPoseUtilityRFK
---@field RightArm FPoseUtilityIK
---@field LeftArm FPoseUtilityIK
---@field Neck FPoseUtilityRFK
local FPoseUtilityBipedController = {}



---@class FPoseUtilityIK
---@field Base FBoneReference
---@field LocalHinge FVector
---@field Effector FBoneReference
---@field Target FBoneReference
local FPoseUtilityIK = {}



---@class FPoseUtilityRFK
---@field ChainInBaseSpace TArray<FTransform>
---@field AlignedChainInBaseSpace TArray<FTransform>
---@field weight TArray<float>
---@field Base FBoneReference
---@field Effector FBoneReference
---@field Target FBoneReference
---@field IndexCount int32
local FPoseUtilityRFK = {}



---@class FRigUnit_AddOffsetToControl : FRigUnitMutable
---@field Control FName
---@field BoneOffsets TArray<FRigUnit_AddOffsetToControl_BoneOffset>
---@field HeightWeightCurve FRuntimeFloatCurve
---@field HeightMappingCurve FRuntimeFloatCurve
---@field Transform FTransform
---@field CachedControlIndex int32
local FRigUnit_AddOffsetToControl = {}



---@class FRigUnit_AddOffsetToControl_BoneOffset
---@field Bone FName
---@field Control FName
local FRigUnit_AddOffsetToControl_BoneOffset = {}



---@class FRigUnit_ConstrainRotation : FRigUnitMutable
---@field Bone FName
---@field LocalRotation FRotator
---@field weight float
---@field ConeConstraint FControlRigConeConstraint
---@field DebugSettings FRigUnit_ConstrainRotation_DebugSettings
---@field WorkData FRigUnit_ConstrainRotation_WorkData
local FRigUnit_ConstrainRotation = {}



---@class FRigUnit_ConstrainRotation_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_ConstrainRotation_DebugSettings = {}



---@class FRigUnit_ConstrainRotation_WorkData
---@field BoneIndices TArray<int32>
local FRigUnit_ConstrainRotation_WorkData = {}



---@class FRigUnit_CurveRotation : FRigUnitMutable
---@field LeafBone FName
---@field TrunkBone FName
---@field Primary FRigUnit_CurveRotation_Target
---@field Secondary FRigUnit_CurveRotation_Target
---@field PerBoneAngleCurve TArray<FRuntimeFloatCurve>
---@field PerBoneInterpTime TArray<float>
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_CurveRotation_DebugSettings
---@field WorkData FRigUnit_CurveRotation_WorkData
local FRigUnit_CurveRotation = {}



---@class FRigUnit_CurveRotation_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_CurveRotation_DebugSettings = {}



---@class FRigUnit_CurveRotation_Target
---@field weight float
---@field Axis FVector
---@field Target FVector
---@field Kind EOrientationTargetKind2
---@field Space FName
local FRigUnit_CurveRotation_Target = {}



---@class FRigUnit_CurveRotation_WorkData
---@field BoneIndices TArray<int32>
---@field Angles TArray<float>
---@field BoneLocalTransforms TArray<FTransform>
---@field PrimaryCachedSpaceName FName
---@field PrimaryCachedSpaceIndex int32
---@field SecondaryCachedSpaceName FName
---@field SecondaryCachedSpaceIndex int32
local FRigUnit_CurveRotation_WorkData = {}



---@class FRigUnit_FourBoneIK : FRigUnitMutable
---@field EndBone FName
---@field EndEffector FTransform
---@field TranslationLimitDistance float
---@field StretchToMaxExtension float
---@field MaxExtensionPercentage float
---@field PrimaryAxis FVector
---@field HelperAOffset FVector
---@field HelperBOffset FVector
---@field PoleVectorLengthMultiplier float
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field weight float
---@field DebugSettings FRigUnit_FourBoneIK_DebugSettings
---@field WorkData FRigUnit_FourBoneIK_WorkData
local FRigUnit_FourBoneIK = {}



---@class FRigUnit_FourBoneIK_DebugSettings
---@field bEnabled boolean
---@field bDrawAxes boolean
---@field bDrawOriginalBoneChain boolean
---@field bDrawPoleVectorCalculation boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_FourBoneIK_DebugSettings = {}



---@class FRigUnit_FourBoneIK_WorkData
---@field BoneIndices TArray<int32>
---@field BoneLengths TArray<float>
---@field HelperATransforms TArray<FTransform>
---@field HelperBTransforms TArray<FTransform>
---@field ChainHierarchy FRigBoneHierarchy
local FRigUnit_FourBoneIK_WorkData = {}



---@class FRigUnit_IncrementalRotation : FRigUnitMutable
---@field LeafBone FName
---@field TrunkBone FName
---@field Primary FRigUnit_WB_AimBone_Target
---@field Secondary FRigUnit_WB_AimBone_Target
---@field LookLimits TArray<FLookLimits>
---@field Blending float
---@field RotationEaseType EControlRigAnimEasingType
---@field bPropagateToChildren boolean
---@field DebugSettings FRigUnit_IncrementalRotation_DebugSettings
---@field WorkData FRigUnit_IncrementalRotation_WorkData
local FRigUnit_IncrementalRotation = {}



---@class FRigUnit_IncrementalRotation_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_IncrementalRotation_DebugSettings = {}



---@class FRigUnit_IncrementalRotation_WorkData
---@field BoneIndices TArray<int32>
---@field ActualLookRanges TArray<FLookLimits>
---@field AngleLimits TArray<float>
---@field Angles TArray<float>
---@field BoneLocalTransforms TArray<FTransform>
---@field PrimaryCachedSpaceName FName
---@field PrimaryCachedSpaceIndex int32
---@field SecondaryCachedSpaceName FName
---@field SecondaryCachedSpaceIndex int32
local FRigUnit_IncrementalRotation_WorkData = {}



---@class FRigUnit_NeckLookAt : FRigUnitMutable
---@field EffectorBone FName
---@field StartBone FName
---@field SpaceRotationSetting FRotator
---@field BaseBoneRotation FRotator
---@field BoneRotations TArray<FRigUnit_NeckLookAt_BoneRotation>
---@field Target FRigUnit_NeckLookAt_Target
---@field SpineMobility float
---@field YawWeightCurve FRuntimeFloatCurve
---@field PitchWeightCurve FRuntimeFloatCurve
---@field PitchFromYawWeightCurve FRuntimeFloatCurve
---@field InputYawMapping FRigUnit_NeckLookAt_SoftAngleLimits
---@field InputPitchMapping FRigUnit_NeckLookAt_SoftAngleLimits
---@field bApplyConstraints boolean
---@field BaseConstraint FRigUnit_NeckLookAt_ConeConstraint
---@field BoneConstraints TArray<FRigUnit_NeckLookAt_ConeConstraintBone>
---@field DebugSettings FRigUnit_NeckLookAt_DebugSettings
---@field WorkData FRigUnit_NeckLookAt_WorkData
local FRigUnit_NeckLookAt = {}



---@class FRigUnit_NeckLookAt_BoneRotation
---@field Bone FName
---@field BoneRotation FRotator
local FRigUnit_NeckLookAt_BoneRotation = {}



---@class FRigUnit_NeckLookAt_ConeConstraint
---@field YawLimit float
---@field PitchLimit float
---@field RollLimit float
---@field ConeRotation FRotator
local FRigUnit_NeckLookAt_ConeConstraint = {}



---@class FRigUnit_NeckLookAt_ConeConstraintBone
---@field Bone FName
---@field Constraint FRigUnit_NeckLookAt_ConeConstraint
local FRigUnit_NeckLookAt_ConeConstraintBone = {}



---@class FRigUnit_NeckLookAt_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field Color FLinearColor
---@field WorldOffset FTransform
local FRigUnit_NeckLookAt_DebugSettings = {}



---@class FRigUnit_NeckLookAt_SoftAngleLimits
---@field MinInputAngle float
---@field MaxInputAngle float
---@field MaxOutputAngle float
---@field LoosenessFactor float
local FRigUnit_NeckLookAt_SoftAngleLimits = {}



---@class FRigUnit_NeckLookAt_Target
---@field weight float
---@field TargetLocation FVector
---@field Space FName
---@field MaxYaw float
---@field MinPitch float
---@field MaxPitch float
local FRigUnit_NeckLookAt_Target = {}



---@class FRigUnit_NeckLookAt_WorkData
---@field BoneIndices TArray<int32>
---@field BoneLocalRotations TArray<FQuat>
---@field PerBoneConstraints TArray<FRigUnit_NeckLookAt_ConeConstraint>
---@field BoneLengths TArray<float>
---@field ChainLength float
---@field BoneYawWeights TArray<float>
---@field BonePitchWeights TArray<float>
---@field ChainHierarchy FRigBoneHierarchy
local FRigUnit_NeckLookAt_WorkData = {}



---@class FRigUnit_SpineWarp : FRigUnitMutable
---@field StartBone FName
---@field EndBone FName
---@field StartControl FTransform
---@field EndControl FTransform
---@field PitchWeightCurve FRuntimeFloatCurve
---@field bCounterRotateBones boolean
---@field BonesToCounterRotate TArray<FRigUnit_SpineWarp_CounterRotateBone>
---@field PelvisShiftForward float
---@field PelvisShiftUp float
---@field BlendWeight float
---@field DebugSettings FRigUnit_SpineWarp_DebugSettings
---@field WorkData FRigUnit_SpineWarp_WorkData
local FRigUnit_SpineWarp = {}



---@class FRigUnit_SpineWarp_CounterRotateBone
---@field BoneToCounterRotate FName
---@field MinAngle float
---@field MaxAngle float
local FRigUnit_SpineWarp_CounterRotateBone = {}



---@class FRigUnit_SpineWarp_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_SpineWarp_DebugSettings = {}



---@class FRigUnit_SpineWarp_WorkData
---@field BoneIndices TArray<int32>
---@field InitialEndControlTranslation FVector
---@field BonePitchWeights TArray<float>
---@field CachedBoneTransforms TArray<FTransform>
local FRigUnit_SpineWarp_WorkData = {}



---@class FRigUnit_SplineIK : FRigUnitMutable
---@field StartBone FName
---@field EndBone FName
---@field BoneAxis ESplineIKBoneAxis
---@field bAutoCalculateSpline boolean
---@field PointCount int32
---@field ControlPoints TArray<FTransform>
---@field Roll float
---@field TwistStart float
---@field TwistEnd float
---@field TwistBlend FAlphaBlend
---@field Stretch float
---@field Offset float
---@field DebugSettings FRigUnit_SplineIK_DebugSettings
---@field WorkData FRigUnit_SplineIK_WorkData
local FRigUnit_SplineIK = {}



---@class FRigUnit_SplineIK_DebugSettings
---@field bEnabled boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_SplineIK_DebugSettings = {}



---@class FRigUnit_SplineIK_WorkData
local FRigUnit_SplineIK_WorkData = {}


---@class FRigUnit_ThreeBoneIK : FRigUnitMutable
---@field EndBone FName
---@field EndEffector FTransform
---@field TranslationLimitDistance float
---@field StretchToMaxExtension float
---@field MaxExtensionPercentage float
---@field PrimaryAxis FVector
---@field HelperOffset FVector
---@field PoleVectorLengthMultiplier float
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field weight float
---@field DebugSettings FRigUnit_ThreeBoneIK_DebugSettings
---@field WorkData FRigUnit_ThreeBoneIK_WorkData
local FRigUnit_ThreeBoneIK = {}



---@class FRigUnit_ThreeBoneIK_DebugSettings
---@field bEnabled boolean
---@field bDrawAxes boolean
---@field bDrawOriginalBoneChain boolean
---@field bDrawPoleVectorCalculation boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_ThreeBoneIK_DebugSettings = {}



---@class FRigUnit_ThreeBoneIK_WorkData
---@field BoneIndices TArray<int32>
---@field BoneLengths TArray<float>
---@field HelperTransforms TArray<FTransform>
---@field ChainHierarchy FRigBoneHierarchy
local FRigUnit_ThreeBoneIK_WorkData = {}



---@class FRigUnit_TwoBoneIK : FRigUnitMutable
---@field EndBone FName
---@field EndEffector FTransform
---@field TranslationLimitDistance float
---@field StretchToMaxExtension float
---@field MaxExtensionPercentage float
---@field PrimaryAxis FVector
---@field PoleVectorLengthMultiplier float
---@field bEnableStretch boolean
---@field StretchStartRatio float
---@field StretchMaximumRatio float
---@field weight float
---@field CushionAmount float
---@field DebugSettings FRigUnit_TwoBoneIK_DebugSettings
---@field WorkData FRigUnit_TwoBoneIK_WorkData
local FRigUnit_TwoBoneIK = {}



---@class FRigUnit_TwoBoneIK_DebugSettings
---@field bEnabled boolean
---@field bDrawAxes boolean
---@field bDrawOriginalBoneChain boolean
---@field bDrawPoleVectorCalculation boolean
---@field Scale float
---@field WorldOffset FTransform
local FRigUnit_TwoBoneIK_DebugSettings = {}



---@class FRigUnit_TwoBoneIK_WorkData
---@field BoneIndices TArray<int32>
---@field BoneLengths TArray<float>
---@field ChainHierarchy FRigBoneHierarchy
local FRigUnit_TwoBoneIK_WorkData = {}



---@class FRigUnit_WB_AimBone_Target
---@field weight float
---@field Axis FVector
---@field Target FVector
---@field Kind EOrientationTargetKind
---@field Space FName
local FRigUnit_WB_AimBone_Target = {}



---@class FRitUnit_SetControlFloat_EditorWorkaround : FRigUnitMutable
---@field Control FName
---@field FloatValue float
---@field FloatValueInEditor float
---@field CachedControlIndex FCachedRigElement
local FRitUnit_SetControlFloat_EditorWorkaround = {}



---@class FRitUnit_SetControlTransform_EditorWorkaround : FRigUnitMutable
---@field Control FName
---@field Transform FTransform
---@field Space EBoneGetterSetterMode
---@field CachedControlIndex FCachedRigElement
local FRitUnit_SetControlTransform_EditorWorkaround = {}



---@class FStaticMeshPropInstanceData
local FStaticMeshPropInstanceData = {}


---@class FTickAssetPlayerProxy_WeightedNotify
---@field NotifyReferences TArray<FAnimNotifyEventReference>
---@field NotifyWeight float
local FTickAssetPlayerProxy_WeightedNotify = {}



---@class FWeightedDirectionTarget
---@field TargetInWorldSpace FVector
---@field weight float
local FWeightedDirectionTarget = {}



---@class IActiveCameraActor : IInterface
local IActiveCameraActor = {}


---@class IAnimDebugInfo : IInterface
local IAnimDebugInfo = {}


---@class IAnimInstance_RetrieveActorTransform : IInterface
local IAnimInstance_RetrieveActorTransform = {}

---@param TransformInWorldSpace FTransform
---@return boolean
function IAnimInstance_RetrieveActorTransform:RetreiveComponentTransform(TransformInWorldSpace) end
---@param TransformInWorldSpace FTransform
function IAnimInstance_RetrieveActorTransform:AssignComponentTransform(TransformInWorldSpace) end


---@class IAnimMask : IInterface
local IAnimMask = {}


---@class IAnimRequestProvider : IInterface
local IAnimRequestProvider = {}


---@class IAnimationRequestLayerHost : IInterface
local IAnimationRequestLayerHost = {}


---@class IAvaAnimationMovementInterface : IInterface
local IAvaAnimationMovementInterface = {}


---@class IMotionMatcherBPInterface : IInterface
local IMotionMatcherBPInterface = {}

---@return UObject
function IMotionMatcherBPInterface:GetGoalDelegate() end


---@class IMotionMatcherGoalInterface : IInterface
local IMotionMatcherGoalInterface = {}

---@param Character ACharacter
---@param Goal FFeatureVector
---@return boolean
function IMotionMatcherGoalInterface:UpdateGoal(Character, Goal) end
---@param Goal FFeatureVector
---@return boolean
function IMotionMatcherGoalInterface:InitializeGoal(Goal) end


---@class IMoveRequestProvider : IInterface
local IMoveRequestProvider = {}


---@class IPreviewVariableRequest : IInterface
local IPreviewVariableRequest = {}


---@class IProviderOwner : IInterface
local IProviderOwner = {}


---@class IProviderStateHost : IInterface
local IProviderStateHost = {}


---@class ISkeletalMeshDriver : IInterface
local ISkeletalMeshDriver = {}


---@class ISpawnedActorHost : IInterface
local ISpawnedActorHost = {}


---@class UActorProvider : UObjectProvider
---@field PreviewSpawner UActorSpawner
local UActorProvider = {}

---@param Caller UObject
---@return AActor
function UActorProvider:GetActor(Caller) end


---@class UActorSpawner : UBaseProvider
---@field SpawnLocation UTransformProvider
---@field AlignmentSocket FName
---@field WarmUpTags TArray<FName>
local UActorSpawner = {}



---@class UActor_External : UActorProvider
---@field Role EExternalActorRole
---@field RoleIndex int32
local UActor_External = {}



---@class UActor_FromSpawner : UActorProvider
---@field Spawner UActorSpawner
local UActor_FromSpawner = {}



---@class UAimEyesData : UDataAsset
---@field LookSmoothness float
---@field MinTimeForInitialCentralFocus float
---@field MaxTimeForInitialCentralFocus float
---@field MinTimeBetweenLookDir float
---@field MaxTimeBetweenLookDir float
---@field MinTimeBetweenBlinks float
---@field MaxTimeBetweenBlinks float
---@field DoubleBlinkProbability float
---@field BlinkCurve FRuntimeFloatCurve
---@field DoubleBlinkCurve FRuntimeFloatCurve
---@field PupilAxisOffset float
---@field MinTimeBetweenMicroLook float
---@field MaxTimeBetweenMicroLook float
---@field bUseRandomTargetIfNoCurrentTarget boolean
---@field MinRandomTargetTime float
---@field MaxRandomTargetTime float
---@field MaxYawRandomTarget float
---@field MaxPitchRandomTarget float
---@field MinRandomTargetDistance float
---@field MaxRandomTargetDistance float
---@field CentralFocusWeight float
---@field InternalMemoryWeight float
---@field AuditoryMemoryWeight float
---@field EmotionalMemoryWeight float
---@field VisualConstructionWeight float
---@field AuditoryConstructionWeight float
---@field BodySensationRecallWeight float
---@field SmellWeight float
---@field TasteWeight float
local UAimEyesData = {}



---@class UAnimAsset_TickAssetPlayerProxy : UAnimationAsset
---@field WeightedNotifies TArray<FTickAssetPlayerProxy_WeightedNotify>
---@field ActorMoveDelta FTransform
---@field ActorMoveDeltaWeight float
local UAnimAsset_TickAssetPlayerProxy = {}



---@class UAnimInstance_ApplyActorTransform : UAnimInstance
---@field ActorInWorldSpace FTransform
---@field ShouldSetActorInWorldSpace boolean
local UAnimInstance_ApplyActorTransform = {}



---@class UAnimLayersAsset : UDataAsset
---@field Layers TArray<FAnimationRequestLayer>
local UAnimLayersAsset = {}



---@class UAnimLayersAssetUserData : UAssetUserData
---@field AnimLayers UAnimLayersAsset
local UAnimLayersAssetUserData = {}



---@class UAnimMaskAsset : UObject
---@field Skeleton USkeleton
---@field ParentMask UAnimMaskAsset
---@field BoneMask TMap<FAnimMaskBoneReference, float>
---@field CurveMask TMap<FAnimMaskCurveReference, float>
local UAnimMaskAsset = {}



---@class UAnimNotifyState_ClothOptions : UAnimNotifyState
---@field bPiecesListIsInclusive boolean
---@field PiecesList TArray<FCharacterPieceType>
---@field ClothingAssetList TSet<FClothingAssetName>
---@field IterationCount UIntProvider
---@field MaxIterationCount UIntProvider
---@field SubdivisionCount UIntProvider
---@field TeleportDistanceThreshold UFloatProvider
---@field TeleportRotationThreshold UFloatProvider
---@field ClothBlendWeight UFloatProvider
---@field ClothMaxDistanceScale UFloatProvider
---@field EdgeStiffness UFloatProvider
---@field BendingStiffness UFloatProvider
---@field AreaStiffness UFloatProvider
---@field TetherStiffness UVector2DProvider
---@field DampingCoefficient UFloatProvider
---@field DragCoefficient UFloatProvider
---@field LiftCoefficient UFloatProvider
---@field AdditionalWindVelocity UVectorProvider
---@field GravityScale UFloatProvider
---@field GravityOverride UVectorProvider
---@field AnimDriveStiffness UVector2DProvider
---@field AnimDriveDamping UVector2DProvider
---@field WindVelocityScale UFloatProvider
---@field LinearVelocityScale UFloatProvider
---@field AngularVelocityScale UFloatProvider
---@field FictitiousAngularScale UFloatProvider
local UAnimNotifyState_ClothOptions = {}



---@class UAnimNotify_BlinkEyes : UAnimNotify
---@field bDoubleBlink boolean
---@field BlinkSpeed float
---@field PoseSampler UPoseSampler_BlinkEyes
local UAnimNotify_BlinkEyes = {}



---@class UAnimNotify_BlueprintSpawn : UAnimNotifyState
---@field BlueprintActor TSubclassOf<AActor>
---@field ParentSocketName FName
---@field ChildSocketName FName
---@field LocationOffset FVector
---@field RotationOffset FRotator
local UAnimNotify_BlueprintSpawn = {}



---@class UAnimNotify_CloseEyes : UAnimNotifyState
---@field PoseSampler UPoseSampler_CloseEyes
local UAnimNotify_CloseEyes = {}



---@class UAnimNotify_ResetActorClothingSimulation : UAnimNotify
local UAnimNotify_ResetActorClothingSimulation = {}


---@class UAnimNotify_StaticMeshProp : UAnimNotifyState
---@field StaticMesh UStaticMesh
---@field ParentSocketName FName
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field bUseScaleMultiplier boolean
---@field ScaleMultiplier FVector
local UAnimNotify_StaticMeshProp = {}



---@class UAnimRequest_AmbientEyes : UObject
---@field PoseSampler UPoseSampler_AmbientEyes
local UAnimRequest_AmbientEyes = {}



---@class UAnimRequest_Dialogue : UObject
---@field FacialDialogueMouthOnlyTrack FAnimationTrack
---@field FacialDialogueFaceOnlyTrack FAnimationTrack
---@field FacialDialogueHeadOnlyTrack FAnimationTrack
local UAnimRequest_Dialogue = {}



---@class UAnimRequest_FacialAnimation : UObject
---@field FacialEmotionTrackA FAnimationTrack
---@field FacialEmotionTrackB FAnimationTrack
local UAnimRequest_FacialAnimation = {}



---@class UAnimRequest_FacialEmotion : UObject
---@field FacialEmotionTrackA FAnimationTrack
---@field FacialEmotionTrackB FAnimationTrack
local UAnimRequest_FacialEmotion = {}



---@class UAnimTag_Conditional : UAnimationArchitectTagProvider
---@field Condition UBoolProvider
---@field TagProvider UAnimationArchitectTagProvider
local UAnimTag_Conditional = {}



---@class UAnimTag_FallbackChain : UAnimationArchitectTagProvider
---@field Entries TArray<UAnimationArchitectTagProvider>
local UAnimTag_FallbackChain = {}



---@class UAnimationAsset_Direct : UAnimationProvider
---@field AnimationAsset UAnimationAsset
local UAnimationAsset_Direct = {}



---@class UAnimationAsset_TagLookup : UAnimationProvider
---@field LookupOnActor UActorProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
local UAnimationAsset_TagLookup = {}



---@class UAnimationClipProvider : UAnimationProvider
local UAnimationClipProvider = {}


---@class UAnimationClip_Direct : UAnimationClipProvider
---@field AnimationClip UAnimSequenceBase
local UAnimationClip_Direct = {}



---@class UAnimationClip_Random : UAnimationClipProvider
---@field AvoidPickingSameTwice boolean
---@field Entries TArray<FAnimationClip_RandomEntry>
local UAnimationClip_Random = {}



---@class UAnimationClip_Sequential : UAnimationClipProvider
---@field Entries TArray<UAnimationClipProvider>
local UAnimationClip_Sequential = {}



---@class UAnimationClip_TagLookup : UAnimationClipProvider
---@field LookupOnActor UActorProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field Filter UBaseArchitectFilter
local UAnimationClip_TagLookup = {}



---@class UAnimationClip_TagLookupOnAllArchitects : UAnimationClip_TagLookupOnStationArchitect
local UAnimationClip_TagLookupOnAllArchitects = {}


---@class UAnimationClip_TagLookupOnAssets : UAnimationClipProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field Filter UBaseArchitectFilter
local UAnimationClip_TagLookupOnAssets = {}



---@class UAnimationClip_TagLookupOnStationArchitect : UAnimationClipProvider
---@field LookupOnActor UActorProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field Filter UBaseArchitectFilter
local UAnimationClip_TagLookupOnStationArchitect = {}



---@class UAnimationComponent : UActorComponent
---@field Layers TArray<FAnimationRequestLayer>
---@field LayersAsset UAnimLayersAsset
---@field ControlRigClass TSubclassOf<UControlRig>
---@field ControlRig UControlRig
---@field IKDrivers TArray<UIKDriver>
---@field LadderContactEnabled boolean
---@field HighestLODLevelForIK int32
---@field LOD_IKBlendOutDuration float
---@field LOD_IKBlendInDuration float
---@field StrideWarpFactor float
---@field FootPlant EFootPlantEnum
---@field bHoldFootPositionWhenPlanted boolean
---@field CapsuleInterpSpeed float
---@field DefaultDirectionInComponentSpace TMap<EAnimationDirections, FVector>
---@field ResetDefaultDirection TArray<boolean>
---@field MaxLookAlpha float
---@field TimeDelayProvider UFloatProvider
---@field BlendInTimeProvider UFloatProvider
---@field LastSequence UAnimSequence
---@field LastSequenceTime float
---@field TickAssetPlayerProxy UAnimAsset_TickAssetPlayerProxy
---@field TaggedTransformProviders TMap<FGameplayTag, UTransformProvider>
local UAnimationComponent = {}

---@param bInEnabled boolean
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:StartSettingPoseFixupEnabled(bInEnabled, InPriority, Provider, InBlendDuration) end
---@param bInEnabled boolean
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:StartSettingLookAtEnabled(bInEnabled, InPriority, Provider, InBlendDuration) end
---@param bInEnabled boolean
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:StartSettingIKEnabled(bInEnabled, InPriority, Provider, InBlendDuration) end
---@param bInEnabled boolean
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:StartSettingFloorContactEnabled(bInEnabled, InPriority, Provider, InBlendDuration) end
---@param Duration float
function UAnimationComponent:StartIKBlendOut(Duration) end
---@param Duration float
function UAnimationComponent:StartIKBlendIn(Duration) end
---@param State boolean
function UAnimationComponent:SetPlayerIKEnabled(State) end
---@param BottomRungZ float
---@param TopRungZ float
---@param RungSpacing float
---@param LadderWorldPos FVector
---@param LadderFaceNormal FVector
function UAnimationComponent:SetLadderInfo(BottomRungZ, TopRungZ, RungSpacing, LadderWorldPos, LadderFaceNormal) end
---@param Enabled boolean
function UAnimationComponent:SetLadderIKEnabled(Enabled) end
---@param State boolean
function UAnimationComponent:SetGlobalIKEnabled(State) end
---@param Direction EAnimationDirections
---@param Source EAnimationDirectionSource
---@param weight float
function UAnimationComponent:SetDirectionWeight(Direction, Source, weight) end
---@param Direction EAnimationDirections
---@param Source EAnimationDirectionSource
---@param TargetInWorldSpace FVector
---@param weight float
function UAnimationComponent:SetDirectionTargetAndWeightNoCap(Direction, Source, TargetInWorldSpace, weight) end
---@param Direction EAnimationDirections
---@param Source EAnimationDirectionSource
---@param TargetInWorldSpace FVector
---@param weight float
function UAnimationComponent:SetDirectionTargetAndWeight(Direction, Source, TargetInWorldSpace, weight) end
---@param InLayersAsset UAnimLayersAsset
function UAnimationComponent:SetAnimLayersAsset(InLayersAsset) end
---@param Direction EAnimationDirections
function UAnimationComponent:ResetDefaultDirectionNow(Direction) end
---@return boolean
function UAnimationComponent:IsPlayerIKEnabled() end
---@return boolean
function UAnimationComponent:IsGlobalIKEnabled() end
---@param IKDriverClass TSubclassOf<UIKDriver>
---@return UIKDriver
function UAnimationComponent:GetIKDriverFromClass(IKDriverClass) end
---@return float
function UAnimationComponent:GetIKBlendWeight() end
---@param Direction EAnimationDirections
---@param OutTargetInWorldSpace FVector
---@param OutWeight float
---@return boolean
function UAnimationComponent:GetDirectionTargetAndWeight(Direction, OutTargetInWorldSpace, OutWeight) end
---@param Direction EAnimationDirections
---@param OutDefaultDirectionInComponentSpace FVector
---@return boolean
function UAnimationComponent:GetDefaultDirection(Direction, OutDefaultDirectionInComponentSpace) end
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:FinishSettingPoseFixupEnabled(InPriority, Provider, InBlendDuration) end
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:FinishSettingLookAtEnabled(InPriority, Provider, InBlendDuration) end
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:FinishSettingIKEnabled(InPriority, Provider, InBlendDuration) end
---@param InPriority EStandardManagedPriority
---@param Provider UObject
---@param InBlendDuration float
function UAnimationComponent:FinishSettingFloorContactEnabled(InPriority, Provider, InBlendDuration) end


---@class UAnimationIndexedClipProvider : UAnimationClipProvider
local UAnimationIndexedClipProvider = {}

---@param Value int32
function UAnimationIndexedClipProvider:SetIndex(Value) end
---@return int32
function UAnimationIndexedClipProvider:GetIndex() end


---@class UAnimationInspectionFunctions : UBlueprintFunctionLibrary
local UAnimationInspectionFunctions = {}

---@param BlendSpace UBlendSpaceBase
---@param Fraction float
---@param OutSampleData TArray<FBlendSampleData>
---@return boolean
function UAnimationInspectionFunctions:SetBlendSpaceFraction(BlendSpace, Fraction, OutSampleData) end
---@param SkeletalMesh USkeletalMesh
---@param AnimationAsset UAnimSequence
---@param EvaluationTime float
---@param SocketNameArray TArray<FName>
---@param TransformArray TArray<FTransform>
---@param LoopCount int32
---@return boolean
function UAnimationInspectionFunctions:GetSocketsInAnimationSpaceFromClip(SkeletalMesh, AnimationAsset, EvaluationTime, SocketNameArray, TransformArray, LoopCount) end
---@param SkeletalMesh USkeletalMesh
---@param AnimationAsset UAnimSequence
---@param EvaluationTime float
---@param SocketName FName
---@param Transform FTransform
---@param LoopCount int32
---@return boolean
function UAnimationInspectionFunctions:GetSocketInAnimationSpaceFromClip(SkeletalMesh, AnimationAsset, EvaluationTime, SocketName, Transform, LoopCount) end
---@param AnimationAsset UAnimSequenceBase
---@param EvaluationTime float
---@param Transform FTransform
---@param LoopCount int32
---@return boolean
function UAnimationInspectionFunctions:GetRootInAnimationSpaceFromClip(AnimationAsset, EvaluationTime, Transform, LoopCount) end
---@param BlendSpace UBlendSpaceBase
---@param SampleData TArray<FBlendSampleData>
---@param Transform FTransform
---@param LoopCount int32
---@return boolean
function UAnimationInspectionFunctions:GetRootInAnimationSpaceFromBlendSpace(BlendSpace, SampleData, Transform, LoopCount) end
---@param AnimationAsset UAnimSequence
---@param AnimationInWorldSpace FTransform
---@param RootInAnimationSpace FTransform
---@param Transform FTransform
---@param LoopCount int32
---@param RootModeSetting EBoneEvaluationRootMode
---@return boolean
function UAnimationInspectionFunctions:GetComponentInWorldSpaceFromAlignedRoot(AnimationAsset, AnimationInWorldSpace, RootInAnimationSpace, Transform, LoopCount, RootModeSetting) end
---@param AnimationAsset UAnimSequenceBase
---@param EvaluationTime float
---@param BoneNameArray TArray<FName>
---@param TransformArray TArray<FTransform>
---@return boolean
function UAnimationInspectionFunctions:GetBonesInParentSpaceFromClip(AnimationAsset, EvaluationTime, BoneNameArray, TransformArray) end
---@param BlendSpaceAsset UBlendSpaceBase
---@param EvaluationTime float
---@param ParameterX float
---@param ParameterY float
---@param BoneNameArray TArray<FName>
---@param TransformArray TArray<FTransform>
---@return boolean
function UAnimationInspectionFunctions:GetBonesInParentSpaceFromBlendSpace(BlendSpaceAsset, EvaluationTime, ParameterX, ParameterY, BoneNameArray, TransformArray) end
---@param AnimationAsset UAnimSequence
---@param EvaluationTime float
---@param BoneNameArray TArray<FName>
---@param TransformArray TArray<FTransform>
---@param LoopCount int32
---@return boolean
function UAnimationInspectionFunctions:GetBonesInAnimationSpaceFromClip(AnimationAsset, EvaluationTime, BoneNameArray, TransformArray, LoopCount) end
---@param AnimationAsset UAnimSequenceBase
---@param EvaluationTime float
---@param BoneName FName
---@param Transform FTransform
---@return boolean
function UAnimationInspectionFunctions:GetBoneInParentSpaceFromClip(AnimationAsset, EvaluationTime, BoneName, Transform) end
---@param BlendSpaceAsset UBlendSpaceBase
---@param EvaluationTime float
---@param ParameterX float
---@param ParameterY float
---@param BoneName FName
---@param Transform FTransform
---@return boolean
function UAnimationInspectionFunctions:GetBoneInParentSpaceFromBlendSpace(BlendSpaceAsset, EvaluationTime, ParameterX, ParameterY, BoneName, Transform) end
---@param AnimationAsset UAnimSequence
---@param EvaluationTime float
---@param BoneName FName
---@param Transform FTransform
---@param LoopCount int32
---@param RootModeSetting EBoneEvaluationRootMode
---@return boolean
function UAnimationInspectionFunctions:GetBoneInAnimationSpaceFromClip(AnimationAsset, EvaluationTime, BoneName, Transform, LoopCount, RootModeSetting) end
---@param BlendSpace UBlendSpaceBase
---@param SampleData TArray<FBlendSampleData>
---@return float
function UAnimationInspectionFunctions:GetBlendSpaceDuration(BlendSpace, SampleData) end


---@class UAnimationProvider : UObjectProvider
local UAnimationProvider = {}


---@class UAnimationProvider_Conditional : UAnimationProvider
---@field Condition UBoolProvider
---@field AnimationIfTrue UAnimationProvider
---@field AnimationIfFalse UAnimationProvider
local UAnimationProvider_Conditional = {}



---@class UAnimationSetProvider : UBaseProvider
local UAnimationSetProvider = {}


---@class UAnimationSet_TagLookup : UAnimationSetProvider
---@field LookupOnActor UActorProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field Filter UBaseArchitectFilter
local UAnimationSet_TagLookup = {}



---@class UAnimationTransformProvider : UTransformProvider
---@field AnimationProvider UAnimationClipProvider
---@field bUseAnimationTime boolean
---@field PlaybackFraction float
local UAnimationTransformProvider = {}



---@class UBPAnimationClipProvider : UAnimationClipProvider
local UBPAnimationClipProvider = {}

---@param Caller UObject
---@param OutAnimClip UAnimSequenceBase
---@return boolean
function UBPAnimationClipProvider:GetAnimationClipBP(Caller, OutAnimClip) end


---@class UBaseProvider : UObject
local UBaseProvider = {}


---@class UBlendSpaceInputProvider : UBaseProvider
local UBlendSpaceInputProvider = {}

---@param Caller UObject
---@param BlendSpaceInput FVector
---@return boolean
function UBlendSpaceInputProvider:GetBlendSpaceInput(Caller, BlendSpaceInput) end


---@class UBlendSpaceInput_Direct : UBlendSpaceInputProvider
---@field Parameters FVector
local UBlendSpaceInput_Direct = {}



---@class UBlendSpaceInput_GForce : UBlendSpaceInputProvider
---@field ActorToGetAccelerationFrom UActorProvider
---@field Alpha UFloatProvider
---@field HorizontalAxis EAxisMapping
---@field VerticalAxis EAxisMapping
local UBlendSpaceInput_GForce = {}



---@class UBoneMaskBase : UAnimMetaData
local UBoneMaskBase = {}


---@class UBoneMask_BranchFilter : UBoneMaskBase
---@field BranchFilters TArray<FBranchFilter>
local UBoneMask_BranchFilter = {}



---@class UBoneMask_FilterStaticTracks : UBoneMaskBase
local UBoneMask_FilterStaticTracks = {}


---@class UBoolProvider : UBaseProvider
local UBoolProvider = {}

---@param Context UObject
---@return boolean
function UBoolProvider:GetBoolBP(Context) end


---@class UBool_AND : UBoolProvider
---@field Children TArray<UBoolProvider>
local UBool_AND = {}



---@class UBool_Direct : UBoolProvider
---@field Value boolean
local UBool_Direct = {}



---@class UBool_FallbackChain : UBoolProvider
---@field Entries TArray<UBoolProvider>
local UBool_FallbackChain = {}



---@class UBool_NOT : UBoolProvider
---@field Child UBoolProvider
local UBool_NOT = {}



---@class UBool_OR : UBoolProvider
---@field Children TArray<UBoolProvider>
local UBool_OR = {}



---@class UBool_XOR : UBoolProvider
---@field Children TArray<UBoolProvider>
local UBool_XOR = {}



---@class UCameraFixupAdjustHeightOperation : UCameraFixupOperation
---@field HeightTarget UTransformProvider
---@field HeightOffset float
---@field HeightOffsetProvider UFloatProvider
---@field DrawDebug boolean
---@field EnableTargetLag boolean
---@field TargetLagSpeed float
---@field TargetLagSpeedProvider UFloatProvider
---@field TargetLagMaxDistance float
---@field TargetLagMaxDistanceProvider UFloatProvider
---@field DrawDebugLagMarkers boolean
local UCameraFixupAdjustHeightOperation = {}



---@class UCameraFixupAdjustHeightOperationState : UCameraFixupOperationState
---@field HeightTarget UTransformProvider
local UCameraFixupAdjustHeightOperationState = {}



---@class UCameraFixupAimAtOperation : UCameraFixupOperation
---@field AimTarget UTransformProvider
---@field DrawDebug boolean
---@field HorizontalDamping float
---@field HorizontalDampingProvider UFloatProvider
---@field VerticalDamping float
---@field VerticalDampingProvider UFloatProvider
---@field ScreenX float
---@field ScreenXProvider UFloatProvider
---@field ScreenY float
---@field ScreenYProvider UFloatProvider
---@field DeadZoneWidth float
---@field DeadZoneWidthProvider UFloatProvider
---@field DeadZoneHeight float
---@field DeadZoneHeightProvider UFloatProvider
---@field SoftZoneWidth float
---@field SoftZoneWidthProvider UFloatProvider
---@field SoftZoneHeight float
---@field SoftZoneHeightProvider UFloatProvider
---@field BiasX float
---@field BiasXProvider UFloatProvider
---@field BiasY float
---@field BiasYProvider UFloatProvider
---@field CameraPositionMaxFrameDeltaProvider UFloatProvider
---@field AimTargetMaxFrameDeltaProvider UFloatProvider
local UCameraFixupAimAtOperation = {}



---@class UCameraFixupAimAtOperationState : UCameraFixupOperationState
---@field AimTarget UTransformProvider
local UCameraFixupAimAtOperationState = {}



---@class UCameraFixupAimWithPivotOperation : UCameraFixupOperation
---@field AimTarget UTransformProvider
---@field DrawDebug boolean
---@field EnableTargetLag boolean
---@field TargetLagSpeed float
---@field TargetLagSpeedProvider UFloatProvider
---@field TargetLagMaxDistance float
---@field TargetLagMaxDistanceProvider UFloatProvider
---@field DrawDebugLagMarkers boolean
local UCameraFixupAimWithPivotOperation = {}



---@class UCameraFixupAimWithPivotOperationState : UCameraFixupOperationState
---@field AimTarget UTransformProvider
local UCameraFixupAimWithPivotOperationState = {}



---@class UCameraFixupComponent : UActorComponent
---@field LastCameraFixupOperations UObject
local UCameraFixupComponent = {}

---@param LightRigActor AActor
function UCameraFixupComponent:LightRigBlueprintShowDebug(LightRigActor) end
---@param bOutHasValidTarget boolean
---@return FVector
function UCameraFixupComponent:GetTarget(bOutHasValidTarget) end


---@class UCameraFixupNoiseOperation : UCameraFixupOperation
---@field DrawDebug boolean
---@field AssetTags FGameplayTagContainer
---@field ExplicitAsset UCameraFixupNoiseOperations
---@field XPositionProvider UFloatProvider
---@field YPositionProvider UFloatProvider
---@field ZPositionProvider UFloatProvider
---@field PitchAngleProvider UFloatProvider
---@field YawAngleProvider UFloatProvider
---@field RollAngleProvider UFloatProvider
local UCameraFixupNoiseOperation = {}



---@class UCameraFixupNoiseOperationState : UCameraFixupOperationState
---@field CameraFixupNoiseOperations UCameraFixupNoiseOperations
local UCameraFixupNoiseOperationState = {}



---@class UCameraFixupNoiseOperations : UDataAsset
---@field XPositionProvider UFloatProvider
---@field YPositionProvider UFloatProvider
---@field ZPositionProvider UFloatProvider
---@field PitchAngleProvider UFloatProvider
---@field YawAngleProvider UFloatProvider
---@field RollAngleProvider UFloatProvider
local UCameraFixupNoiseOperations = {}



---@class UCameraFixupOperation : UObject
---@field Enabled boolean
---@field IgnorePreviousStateTime float
local UCameraFixupOperation = {}



---@class UCameraFixupOperationState : UObject
---@field Context UObject
local UCameraFixupOperationState = {}



---@class UCameraFixupSetAnglesOperation : UCameraFixupOperation
---@field DrawDebug boolean
---@field Relative boolean
---@field SetPitch boolean
---@field PitchAngle float
---@field PitchAngleProvider UFloatProvider
---@field SetYaw boolean
---@field YawAngle float
---@field YawAngleProvider UFloatProvider
---@field SetRoll boolean
---@field RollAngle float
---@field RollAngleProvider UFloatProvider
local UCameraFixupSetAnglesOperation = {}



---@class UCameraFixupSetAnglesOperationState : UCameraFixupOperationState
local UCameraFixupSetAnglesOperationState = {}


---@class UCameraFixupSetFocusDistanceOperation : UCameraFixupOperation
---@field DistanceTarget UTransformProvider
---@field DistanceOffsetProvider UFloatProvider
---@field DistanceOffset float
---@field DrawDebug boolean
local UCameraFixupSetFocusDistanceOperation = {}



---@class UCameraFixupSetFocusDistanceOperationState : UCameraFixupOperationState
---@field DistanceTarget UTransformProvider
local UCameraFixupSetFocusDistanceOperationState = {}



---@class UCameraFixupSetPositionMethod : UObject
local UCameraFixupSetPositionMethod = {}


---@class UCameraFixupSetPositionMethodState : UObject
---@field Context UObject
local UCameraFixupSetPositionMethodState = {}



---@class UCameraFixupSetPositionOperation : UCameraFixupOperation
---@field Method UCameraFixupSetPositionMethod
local UCameraFixupSetPositionOperation = {}



---@class UCameraFixupSetPositionOperationState : UCameraFixupOperationState
---@field MethodState UCameraFixupSetPositionMethodState
local UCameraFixupSetPositionOperationState = {}



---@class UCameraFixupSetPositionTumbleMethod : UCameraFixupSetPositionMethod
---@field Target UTransformProvider
---@field DrawDebug boolean
---@field Distance float
---@field DistanceProvider UFloatProvider
---@field PitchAngle float
---@field PitchAngleProvider UFloatProvider
---@field YawAngle float
---@field YawAngleProvider UFloatProvider
local UCameraFixupSetPositionTumbleMethod = {}



---@class UCameraFixupSetPositionTumbleMethodState : UCameraFixupSetPositionMethodState
---@field Target UTransformProvider
local UCameraFixupSetPositionTumbleMethodState = {}



---@class UCameraFixupSetPositionXYZMethod : UCameraFixupSetPositionMethod
---@field Target UTransformProvider
---@field DrawDebug boolean
---@field Position FVector
---@field PositionProvider UVectorProvider
local UCameraFixupSetPositionXYZMethod = {}



---@class UCameraFixupSetPositionXYZMethodState : UCameraFixupSetPositionMethodState
---@field Target UTransformProvider
local UCameraFixupSetPositionXYZMethodState = {}



---@class UCameraFixupSetPropertiesOperation : UCameraFixupOperation
---@field SetFocusDistance boolean
---@field FocusDistance float
---@field FocusDistanceProvider UFloatProvider
---@field SetAperture boolean
---@field Aperture float
---@field ApertureProvider UFloatProvider
---@field SetFocalLength boolean
---@field FocalLength float
---@field FocalLengthProvider UFloatProvider
---@field EnableAnimatedFocusDistance boolean
local UCameraFixupSetPropertiesOperation = {}



---@class UCameraFixupSetPropertiesOperationState : UCameraFixupOperationState
local UCameraFixupSetPropertiesOperationState = {}


---@class UCameraFixupSetTargetOperation : UCameraFixupOperation
---@field Target UTransformProvider
---@field DrawDebug boolean
local UCameraFixupSetTargetOperation = {}



---@class UCameraFixupSetTargetOperationState : UCameraFixupOperationState
---@field Target UTransformProvider
local UCameraFixupSetTargetOperationState = {}



---@class UColorProvider : UBaseProvider
local UColorProvider = {}

---@param Context UObject
---@param TimeOffset float
---@return FLinearColor
function UColorProvider:GetColorBP(Context, TimeOffset) end


---@class UColor_Direct : UColorProvider
---@field Value FLinearColor
local UColor_Direct = {}



---@class UConversationCameraRegistrations : UDataAsset
---@field Registrations TArray<FConversationCameraRegistration>
local UConversationCameraRegistrations = {}



---@class UConversationEmotions : UDataAsset
---@field Emotions TArray<FConversationEmotion>
local UConversationEmotions = {}



---@class UConversationExplicitCameraShots : UDataAsset
---@field CameraShots TArray<FConversationExplicitCameraShot>
local UConversationExplicitCameraShots = {}



---@class UConversationExplicitLayeredAnimations : UDataAsset
---@field Categories TArray<FConversationExplicitLayeredAnimationCategory>
local UConversationExplicitLayeredAnimations = {}



---@class UConversationExplicitPoseGroups : UDataAsset
---@field PoseGroups TArray<FConversationExplicitPoseGroup>
local UConversationExplicitPoseGroups = {}



---@class UConversationLayeredAnimationWeights : UDataAsset
---@field WeightEntries TArray<FConversationLayeredAnimationWeightEntry>
local UConversationLayeredAnimationWeights = {}



---@class UConversationPreset_AvatarPlacement : UObject
local UConversationPreset_AvatarPlacement = {}


---@class UConversationPreset_AvatarPlacement_Preexisting : UConversationPreset_AvatarPlacement
---@field Proximity EConversationPreset_ProximityType
---@field RotateInteractionActorToAvatar boolean
---@field InteractionActorRotationOffset float
---@field RotateActorToInteractionActor boolean
---@field AvatarRotationOffset float
local UConversationPreset_AvatarPlacement_Preexisting = {}



---@class UConversationPreset_AvatarPlacement_RelativeInteractionActor : UConversationPreset_AvatarPlacement
---@field DistanceProviders TArray<UConversationPreset_DistanceProvider>
---@field TestsToPerform TArray<UConversationPreset_RelativeInteractionActorTest>
---@field AvatarPositionDirectionFromInteractionActor float
---@field AvatarRotationFromInteractionActor float
---@field CheckGroundCollision boolean
---@field CheckNavMesh boolean
---@field CheckBetweenTests TArray<UConversationPreset_CheckBetweenTest>
---@field UseMaxHeightAngleThreshold boolean
---@field MaxHeightAngleThreshold float
---@field FailProximity EConversationPreset_ProximityType
local UConversationPreset_AvatarPlacement_RelativeInteractionActor = {}



---@class UConversationPreset_CheckBetweenTest : UObject
---@field Enabled boolean
local UConversationPreset_CheckBetweenTest = {}



---@class UConversationPreset_CheckBetweenTest_BoneCylinderTest : UConversationPreset_CheckBetweenTest
---@field BoneName FName
---@field Radius float
---@field TuckInMultipler float
local UConversationPreset_CheckBetweenTest_BoneCylinderTest = {}



---@class UConversationPreset_DistanceProvider : UObject
---@field Enabled boolean
---@field Proximity EConversationPreset_ProximityType
---@field Force boolean
local UConversationPreset_DistanceProvider = {}



---@class UConversationPreset_DistanceProvider_AlongLine : UConversationPreset_DistanceProvider
---@field StartDistance float
---@field StepDistance float
---@field MaxSteps int32
local UConversationPreset_DistanceProvider_AlongLine = {}



---@class UConversationPreset_DistanceProvider_Single : UConversationPreset_DistanceProvider
---@field Distance float
local UConversationPreset_DistanceProvider_Single = {}



---@class UConversationPreset_FinalTransform : UObject
local UConversationPreset_FinalTransform = {}


---@class UConversationPreset_FinalTransform_MoveRelative : UConversationPreset_FinalTransform
---@field PositionDirectionAngle float
---@field MinDistance float
---@field StepDistance float
---@field MaxSteps int32
---@field RotationOffset float
local UConversationPreset_FinalTransform_MoveRelative = {}



---@class UConversationPreset_FinalTransform_MoveRelative_Initial : UConversationPreset_FinalTransform_MoveRelative
local UConversationPreset_FinalTransform_MoveRelative_Initial = {}


---@class UConversationPreset_FinalTransform_MoveRelative_Preexisting : UConversationPreset_FinalTransform_MoveRelative
local UConversationPreset_FinalTransform_MoveRelative_Preexisting = {}


---@class UConversationPreset_FinalTransform_Preexisting : UConversationPreset_FinalTransform
local UConversationPreset_FinalTransform_Preexisting = {}


---@class UConversationPreset_FinalTransform_UseInitial : UConversationPreset_FinalTransform
local UConversationPreset_FinalTransform_UseInitial = {}


---@class UConversationPreset_InitialTransform : UObject
local UConversationPreset_InitialTransform = {}


---@class UConversationPreset_InitialTransform_MoveRelative : UConversationPreset_InitialTransform
---@field PositionDirectionAngle float
---@field MinDistance float
---@field StepDistance float
---@field MaxSteps int32
---@field RotationOffset float
local UConversationPreset_InitialTransform_MoveRelative = {}



---@class UConversationPreset_InitialTransform_MoveRelative_Preexisting : UConversationPreset_InitialTransform_MoveRelative
local UConversationPreset_InitialTransform_MoveRelative_Preexisting = {}


---@class UConversationPreset_InitialTransform_Preexisting : UConversationPreset_InitialTransform
local UConversationPreset_InitialTransform_Preexisting = {}


---@class UConversationPreset_PreInitInvoke_Placement : UObject
local UConversationPreset_PreInitInvoke_Placement = {}


---@class UConversationPreset_PreInitInvoke_Placement_Preexisting : UConversationPreset_PreInitInvoke_Placement
---@field RotateInteractionActorToAvatar boolean
---@field InteractionActorRotationOffset float
---@field RotateActorToInteractionActor boolean
---@field AvatarRotationOffset float
local UConversationPreset_PreInitInvoke_Placement_Preexisting = {}



---@class UConversationPreset_PreInitInvoke_Placement_RelativeInteractionActor : UConversationPreset_PreInitInvoke_Placement
---@field IdealDistance float
---@field NearDistance float
---@field AvatarPositionDirectionFromInteractionActor float
---@field AvatarRotationFromInteractionActor float
local UConversationPreset_PreInitInvoke_Placement_RelativeInteractionActor = {}



---@class UConversationPreset_RelativeInteractionActorTest : UObject
---@field Enabled boolean
local UConversationPreset_RelativeInteractionActorTest = {}



---@class UConversationPreset_RelativeInteractionActorTest_KeepInteractionActorRotation : UConversationPreset_RelativeInteractionActorTest
local UConversationPreset_RelativeInteractionActorTest_KeepInteractionActorRotation = {}


---@class UConversationPreset_RelativeInteractionActorTest_RotateAboutInteractionActor : UConversationPreset_RelativeInteractionActorTest
---@field CheckAngleStep float
---@field StartRotationToAvatar boolean
local UConversationPreset_RelativeInteractionActorTest_RotateAboutInteractionActor = {}



---@class UConversationPreset_RelativeInteractionActorTest_RotateInteractionActorToAvatarPosition : UConversationPreset_RelativeInteractionActorTest
local UConversationPreset_RelativeInteractionActorTest_RotateInteractionActorToAvatarPosition = {}


---@class UConversationPresets : UDataAsset
---@field Presets TArray<FConversationPreset>
local UConversationPresets = {}



---@class UDebugAnimationTargets : UDebugWindow
---@field DebugActor AActor
local UDebugAnimationTargets = {}



---@class UDebugLayeredBlend : UDebugWindow
---@field DebugActor AActor
local UDebugLayeredBlend = {}



---@class UDebugWindow : UObject
local UDebugWindow = {}


---@class UFacialComponent : UActorComponent
---@field DialogueAnimRequest UAnimRequest_Dialogue
---@field OnDialogueLineAnimTablesFinishedLoading FFacialComponentOnDialogueLineAnimTablesFinishedLoading
---@field OnDialogueLineAnimStartedDelegate FFacialComponentOnDialogueLineAnimStartedDelegate
---@field OnDialogueLineAnimFinishedDelegate FFacialComponentOnDialogueLineAnimFinishedDelegate
---@field IdleAimEyes UAimEyesData
---@field ListeningAimEyes UAimEyesData
---@field SpeakingAimEyes UAimEyesData
---@field DialogueLineEmotionChangedDelegate FFacialComponentDialogueLineEmotionChangedDelegate
---@field FacialEmotionAnimRequest UAnimRequest_FacialEmotion
---@field FacialAnimationAnimRequest UAnimRequest_FacialAnimation
---@field AmbientEyesAnimRequest UAnimRequest_AmbientEyes
---@field DialogueLineDataTables TArray<UDataTable>
---@field CurrentDialogueLineAnim UAnimSequence
local UFacialComponent = {}

---@param InGazeState GazeStatesEnum
---@param InPriority EManagedEyeStatePriority
function UFacialComponent:StartSettingGazeState(InGazeState, InPriority) end
---@param bValue boolean
function UFacialComponent:SetAmbientEyesDefaultValue(bValue) end
---@param bValue boolean
function UFacialComponent:SetAdditiveEyeTargetDefaultValue(bValue) end
function UFacialComponent:ReloadAnimDataTables() end
---@param Actor AActor
---@param Delta float
---@param bIndicateHUD boolean
function UFacialComponent:OnHealthChanged(Actor, Delta, bIndicateHUD) end
---@param Actor AActor
function UFacialComponent:OnCharacterLoadComplete(Actor) end
---@return boolean
function UFacialComponent:IsPlayingDialogueLine() end
---@return boolean
function UFacialComponent:IsLoadingDialogueLineAnimDataTables() end
---@param Emotion FName
---@param AnimTags FGameplayTagContainer
---@return UAnimSequence
function UFacialComponent:GetFacialEmotionAnim(Emotion, AnimTags) end
---@param AnimTags FGameplayTagContainer
---@return UAnimSequence
function UFacialComponent:GetFacialAnimByTags(AnimTags) end
---@param DialogueLine FName
---@return TSoftObjectPtr<UAnimSequence>
function UFacialComponent:GetDialogueLineAnim(DialogueLine) end
---@return EFacialEmotion
function UFacialComponent:GetActiveFacialEmotion() end
---@param InPriority EManagedEyeStatePriority
function UFacialComponent:FinishSettingGazeState(InPriority) end
---@param DialogueLine FName
---@param OverrideDialogueLineEmotion FName
---@return boolean
function UFacialComponent:EditorPlayDialogueLine(DialogueLine, OverrideDialogueLineEmotion) end
---@param Lang FString
---@return boolean
function UFacialComponent:EditorLoadLanguage(Lang) end
---@return TArray<FName>
function UFacialComponent:EditorGetDialogueLineIds() end
---@return boolean
function UFacialComponent:EditorCancelPlayingCurrentDialogueLine() end
function UFacialComponent:DoubleBlinkNow() end
function UFacialComponent:BlinkNow() end


---@class UFadeProvider : UBaseProvider
local UFadeProvider = {}


---@class UFadeProvider_CameraOnly : UFadeProvider
---@field PlayerCameraManager APlayerCameraManager
local UFadeProvider_CameraOnly = {}



---@class UFloatProvider : UBaseProvider
local UFloatProvider = {}

---@param Context UObject
---@param TimeOffset float
---@return float
function UFloatProvider:GetFloatBP(Context, TimeOffset) end


---@class UFloat_Conditional : UFloatProvider
---@field Condition UBoolProvider
---@field Value UFloatProvider
local UFloat_Conditional = {}



---@class UFloat_ConversationLayeredAnimationWeight : UFloatProvider
---@field WeightEntryName FConversationLayeredAnimationWeight
local UFloat_ConversationLayeredAnimationWeight = {}



---@class UFloat_Direct : UFloatProvider
---@field Value float
local UFloat_Direct = {}



---@class UFloat_FallbackChain : UFloatProvider
---@field Entries TArray<UFloatProvider>
local UFloat_FallbackChain = {}



---@class UFloat_ProjectedTimeAnimationValue : UFloatProvider
---@field OriginalTime float
---@field OriginalTimeAnimationValue float
---@field animationLength float
local UFloat_ProjectedTimeAnimationValue = {}



---@class UFloat_RandomInRange : UFloatProvider
---@field Min float
---@field Max float
local UFloat_RandomInRange = {}



---@class UFloat_RemapValue : UFloatProvider
---@field Input UFloatProvider
---@field MinInput UFloatProvider
---@field MaxInput UFloatProvider
---@field MinOutput UFloatProvider
---@field MaxOutput UFloatProvider
local UFloat_RemapValue = {}



---@class UFloat_TransformDistance : UFloatProvider
---@field TransformA UTransformProvider
---@field TransformB UTransformProvider
local UFloat_TransformDistance = {}



---@class UIKDriver : UObject
local UIKDriver = {}


---@class UIKDriverFunctions : UBlueprintFunctionLibrary
local UIKDriverFunctions = {}


---@class UIKDriver_AimAt : UIKDriver
---@field AimControls TArray<FIKDriver_AimAtControl>
local UIKDriver_AimAt = {}



---@class UIKDriver_AimAtConeOnly : UIKDriver
---@field AimControls TArray<FIKDriver_AimAtConeOnlyControl>
local UIKDriver_AimAtConeOnly = {}



---@class UIKDriver_AimAtConstrained : UIKDriver
---@field AimControls TArray<FIKDriver_AimAtConstrainedControl>
local UIKDriver_AimAtConstrained = {}



---@class UIKDriver_AimHead : UIKDriver
---@field HeadBone FBoneReferenceEx
---@field NeckBones TArray<FBoneReferenceEx>
---@field SpineBones TArray<FBoneReferenceEx>
---@field YawLimit float
---@field PitchLimit float
---@field BackDeadZoneAngle float
---@field ConeRotationOffset FRotator
---@field TaskRotationOffset FRotator
---@field BlendSpeed float
---@field TimeDelay float
---@field DelayStartTime float
---@field PrevTargetDirection FVector
local UIKDriver_AimHead = {}



---@class UIKDriver_AnimationDriven : UIKDriver
---@field EffectorDefinitions TArray<FIKDriver_AnimationDrivenData>
local UIKDriver_AnimationDriven = {}



---@class UIKDriver_DisableControls : UIKDriver
---@field AlphaControlsToDisable TArray<FName>
local UIKDriver_DisableControls = {}



---@class UIKDriver_FloorContact : UIKDriver
---@field Controls TArray<FIKDriver_FloorContactControl>
---@field HipBone FBoneReferenceEx
---@field HipAlphaVariableName FName
---@field HipTransformVariableName FName
---@field CollisionChannel ECollisionChannel
---@field HipMultiplier float
---@field GlobalRayTraceStartScale float
---@field GlobalRayTraceFinishScale float
---@field UpperBodyOffset FVector
---@field bAddHipsAverageToHands boolean
---@field bTraceComplex boolean
---@field LimitLegExtenstion boolean
---@field MaxLegExtension float
---@field bUseFK boolean
---@field bReverseFootSetup boolean
---@field ReverseFootFactor float
---@field ReverseFootInterpSpeed float
---@field RollLimit float
---@field PitchLimit float
---@field PTransitionSpeed float
---@field RTransitionSpeed float
---@field PTransitionMaxDistance float
---@field bFloorContact boolean
---@field DrawDebug boolean
---@field bFootStabilization boolean
---@field StabilizationThreshold float
---@field InterpTimeHipsUp float
---@field InterpTimeHipsDown float
---@field UseMinToMaxHipAdjust float
---@field InterpTimeHipsUpFromCapsule float
---@field InterpTimeHipsDownFromCapsule float
---@field PlantRestoreSpeed float
---@field GlobalDebugScale float
---@field OverrideProfiles TArray<FIKDriver_FloorContactProfile>
local UIKDriver_FloorContact = {}



---@class UIKDriver_GhostHips : UIKDriver
---@field HipsBone FBoneReferenceEx
---@field AlphaVariableName FName
---@field TransformVariableName FName
---@field InterpSpeed float
---@field InterpDampingFactor float
local UIKDriver_GhostHips = {}



---@class UIKDriver_GroundAdjustment : UIKDriver
---@field Controls TArray<FIKDriver_GroundAdjustment_Control>
---@field TraceChannel ECollisionChannel
---@field TranslationInterpSpeed float
---@field RotationInterpSpeed float
---@field MaxTranslationAdjustmentSpeed float
---@field bEnableRetargeting boolean
---@field bEnableAnticipation boolean
---@field SwingAnticipationCurve FRuntimeFloatCurve
---@field AnticipationInterpSpeedFactor FRuntimeFloatCurve
---@field RotationAmountInSwing FRuntimeFloatCurve
---@field ReachControls TArray<FIKDriver_GroundAdjustment_ReachControl>
---@field MaxReachAdjustmentAngle float
---@field ReachAdjustToLowestOrHighest float
---@field TraceDelayRangePerLOD TArray<FInt32Range>
---@field DisableCurve FCurveIndexProperty
---@field DisableCurveName FCurveNameProperty
---@field RaiseReachControlsCurveName FCurveNameProperty
---@field StretchToMaxExtensionCurveName FCurveNameProperty
---@field StrideWarpSpringHalflife float
---@field GroundNormalSpringHalflife float
local UIKDriver_GroundAdjustment = {}



---@class UIKDriver_LadderContact : UIKDriver
---@field LeftHand FIKDriver_LadderContactControl
---@field RightHand FIKDriver_LadderContactControl
---@field LeftFoot FIKDriver_LadderContactControl
---@field RightFoot FIKDriver_LadderContactControl
local UIKDriver_LadderContact = {}



---@class UIKDriver_LedgeContact : UIKDriver
---@field LedgePoseAnimSequence UAnimSequence
---@field LedgePoseTime float
---@field LeftHand FIKDriver_LedgeContactHandControl
---@field RightHand FIKDriver_LedgeContactHandControl
---@field LeftFoot FIKDriver_LedgeContactFootControl
---@field RightFoot FIKDriver_LedgeContactFootControl
---@field Hips FIKDriver_LedgeContactHipsControl
---@field TraceChannel ECollisionChannel
local UIKDriver_LedgeContact = {}



---@class UIKDriver_PoseFixup : UIKDriver
local UIKDriver_PoseFixup = {}


---@class UIntProvider : UBaseProvider
local UIntProvider = {}

---@param Context UObject
---@return int32
function UIntProvider:GetIntBP(Context) end


---@class UInt_Conditional : UIntProvider
---@field Condition UBoolProvider
---@field Value UIntProvider
local UInt_Conditional = {}



---@class UInt_Direct : UIntProvider
---@field Value int32
local UInt_Direct = {}



---@class UInt_FallbackChain : UIntProvider
---@field Entries TArray<UIntProvider>
local UInt_FallbackChain = {}



---@class UInterpolationFunctions : UBlueprintFunctionLibrary
local UInterpolationFunctions = {}

---@param Value float
---@return float
function UInterpolationFunctions:SmoothStep(Value) end
---@param A FVector
---@param b FVector
---@param Blend float
---@return FVector
function UInterpolationFunctions:SmoothBlendVectors(A, b, Blend) end
---@param A FTransform
---@param b FTransform
---@param Blend float
---@return FTransform
function UInterpolationFunctions:SmoothBlendTransforms(A, b, Blend) end
---@param A float
---@param b float
---@param Blend float
---@return float
function UInterpolationFunctions:SmoothBlendScalars(A, b, Blend) end
---@param A FRotator
---@param b FRotator
---@param Blend float
---@return FRotator
function UInterpolationFunctions:SmoothBlendRotators(A, b, Blend) end
---@param A FQuat
---@param b FQuat
---@param Blend float
---@return FQuat
function UInterpolationFunctions:SmoothBlendQuaternions(A, b, Blend) end
---@param Value float
---@return float
function UInterpolationFunctions:LinearStep(Value) end
---@param A FVector
---@param b FVector
---@param Blend float
---@return FVector
function UInterpolationFunctions:LinearBlendVectors(A, b, Blend) end
---@param A FTransform
---@param b FTransform
---@param Blend float
---@return FTransform
function UInterpolationFunctions:LinearBlendTransforms(A, b, Blend) end
---@param A float
---@param b float
---@param Blend float
---@return float
function UInterpolationFunctions:LinearBlendScalars(A, b, Blend) end
---@param A FRotator
---@param b FRotator
---@param Blend float
---@return FRotator
function UInterpolationFunctions:LinearBlendRotators(A, b, Blend) end
---@param A FQuat
---@param b FQuat
---@param Blend float
---@return FQuat
function UInterpolationFunctions:LinearBlendQuaternions(A, b, Blend) end
---@param Value float
---@return float
function UInterpolationFunctions:EaseOutStep(Value) end
---@param Value float
---@return float
function UInterpolationFunctions:EaseInStep(Value) end
---@param step_min float
---@param step_max float
---@param Value float
---@return float
function UInterpolationFunctions:BoundedSmoothStep(step_min, step_max, Value) end
---@param step_min float
---@param step_max float
---@param Value float
---@return float
function UInterpolationFunctions:BoundedLinearStep(step_min, step_max, Value) end
---@param step_min float
---@param step_max float
---@param Value float
---@return float
function UInterpolationFunctions:BoundedEaseOutStep(step_min, step_max, Value) end
---@param step_min float
---@param step_max float
---@param Value float
---@return float
function UInterpolationFunctions:BoundedEaseInStep(step_min, step_max, Value) end
---@param current_value FVector
---@param desired_value FVector
---@param max_positive_delta float
---@param max_negative_delta float
---@return FVector
function UInterpolationFunctions:AssymetricallyApproachVectorWithClampedVelocity(current_value, desired_value, max_positive_delta, max_negative_delta) end
---@param current_value FVector
---@param desired_value FVector
---@param positive_approach_rate float
---@param negative_approach_rate float
---@return FVector
function UInterpolationFunctions:AssymetricallyApproachVector(current_value, desired_value, positive_approach_rate, negative_approach_rate) end
---@param current_value float
---@param desired_value float
---@param max_positive_delta float
---@param max_negative_delta float
---@return float
function UInterpolationFunctions:AssymetricallyApproachScalarWithClampedVelocity(current_value, desired_value, max_positive_delta, max_negative_delta) end
---@param current_value float
---@param desired_value float
---@param negative_approach_rate float
---@param positive_approach_rate float
---@return float
function UInterpolationFunctions:AssymetricallyApproachScalar(current_value, desired_value, negative_approach_rate, positive_approach_rate) end
---@param current_value FVector
---@param desired_value FVector
---@param max_delta float
---@return FVector
function UInterpolationFunctions:ApproachVectorWithClampedVelocity(current_value, desired_value, max_delta) end
---@param current_value FVector
---@param desired_value FVector
---@param approach_rate float
---@return FVector
function UInterpolationFunctions:ApproachVector(current_value, desired_value, approach_rate) end
---@param current_value FTransform
---@param desired_value FTransform
---@param max_rotation_delta float
---@param max_translation_delta float
---@param max_scale_delta float
---@return FTransform
function UInterpolationFunctions:ApproachTransformWithClampedVelocity(current_value, desired_value, max_rotation_delta, max_translation_delta, max_scale_delta) end
---@param current_value FTransform
---@param desired_value FTransform
---@param rotation_approach_rate float
---@param translation_approach_rate float
---@param scale_approach_rate float
---@return FTransform
function UInterpolationFunctions:ApproachTransform(current_value, desired_value, rotation_approach_rate, translation_approach_rate, scale_approach_rate) end
---@param current_value float
---@param desired_value float
---@param max_delta float
---@return float
function UInterpolationFunctions:ApproachScalarWithClampedVelocity(current_value, desired_value, max_delta) end
---@param current_value float
---@param desired_value float
---@param approach_rate float
---@return float
function UInterpolationFunctions:ApproachScalar(current_value, desired_value, approach_rate) end
---@param current_value FRotator
---@param desired_value FRotator
---@param max_delta float
---@return FRotator
function UInterpolationFunctions:ApproachRotatorWithClampedVelocity(current_value, desired_value, max_delta) end
---@param current_value FRotator
---@param desired_value FRotator
---@param approach_rate float
---@return FRotator
function UInterpolationFunctions:ApproachRotator(current_value, desired_value, approach_rate) end
---@param current_value FQuat
---@param desired_value FQuat
---@param max_delta float
---@return FQuat
function UInterpolationFunctions:ApproachQuaternionWithClampedVelocity(current_value, desired_value, max_delta) end
---@param current_value FQuat
---@param desired_value FQuat
---@param approach_rate float
---@return FQuat
function UInterpolationFunctions:ApproachQuaternion(current_value, desired_value, approach_rate) end


---@class UNameProvider : UBaseProvider
local UNameProvider = {}

---@param Caller UObject
---@return FName
function UNameProvider:GetNameBP(Caller) end


---@class UName_Conditional : UNameProvider
---@field Condition UBoolProvider
---@field Value UNameProvider
local UName_Conditional = {}



---@class UName_ConversationCameraRegistration : UNameProvider
---@field Camera FConversationCameraRegistrationReference
local UName_ConversationCameraRegistration = {}



---@class UName_ConversationExplicitCameraShot : UNameProvider
---@field Reference FConversationExplicitCameraShotReference
local UName_ConversationExplicitCameraShot = {}



---@class UName_ConversationExplicitLayeredAnimation : UNameProvider
---@field Reference FConversationExplicitLayeredAnimationReference
local UName_ConversationExplicitLayeredAnimation = {}



---@class UName_ConversationExplicitPoseGroup : UNameProvider
---@field Reference FConversationExplicitPoseGroupReference
local UName_ConversationExplicitPoseGroup = {}



---@class UName_ConversationPreset : UNameProvider
---@field Reference FConversationPresetReference
local UName_ConversationPreset = {}



---@class UName_Direct : UNameProvider
---@field Value FName
local UName_Direct = {}



---@class UName_FallbackChain : UNameProvider
---@field Entries TArray<UNameProvider>
local UName_FallbackChain = {}



---@class UObjectProvider : UBaseProvider
local UObjectProvider = {}


---@class UObject_ActorComponent : UObjectProvider
---@field ActorProvider UActorProvider
---@field ComponentType TSubclassOf<UActorComponent>
local UObject_ActorComponent = {}



---@class UObject_Direct : UObjectProvider
---@field Object TWeakObjectPtr<UObject>
local UObject_Direct = {}



---@class UObject_DirectActor : UActorProvider
---@field Actor AActor
local UObject_DirectActor = {}



---@class UObject_IsCaller : UObjectProvider
local UObject_IsCaller = {}


---@class UObject_NamedActor : UActorProvider
---@field ActorName FName
local UObject_NamedActor = {}



---@class UObject_Spawn : UObjectProvider
---@field ParentObject UObject
---@field ObjectClass UClass
---@field ObjectName FName
local UObject_Spawn = {}



---@class UObject_SpawnActor : UActorProvider
---@field ActorClass TSubclassOf<AActor>
---@field ActorName FName
---@field AlignmentSocket FName
local UObject_SpawnActor = {}



---@class UPerClipLayerGroup : UAnimMetaData
---@field LayerContent TArray<FPerClipLayerGroupLayer>
local UPerClipLayerGroup = {}



---@class UPoseGroup : UObject
---@field LookUp UBaseArchitectAsset
---@field LookupAsset TSoftObjectPtr<UBaseArchitectAsset>
---@field TransitionsTo TArray<FPoseGroupTransition>
---@field MinDurationSeconds float
---@field MaxDurationSeconds float
---@field ExplicitPoseGroupName FConversationExplicitPoseGroupReference
local UPoseGroup = {}



---@class UPoseGroupProvider : UObjectProvider
local UPoseGroupProvider = {}


---@class UPoseGroup_Direct : UPoseGroupProvider
---@field PoseGroup UPoseGroup
local UPoseGroup_Direct = {}



---@class UPoseSampler : UObject
local UPoseSampler = {}


---@class UPoseSampler_AmbientEyes : UPoseSampler
---@field LODThreshold int32
local UPoseSampler_AmbientEyes = {}

---@param DialogueID FName
---@param WorldTime float
function UPoseSampler_AmbientEyes:OnDialogueLineAnimStarted(DialogueID, WorldTime) end
---@param bCancelled boolean
function UPoseSampler_AmbientEyes:OnDialogueLineAnimFinished(bCancelled) end


---@class UPoseSampler_BlinkEyes : UPoseSampler
local UPoseSampler_BlinkEyes = {}


---@class UPoseSampler_CloseEyes : UPoseSampler
local UPoseSampler_CloseEyes = {}


---@class UPoseUtilities : UBlueprintFunctionLibrary
local UPoseUtilities = {}


---@class URootControlFunctions : UBlueprintFunctionLibrary
local URootControlFunctions = {}

---@param Actor AActor
---@param TranslationOffset FVector
---@param RotationOffset FRotator
function URootControlFunctions:AdjustWorldSpaceTransform(Actor, TranslationOffset, RotationOffset) end


---@class USpawnByPrimitiveOptions : UObject
local USpawnByPrimitiveOptions = {}


---@class USpawnByPrimitiveOptionsBoundsScale : USpawnByPrimitiveOptions
---@field BoundsScale float
local USpawnByPrimitiveOptionsBoundsScale = {}



---@class USpawnByPrimitiveOptionsCustomDepth : USpawnByPrimitiveOptions
---@field bRenderCustomDepth boolean
---@field CustomDepthStencilWriteMask ERendererStencilMask
---@field CustomDepthStencilValue int32
local USpawnByPrimitiveOptionsCustomDepth = {}



---@class USpawnByPrimitiveOptionsDepthPriorityGroup : USpawnByPrimitiveOptions
---@field DepthPriorityGroup ESceneDepthPriorityGroup
---@field ViewOwnerDepthPriorityGroup ESceneDepthPriorityGroup
---@field bUseViewOwnerDepthPriorityGroup boolean
local USpawnByPrimitiveOptionsDepthPriorityGroup = {}



---@class USpawnByPrimitiveOptionsDisableCollisions : USpawnByPrimitiveOptions
local USpawnByPrimitiveOptionsDisableCollisions = {}


---@class USpawnByPrimitiveOptionsDrawDistance : USpawnByPrimitiveOptions
---@field MinDrawDistance float
---@field CullDistance float
---@field bNeverDistanceCull boolean
local USpawnByPrimitiveOptionsDrawDistance = {}



---@class USpawnByPrimitiveOptionsGenerateOverlaps : USpawnByPrimitiveOptions
---@field bGenerateOverlaps boolean
local USpawnByPrimitiveOptionsGenerateOverlaps = {}



---@class USpawnByPrimitiveOptionsLightingChannels : USpawnByPrimitiveOptions
---@field LightingChannels FLightingChannels
local USpawnByPrimitiveOptionsLightingChannels = {}



---@class USpawnByPrimitiveOptionsOccluder : USpawnByPrimitiveOptions
---@field bUseAsOccluder boolean
---@field bTreatAsBackgroundForOcclusion boolean
local USpawnByPrimitiveOptionsOccluder = {}



---@class USpawnByPrimitiveOptionsReceivesDecals : USpawnByPrimitiveOptions
---@field bReceivesDecals boolean
---@field bReceivesWeatherDecals boolean
local USpawnByPrimitiveOptionsReceivesDecals = {}



---@class USpawnByPrimitiveOptionsRenderPasses : USpawnByPrimitiveOptions
---@field bRenderInMainPass boolean
---@field bRenderInDepthPass boolean
local USpawnByPrimitiveOptionsRenderPasses = {}



---@class USpawnByPrimitiveOptionsShadows : USpawnByPrimitiveOptions
---@field ShadowMinLOD int32
---@field bCastShadow boolean
---@field bCastDynamicShadow boolean
---@field bCastStaticShadow boolean
---@field bCastVolumetricTranslucentShadow boolean
---@field bCastContactShadow boolean
---@field bSelfShadowOnly boolean
---@field bCastFarShadow boolean
---@field bCastInsetShadow boolean
---@field bCastCinematicShadow boolean
---@field bCastHiddenShadow boolean
---@field bCastShadowAsTwoSided boolean
local USpawnByPrimitiveOptionsShadows = {}



---@class USpawnByPrimitiveOptionsSimulatePhysics : USpawnByPrimitiveOptions
---@field bSimulatePhysics boolean
local USpawnByPrimitiveOptionsSimulatePhysics = {}



---@class USpawnByPrimitiveOptionsTick : USpawnByPrimitiveOptions
---@field bTickEnabled boolean
local USpawnByPrimitiveOptionsTick = {}



---@class USpawnByPrimitiveOptionsTranslucency : USpawnByPrimitiveOptions
---@field TranslucencySortPriority int32
---@field TranslucencySortDistanceOffset float
local USpawnByPrimitiveOptionsTranslucency = {}



---@class USpawnByPrimitiveOptionsVisibility : USpawnByPrimitiveOptions
---@field bVisible boolean
---@field bIncludeChildren boolean
local USpawnByPrimitiveOptionsVisibility = {}



---@class USpawn_ByClass : UActorSpawner
---@field ActorClass TSubclassOf<AActor>
---@field ActorTemplate AActor
local USpawn_ByClass = {}



---@class USpawn_BySkeletalMesh : UActorSpawner
---@field SkeletalMesh USkeletalMesh
---@field LODOverride int32
---@field PrimitiveOptions TArray<USpawnByPrimitiveOptions>
local USpawn_BySkeletalMesh = {}



---@class USpawn_ByStaticMesh : UActorSpawner
---@field StaticMesh UStaticMesh
---@field LODOverride int32
---@field PrimitiveOptions TArray<USpawnByPrimitiveOptions>
local USpawn_ByStaticMesh = {}



---@class UStaticMeshPoolBaseData : UDataAsset
---@field ConditionalStaticMeshPoolGroup TArray<FConditionalStaticMeshPool>
local UStaticMeshPoolBaseData = {}



---@class UStringProvider : UBaseProvider
local UStringProvider = {}


---@class UString_Direct : UStringProvider
---@field Value FString
local UString_Direct = {}



---@class UTransformProvider : UBaseProvider
local UTransformProvider = {}

---@param Context UObject
---@param TimeOffset float
---@return FTransform
function UTransformProvider:GetTransformBP(Context, TimeOffset) end


---@class UTransform_AnimationActor : UAnimationTransformProvider
---@field Actor UActorProvider
---@field BoneName FName
local UTransform_AnimationActor = {}



---@class UTransform_AnimationBone : UAnimationTransformProvider
---@field BoneName FName
local UTransform_AnimationBone = {}



---@class UTransform_AnimationRoot : UAnimationTransformProvider
local UTransform_AnimationRoot = {}


---@class UTransform_AnimationSocket : UAnimationTransformProvider
---@field Actor UActorProvider
---@field SocketName FName
local UTransform_AnimationSocket = {}



---@class UTransform_Blend : UTransformProvider
---@field InitialTransform UTransformProvider
---@field FinalTransform UTransformProvider
---@field Blend float
local UTransform_Blend = {}



---@class UTransform_BoneUnscaled : UTransformProvider
---@field BoneName FName
local UTransform_BoneUnscaled = {}



---@class UTransform_CastRay : UTransformProvider
---@field RaycastStart UTransformProvider
---@field ComponentTransform UTransformProvider
---@field Direction UVectorProvider
---@field ForwardDirection FVector
---@field SearchDistance float
---@field OffsetDistance float
---@field TraceType ETraceTypeQuery
local UTransform_CastRay = {}



---@class UTransform_CharacterHeight : UTransformProvider
---@field Actor UActorProvider
---@field BoneName FName
local UTransform_CharacterHeight = {}



---@class UTransform_Conditional : UTransformProvider
---@field Condition UBoolProvider
---@field Transform UTransformProvider
local UTransform_Conditional = {}



---@class UTransform_CurrentCamera : UTransformProvider
local UTransform_CurrentCamera = {}


---@class UTransform_Direct : UTransformProvider
---@field Transform FTransform
local UTransform_Direct = {}



---@class UTransform_FallbackChain : UTransformProvider
---@field Entries TArray<UTransformProvider>
local UTransform_FallbackChain = {}



---@class UTransform_FindLedgeFromAbove : UTransformProvider
---@field horizontalOffset float
---@field InitialHeight float
---@field SearchDistance float
---@field SphereRadius float
---@field RaycastStart UTransformProvider
---@field TraceType ETraceTypeQuery
local UTransform_FindLedgeFromAbove = {}



---@class UTransform_FindWallInForwardDirection : UTransformProvider
---@field verticalOffset float
---@field SearchDistance float
---@field SphereRadius float
---@field RaycastStart UTransformProvider
---@field TraceType ETraceTypeQuery
local UTransform_FindWallInForwardDirection = {}



---@class UTransform_FromActor : UTransformProvider
---@field Actor UActorProvider
---@field ComponentToUse EComponentToUse
---@field SocketName FName
---@field FallbackTransform UTransformProvider
local UTransform_FromActor = {}

function UTransform_FromActor:SetupFallback() end


---@class UTransform_FromAttachParentActor : UTransformProvider
---@field Actor UActorProvider
---@field SocketName FName
local UTransform_FromAttachParentActor = {}



---@class UTransform_ParentConstraint : UTransformProvider
---@field ParentTransform UTransformProvider
---@field TransformInParentSpace UTransformProvider
local UTransform_ParentConstraint = {}



---@class UTransform_PointAndOrientConstraint : UTransformProvider
---@field TranslationParent UTransformProvider
---@field TranslationInParentSpace FVector
---@field RotationParent UTransformProvider
---@field RotationInParentSpace FRotator
local UTransform_PointAndOrientConstraint = {}



---@class UTransform_Tagged : UTransformProvider
---@field Actor UActorProvider
---@field Tag FGameplayTag
local UTransform_Tagged = {}



---@class UUprightAttachSceneComponent : USceneComponent
---@field AttachmentLocalOffset FTransform
---@field bUseActorForward boolean
local UUprightAttachSceneComponent = {}



---@class UVector2DProvider : UBaseProvider
local UVector2DProvider = {}

---@param Context UObject
---@return FVector2D
function UVector2DProvider:GetVector2DBP(Context) end


---@class UVector2D_Direct : UVector2DProvider
---@field Value FVector2D
local UVector2D_Direct = {}



---@class UVectorProvider : UBaseProvider
local UVectorProvider = {}

---@param Context UObject
---@param TimeOffset float
---@return FVector
function UVectorProvider:GetVectorBP(Context, TimeOffset) end


---@class UVector_Direct : UVectorProvider
---@field Value FVector
local UVector_Direct = {}



---@class UWarmUpComponent : UActorComponent
---@field Tags TArray<FName>
local UWarmUpComponent = {}



