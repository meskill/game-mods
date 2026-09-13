---@meta

---@class APlaceholder : AActor
---@field SceneComponent USceneComponent
local APlaceholder = {}



---@class ASceneRigActor : AActor
---@field bAutoInitialize boolean
---@field bAutoPlay boolean
---@field StartTime float
---@field LoadStage boolean
---@field bCreatePreviewActors boolean
---@field DebugTriggerSceneRig FKey
---@field LoopIndefinitely boolean
---@field SceneComponent USceneComponent
---@field TriggerVolumes TArray<TWeakObjectPtr<ATriggerBase>>
---@field bIgnoreEndOverlapEventIfAlreadyPlaying boolean
---@field SceneRig USceneRig
---@field SceneRigProvider USceneRigProvider
---@field LookupAlias TArray<FName>
---@field SceneRigPlayer TWeakObjectPtr<USceneRigPlayer>
---@field SceneInterface FSceneRigParameters
---@field OnSetPlaying FSceneRigActorOnSetPlaying
---@field OnPlaybackAlmostComplete FSceneRigActorOnPlaybackAlmostComplete
---@field StageContainer USceneRigStageContainer
---@field StreamedStages TArray<ULevelStreaming>
local ASceneRigActor = {}

---@param EventName FName
function ASceneRigActor:TriggerEvent(EventName) end
---@param StopCurrentlyPlaying boolean
function ASceneRigActor:StopRepeatedPlay(StopCurrentlyPlaying) end
function ASceneRigActor:StopImmediate() end
function ASceneRigActor:Stop() end
---@param MinRepeatDelay float
---@param MaxRepeatDelay float
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function ASceneRigActor:StartRepeatedPlay(MinRepeatDelay, MaxRepeatDelay, InitializingBehaviorType) end
---@param bShow boolean
function ASceneRigActor:ShowSkipUI(bShow) end
---@param Scale float
function ASceneRigActor:SetPlaybackScale(Scale) end
function ASceneRigActor:Resume() end
---@return boolean
function ASceneRigActor:PlayingOnRepeat() end
---@return USceneRigPlayer
function ASceneRigActor:PlayImmediate() end
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function ASceneRigActor:Play(InitializingBehaviorType) end
function ASceneRigActor:Pause() end
---@param bPlaying boolean
function ASceneRigActor:OnSetPlaying__DelegateSignature(bPlaying) end
function ASceneRigActor:OnPlaybackAlmostComplete__DelegateSignature() end
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function ASceneRigActor:OnEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end
function ASceneRigActor:OnCurtainRaised() end
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ASceneRigActor:OnBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param SceneRig TSoftObjectPtr<USceneRig>
---@return boolean
function ASceneRigActor:IsSceneRigBeingSkipped(SceneRig) end
---@return boolean
function ASceneRigActor:IsPlaying() end
---@return boolean
function ASceneRigActor:IsActive() end
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function ASceneRigActor:Initialize(InitializingBehaviorType) end
---@return float
function ASceneRigActor:GetTimeRemaining() end
---@return USceneRigPlayer
function ASceneRigActor:GetSceneRigPlayer() end
---@return USceneRig
function ASceneRigActor:GetSceneRig() end
---@return float
function ASceneRigActor:GetPlaybackScale() end
---@return USceneRigPlayer
function ASceneRigActor:DebugTriggerPlay() end
---@param InSceneRig USceneRig
function ASceneRigActor:AssignSceneRig(InSceneRig) end
---@param Handler FAddStartHandlerHandler
function ASceneRigActor:AddStartHandler(Handler) end
---@param Handler FAddOnCleanupHandlerHandler
function ASceneRigActor:AddOnCleanupHandler(Handler) end
---@param Handler FAddFinishHandlerHandler
function ASceneRigActor:AddFinishHandler(Handler) end
---@param EventName FName
---@param Delegate FAddEventHandlerWithActorDelegate
function ASceneRigActor:AddEventHandlerWithActor(EventName, Delegate) end
---@param EventName FName
---@param Delegate FAddEventHandlerDelegate
function ASceneRigActor:AddEventHandler(EventName, Delegate) end


---@class ASceneRigCamera : ACameraActor
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field LookatTrackingSettings FCameraLookatTrackingSettings
---@field CameraSocket FName
---@field FocusSettings FSRCameraFocusSettings
---@field RenderFeatures FSRCameraPostProcessSettings
---@field LODDetailMode FAnimatedIntegerPropertyDriver
---@field CurrentFocalLength FAnimatedFloatPropertyDriver
---@field CurrentAperture FAnimatedFloatPropertyDriver
---@field CurrentFocusDistance FAnimatedFloatPropertyDriver
local ASceneRigCamera = {}



---@class ASceneRigCameraManager : AActor
local ASceneRigCameraManager = {}

---@param WorldContextObject UObject
---@return AActor
function ASceneRigCameraManager:GetActiveSceneRigCamera(WorldContextObject) end


---@class ASceneRigCameraStackActor : ACameraStackActor
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field EyeSocketName FName
---@field FocusSettings FSRCameraFocusSettings
---@field RenderFeatures FSRCameraPostProcessSettings
---@field LODDetailMode FAnimatedIntegerPropertyDriver
---@field CurrentFocalLength FAnimatedFloatPropertyDriver
---@field CurrentAperture FAnimatedFloatPropertyDriver
---@field CurrentFocusDistance FAnimatedFloatPropertyDriver
local ASceneRigCameraStackActor = {}



---@class ASceneRigMayaExportOrigin : AActor
local ASceneRigMayaExportOrigin = {}


---@class ASceneRigMayaExportSphere : AActor
---@field SphereComponent USphereComponent
local ASceneRigMayaExportSphere = {}



---@class ASceneRigPlayerManager : AActor
---@field Players TArray<FSceneRigPlayerReference>
---@field NewPlayersFromThisTick TArray<USceneRigPlayer>
---@field ActivePlayersWantingToPlayThisTick TArray<USceneRigPlayer>
local ASceneRigPlayerManager = {}



---@class AStoryGraphActor : AActor
---@field SceneComponent USceneComponent
---@field DebugTriggerKey FKey
---@field DebugTriggerEventName FName
---@field TriggerVolumes TArray<TWeakObjectPtr<ATriggerBase>>
---@field StoryGraph UTimeRig_StoryGraph
---@field bHoldCurtainUntilPlay boolean
---@field LookupAlias TArray<FName>
---@field ParameterBlock USceneRigStageParameterBlock
---@field bAllowTimeRigsToBeSkipped boolean
---@field CustomNodeStates TMap<UStoryNode_Custom, UStoryNodeState_Custom>
---@field AmbientPlayer USceneRigPlayer
local AStoryGraphActor = {}

---@param Event FName
---@return boolean
function AStoryGraphActor:TriggerEventOnActiveSceneRigs(Event) end
---@param Event FName
---@param EventSource FName
---@return boolean
function AStoryGraphActor:TriggerEvent(Event, EventSource) end
---@param OutEventTriggered FName
---@param EventSource FName
---@return boolean
function AStoryGraphActor:TriggerAnyEvent(OutEventTriggered, EventSource) end
---@param ParameterName FName
---@param bBoolToSet boolean
---@return boolean
function AStoryGraphActor:SetBoolParameter(ParameterName, bBoolToSet) end
function AStoryGraphActor:SetAllowTimeRigsToBeSkipped() end
---@param ParameterName FName
---@param ActorToSet AActor
---@return boolean
function AStoryGraphActor:SetActorParameter(ParameterName, ActorToSet) end
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AStoryGraphActor:OnEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end
function AStoryGraphActor:OnCurtainRaised() end
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AStoryGraphActor:OnBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param Event FName
---@param Handler FHandleEventHandler
---@return boolean
function AStoryGraphActor:HandleEvent(Event, Handler) end


---@class FActionParameter_DialogueEvent
---@field BoundParameter FSceneRigParameterBinding_DialogueEvent
---@field DefaultEvent FSceneRigDialogTrackSectionData
local FActionParameter_DialogueEvent = {}



---@class FActionParameter_FString
---@field BoundParameter FSceneRigParameterBinding_FString
---@field DefaultValue FString
local FActionParameter_FString = {}



---@class FActionParameter_Object
---@field BoundParameter FSceneRigParameterBinding_Object
---@field DefaultObject UObjectProvider
local FActionParameter_Object = {}



---@class FAmbientProxyActorReference
---@field ProxyActor TSoftObjectPtr<USceneRigProxyActor>
local FAmbientProxyActorReference = {}



---@class FAnimNode_SceneRigCameraDriver : FAnimNode_Base
---@field BasePose FPoseLink
local FAnimNode_SceneRigCameraDriver = {}



---@class FAnimateProperty_PropertyName
---@field Name FName
local FAnimateProperty_PropertyName = {}



---@class FAudioDialogueFlags
---@field StartPausedUMETA boolean
---@field NoQueuingLimits boolean
---@field SuppressSubtitles boolean
---@field NonSpatialized boolean
---@field UseCinematicPolyphony boolean
---@field LipsyncFlags ELipsyncFlags
local FAudioDialogueFlags = {}



---@class FCameraActionTransitionSettings
---@field BlendTime UFloatProvider
---@field ResetType ECameraStackResetType
---@field ResetLookAtLocation UTransformProvider
---@field FixedArmRotationValue FRotator
---@field RotationOffset FVector2D
---@field bLazyBlend boolean
---@field bOldCameraStaysValid boolean
local FCameraActionTransitionSettings = {}



---@class FCameraStackOperationState
---@field Operation UCameraStackOperationBase
---@field ScratchData UCameraStackOperationScratchData
local FCameraStackOperationState = {}



---@class FCinematicInfo : FTableRowBase
---@field SceneRig FString
---@field Tier FString
---@field Cooked boolean
---@field status FString
local FCinematicInfo = {}



---@class FFXOverride
---@field Rules TArray<UFXRule>
---@field ParticleSystem UFXSystemAsset
local FFXOverride = {}



---@class FFloatMultiChannelNoiseChannel
---@field Frequency float
---@field Amplitude float
---@field TimeOffset float
---@field Waveform EFloatMultiChannelNoiseWaveform
---@field Enabled boolean
local FFloatMultiChannelNoiseChannel = {}



---@class FModifyMaterials_MaterialOverride
---@field Rules TArray<UFXRule>
---@field Material UMaterialInterface
local FModifyMaterials_MaterialOverride = {}



---@class FModifyMaterials_TextureOverride
---@field Rules TArray<UFXRule>
---@field Texture UTexture2D
local FModifyMaterials_TextureOverride = {}



---@class FSRCameraFocusSettings
---@field FocusMethod FAnimatedIntegerPropertyDriver
---@field ManualFocusDistance FAnimatedFloatPropertyDriver
---@field bDrawDebugFocusPlane FAnimatedBoolPropertyDriver
---@field bSmoothFocusChanges FAnimatedBoolPropertyDriver
---@field FocusSmoothingInterpSpeed FAnimatedFloatPropertyDriver
---@field FocusOffset FAnimatedFloatPropertyDriver
---@field TrackingFocusSettings FSRCameraTrackingFocusSettings
local FSRCameraFocusSettings = {}



---@class FSRCameraPostProcessSettings
---@field SceneFringeIntensity FAnimatedFloatPropertyDriver
---@field VignetteIntensity FAnimatedFloatPropertyDriver
---@field GrainJitter FAnimatedFloatPropertyDriver
---@field GrainIntensity FAnimatedFloatPropertyDriver
---@field BloomMethod FAnimatedIntegerPropertyDriver
---@field BloomIntensity FAnimatedFloatPropertyDriver
---@field BloomThreshold FAnimatedFloatPropertyDriver
---@field BloomCross FAnimatedFloatPropertyDriver
---@field BloomDirtMaskIntensity FAnimatedFloatPropertyDriver
---@field BloomDirtMaskTint FAnimatedVectorPropertyDriver
---@field AutoExposureMethod FAnimatedIntegerPropertyDriver
---@field AutoExposureLowPercent FAnimatedFloatPropertyDriver
---@field AutoExposureHighPercent FAnimatedFloatPropertyDriver
---@field AutoExposureMinBrightness FAnimatedFloatPropertyDriver
---@field AutoExposureMaxBrightness FAnimatedFloatPropertyDriver
---@field AutoExposureSpeedUp FAnimatedFloatPropertyDriver
---@field AutoExposureSpeedDown FAnimatedFloatPropertyDriver
---@field AutoExposureBias FAnimatedFloatPropertyDriver
---@field HistogramLogMax FAnimatedFloatPropertyDriver
---@field HistogramLogMin FAnimatedFloatPropertyDriver
---@field DepthOfFieldMethod FAnimatedIntegerPropertyDriver
---@field DepthOfFieldFstop FAnimatedFloatPropertyDriver
---@field DepthOfFieldSensorWidth FAnimatedFloatPropertyDriver
---@field DepthOfFieldFocalDistance FAnimatedFloatPropertyDriver
---@field DepthOfFieldDepthBlurAmount FAnimatedFloatPropertyDriver
---@field DepthOfFieldDepthBlurRadius FAnimatedFloatPropertyDriver
---@field DepthOfFieldFocalRegion FAnimatedFloatPropertyDriver
---@field DepthOfFieldNearTransitionRegion FAnimatedFloatPropertyDriver
---@field DepthOfFieldFarTransitionRegion FAnimatedFloatPropertyDriver
---@field DepthOfFieldScale FAnimatedFloatPropertyDriver
---@field DepthOfFieldMaxBokehSize FAnimatedFloatPropertyDriver
---@field DepthOfFieldNearBlurSize FAnimatedFloatPropertyDriver
---@field DepthOfFieldFarBlurSize FAnimatedFloatPropertyDriver
---@field DepthOfFieldOcclusion FAnimatedFloatPropertyDriver
---@field DepthOfFieldColorThreshold FAnimatedFloatPropertyDriver
---@field DepthOfFieldSizeThreshold FAnimatedFloatPropertyDriver
---@field DepthOfFieldSkyFocusDistance FAnimatedFloatPropertyDriver
---@field DepthOfFieldVignetteSize FAnimatedFloatPropertyDriver
---@field AmbientOcclusionIntensity FAnimatedFloatPropertyDriver
---@field AmbientOcclusionRadius FAnimatedFloatPropertyDriver
---@field AmbientOcclusionStaticFraction FAnimatedFloatPropertyDriver
---@field AmbientOcclusionRadiusInWS FAnimatedBoolPropertyDriver
---@field AmbientOcclusionFadeDistance FAnimatedFloatPropertyDriver
---@field AmbientOcclusionFadeRadius FAnimatedFloatPropertyDriver
---@field AmbientOcclusionPower FAnimatedFloatPropertyDriver
---@field AmbientOcclusionBias FAnimatedFloatPropertyDriver
---@field AmbientOcclusionQuality FAnimatedFloatPropertyDriver
---@field IndirectLightingColor FAnimatedVectorPropertyDriver
---@field IndirectLightingIntensity FAnimatedFloatPropertyDriver
---@field MotionBlurAmount FAnimatedFloatPropertyDriver
---@field MotionBlurMax FAnimatedFloatPropertyDriver
---@field MotionBlurPerObjectSize FAnimatedFloatPropertyDriver
local FSRCameraPostProcessSettings = {}



---@class FSRCameraTrackingFocusSettings
---@field RelativeOffset FAnimatedVectorPropertyDriver
local FSRCameraTrackingFocusSettings = {}



---@class FSceneActionActorFunctionReference
---@field Function TSoftObjectPtr<UFunction>
local FSceneActionActorFunctionReference = {}



---@class FSceneActionActorTickFunctionReference : FSceneActionActorFunctionReference
local FSceneActionActorTickFunctionReference = {}


---@class FSceneActionAnimCurve
---@field CurveName FSkeletonCurveReference
---@field Value UFloatProvider
local FSceneActionAnimCurve = {}



---@class FSceneActionFunctionEventReference
---@field Function UFunction
local FSceneActionFunctionEventReference = {}



---@class FSceneActionSequence_ActorMapping
---@field ActorName FSceneActionSequence_SequenceActorName
---@field AssignedActor UActorProvider
local FSceneActionSequence_ActorMapping = {}



---@class FSceneActionSequence_SequenceActorName
---@field SequenceActorName FName
local FSceneActionSequence_SequenceActorName = {}



---@class FSceneAction_PlayBinkMedia_SubtitleLine : FTableRowBase
---@field Key FString
---@field StartTime float
---@field EndTime float
local FSceneAction_PlayBinkMedia_SubtitleLine = {}



---@class FSceneParameterChangeRequest
---@field ParameterName FName
---@field ChangeType ESceneParameterChangeRequestType
---@field String FString
---@field Bool boolean
---@field float float
---@field Object UObject
---@field int int32
---@field Transform FTransform
local FSceneParameterChangeRequest = {}



---@class FSceneRigActorMemberReference
---@field MemberName FName
local FSceneRigActorMemberReference = {}



---@class FSceneRigAnimInstanceProxy : FAnimInstanceProxy_RetrieveActorTransform
local FSceneRigAnimInstanceProxy = {}


---@class FSceneRigAnimationClipRange
---@field RangeType ESceneRigAnimationPlaybackRange
---@field TimingOffset UFloatProvider
---@field StartOffset UFloatProvider
---@field EndOffset UFloatProvider
---@field Duration UFloatProvider
local FSceneRigAnimationClipRange = {}



---@class FSceneRigAnimationParams
---@field PlacementOptions FSceneRigAnimationTrackPlacementOptions
---@field Animation UAnimSequence
---@field LayerName FName
---@field StartOffset float
---@field EndOffset float
---@field PlayRate float
---@field bReverse boolean
---@field weight FRichCurve
local FSceneRigAnimationParams = {}



---@class FSceneRigAnimationPlacementOptions
---@field RootEvaluationMode EAnimTrackRootMode
---@field RootBlendMode ESceneRigAnimationRootBlendMode
---@field BlendInRootBlendMode ESceneRigAnimationRootBlendMode
---@field BlendOutRootBlendMode ESceneRigAnimationRootBlendMode
---@field AccumulateRootMotion boolean
---@field ConstrainedToPlacement UBoolProvider
---@field PlacementRespectsBlends UBoolProvider
---@field PlacementIsMoving UBoolProvider
---@field Placement UTransformProvider
---@field PlacementOffset UAnimationTransformProvider
local FSceneRigAnimationPlacementOptions = {}



---@class FSceneRigAnimationPlaybackSpeed
---@field PlaybackType ESceneRigAnimationPlaybackSpeed
---@field SpeedMultiplier UFloatProvider
local FSceneRigAnimationPlaybackSpeed = {}



---@class FSceneRigAnimationRegsitryAnim
---@field LookupKey FString
---@field SelectionWeight float
---@field UnrealAnimationAsset UAnimationAsset
local FSceneRigAnimationRegsitryAnim = {}



---@class FSceneRigAnimationRegsitryInheritRegistry
---@field LookupKey FString
---@field InheritFromRegistry USceneRigAnimationRegistry
local FSceneRigAnimationRegsitryInheritRegistry = {}



---@class FSceneRigAnimationSectionTemplate : FMovieSceneEvalTemplate
---@field Params FSceneRigAnimationSectionTemplateParameters
local FSceneRigAnimationSectionTemplate = {}



---@class FSceneRigAnimationSectionTemplateParameters : FSceneRigAnimationParams
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
local FSceneRigAnimationSectionTemplateParameters = {}



---@class FSceneRigAnimationTrackPlacementOptions
---@field ConstrainedToPlacement boolean
---@field bUnscaleHipsBone boolean
---@field ConstraintMode ESceneRigAnimationTrackConstraintMode
---@field PlacementRespectsBlends boolean
---@field Placement UTransformProvider
---@field PlacementOffset UAnimationTransformProvider
---@field TransformMask FMovieSceneTransformMask
---@field Translation FRichCurve
---@field Rotation FRichCurve
---@field Scale FRichCurve
local FSceneRigAnimationTrackPlacementOptions = {}



---@class FSceneRigBoundObject
---@field BoundObjectName FName
---@field ObjectProvider UObjectProvider
local FSceneRigBoundObject = {}



---@class FSceneRigBoundParameterDefinition
local FSceneRigBoundParameterDefinition = {}


---@class FSceneRigCameraParams
---@field InitialCamera UObjectProvider
---@field FinalCamera UObjectProvider
---@field Camera UObjectProvider
local FSceneRigCameraParams = {}



---@class FSceneRigCameraSectionTemplate : FMovieSceneEvalTemplate
---@field Params FSceneRigCameraParams
local FSceneRigCameraSectionTemplate = {}



---@class FSceneRigDialogTrackSectionData
---@field EventName FString
---@field RequiredParameters TMap<FString, FString>
---@field StopWhenAttachedToDestroyed boolean
---@field AudioDialogueFlags FAudioDialogueFlags
local FSceneRigDialogTrackSectionData = {}



---@class FSceneRigDialogTrackTemplate : FMovieSceneEvalTemplate
---@field TemplateData FSceneRigDialogTrackTemplateData
local FSceneRigDialogTrackTemplate = {}



---@class FSceneRigDialogTrackTemplateData : FSceneRigDialogTrackSectionData
local FSceneRigDialogTrackTemplateData = {}


---@class FSceneRigObjectActionBase_ComponentName
---@field Name FName
local FSceneRigObjectActionBase_ComponentName = {}



---@class FSceneRigParameterBinding_Animation : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Animation
local FSceneRigParameterBinding_Animation = {}



---@class FSceneRigParameterBinding_AnimationTransform : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_AnimationTransform
local FSceneRigParameterBinding_AnimationTransform = {}



---@class FSceneRigParameterBinding_Bool : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Bool
local FSceneRigParameterBinding_Bool = {}



---@class FSceneRigParameterBinding_DialogueEvent : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_DialogueEvent
local FSceneRigParameterBinding_DialogueEvent = {}



---@class FSceneRigParameterBinding_FString : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_FString
local FSceneRigParameterBinding_FString = {}



---@class FSceneRigParameterBinding_Float : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Float
local FSceneRigParameterBinding_Float = {}



---@class FSceneRigParameterBinding_Int : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Int
local FSceneRigParameterBinding_Int = {}



---@class FSceneRigParameterBinding_Object : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Object
local FSceneRigParameterBinding_Object = {}



---@class FSceneRigParameterBinding_Transform : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Transform
local FSceneRigParameterBinding_Transform = {}



---@class FSceneRigParameterBinding_Vector : FSceneRigBoundParameterDefinition
---@field Reference USceneRigParameterDefinition_Vector
local FSceneRigParameterBinding_Vector = {}



---@class FSceneRigParameterDefinitions
local FSceneRigParameterDefinitions = {}


---@class FSceneRigParameters
---@field Parameters TMap<FString, USceneRigParameter>
---@field StageParameters USceneRigStageParameterBlock
---@field WorldContext UObject
---@field StoryGraph UTimeRig_StoryGraph
---@field StoryNode UTimeRig_StoryGraphNode
local FSceneRigParameters = {}



---@class FSceneRigPlayerReference
---@field Player USceneRigPlayer
---@field WeakPlayer TWeakObjectPtr<USceneRigPlayer>
local FSceneRigPlayerReference = {}



---@class FSceneRigRegisteredActorReference
---@field RegisteredName FName
local FSceneRigRegisteredActorReference = {}



---@class FSceneRigScriptBranch
---@field Condition UScriptConditionProvider
---@field Script USceneRigScriptNode
local FSceneRigScriptBranch = {}



---@class FSceneRigScriptChoice
---@field Script USceneRigScriptNode
local FSceneRigScriptChoice = {}



---@class FSceneRigScriptContainer
---@field ScriptObject USceneRigScript
local FSceneRigScriptContainer = {}



---@class FSceneRigStageActorPlacement
---@field Actor FSceneRigStage_ActorReference
---@field Placement FSceneRigStage_TransformReference
local FSceneRigStageActorPlacement = {}



---@class FSceneRigStageCast
---@field CastMembers TArray<FSceneRigStageRole>
local FSceneRigStageCast = {}



---@class FSceneRigStageRole
---@field RoleType ESceneRigStageRoleType
---@field RoleIndex int32
local FSceneRigStageRole = {}



---@class FSceneRigStage_Actor : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UActorProvider
local FSceneRigStage_Actor = {}



---@class FSceneRigStage_ActorReference : FSceneRigStage_ParameterReference
local FSceneRigStage_ActorReference = {}


---@class FSceneRigStage_Animation : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UAnimationProvider
local FSceneRigStage_Animation = {}



---@class FSceneRigStage_AnimationReference : FSceneRigStage_ParameterReference
local FSceneRigStage_AnimationReference = {}


---@class FSceneRigStage_Bool : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UBoolProvider
local FSceneRigStage_Bool = {}



---@class FSceneRigStage_BoolReference : FSceneRigStage_ParameterReference
local FSceneRigStage_BoolReference = {}


---@class FSceneRigStage_Float : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UFloatProvider
local FSceneRigStage_Float = {}



---@class FSceneRigStage_FloatReference : FSceneRigStage_ParameterReference
local FSceneRigStage_FloatReference = {}


---@class FSceneRigStage_Int : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UIntProvider
local FSceneRigStage_Int = {}



---@class FSceneRigStage_IntReference : FSceneRigStage_ParameterReference
local FSceneRigStage_IntReference = {}


---@class FSceneRigStage_Name : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UNameProvider
local FSceneRigStage_Name = {}



---@class FSceneRigStage_NameReference : FSceneRigStage_ParameterReference
local FSceneRigStage_NameReference = {}


---@class FSceneRigStage_Object : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UObjectProvider
local FSceneRigStage_Object = {}



---@class FSceneRigStage_ObjectReference : FSceneRigStage_ParameterReference
local FSceneRigStage_ObjectReference = {}


---@class FSceneRigStage_ParameterDefinition
---@field AlwaysUseDefault boolean
local FSceneRigStage_ParameterDefinition = {}



---@class FSceneRigStage_ParameterReference
---@field ParameterType UStruct
---@field ReferenceName FName
local FSceneRigStage_ParameterReference = {}



---@class FSceneRigStage_String : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UStringProvider
local FSceneRigStage_String = {}



---@class FSceneRigStage_StringReference : FSceneRigStage_ParameterReference
local FSceneRigStage_StringReference = {}


---@class FSceneRigStage_Transform : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UTransformProvider
local FSceneRigStage_Transform = {}



---@class FSceneRigStage_TransformReference : FSceneRigStage_ParameterReference
local FSceneRigStage_TransformReference = {}


---@class FSceneRigStage_Vector : FSceneRigStage_ParameterDefinition
---@field DefaultProvider UVectorProvider
local FSceneRigStage_Vector = {}



---@class FSceneRigStage_VectorReference : FSceneRigStage_ParameterReference
local FSceneRigStage_VectorReference = {}


---@class FSceneRigVariant
---@field Conditions TArray<UBoolProvider>
---@field AvoidTwiceInARow boolean
---@field MinRepeatLimitCount int32
---@field MaxRepeatLimitCount int32
---@field MinRepeatDelayLimitSeconds float
---@field MaxRepeatDelayLimitSeconds float
---@field RelativeWeight float
---@field SceneRig USceneRigProvider
local FSceneRigVariant = {}



---@class FSetProperty_PropertyName
---@field Name FName
local FSetProperty_PropertyName = {}



---@class FSkeletonCurveReference
---@field CurveName FName
local FSkeletonCurveReference = {}



---@class FSmartMaterial
---@field DefaultMaterial UMaterialInterface
---@field MaterialOverrides TArray<FModifyMaterials_MaterialOverride>
local FSmartMaterial = {}



---@class FSmartTexture
---@field DefaultTexture UTexture2D
---@field TextureOverrides TArray<FModifyMaterials_TextureOverride>
local FSmartTexture = {}



---@class FStagePreviewDriverContext
---@field StageParameters USceneRigStageParameterBlock
local FStagePreviewDriverContext = {}



---@class FSubLevelOffset : FTableRowBase
---@field Position FVector
---@field Yaw float
---@field HasCentroid boolean
---@field LevelCentroid FVector
local FSubLevelOffset = {}



---@class FTemplateSceneRigRow : FTableRowBase
---@field SceneRigClass TSubclassOf<USceneRig>
---@field TemplateSceneRig USceneRig
local FTemplateSceneRigRow = {}



---@class FTransformKeyValue
---@field Transform FTransform
local FTransformKeyValue = {}



---@class FTransform_SceneRigActor_PreviewReference
---@field Reference FWorldActorReference
local FTransform_SceneRigActor_PreviewReference = {}



---@class IConversationAnimationManager : IInterface
local IConversationAnimationManager = {}


---@class IConversationAssetTracker : IInterface
local IConversationAssetTracker = {}


---@class IConversationCameraManager : IInterface
local IConversationCameraManager = {}


---@class IMoviePlayerInterface : IInterface
local IMoviePlayerInterface = {}

---@param Opacity float
function IMoviePlayerInterface:SetOpacity(Opacity) end
---@param Opacity float
function IMoviePlayerInterface:SetForegroundOpacity(Opacity) end


---@class ISceneParameterInterface : IInterface
local ISceneParameterInterface = {}

---@param OuterObject UObject
---@return USceneRigStageParameterBlock
function ISceneParameterInterface:CreateParameterBlock(OuterObject) end


---@class ISceneRigBakeSequence : IInterface
local ISceneRigBakeSequence = {}


---@class ISceneRigParticipant : IInterface
local ISceneRigParticipant = {}


---@class ISceneRigStageClassHost : IInterface
local ISceneRigStageClassHost = {}


---@class UActor_AmbientProxyActor : UActorProvider
---@field AmbientProxy FAmbientProxyActorReference
local UActor_AmbientProxyActor = {}



---@class UActor_GameplayCamera : UActorProvider
local UActor_GameplayCamera = {}


---@class UActor_Registered : UActorProvider
---@field ActorReference FSceneRigRegisteredActorReference
---@field RequireRegistration boolean
local UActor_Registered = {}



---@class UActor_SceneRigActor : UActorProvider
local UActor_SceneRigActor = {}


---@class UActor_SceneRigActorMember : UActorProvider
---@field ActorClass TSubclassOf<ASceneRigActor>
---@field Member FSceneRigActorMemberReference
local UActor_SceneRigActorMember = {}



---@class UActor_SceneRigCamera : UActorProvider
---@field Tags FGameplayTagContainer
---@field FallbackTags TArray<FGameplayTagContainer>
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field EnabledRegisteredCameraNames TArray<UNameProvider>
---@field DisabledRegisteredCameraNames TArray<UNameProvider>
local UActor_SceneRigCamera = {}



---@class UActor_SceneRigParameter : UActorProvider
---@field BoundParameter FSceneRigParameterBinding_Object
local UActor_SceneRigParameter = {}



---@class UActor_SceneRigParentProxyActor : UActorProvider
local UActor_SceneRigParentProxyActor = {}


---@class UActor_SceneRigProxyActor : UActorProvider
---@field ProxyActor USceneRigProxyActor
local UActor_SceneRigProxyActor = {}



---@class UActor_SceneRigStageParameter : UActorProvider
---@field Reference FSceneRigStage_ActorReference
local UActor_SceneRigStageParameter = {}



---@class UActor_StageRoot : UActorProvider
local UActor_StageRoot = {}


---@class UActor_WorldReference : UActorProvider
---@field ActorReference FWorldActorReference
local UActor_WorldReference = {}



---@class UAnimationAsset_SceneRigParameter : UAnimationProvider
---@field BoundParameter FSceneRigParameterBinding_Animation
local UAnimationAsset_SceneRigParameter = {}



---@class UAnimationClip_FromSceneRigAction : UAnimationClipProvider
---@field Actor USceneRigProxyActor
local UAnimationClip_FromSceneRigAction = {}



---@class UAnimationProvider_Gender : UAnimationProvider
---@field MaleAnimation UAnimationProvider
---@field FemaleAnimation UAnimationProvider
local UAnimationProvider_Gender = {}



---@class UAnimationTransform_SceneRigParameter : UAnimationTransformProvider
---@field BoundParameter FSceneRigParameterBinding_AnimationTransform
local UAnimationTransform_SceneRigParameter = {}



---@class UAnimation_FromPoseGroup : UAnimationProvider
---@field TransitionFromPreviousPose boolean
---@field TransitionFromPoseGroupOverride UPoseGroupProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
local UAnimation_FromPoseGroup = {}



---@class UAnimation_SceneRigStageParameter : UAnimationProvider
---@field Reference FSceneRigStage_AnimationReference
local UAnimation_SceneRigStageParameter = {}



---@class UAnimation_ScratchAnimation : UAnimationProvider
---@field SelectedTake int32
local UAnimation_ScratchAnimation = {}



---@class UBlendSpaceInput_SceneRigStageParameter : UBlendSpaceInputProvider
---@field Reference FSceneRigStage_FloatReference
local UBlendSpaceInput_SceneRigStageParameter = {}



---@class UBool_Curve : UBoolProvider
---@field Curve FRuntimeFloatCurve
local UBool_Curve = {}



---@class UBool_InSceneRigEditor : UBoolProvider
local UBool_InSceneRigEditor = {}


---@class UBool_IsFemaleCharacter : UBoolProvider
---@field Actor UActorProvider
local UBool_IsFemaleCharacter = {}



---@class UBool_IsMaleCharacter : UBoolProvider
---@field Actor UActorProvider
local UBool_IsMaleCharacter = {}



---@class UBool_SceneRigParameter : UBoolProvider
---@field BoundParameter FSceneRigParameterBinding_Bool
local UBool_SceneRigParameter = {}



---@class UBool_SceneRigStageParameter : UBoolProvider
---@field Reference FSceneRigStage_BoolReference
local UBool_SceneRigStageParameter = {}



---@class UCameraStackBehaviorCore_SceneRig : UCameraStackBehaviorCore
---@field bCounteractAccumulatedRotation boolean
---@field bMaintainArmOrigin boolean
---@field bAlignArmWithAccumulatedRotation boolean
local UCameraStackBehaviorCore_SceneRig = {}



---@class UCameraStackSceneRigParameterTargetGetter : UCameraStackSecondaryTargetGetterBlend
---@field ParameterName FString
local UCameraStackSceneRigParameterTargetGetter = {}



---@class UColor_Curve : UColorProvider
---@field Curve FRuntimeCurveLinearColor
local UColor_Curve = {}



---@class UDebugSceneRigManager : UDebugWindow
local UDebugSceneRigManager = {}


---@class UDebugStoryGraphWindow : UDebugWindow
local UDebugStoryGraphWindow = {}


---@class UDialogueScriptBlockImplicitRulesCommand : UDialogueScriptCommand
---@field BlockLayeredAnimation boolean
---@field BlockCameraChanges boolean
local UDialogueScriptBlockImplicitRulesCommand = {}



---@class UDialogueScriptCommand : UObject
---@field Enabled boolean
local UDialogueScriptCommand = {}



---@class UDialogueScriptEndTimeDelayCommand : UDialogueScriptCommand
---@field DelayValue float
local UDialogueScriptEndTimeDelayCommand = {}



---@class UDialogueScriptEventCommand : UDialogueScriptCommand
---@field LineFraction float
local UDialogueScriptEventCommand = {}



---@class UDialogueScriptEventEmotionCommand : UDialogueScriptEventCommand
---@field Emotion EFacialEmotion
---@field For ECommandForType
---@field ForFacial boolean
---@field ForFullBody boolean
---@field BlendInTime float
---@field UseBeforeSpeaking boolean
---@field UseAfterSpeaking boolean
---@field PostLineActiveTime float
---@field OverrideHoldTime boolean
---@field HoldTime float
local UDialogueScriptEventEmotionCommand = {}



---@class UDialogueScriptEventExplicitCameraShotCommand : UDialogueScriptEventCommand
---@field CameraShot UNameProvider
---@field LookAt ECommandLookAtType
---@field BlockLineImplicitCameraChanges boolean
---@field BlockEndingCameraChanges boolean
local UDialogueScriptEventExplicitCameraShotCommand = {}



---@class UDialogueScriptEventExplicitGestureCommand : UDialogueScriptEventCommand
---@field Gesture UNameProvider
---@field For ECommandForType
local UDialogueScriptEventExplicitGestureCommand = {}



---@class UDialogueScriptEventExplicitPoseGroupCommand : UDialogueScriptEventCommand
---@field PoseGroup UNameProvider
---@field OverrideDuration boolean
---@field MinDurationSeconds float
---@field MaxDurationSeconds float
---@field For ECommandForType
local UDialogueScriptEventExplicitPoseGroupCommand = {}



---@class UFXOverrideFunctionLibrary : UBlueprintFunctionLibrary
local UFXOverrideFunctionLibrary = {}

---@param FXOverride FFXOverride
---@return boolean
function UFXOverrideFunctionLibrary:IsMatch(FXOverride) end


---@class UFXRule : UObject
local UFXRule = {}

---@return boolean
function UFXRule:IsMatch() end


---@class UFloat_Curve : UFloatProvider
---@field Curve FRuntimeFloatCurve
local UFloat_Curve = {}



---@class UFloat_MultiChannelNoise : UFloatProvider
---@field Channels TArray<FFloatMultiChannelNoiseChannel>
---@field Enabled boolean
local UFloat_MultiChannelNoise = {}



---@class UFloat_SceneRigParameter : UFloatProvider
---@field BoundParameter FSceneRigParameterBinding_Float
local UFloat_SceneRigParameter = {}



---@class UFloat_SceneRigStageParameter : UFloatProvider
---@field Reference FSceneRigStage_FloatReference
local UFloat_SceneRigStageParameter = {}



---@class UFloat_TimeRigCoordinate : UFloatProvider
---@field Value FTimeRigCoordinate
local UFloat_TimeRigCoordinate = {}



---@class UFloat_TransformHeightDifferenceWithMultiplier : UFloatProvider
---@field TransformA UTransformProvider
---@field TransformB UTransformProvider
---@field UpMultiplier UFloatProvider
---@field DownMultiplier UFloatProvider
local UFloat_TransformHeightDifferenceWithMultiplier = {}



---@class UInitializeCustomActorSceneRigActor : UInitializeSceneRigActor
---@field m_CustomActor AActor
local UInitializeCustomActorSceneRigActor = {}

---@param SceneRigActor ASceneRigActor
---@param CustomActor AActor
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return UInitializeCustomActorSceneRigActor
function UInitializeCustomActorSceneRigActor:InitializeWithCustomActor(SceneRigActor, CustomActor, InitializingBehaviorType) end


---@class UInitializeSceneRigActor : UBlueprintAsyncActionBase
---@field Initialized FInitializeSceneRigActorInitialized
---@field Failed FInitializeSceneRigActorFailed
---@field m_SceneRigActor ASceneRigActor
---@field m_InitializingBehaviorType ETimeRigInitializingBehavior
local UInitializeSceneRigActor = {}

---@param SceneRigActor ASceneRigActor
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return UInitializeSceneRigActor
function UInitializeSceneRigActor:Initialize(SceneRigActor, InitializingBehaviorType) end


---@class UInt_Curve : UIntProvider
---@field Curve FRuntimeFloatCurve
local UInt_Curve = {}



---@class UInt_SceneRigParameter : UIntProvider
---@field BoundParameter FSceneRigParameterBinding_Int
local UInt_SceneRigParameter = {}



---@class UInt_SceneRigStageParameter : UIntProvider
---@field Reference FSceneRigStage_IntReference
local UInt_SceneRigStageParameter = {}



---@class UName_SceneRigStageParameter : UNameProvider
---@field Reference FSceneRigStage_NameReference
local UName_SceneRigStageParameter = {}



---@class UObject_BoundToSequence : UActorProvider
---@field ActorName FName
---@field CachedCaller TWeakObjectPtr<UObject>
---@field CachedActor TWeakObjectPtr<AActor>
local UObject_BoundToSequence = {}



---@class UObject_GameplayCamera : UActorProvider
local UObject_GameplayCamera = {}


---@class UObject_LocalPlayer : UActorProvider
local UObject_LocalPlayer = {}


---@class UObject_SceneRigBoundActor : UActorProvider
---@field BoundObjectName FName
local UObject_SceneRigBoundActor = {}



---@class UObject_SceneRigParameter : UObjectProvider
---@field BoundParameter FSceneRigParameterBinding_Object
local UObject_SceneRigParameter = {}



---@class UObject_SceneRigStageParameter : UObjectProvider
---@field Reference FSceneRigStage_ObjectReference
local UObject_SceneRigStageParameter = {}



---@class UPlayCustomActorSceneRigActor : UPlaySceneRigActor
---@field m_CustomActor AActor
local UPlayCustomActorSceneRigActor = {}

---@param SceneRigActor ASceneRigActor
---@param CustomActor AActor
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return UPlayCustomActorSceneRigActor
function UPlayCustomActorSceneRigActor:PlaySceneRigWithCustomActor(SceneRigActor, CustomActor, InitializingBehaviorType) end


---@class UPlaySceneRigActor : UBlueprintAsyncActionBase
---@field PlayerAssigned FPlaySceneRigActorPlayerAssigned
---@field PlaybackStarted FPlaySceneRigActorPlaybackStarted
---@field PlaybackComplete FPlaySceneRigActorPlaybackComplete
---@field m_SceneRigActor ASceneRigActor
---@field m_InitializingBehaviorType ETimeRigInitializingBehavior
local UPlaySceneRigActor = {}

---@param SceneRigActor ASceneRigActor
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return UPlaySceneRigActor
function UPlaySceneRigActor:PlaySceneRig(SceneRigActor, InitializingBehaviorType) end


---@class UPoseGroup_TagLookupOnAssets : UPoseGroupProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field Filter UBaseArchitectFilter
local UPoseGroup_TagLookupOnAssets = {}



---@class UPoseSampler_AnimCurves : UPoseSampler
---@field SkeletalMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field LODThreshold int32
local UPoseSampler_AnimCurves = {}



---@class USceneActionState_AccessibilitySubtitle : USceneRigActionState
local USceneActionState_AccessibilitySubtitle = {}


---@class USceneActionState_ActorFunction : USceneRigObjectActionState
local USceneActionState_ActorFunction = {}


---@class USceneActionState_ActorIntervalFunctions : USceneRigObjectActionState
local USceneActionState_ActorIntervalFunctions = {}


---@class USceneActionState_AimAt : USceneRigObjectActionState
local USceneActionState_AimAt = {}


---@class USceneActionState_AnimCurves : USceneRigObjectActionState
---@field PoseSampler UPoseSampler_AnimCurves
local USceneActionState_AnimCurves = {}



---@class USceneActionState_AnimateColorProperty : USceneActionState_AnimateProperty
local USceneActionState_AnimateColorProperty = {}


---@class USceneActionState_AnimateCurves : USceneRigObjectActionState
local USceneActionState_AnimateCurves = {}


---@class USceneActionState_AnimateFloatProperty : USceneActionState_AnimateProperty
local USceneActionState_AnimateFloatProperty = {}


---@class USceneActionState_AnimateProperty : USceneActionState_AnimateCurves
local USceneActionState_AnimateProperty = {}


---@class USceneActionState_AnimateVectorProperty : USceneActionState_AnimateProperty
local USceneActionState_AnimateVectorProperty = {}


---@class USceneActionState_Animation : USceneRigObjectActionState
---@field AnimationTrack FAnimationTrack
---@field SkeletalMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field MaxWeight float
---@field BlendInTime float
---@field BlendOutTime float
---@field CurrentBlendWeight float
---@field CurrentlyInBlendInTime boolean
---@field CurrentlyInBlendOutTime boolean
---@field ShouldBeRegistered boolean
---@field AnimationComponent UAnimationComponent
local USceneActionState_Animation = {}



---@class USceneActionState_Attach : USceneRigObjectActionState
---@field PlacementIsMoving boolean
---@field PlacementIsValid boolean
---@field InitialPlacementTransform FTransform
---@field PlacementProvider UTransformProvider
local USceneActionState_Attach = {}



---@class USceneActionState_Blueprint : USceneRigObjectActionState
---@field BlueprintInstance USceneAction_Blueprint
local USceneActionState_Blueprint = {}



---@class USceneActionState_Camera : USceneRigActionState
---@field CameraActor AActor
local USceneActionState_Camera = {}



---@class USceneActionState_CameraFixup : USceneRigObjectActionState
---@field Layer ECameraFixupLayer
---@field FixupOperationStates TArray<UCameraFixupOperationState>
---@field FirstFrameRefresh boolean
local USceneActionState_CameraFixup = {}



---@class USceneActionState_CameraLookAtTarget : USceneRigActionState
---@field LookAtTargetActor ACameraStackLookAtTargetActor
local USceneActionState_CameraLookAtTarget = {}



---@class USceneActionState_CameraReset : USceneRigActionState
local USceneActionState_CameraReset = {}


---@class USceneActionState_CameraSetNamedTargetActor : USceneRigActionState
local USceneActionState_CameraSetNamedTargetActor = {}


---@class USceneActionState_CameraStackModification : USceneRigObjectActionState
---@field OperationStates TArray<FCameraStackOperationState>
local USceneActionState_CameraStackModification = {}



---@class USceneActionState_CameraStackSetup : USceneRigObjectActionState
local USceneActionState_CameraStackSetup = {}


---@class USceneActionState_ChangeOutfit : USceneRigObjectActionState
local USceneActionState_ChangeOutfit = {}


---@class USceneActionState_DisableClothSimulation : USceneRigObjectActionState
---@field DisableClothDefinition USceneAction_DisableClothSimulation
local USceneActionState_DisableClothSimulation = {}



---@class USceneActionState_DisableConversationCamera : USceneRigActionState
local USceneActionState_DisableConversationCamera = {}


---@class USceneActionState_EmbeddedSceneRig : USceneRigActionState
---@field SceneRig USceneRig
---@field InstanceContext USceneRigInstanceContext
local USceneActionState_EmbeddedSceneRig = {}

---@param PreviousValue FTimeRigCoordinate
---@param CurrentValue FTimeRigCoordinate
function USceneActionState_EmbeddedSceneRig:OnNamedEventChanged(PreviousValue, CurrentValue) end


---@class USceneActionState_FadeOutFadeIn : USceneRigActionState
local USceneActionState_FadeOutFadeIn = {}


---@class USceneActionState_FunctionEvent : USceneRigObjectActionState
local USceneActionState_FunctionEvent = {}


---@class USceneActionState_HUDVisibility : USceneRigActionState
---@field ElementStatesNotReadyToPlay TSet<UTimeRigElementState>
local USceneActionState_HUDVisibility = {}



---@class USceneActionState_LookAt : USceneRigObjectActionState
---@field PrevIdleAimEyes UAimEyesData
---@field PrevSpeakingAimEyes UAimEyesData
---@field PrevListeningAimEyes UAimEyesData
local USceneActionState_LookAt = {}



---@class USceneActionState_MimicActor : USceneRigObjectActionState
---@field MeshToModify USkeletalMeshComponent
---@field MeshToMimic USkeletalMeshComponent
local USceneActionState_MimicActor = {}



---@class USceneActionState_ModifyMaterialParameterCollection : USceneRigActionState
local USceneActionState_ModifyMaterialParameterCollection = {}


---@class USceneActionState_ModifyMaterials : USceneActionState_AnimateCurves
---@field InstanceToOriginalMaterialMap TMap<UMaterialInstanceDynamic, UMaterialInterface>
---@field OriginalTextures TMap<FName, UTexture>
local USceneActionState_ModifyMaterials = {}



---@class USceneActionState_ParticleSystemActivation : USceneRigObjectActionState
local USceneActionState_ParticleSystemActivation = {}


---@class USceneActionState_ParticleSystemTrigger : USceneRigObjectActionState
local USceneActionState_ParticleSystemTrigger = {}


---@class USceneActionState_PlayBinkMedia : USceneRigActionState
---@field Widget UUserWidget
---@field BinkMediaPlayer UBinkMediaPlayer
---@field bHasValidEnter boolean
local USceneActionState_PlayBinkMedia = {}

---@param OpenedUrl FString
function USceneActionState_PlayBinkMedia:OnMediaOpened(OpenedUrl) end
function USceneActionState_PlayBinkMedia:OnMediaFailedToOpen() end


---@class USceneActionState_PlayFMV : USceneRigActionState
---@field Widget UUserWidget
---@field MediaPlayer UMediaPlayer
local USceneActionState_PlayFMV = {}

---@param OpenedUrl FString
function USceneActionState_PlayFMV:OnMediaOpened(OpenedUrl) end


---@class USceneActionState_PlaySceneRig : USceneRigActionState
local USceneActionState_PlaySceneRig = {}


---@class USceneActionState_PoseGroup : USceneRigObjectActionState
---@field CurrentPoseGroup UPoseGroup
local USceneActionState_PoseGroup = {}



---@class USceneActionState_RecordPoseMatch : USceneRigObjectActionState
local USceneActionState_RecordPoseMatch = {}


---@class USceneActionState_ScreenFade : USceneRigActionState
local USceneActionState_ScreenFade = {}


---@class USceneActionState_Sequence : USceneRigActionState
---@field SequencePlayer ULevelSequencePlayer
---@field BindingOverrides UMovieSceneBindingOverrides
---@field PossessedActors TArray<TWeakObjectPtr<AActor>>
local USceneActionState_Sequence = {}



---@class USceneActionState_SetBoolProperty : USceneActionState_SetProperty
local USceneActionState_SetBoolProperty = {}


---@class USceneActionState_SetFloatProperty : USceneActionState_SetProperty
local USceneActionState_SetFloatProperty = {}


---@class USceneActionState_SetIntProperty : USceneActionState_SetProperty
local USceneActionState_SetIntProperty = {}


---@class USceneActionState_SetLightingChannels : USceneRigObjectActionState
local USceneActionState_SetLightingChannels = {}


---@class USceneActionState_SetProperty : USceneRigObjectActionState
local USceneActionState_SetProperty = {}


---@class USceneActionState_SetVectorProperty : USceneActionState_SetProperty
local USceneActionState_SetVectorProperty = {}


---@class USceneActionState_SlaveToSpline : USceneRigObjectActionState
---@field SplineComponent USplineComponent
local USceneActionState_SlaveToSpline = {}



---@class USceneActionState_SpawnActor : USceneRigActionState
---@field Actor AActor
local USceneActionState_SpawnActor = {}



---@class USceneActionState_StitchTester : USceneRigObjectActionState
---@field CurrentTransform FTransform
---@field Actor AActor
---@field TransformActionState USceneActionState_Transform
local USceneActionState_StitchTester = {}



---@class USceneActionState_Transform : USceneActionState_AnimateCurves
---@field IsPossiblyRegistered boolean
---@field IsRegistered boolean
---@field CurrentTransform FTransform
local USceneActionState_Transform = {}



---@class USceneActionState_Unskippable : USceneRigActionState
local USceneActionState_Unskippable = {}


---@class USceneActionState_Visibility : USceneRigObjectActionState
---@field PreviouslyHidden boolean
local USceneActionState_Visibility = {}



---@class USceneAction_AccessibilitySubtitle : USceneRigActionBase
---@field LocDirectKey FString
local USceneAction_AccessibilitySubtitle = {}



---@class USceneAction_ActorFunction : USceneRigObjectActionBase
---@field FunctionReference FSceneActionActorFunctionReference
local USceneAction_ActorFunction = {}



---@class USceneAction_ActorIntervalFunctions : USceneRigObjectActionBase
---@field OnEnterFunction FSceneActionActorFunctionReference
---@field TickFunction FSceneActionActorTickFunctionReference
---@field OnExitFunction FSceneActionActorFunctionReference
local USceneAction_ActorIntervalFunctions = {}



---@class USceneAction_AimAt : USceneRigObjectActionBase
---@field AimTarget UTransformProvider
---@field AimAxis EAimAtAxisType
local USceneAction_AimAt = {}



---@class USceneAction_AnimCurves : USceneRigObjectActionBase
---@field Layer FAnimationRequestLayerReference
---@field Curves TArray<FSceneActionAnimCurve>
local USceneAction_AnimCurves = {}



---@class USceneAction_AnimateColorProperty : USceneAction_AnimateProperty
---@field Curve FRuntimeCurveLinearColor
---@field DefaultValue FLinearColor
local USceneAction_AnimateColorProperty = {}



---@class USceneAction_AnimateCurves : USceneRigObjectActionBase
local USceneAction_AnimateCurves = {}


---@class USceneAction_AnimateFloatProperty : USceneAction_AnimateProperty
---@field Curve FRuntimeFloatCurve
---@field DefaultValue float
---@field CartLocation UTransformProvider
local USceneAction_AnimateFloatProperty = {}



---@class USceneAction_AnimateProperty : USceneAction_AnimateCurves
---@field ComponentName FSceneRigObjectActionBase_ComponentName
---@field PropertyName FAnimateProperty_PropertyName
---@field BlendMode ESceneAction_AnimateCurves_BlendMode
---@field FillMode ESceneAction_AnimateCurves_FillMode
---@field LoopCount float
---@field bKeepStateOnCompletion boolean
local USceneAction_AnimateProperty = {}



---@class USceneAction_AnimateVectorProperty : USceneAction_AnimateProperty
---@field Curve FRuntimeCurveVector
---@field DefaultValue FVector
local USceneAction_AnimateVectorProperty = {}



---@class USceneAction_Animation : USceneRigObjectActionBase
---@field Animation UAnimationProvider
---@field SpecificComponentNameFilter FName
---@field BlendSpaceInput UBlendSpaceInputProvider
---@field Layer FAnimationRequestLayerReference
---@field Mask UAnimMaskAsset
---@field RegisterWithConversation boolean
---@field PlacementOptions FSceneRigAnimationPlacementOptions
---@field ClipSubRange FSceneRigAnimationClipRange
---@field PlaybackSpeed FSceneRigAnimationPlaybackSpeed
---@field ReselectOnLoopBoundaries UBoolProvider
---@field MaxWeight UFloatProvider
---@field BlendInTime UFloatProvider
---@field BlendOutTime UFloatProvider
---@field HoldTime UFloatProvider
---@field InertialBlendInTime UFloatProvider
---@field InertialBlendOutTime UFloatProvider
---@field bBlendOutOnDialogueSkip boolean
---@field bConversationTransitionAnimation boolean
---@field bEnableInertializationIfBlendOutSkipped boolean
---@field bSuppressCameraCut boolean
---@field ClothTeleportMode ESceneAction_ClothingTeleportMode
---@field KeepStateOnCompletion UBoolProvider
---@field SetupAnimationOnEnter UBoolProvider
---@field ScaleRootMotion boolean
---@field FemaleShoulderFixupAlpha UFloatProvider
---@field ChildElements TArray<UTimeRigElement>
---@field BlendOutFinish FTimeRigInputSymbol
---@field BlendIn FTimeRigOutputSymbol
---@field BlendOut FTimeRigOutputSymbol
---@field NaturalFinish FTimeRigOutputSymbol
---@field ScratchAnimations TArray<FTimeRigScratchAnimation>
local USceneAction_Animation = {}



---@class USceneAction_Attach : USceneRigObjectActionBase
---@field PlacementIsMoving UBoolProvider
---@field Placement UTransformProvider
local USceneAction_Attach = {}



---@class USceneAction_Blueprint : USceneRigObjectActionBase
---@field State USceneActionState_Blueprint
local USceneAction_Blueprint = {}

---@param BranchID FName
function USceneAction_Blueprint:SetBranchID(BranchID) end
---@param Duration float
function USceneAction_Blueprint:SetAutoDurationBP(Duration) end
---@param Time float
---@param LocalTime float
---@param IsScrubbing boolean
function USceneAction_Blueprint:OnSetTimeInsideIntervalPostActorTick(Time, LocalTime, IsScrubbing) end
---@param Time float
---@param LocalTime float
---@param IsScrubbing boolean
function USceneAction_Blueprint:OnSetTimeInsideInterval(Time, LocalTime, IsScrubbing) end
---@param bPause boolean
function USceneAction_Blueprint:OnPauseInsideInterval(bPause) end
---@param Time float
---@param IsScrubbing boolean
function USceneAction_Blueprint:OnInstantPostActorTick(Time, IsScrubbing) end
---@param Time float
---@param IsScrubbing boolean
function USceneAction_Blueprint:OnInstant(Time, IsScrubbing) end
---@param Time float
---@param cancelled boolean
---@param IsScrubbing boolean
function USceneAction_Blueprint:OnExitInterval(Time, cancelled, IsScrubbing) end
---@param Time float
---@param IsScrubbing boolean
function USceneAction_Blueprint:OnEnterInterval(Time, IsScrubbing) end
function USceneAction_Blueprint:OnDestroy() end
---@param ActionState UObject
function USceneAction_Blueprint:OnCreate(ActionState) end
---@return boolean
function USceneAction_Blueprint:IsProxyRequiredBP() end
---@return boolean
function USceneAction_Blueprint:IsInstant() end
---@return boolean
function USceneAction_Blueprint:IsInEditor() end
---@return boolean
function USceneAction_Blueprint:IsEnabledBP() end
---@return boolean
function USceneAction_Blueprint:HasPostActorTick() end
---@return boolean
function USceneAction_Blueprint:HasNormalTick() end
---@param Caller UObject
---@param BranchIDs TSet<FName>
function USceneAction_Blueprint:GetValidBranchIDsBP(Caller, BranchIDs) end
---@param Caller UObject
---@return UTimeRig_StoryGraphNode
function USceneAction_Blueprint:GetStoryGraphNode(Caller) end
---@param Caller UObject
---@return UTimeRig_StoryGraph
function USceneAction_Blueprint:GetStoryGraph(Caller) end
---@return float
function USceneAction_Blueprint:GetStartTimeBP() end
---@return float
function USceneAction_Blueprint:GetSortOrderPostActorTick() end
---@return float
function USceneAction_Blueprint:GetSortOrder() end
---@return USceneRig
function USceneAction_Blueprint:GetSceneRig() end
---@return float
function USceneAction_Blueprint:GetIterationLength() end
---@return float
function USceneAction_Blueprint:GetDuration() end
---@return FText
function USceneAction_Blueprint:GetDisplayName() end
---@return UObject
function USceneAction_Blueprint:GetContext() end
---@return float
function USceneAction_Blueprint:GetAutoDurationBP() end
---@return UObject
function USceneAction_Blueprint:GetActionObjectBP() end
---@return FLinearColor
function USceneAction_Blueprint:GetActionColor() end
function USceneAction_Blueprint:FinishNow() end
---@param SecondsFromNow float
function USceneAction_Blueprint:FinishIn(SecondsFromNow) end
---@return boolean
function USceneAction_Blueprint:DevOnly_IsHammerTime() end


---@class USceneAction_Camera : USceneRigActionBase
---@field Priority EManagedCameraPriority
---@field Camera UActorProvider
---@field TransitionInSettings FCameraActionTransitionSettings
---@field TransitionOutSettings FCameraActionTransitionSettings
---@field bCameraTransitionOutDelayed boolean
---@field InitialCamera UActorProvider
---@field FinalCamera UActorProvider
---@field BlendTime UFloatProvider
---@field BlendTimeIntoGameCamera UFloatProvider
---@field bLazyBlendIntoGameCamera boolean
---@field GameCameraResetType ESceneAction_CameraResetType
---@field GameCameraLookAtLocation UTransformProvider
local USceneAction_Camera = {}



---@class USceneAction_CameraFixup : USceneRigObjectActionBase
---@field Layer ECameraFixupLayer
---@field FixupOperations TArray<UCameraFixupOperation>
local USceneAction_CameraFixup = {}



---@class USceneAction_CameraLookAtTarget : USceneRigActionBase
---@field LookAtLocation UTransformProvider
---@field UseAverageLocation boolean
---@field AverageLocationBufferSize int32
---@field LookAtStrength ECameraStackLookAtStrength
---@field TriggerVolume UActorProvider
local USceneAction_CameraLookAtTarget = {}



---@class USceneAction_CameraReset : USceneRigActionBase
---@field ResetType ECameraStackResetType
---@field ResetLookAtLocation UTransformProvider
---@field FixedArmRotationValue FRotator
---@field RotationOffset FVector2D
local USceneAction_CameraReset = {}



---@class USceneAction_CameraSetNamedTargetActor : USceneRigActionBase
---@field TargetName FName
---@field TargetActor UActorProvider
---@field bForceResetCamera boolean
local USceneAction_CameraSetNamedTargetActor = {}



---@class USceneAction_CameraStackModification : USceneRigObjectActionBase
---@field Operations UCameraStackModificationSettings
---@field Parameters TMap<FString, USceneRigParameter>
---@field BlendInDuration float
---@field BlendOutDuration float
local USceneAction_CameraStackModification = {}



---@class USceneAction_CameraStackSetup : USceneRigObjectActionBase
---@field CameraTargetTransform UTransformProvider
---@field CameraStack UCameraStackSettings
---@field Parameters TMap<FString, USceneRigParameter>
---@field BlendInDuration float
---@field BlendOutDuration float
---@field InputPriorityOverride int32
local USceneAction_CameraStackSetup = {}



---@class USceneAction_ChangeOutfit : USceneRigObjectActionBase
---@field Outfit FName
local USceneAction_ChangeOutfit = {}



---@class USceneAction_DisableClothSimulation : USceneRigObjectActionBase
---@field BlendInTime float
---@field BlendOutTime float
---@field bPiecesListIsInclusive boolean
---@field PiecesList TArray<FCharacterPieceType>
local USceneAction_DisableClothSimulation = {}



---@class USceneAction_DisableConversationCamera : USceneRigActionBase
---@field EnabledRegisteredCameraNames TArray<UNameProvider>
---@field DisabledRegisteredCameraNames TArray<UNameProvider>
local USceneAction_DisableConversationCamera = {}



---@class USceneAction_EmbeddedSceneRig : USceneRigActionBase
---@field EmbeddedSceneRig USceneRigProvider
local USceneAction_EmbeddedSceneRig = {}



---@class USceneAction_FadeOutFadeIn : USceneRigActionBase
---@field FadePriority EStandardManagedPriority
---@field BlendTime UFloatProvider
---@field FadeColor FColor
---@field StartBlendOut FTimeRigInputSymbol
---@field BlendIn FTimeRigOutputSymbol
---@field BlendOut FTimeRigOutputSymbol
local USceneAction_FadeOutFadeIn = {}



---@class USceneAction_FunctionEvent : USceneRigObjectActionBase
---@field FunctionReference FSceneActionFunctionEventReference
local USceneAction_FunctionEvent = {}



---@class USceneAction_HUDVisibility : USceneRigActionBase
---@field ShouldBeHidden boolean
---@field ShowLetterboxUI boolean
---@field bAnimateOnEnter boolean
---@field bAnimateOnExit boolean
---@field Priority EStandardManagedPriority
local USceneAction_HUDVisibility = {}



---@class USceneAction_LookAt : USceneRigObjectActionBase
---@field Priority ESceneAction_LookAtPriority
---@field BlendInTime UFloatProvider
---@field BlendOutTime UFloatProvider
---@field TimeDelay UFloatProvider
---@field KeepStateOnCompletion UBoolProvider
---@field HeadLookAtAlpha UFloatProvider
---@field HeadLookAtPlacement UTransformProvider
---@field HeadYawOffset UFloatProvider
---@field HeadPitchOffset UFloatProvider
---@field LoosenessMultiplier UFloatProvider
---@field TrackingSpeedMultiplier UFloatProvider
---@field SpineMobility UFloatProvider
---@field ApplyConstraints UBoolProvider
---@field EyeLookAtAlpha UFloatProvider
---@field EyeLookAtAdditive UBoolProvider
---@field EyeLookAtPlacement UTransformProvider
---@field BlinkAlpha UFloatProvider
---@field BlinkNow UBoolProvider
---@field MicroDartsAlpha UFloatProvider
---@field GazeState GazeStatesEnum
---@field EyeYawOffset UFloatProvider
---@field EyePitchOffset UFloatProvider
---@field IdleAimEyes UAimEyesData
---@field ListeningAimEyes UAimEyesData
---@field SpeakingAimEyes UAimEyesData
local USceneAction_LookAt = {}



---@class USceneAction_MimicActor : USceneRigObjectActionBase
---@field ActorToMimic UActorProvider
---@field bMimicVisibility boolean
---@field bMimicAnimation boolean
---@field bMimicTransform boolean
---@field Offset FTransform
---@field bFlipAroundFloor boolean
---@field FloorZ float
local USceneAction_MimicActor = {}



---@class USceneAction_ModifyMaterialParameterCollection : USceneRigActionBase
---@field ParameterCollection UMaterialParameterCollection
---@field bKeyTimesArePercentages boolean
---@field Scalars TMap<FName, FRuntimeFloatCurve>
---@field Vectors TMap<FName, FRuntimeCurveVector>
---@field Locations TMap<FName, UTransformProvider>
local USceneAction_ModifyMaterialParameterCollection = {}



---@class USceneAction_ModifyMaterials : USceneAction_AnimateCurves
---@field MaterialSwapsBySlotName TMap<FName, FSmartMaterial>
---@field MaterialSwaps TMap<UMaterialInterface, FSmartMaterial>
---@field bOnlyAnimateSwaps boolean
---@field bKeyTimesArePercentages boolean
---@field bHoldValues boolean
---@field Scalars TMap<FName, FRuntimeFloatCurve>
---@field Vectors TMap<FName, FRuntimeCurveVector>
---@field Colors TMap<FName, FRuntimeCurveLinearColor>
---@field Locations TMap<FName, UTransformProvider>
---@field Textures TMap<FName, FSmartTexture>
local USceneAction_ModifyMaterials = {}



---@class USceneAction_ParticleSystemActivation : USceneRigObjectActionBase
---@field Activation EParticleSystemActivation
local USceneAction_ParticleSystemActivation = {}



---@class USceneAction_ParticleSystemTrigger : USceneRigObjectActionBase
local USceneAction_ParticleSystemTrigger = {}


---@class USceneAction_PlayBinkMedia : USceneRigActionBase
---@field MediaSource UMediaSource
---@field SubtitlesDataTable UDataTable
---@field bOverridesSceneRig boolean
---@field EffectVolumeFactor float
---@field VoiceVolumeFactor float
---@field FudgeFactor float
---@field bDelayedOpen boolean
---@field WidgetClass UClass
---@field Opacity UFloatProvider
---@field ForegroundOpacity UFloatProvider
---@field BinkMediaPlayer UBinkMediaPlayer
local USceneAction_PlayBinkMedia = {}



---@class USceneAction_PlayFMV : USceneRigActionBase
---@field MediaSource UMediaSource
---@field bOverridesSceneRig boolean
---@field FudgeFactor float
---@field MediaPlayer UMediaPlayer
local USceneAction_PlayFMV = {}



---@class USceneAction_PlaySceneRig : USceneRigActionBase
---@field SceneRigProvider USceneRigProvider
---@field Initialize ESceneAction_PlaySceneRigInitializeType
---@field Started FTimeRigOutputSymbol
local USceneAction_PlaySceneRig = {}



---@class USceneAction_PoseGroup : USceneRigObjectActionBase
---@field PoseGroupProvider UPoseGroupProvider
---@field RegisterWithConversation boolean
local USceneAction_PoseGroup = {}



---@class USceneAction_RecordPoseMatch : USceneRigObjectActionBase
local USceneAction_RecordPoseMatch = {}


---@class USceneAction_ScreenFade : USceneRigActionBase
---@field Fader UFadeProvider
---@field Type EFadeType
---@field ManualFadeValue UFloatProvider
---@field KeepStateOnCompletion UBoolProvider
---@field KeepFadeAfterSceneRigCompletion UBoolProvider
---@field FadeEventType ETimeRigFadeEventType
---@field EnableFading UBoolProvider
local USceneAction_ScreenFade = {}



---@class USceneAction_Sequence : USceneRigActionBase
---@field Sequence ULevelSequence
---@field Looping boolean
---@field SequenceStart float
---@field SequenceFinish float
---@field ActorMapping TArray<FSceneActionSequence_ActorMapping>
local USceneAction_Sequence = {}



---@class USceneAction_SetBoolProperty : USceneAction_SetProperty
---@field InputValue UBoolProvider
local USceneAction_SetBoolProperty = {}



---@class USceneAction_SetFloatProperty : USceneAction_SetProperty
---@field InputValue UFloatProvider
local USceneAction_SetFloatProperty = {}



---@class USceneAction_SetIntProperty : USceneAction_SetProperty
---@field InputValue UIntProvider
local USceneAction_SetIntProperty = {}



---@class USceneAction_SetLightingChannels : USceneRigObjectActionBase
---@field LightingChannels FLightingChannels
local USceneAction_SetLightingChannels = {}



---@class USceneAction_SetProperty : USceneRigObjectActionBase
---@field bConstant boolean
---@field bKeepStateOnCompletion boolean
---@field ComponentName FSceneRigObjectActionBase_ComponentName
---@field PropertyName FSetProperty_PropertyName
local USceneAction_SetProperty = {}



---@class USceneAction_SetVectorProperty : USceneAction_SetProperty
---@field InputValue UVectorProvider
local USceneAction_SetVectorProperty = {}



---@class USceneAction_SlaveToSpline : USceneRigObjectActionBase
---@field SplineActor UActorProvider
---@field DistanceAlongSpline UFloatProvider
local USceneAction_SlaveToSpline = {}



---@class USceneAction_SpawnActor : USceneRigActionBase
---@field Spawner UActorSpawner
---@field ChildElements TArray<UTimeRigElement>
local USceneAction_SpawnActor = {}



---@class USceneAction_SpawnActorAllowAsChild : USceneRigObjectActionBase
local USceneAction_SpawnActorAllowAsChild = {}


---@class USceneAction_StitchTester : USceneRigObjectActionBase
---@field Layer FAnimationRequestLayerReference
---@field FrontBackDistance float
---@field LeftRightDistance float
---@field MoveCount int32
---@field WaitCount int32
local USceneAction_StitchTester = {}



---@class USceneAction_Transform : USceneAction_AnimateCurves
---@field Layer FAnimationRequestLayerReference
---@field ParentTransform UTransformProvider
---@field bConstant boolean
---@field TranslateCurve FRuntimeCurveVector
---@field RotateCurve FRuntimeCurveVector
---@field ScaleCurve FRuntimeCurveVector
---@field DefaultValue FTransform
---@field bHoldTransform boolean
---@field bApplyCharacterFixup boolean
---@field bForceTransform boolean
---@field bParentTransformIsStatic boolean
---@field ClothTeleportMode ESceneAction_ClothingTeleportMode
local USceneAction_Transform = {}



---@class USceneAction_Unskippable : USceneRigActionBase
local USceneAction_Unskippable = {}


---@class USceneAction_Visibility : USceneRigObjectActionBase
---@field Priority EManagedVisibilityPriority
---@field ShouldBeHidden boolean
---@field IncludeChildActors boolean
local USceneAction_Visibility = {}



---@class USceneRig : UTimeRig
---@field BakeSequenceDebug boolean
---@field Interface USceneRigInterfaceDefinition
---@field BoundObjects TArray<FSceneRigBoundObject>
---@field TagProviders TArray<UAnimationArchitectTagProvider>
---@field DefaultStage USceneRigStage
---@field PreviewStageDriver boolean
---@field LookupAssets TArray<UBaseArchitectAsset>
---@field DebugInEditor boolean
---@field StartDebuggingPaused boolean
---@field bShouldSimulatePhysics boolean
---@field bInstantlySkippable boolean
---@field PlayerSortOrder float
---@field SceneRoot FSceneRigStage_Transform
---@field NamedParameters TArray<USceneRigStage_NamedParameter>
---@field CinematicPreviewLevel TSoftObjectPtr<UWorld>
---@field PreviewLevels TArray<TSoftObjectPtr<UWorld>>
local USceneRig = {}

---@param WorldContextObject UObject
---@param PrecacheComplete FStartPrecachingPrecacheComplete
function USceneRig:StartPrecaching(WorldContextObject, PrecacheComplete) end
---@param WorldContextObject UObject
---@param PlayerParent UObject
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function USceneRig:PlayWithDefaultParameters(WorldContextObject, PlayerParent, InitializingBehaviorType) end
---@param Parameters FSceneRigParameters
---@param PlayerParent UObject
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function USceneRig:Play(Parameters, PlayerParent, InitializingBehaviorType) end
---@param WorldContext UObject
---@param PlayerParent UObject
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function USceneRig:InitializePlayerWithDefaultParameters(WorldContext, PlayerParent, InitializingBehaviorType) end
---@param Parameters FSceneRigParameters
---@param PlayerParent UObject
---@param InitializingBehaviorType ETimeRigInitializingBehavior
---@return USceneRigPlayer
function USceneRig:InitializePlayer(Parameters, PlayerParent, InitializingBehaviorType) end
---@param WorldContextObject UObject
---@return USceneRigPlayer
function USceneRig:FindPlayer(WorldContextObject) end
---@param Parameters FSceneRigParameters
---@param WorldContextObject UObject
function USceneRig:CreateDefaultParameters(Parameters, WorldContextObject) end


---@class USceneRigActionBase : UTimeRigInterval
local USceneRigActionBase = {}


---@class USceneRigActionState : UTimeRigIntervalState
local USceneRigActionState = {}


---@class USceneRigAnimInstance : UAnimSequencerInstance
---@field TickAssetPlayerProxy UAnimAsset_TickAssetPlayerProxy
local USceneRigAnimInstance = {}



---@class USceneRigAnimTrackRequestProvider : UObject
---@field LayerName FName
---@field AnimationRequest FAnimRequest
---@field AnimationObject TWeakObjectPtr<UObject>
---@field ConstrainedToPlacement boolean
---@field bUnscaleHipsBone boolean
---@field PlacementHandledByRequest boolean
---@field TransformInWorldSpace FTransform
local USceneRigAnimTrackRequestProvider = {}



---@class USceneRigAnimationRegistry : UDataAsset
---@field InheritFromRegistries TArray<FSceneRigAnimationRegsitryInheritRegistry>
---@field Animations TArray<FSceneRigAnimationRegsitryAnim>
local USceneRigAnimationRegistry = {}



---@class USceneRigAnimationSection : UMovieSceneSection
---@field Params FSceneRigAnimationParams
local USceneRigAnimationSection = {}



---@class USceneRigAnimationTrack : UMovieSceneNameableTrack
---@field AnimationSections TArray<UMovieSceneSection>
local USceneRigAnimationTrack = {}



---@class USceneRigBPUtilities : UBlueprintFunctionLibrary
local USceneRigBPUtilities = {}

---@param Actor AActor
---@param RegisteredActorName FName
function USceneRigBPUtilities:AddRegisteredActor(Actor, RegisteredActorName) end


---@class USceneRigBlueprintLibrary : UBlueprintFunctionLibrary
local USceneRigBlueprintLibrary = {}

---@param InParameter FSceneRigParameters
---@param WorldContext UObject
function USceneRigBlueprintLibrary:SetWorldContext(InParameter, WorldContext) end
---@param InParameter FSceneRigParameters
---@param StageParameterBlock USceneRigStageParameterBlock
function USceneRigBlueprintLibrary:SetStageParameters(InParameter, StageParameterBlock) end
---@param WorldContextObject UObject
---@param Sequence ULevelSequence
function USceneRigBlueprintLibrary:RebindSequencePossessableReferences(WorldContextObject, Sequence) end
---@param WorldContextObject UObject
---@param InSceneRigPath FString
---@param LevelNameToReturnToWhenFinished FName
---@param DefaultLevelName FName
---@return boolean
function USceneRigBlueprintLibrary:PlayCinematicFromPath(WorldContextObject, InSceneRigPath, LevelNameToReturnToWhenFinished, DefaultLevelName) end
---@param InWorldContextObject UObject
---@param InSceneRig TSoftObjectPtr<USceneRig>
---@param InLevelNameToReturnToWhenFinished FName
---@param DefaultLevelName FName
---@return boolean
function USceneRigBlueprintLibrary:PlayCinematic(InWorldContextObject, InSceneRig, InLevelNameToReturnToWhenFinished, DefaultLevelName) end
---@param InParameter FSceneRigParameters
---@param ParameterName FString
---@param InValue FTransform
function USceneRigBlueprintLibrary:AssignTransformParameter(InParameter, ParameterName, InValue) end
---@param InParameter FSceneRigParameters
---@param ParameterName FString
---@param InValue FString
function USceneRigBlueprintLibrary:AssignStringParameter(InParameter, ParameterName, InValue) end
---@param InParameter FSceneRigParameters
---@param ParameterName FString
---@param InValue UObject
function USceneRigBlueprintLibrary:AssignObjectParameter(InParameter, ParameterName, InValue) end
---@param InParameter FSceneRigParameters
---@param ParameterName FString
---@param InValue int32
function USceneRigBlueprintLibrary:AssignIntParameter(InParameter, ParameterName, InValue) end
---@param InParameter FSceneRigParameters
---@param ParameterName FString
---@param InValue float
function USceneRigBlueprintLibrary:AssignFloatParameter(InParameter, ParameterName, InValue) end
---@param InParameter FSceneRigParameters
---@param ParameterName FString
---@param InValue boolean
function USceneRigBlueprintLibrary:AssignBoolParameter(InParameter, ParameterName, InValue) end


---@class USceneRigCameraMetadata : UAnimMetaData
---@field Attachment ESceneRigCameraAttachment
local USceneRigCameraMetadata = {}



---@class USceneRigCameraParametersComponent : UActorComponent
---@field SceneRigInstanceContext TWeakObjectPtr<USceneRigInstanceContext>
---@field Parameters TMap<FString, TWeakObjectPtr<USceneRigParameter>>
local USceneRigCameraParametersComponent = {}



---@class USceneRigCameraProxyActor : USceneRigProxyActor
---@field RegisteredCameraName UNameProvider
---@field RegisterCamera boolean
---@field CheckObstructions boolean
---@field CheckTransitions boolean
---@field RegisteredTags FGameplayTagContainer
---@field ValidCameraType ESceneRigCameraProxyActor_ValidCameraType
local USceneRigCameraProxyActor = {}



---@class USceneRigCameraProxyActorState : USceneRigProxyActorState
local USceneRigCameraProxyActorState = {}


---@class USceneRigCameraSection : UMovieSceneSection
---@field Params FSceneRigCameraParams
local USceneRigCameraSection = {}



---@class USceneRigCameraStackTarget : UCameraStackTarget
---@field TransformProvider TWeakObjectPtr<UTransformProvider>
local USceneRigCameraStackTarget = {}



---@class USceneRigCameraTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
local USceneRigCameraTrack = {}



---@class USceneRigDialogTrack : UMovieSceneNameableTrack
---@field EventReceivers TArray<FMovieSceneObjectBindingID>
---@field Sections TArray<UMovieSceneSection>
local USceneRigDialogTrack = {}



---@class USceneRigDialogTrackSection : UMovieSceneSection
---@field SectionData FSceneRigDialogTrackSectionData
local USceneRigDialogTrackSection = {}



---@class USceneRigFastTravelModule : UObject
local USceneRigFastTravelModule = {}

---@param TriggerName FString
---@param TriggerType EFT_TriggerType
function USceneRigFastTravelModule:SetFastTravelTriggerName(TriggerName, TriggerType) end
---@param TriggerType EFT_TriggerType
---@return FString
function USceneRigFastTravelModule:GetFastTravelTriggerName(TriggerType) end
---@param TriggerType EFT_TriggerType
function USceneRigFastTravelModule:ClearFastTravelTriggerName(TriggerType) end


---@class USceneRigInstanceContext : UTimeRigInstanceContext
---@field ProviderStateMap TMap<UObject, UObject>
---@field StreamingLevels TArray<ULevelStreaming>
---@field Parameters FSceneRigParameters
---@field ParameterChangeRequests TArray<FSceneParameterChangeRequest>
---@field BoundObjects TMap<FName, UObject>
local USceneRigInstanceContext = {}



---@class USceneRigInterfaceDefinition : UObject
---@field InheritedParents TArray<USceneRigInterfaceDefinition>
---@field ParameterDefinitions TArray<USceneRigParameterDefinition>
---@field ExportPath FString
local USceneRigInterfaceDefinition = {}



---@class USceneRigObjectActionBase : USceneRigActionBase
---@field bHasProxyParent boolean
---@field ActorProvider UActorProvider
local USceneRigObjectActionBase = {}



---@class USceneRigObjectActionState : USceneRigActionState
---@field ActionObject TWeakObjectPtr<UObject>
local USceneRigObjectActionState = {}



---@class USceneRigParameter : UObject
---@field Name FString
local USceneRigParameter = {}



---@class USceneRigParameterDefinition : UObject
---@field Name FString
local USceneRigParameterDefinition = {}



---@class USceneRigParameterDefinition_Animation : USceneRigParameterDefinition
---@field DefaultValue UAnimationProvider
local USceneRigParameterDefinition_Animation = {}



---@class USceneRigParameterDefinition_AnimationTransform : USceneRigParameterDefinition
---@field DefaultValue UAnimationTransformProvider
local USceneRigParameterDefinition_AnimationTransform = {}



---@class USceneRigParameterDefinition_Bool : USceneRigParameterDefinition
---@field DefaultValue boolean
local USceneRigParameterDefinition_Bool = {}



---@class USceneRigParameterDefinition_DialogueEvent : USceneRigParameterDefinition
---@field DefaultEvent FSceneRigDialogTrackSectionData
local USceneRigParameterDefinition_DialogueEvent = {}



---@class USceneRigParameterDefinition_FString : USceneRigParameterDefinition
---@field DefaultValue FString
local USceneRigParameterDefinition_FString = {}



---@class USceneRigParameterDefinition_Float : USceneRigParameterDefinition
---@field DefaultValue float
---@field DefaultValueProvider UFloatProvider
local USceneRigParameterDefinition_Float = {}



---@class USceneRigParameterDefinition_Int : USceneRigParameterDefinition
---@field DefaultValue int32
local USceneRigParameterDefinition_Int = {}



---@class USceneRigParameterDefinition_Object : USceneRigParameterDefinition
---@field DefaultObject UObjectProvider
---@field EvaluateOnce boolean
local USceneRigParameterDefinition_Object = {}



---@class USceneRigParameterDefinition_Transform : USceneRigParameterDefinition
---@field DefaultValue UTransformProvider
local USceneRigParameterDefinition_Transform = {}



---@class USceneRigParameterDefinition_Vector : USceneRigParameterDefinition
---@field DefaultValue FVector
local USceneRigParameterDefinition_Vector = {}



---@class USceneRigParameter_Animation : USceneRigParameter
---@field Value UAnimationProvider
local USceneRigParameter_Animation = {}



---@class USceneRigParameter_AnimationTransform : USceneRigParameter
---@field Value UAnimationTransformProvider
local USceneRigParameter_AnimationTransform = {}



---@class USceneRigParameter_Bool : USceneRigParameter
---@field Value boolean
local USceneRigParameter_Bool = {}



---@class USceneRigParameter_DialogueEvent : USceneRigParameter
---@field Value FSceneRigDialogTrackSectionData
local USceneRigParameter_DialogueEvent = {}



---@class USceneRigParameter_FString : USceneRigParameter
---@field Value FString
local USceneRigParameter_FString = {}



---@class USceneRigParameter_Float : USceneRigParameter
---@field Value float
local USceneRigParameter_Float = {}



---@class USceneRigParameter_Int : USceneRigParameter
---@field Value int32
local USceneRigParameter_Int = {}



---@class USceneRigParameter_Object : USceneRigParameter
---@field Value UObjectProvider
local USceneRigParameter_Object = {}



---@class USceneRigParameter_Transform : USceneRigParameter
---@field Value UTransformProvider
local USceneRigParameter_Transform = {}



---@class USceneRigParameter_Vector : USceneRigParameter
---@field Value FVector
local USceneRigParameter_Vector = {}



---@class USceneRigPlayer : UTimeRigPlayer
---@field OnSceneRigPlayerInitialized FSceneRigPlayerOnSceneRigPlayerInitialized
---@field OverridingFMV USceneActionState_PlayFMV
---@field OverridingBinkMedia USceneActionState_PlayBinkMedia
---@field SkipWidget UUserWidget
local USceneRigPlayer = {}

---@param ParameterName FString
---@param InValue FTransform
---@return boolean
function USceneRigPlayer:UpdateTransformParameter(ParameterName, InValue) end
---@param ParameterName FString
---@param InValue FString
---@return boolean
function USceneRigPlayer:UpdateStringParameter(ParameterName, InValue) end
---@param ParameterName FString
---@param Object UObject
---@return boolean
function USceneRigPlayer:UpdateObjectParameter(ParameterName, Object) end
---@param ParameterName FString
---@param InValue int32
---@return boolean
function USceneRigPlayer:UpdateIntParameter(ParameterName, InValue) end
---@param ParameterName FString
---@param InValue float
---@return boolean
function USceneRigPlayer:UpdateFloatParameter(ParameterName, InValue) end
---@param ParameterName FString
---@param InValue boolean
---@return boolean
function USceneRigPlayer:UpdateBoolParameter(ParameterName, InValue) end
---@param bShow boolean
function USceneRigPlayer:ShowSkipUI(bShow) end
function USceneRigPlayer:ApplyParameterUpdatesImmediately() end


---@class USceneRigProvider : UObjectProvider
local USceneRigProvider = {}


---@class USceneRigProxyActor : UTimeRigElement
---@field Role FSceneRigStageRole
---@field Actor UActorProvider
---@field bInterestPoint boolean
---@field ShouldHoldDuringInitialization boolean
---@field ChildElements TArray<UTimeRigElement>
---@field HideOnPlatforms ESceneRigProxyActor_PlatformHide
local USceneRigProxyActor = {}



---@class USceneRigProxyActorState : UTimeRigElementState
---@field ActionObject TWeakObjectPtr<UObject>
---@field FloorContactPreviouslyEnabled boolean
local USceneRigProxyActorState = {}



---@class USceneRigProxyMocapStage : USceneRigProxyActor
---@field Visible boolean
local USceneRigProxyMocapStage = {}



---@class USceneRigProxyMocapStageState : USceneRigProxyActorState
local USceneRigProxyMocapStageState = {}


---@class USceneRigRegisteredActorComponent : UActorComponent
---@field RegisteredNames TArray<FName>
local USceneRigRegisteredActorComponent = {}



---@class USceneRigRule : UTimeRigRule
local USceneRigRule = {}


---@class USceneRigRuleState : UTimeRigRuleState
local USceneRigRuleState = {}


---@class USceneRigScript : UObject
---@field RootNode USceneRigScriptNode
local USceneRigScript = {}



---@class USceneRigScriptNode : UObject
---@field PreviousNodes TArray<USceneRigScriptNode>
---@field NextNode USceneRigScriptNode
local USceneRigScriptNode = {}



---@class USceneRigScriptNode_Branch : USceneRigScriptNode
---@field Branches TArray<FSceneRigScriptBranch>
---@field CurrentBranch int32
---@field HasMissmatchingInternalBranches boolean
local USceneRigScriptNode_Branch = {}



---@class USceneRigScriptNode_ChoicePreview : USceneRigScriptNode
---@field DialogueID FName
---@field CharacterID FName
---@field EnglishScriptText FString
local USceneRigScriptNode_ChoicePreview = {}



---@class USceneRigScriptNode_Choices : USceneRigScriptNode
---@field Choices TArray<FSceneRigScriptChoice>
---@field CurrentChoice int32
local USceneRigScriptNode_Choices = {}



---@class USceneRigScriptNode_Dialogue : USceneRigScriptNode
---@field DialogueID FName
---@field CharacterID FName
---@field TimeDelay float
---@field Commands TArray<UDialogueScriptCommand>
local USceneRigScriptNode_Dialogue = {}



---@class USceneRigScriptNode_End : USceneRigScriptNode
local USceneRigScriptNode_End = {}


---@class USceneRigScriptNode_Scene : USceneRigScriptNode
---@field SceneText FString
---@field SceneScript USceneRigScriptNode
local USceneRigScriptNode_Scene = {}



---@class USceneRigSettings : UObject
---@field TestValue float
local USceneRigSettings = {}



---@class USceneRigStage : USceneRigStageInterface
---@field StageLevels TArray<TSoftObjectPtr<UWorld>>
---@field StageRoot FSceneRigStage_Actor
---@field StageRootFallback FTransform
---@field LookupAssets TArray<UBaseArchitectAsset>
---@field LookupTagProviders TArray<UAnimationArchitectTagProvider>
---@field bEnableDefaultLighting boolean
---@field bShouldSimulatePhysics boolean
---@field StreamedStages TArray<ULevelStreaming>
---@field InterestPoints TArray<FVector>
---@field ExportFilename FString
---@field OverrideEnvironmentPath boolean
---@field ExportEnvironmentPath FString
---@field UseExportRadius boolean
---@field ExportRadius float
local USceneRigStage = {}



---@class USceneRigStageContainer : UObject
---@field SceneParameterInterface TScriptInterface<ISceneParameterInterface>
---@field StageParameters USceneRigStageParameterBlock
---@field StageWorld UWorld
local USceneRigStageContainer = {}



---@class USceneRigStageInterface : UObject
---@field ActorPlacements TArray<FSceneRigStageActorPlacement>
---@field Parameters TArray<USceneRigStage_NamedParameter>
local USceneRigStageInterface = {}



---@class USceneRigStageParameterBlock : UObject
---@field ParameterMap TMap<FSceneRigStage_ParameterReference, USceneRigStage_ParameterValue>
local USceneRigStageParameterBlock = {}



---@class USceneRigStage_ActorValue : USceneRigStage_ParameterValue
---@field Provider UActorProvider
local USceneRigStage_ActorValue = {}



---@class USceneRigStage_AnimationValue : USceneRigStage_ParameterValue
---@field Provider UAnimationProvider
local USceneRigStage_AnimationValue = {}



---@class USceneRigStage_BoolValue : USceneRigStage_ParameterValue
---@field Provider UBoolProvider
local USceneRigStage_BoolValue = {}



---@class USceneRigStage_FloatValue : USceneRigStage_ParameterValue
---@field Provider UFloatProvider
local USceneRigStage_FloatValue = {}



---@class USceneRigStage_IntValue : USceneRigStage_ParameterValue
---@field Provider UIntProvider
local USceneRigStage_IntValue = {}



---@class USceneRigStage_NameValue : USceneRigStage_ParameterValue
---@field Provider UNameProvider
local USceneRigStage_NameValue = {}



---@class USceneRigStage_NamedActor : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Actor
local USceneRigStage_NamedActor = {}



---@class USceneRigStage_NamedAnimation : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Animation
local USceneRigStage_NamedAnimation = {}



---@class USceneRigStage_NamedBool : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Bool
local USceneRigStage_NamedBool = {}



---@class USceneRigStage_NamedFloat : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Float
local USceneRigStage_NamedFloat = {}



---@class USceneRigStage_NamedInt : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Int
local USceneRigStage_NamedInt = {}



---@class USceneRigStage_NamedName : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Name
local USceneRigStage_NamedName = {}



---@class USceneRigStage_NamedObject : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Object
local USceneRigStage_NamedObject = {}



---@class USceneRigStage_NamedParameter : UObject
---@field ParameterName FName
local USceneRigStage_NamedParameter = {}



---@class USceneRigStage_NamedString : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_String
local USceneRigStage_NamedString = {}



---@class USceneRigStage_NamedTransform : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Transform
local USceneRigStage_NamedTransform = {}



---@class USceneRigStage_NamedVector : USceneRigStage_NamedParameter
---@field Parameter FSceneRigStage_Vector
local USceneRigStage_NamedVector = {}



---@class USceneRigStage_ObjectValue : USceneRigStage_ParameterValue
---@field Provider UObjectProvider
local USceneRigStage_ObjectValue = {}



---@class USceneRigStage_ParameterValue : UObject
local USceneRigStage_ParameterValue = {}


---@class USceneRigStage_StringValue : USceneRigStage_ParameterValue
---@field Provider UStringProvider
local USceneRigStage_StringValue = {}



---@class USceneRigStage_TransformValue : USceneRigStage_ParameterValue
---@field Provider UTransformProvider
local USceneRigStage_TransformValue = {}



---@class USceneRigStage_VectorValue : USceneRigStage_ParameterValue
---@field Provider UVectorProvider
local USceneRigStage_VectorValue = {}



---@class USceneRigState : UTimeRigState
---@field SequencePlayer ULevelSequencePlayer
local USceneRigState = {}



---@class USceneRigVariants : UObject
---@field Variants TArray<FSceneRigVariant>
local USceneRigVariants = {}



---@class USceneRig_CustomActor : USceneRig
---@field CustomActor FSceneRigStage_Actor
local USceneRig_CustomActor = {}



---@class USceneRig_Direct : USceneRigProvider
---@field SceneRig USceneRig
local USceneRig_Direct = {}



---@class USceneRig_Fallback : USceneRigProvider
---@field Providers TArray<USceneRigProvider>
local USceneRig_Fallback = {}



---@class USceneRig_FromVariants : USceneRigProvider
---@field Variants USceneRigVariants
local USceneRig_FromVariants = {}



---@class USceneRig_StoryGraph : UTimeRig_StoryGraph
---@field AmbientSceneRig USceneRigProvider
local USceneRig_StoryGraph = {}



---@class USceneRig_TagLookup : USceneRigProvider
---@field LookupOnActor UActorProvider
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
local USceneRig_TagLookup = {}



---@class USceneRig_TagLookupWithAssets : USceneRigProvider
---@field LookupAsset UBaseArchitectAsset
---@field Tags FGameplayTagContainer
---@field TagProviders TArray<UAnimationArchitectTagProvider>
local USceneRig_TagLookupWithAssets = {}



---@class UScriptConditionProvider : UBaseProvider
local UScriptConditionProvider = {}


---@class USequencePlayerProxy : UObject
local USequencePlayerProxy = {}


---@class UStagePreviewDriver : UBaseProvider
local UStagePreviewDriver = {}


---@class UStagePreviewDriver_PlaySceneRig : UStagePreviewDriver
---@field SceneRig USceneRig
---@field SceneRigPlayer USceneRigPlayer
local UStagePreviewDriver_PlaySceneRig = {}



---@class UStoryNodeState_Custom : UObject
---@field OwningActor AStoryGraphActor
---@field Definition UStoryNode_Custom
local UStoryNodeState_Custom = {}



---@class UStoryNode_Custom : UTimeRig_StoryGraphNode
local UStoryNode_Custom = {}


---@class UStoryNode_InputEvent : UTimeRig_StoryGraphNode
---@field EventName FName
---@field bEventCanTriggerMultipleTimes boolean
local UStoryNode_InputEvent = {}



---@class UStoryNode_OutputEvent : UTimeRig_StoryGraphNode
---@field EventName FName
---@field RepresentsCompletion boolean
local UStoryNode_OutputEvent = {}



---@class UStoryNode_SceneRig : UStoryNode_Script
---@field StorySR USceneRigProvider
---@field InitializingBehavior ETimeRigInitializingBehavior
---@field bSkippable boolean
local UStoryNode_SceneRig = {}

---@param Caller UObject
---@return USceneRig
function UStoryNode_SceneRig:GetSceneRigBP(Caller) end


---@class UStoryNode_Script : UTimeRig_StoryGraphNode
---@field Script FSceneRigScriptContainer
---@field RegisteredAvailableNextLineIDs boolean
---@field AvailableNextLineIDs TArray<FName>
---@field RegisteredLastLineID FName
local UStoryNode_Script = {}



---@class UString_SceneRigParameter : UStringProvider
---@field BoundParameter FSceneRigParameterBinding_FString
local UString_SceneRigParameter = {}



---@class UString_SceneRigStageParameter : UStringProvider
---@field Reference FSceneRigStage_StringReference
local UString_SceneRigStageParameter = {}



---@class UTransform_Curve : UTransformProvider
---@field TranslateCurve FRuntimeCurveVector
---@field RotateCurve FRuntimeCurveVector
---@field ScaleCurve FRuntimeCurveVector
---@field DefaultValue FTransform
local UTransform_Curve = {}



---@class UTransform_SceneRigActor : UTransformProvider
local UTransform_SceneRigActor = {}


---@class UTransform_SceneRigParameter : UTransformProvider
---@field BoundParameter FSceneRigParameterBinding_Transform
local UTransform_SceneRigParameter = {}



---@class UTransform_SceneRigStageParameter : UTransformProvider
---@field Reference FSceneRigStage_TransformReference
local UTransform_SceneRigStageParameter = {}



---@class UTransform_SceneRigTranform : UTransformProvider
---@field TransformAction USceneAction_Transform
local UTransform_SceneRigTranform = {}



---@class UTransform_StageRoot : UTransformProvider
local UTransform_StageRoot = {}


---@class UVector2D_Curve : UVector2DProvider
---@field Curve FRuntimeCurveVector2D
local UVector2D_Curve = {}



---@class UVector_Curve : UVectorProvider
---@field Curve FRuntimeCurveVector
local UVector_Curve = {}



---@class UVector_SceneRigParameter : UVectorProvider
---@field BoundParameter FSceneRigParameterBinding_Vector
local UVector_SceneRigParameter = {}



---@class UVector_SceneRigStageParameter : UVectorProvider
---@field Reference FSceneRigStage_VectorReference
local UVector_SceneRigStageParameter = {}



