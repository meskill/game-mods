---@meta

---@class ACameraStackActor : AActor
---@field CameraComponent UCameraStackCineComponent
---@field DefaultData FCameraStackData
---@field Target UCameraStackTarget
---@field BehaviorTrees TArray<UBehaviorTree>
---@field bDestroyIfSpawnedOnEndViewTarget boolean
---@field InputPriorityOverride int32
---@field bOverrideInputMappings boolean
---@field InputMappingsOverride FCameraInputMappings
---@field bUnbindInputOnEndViewTarget boolean
---@field BehaviorStack UCameraStack
---@field Input UCameraStackInput
---@field CameraInputComponent UInputComponent
---@field BehaviorTreePairs TArray<FCameraStackActorBehaviorTreePair>
local ACameraStackActor = {}

---@param InName FName
---@param InActor AActor
function ACameraStackActor:SetNamedSecondaryTargetActor(InName, InActor) end
---@param InContextName FName
---@param bSet boolean
function ACameraStackActor:SetCameraContext(InContextName, bSet) end
---@param InBlendDuration float
---@param InDesiredDelta FRotator
---@param bInResetYaw boolean
---@param bInResetPitch boolean
function ACameraStackActor:ResetRotationToTarget(InBlendDuration, InDesiredDelta, bInResetYaw, bInResetPitch) end
---@param InContextName FName
---@return boolean
function ACameraStackActor:IsCameraContextSet(InContextName) end
---@return FTransform
function ACameraStackActor:GetUnblendedCameraViewTransform() end
---@return UCameraStackTarget
function ACameraStackActor:GetTarget() end
---@param InName FName
---@return AActor
function ACameraStackActor:GetNamedSecondaryTargetActor(InName) end
---@return UCameraStackInput
function ACameraStackActor:GetInput() end
---@return FFloatRange
function ACameraStackActor:GetFieldOfViewRange() end
---@return FTransform
function ACameraStackActor:GetCameraViewTransform() end
---@return UCameraStack
function ACameraStackActor:GetBehaviors() end
---@return FRotator
function ACameraStackActor:GetArmRotation() end
---@param InLocation FVector
function ACameraStackActor:ForceSetArmRotationTowardsLocation(InLocation) end
---@param InRotation FRotator
---@param bUseDefaultPitch boolean
function ACameraStackActor:ForceSetArmRotation(InRotation, bUseDefaultPitch) end
function ACameraStackActor:ForceCameraReset() end
---@param BehaviorClass TSubclassOf<UCameraStackBehavior>
---@param Template UObject
---@return UCameraStackBehavior
function ACameraStackActor:CreateNonCoreBehavior(BehaviorClass, Template) end
---@param BehaviorClass TSubclassOf<UCameraStackBehaviorCore>
---@param Template UObject
---@return UCameraStackBehaviorCore
function ACameraStackActor:CreateCoreBehavior(BehaviorClass, Template) end
---@param InContextName FName
function ACameraStackActor:ClearCameraContext(InContextName) end


---@class ACameraStackLevelActor : ACameraStackActor
---@field PreUpdateTick FCameraPreUpdateTickFunction
---@field TargetReference TLazyObjectPtr<AActor>
---@field bIsInWorldSpace boolean
---@field RuntimeTarget TWeakObjectPtr<AActor>
local ACameraStackLevelActor = {}

---@param InActor AActor
function ACameraStackLevelActor:SetRuntimeTarget(InActor) end
---@return AActor
function ACameraStackLevelActor:GetRuntimeTarget() end


---@class ACameraStackLookAtTargetActor : AActor
---@field LookAtStrength ECameraStackLookAtStrength
---@field TriggerVolume TSoftObjectPtr<ATriggerVolume>
---@field TimeoutAfterTriggerEntered float
---@field bTriggerOnReEntry boolean
---@field CameraActorOverride TSoftObjectPtr<AActor>
local ACameraStackLookAtTargetActor = {}

---@param PlayerIndex int32
function ACameraStackLookAtTargetActor:StopPlayerInitiation(PlayerIndex) end
---@param PlayerIndex int32
function ACameraStackLookAtTargetActor:StartPlayerInitiation(PlayerIndex) end
---@param OverlappedActor AActor
---@param OtherActor AActor
function ACameraStackLookAtTargetActor:OnTriggerEndOverlap(OverlappedActor, OtherActor) end
---@param OverlappedActor AActor
---@param OtherActor AActor
function ACameraStackLookAtTargetActor:OnTriggerBeginOverlap(OverlappedActor, OtherActor) end
---@param PlayerIndex int32
---@return boolean
function ACameraStackLookAtTargetActor:IsPlayerInitiationActive(PlayerIndex) end
---@param PlayerIndex int32
---@return boolean
function ACameraStackLookAtTargetActor:IsActiveLookAtTargetForPlayer(PlayerIndex) end
---@param PlayerIndex int32
function ACameraStackLookAtTargetActor:DeactivateLookAt(PlayerIndex) end
---@param PlayerIndex int32
---@param Duration float
function ACameraStackLookAtTargetActor:ActivateLookAt(PlayerIndex, Duration) end


---@class ACameraStackManager : APlayerCameraManager
---@field DefaultCameraStyle FName
---@field DefaultData FCameraDefaultData
---@field InputMappings FCameraInputMappings
---@field OptionMappings FCameraOptionMappings
---@field DefaultActorClass TSubclassOf<ACameraStackActor>
---@field AspectRatioWidgetClass TSubclassOf<UCameraAspectRatioWidget>
---@field PostProcessHandler UCameraPostProcessHandler
---@field CameraActorMap TMap<TWeakObjectPtr<AActor>, ACameraStackActor>
---@field ActiveTarget TWeakObjectPtr<AActor>
---@field bOnlyTickAssigned boolean
---@field bOverrideBlendDuration boolean
---@field BlendDurationOverride float
---@field LazyBlendSpeedRange FVector2D
---@field AspectRatioWidget UCameraAspectRatioWidget
---@field RuleOfThirdsWidget UUserWidget
---@field FocusPlaneVisualizationMesh UStaticMesh
---@field FocusPlaneVisualizationMaterial UMaterial
---@field DebugFocusPlaneComponent UStaticMeshComponent
---@field DebugFocusPlaneMID UMaterialInstanceDynamic
local ACameraStackManager = {}

---@param NewCamera AActor
---@param bInOverrideBlendDuration boolean
---@param InBlendDuration float
function ACameraStackManager:SwitchToCamera(NewCamera, bInOverrideBlendDuration, InBlendDuration) end
---@param newActor AActor
---@param bInOverrideBlendDuration boolean
---@param InBlendDuration float
function ACameraStackManager:SwitchToActorsCameraActor(newActor, bInOverrideBlendDuration, InBlendDuration) end
---@param bInOverrideBlendDuration boolean
---@param InBlendDuration float
function ACameraStackManager:SwitchToActiveTargetCamera(bInOverrideBlendDuration, InBlendDuration) end
---@param InTargetActor AActor
---@param InStackSettings UCameraStackSettings
---@param InCameraActorClass TSubclassOf<ACameraStackActor>
---@return ACameraStackActor
function ACameraStackManager:SpawnCameraActorForTarget(InTargetActor, InStackSettings, InCameraActorClass) end
---@param bSetToFixed boolean
function ACameraStackManager:SetFixedCameraInPlace(bSetToFixed) end
---@param InActor AActor
function ACameraStackManager:RemoveFromCameraActorMap(InActor) end
---@return boolean
function ACameraStackManager:IsCameraFixedInPlace() end
---@return FName
function ACameraStackManager:GetCameraStyle() end
---@param InActor AActor
---@return ACameraStackActor
function ACameraStackManager:GetActorsCameraActor(InActor) end


---@class ACameraStackPointOfInterestActor : AActor
---@field MaxDistance float
local ACameraStackPointOfInterestActor = {}



---@class ACameraStackSplineActor : AActor
---@field SplineType ECameraStackSplineType
---@field RailPairedSplineActor ACameraStackSplineActor
---@field bUseDifferentSplineWhenStartingAtEnd boolean
---@field RailPairedSplineActorStartingAtEnd ACameraStackSplineActor
---@field SplineComponent USplineComponent
local ACameraStackSplineActor = {}



---@class ACameraStackTransitionController : AActor
---@field StackSettings UCameraStackSettings
---@field CameraActorClass TSubclassOf<ACameraStackActor>
---@field bConstrainAspectRatio boolean
---@field bRelativeToArmRotation boolean
---@field CameraStackActor ACameraStackActor
local ACameraStackTransitionController = {}

---@param InCameraActor AActor
---@param InTargetLocation FVector
---@param InTransitionDuration float
---@param InDelay float
function ACameraStackTransitionController:TransitionToCameraAndTargetLocation(InCameraActor, InTargetLocation, InTransitionDuration, InDelay) end
---@param InCameraActor AActor
---@param InTargetLocationActor AActor
---@param InTransitionDuration float
---@param InDelay float
function ACameraStackTransitionController:TransitionToCameraAndTargetActor(InCameraActor, InTargetLocationActor, InTransitionDuration, InDelay) end
---@param InCameraActor AActor
---@param InTransitionDuration float
---@param InDelay float
function ACameraStackTransitionController:TransitionToCamera(InCameraActor, InTransitionDuration, InDelay) end
---@return APlayerController
function ACameraStackTransitionController:GetPlayerController() end


---@class ACameraStackVolume : AVolume
---@field VolumeSettings FCameraStackVolumeInterfaceProperties
---@field VolumeComponent UCameraStackVolumeComponent
---@field VolumePreset UCameraStackVolumePreset
---@field Priority int32
---@field weight float
---@field BlendRadius float
---@field MaxCrossBlendSpeed float
local ACameraStackVolume = {}



---@class FAngularValueVelocity : FScalarValueVelocity
local FAngularValueVelocity = {}


---@class FCameraComponentPropertyPair
local FCameraComponentPropertyPair = {}


---@class FCameraCrossBlendBehaviorGroup
---@field Behaviors TArray<UCameraStackBehavior>
local FCameraCrossBlendBehaviorGroup = {}



---@class FCameraData
local FCameraData = {}


---@class FCameraDefaultData
---@field FieldOfView float
---@field FocusDistance float
---@field Aperture float
local FCameraDefaultData = {}



---@class FCameraInputMappings
---@field WalkX FName
---@field WalkY FName
---@field LookX FName
---@field LookY FName
---@field MouseLookX FName
---@field MouseLookY FName
---@field TiltX FName
---@field TiltY FName
---@field RollCW FName
---@field RollCCW FName
---@field Dolly FName
---@field Truck FName
---@field PedestalUp FName
---@field PedestalDown FName
---@field ZoomIn FName
---@field ZoomOut FName
---@field FocusDistanceIncrease FName
---@field FocusDistanceDecrease FName
---@field QuickTurn FName
local FCameraInputMappings = {}



---@class FCameraOptionMappings
---@field Names TSet<FName>
local FCameraOptionMappings = {}



---@class FCameraOptionName
---@field Name FName
local FCameraOptionName = {}



---@class FCameraPreUpdateTickFunction : FTickFunction
local FCameraPreUpdateTickFunction = {}


---@class FCameraStackActorBehaviorTreePair
---@field BTComponent UBehaviorTreeComponent
---@field BBComponent UBlackboardComponent
local FCameraStackActorBehaviorTreePair = {}



---@class FCameraStackAnimData
---@field SkeletalMesh USkeletalMesh
---@field RootOffsetTransform FTransform
---@field EyeBoneName FName
---@field TargetBoneName FName
---@field SecondaryTargetBoneName FName
---@field FocusDistanceCurveName FName
---@field EnableDynamicFocusDistanceCurveName FName
---@field DynamicFocusDistanceBlendCurveName FName
---@field ApertureCurveName FName
---@field FocalLengthCurveName FName
---@field TargetFramingCurveName FName
---@field TargetPositioningCurveName FName
local FCameraStackAnimData = {}



---@class FCameraStackAnimationRequest
---@field AnimSequence UAnimSequence
local FCameraStackAnimationRequest = {}



---@class FCameraStackData
---@field CoreBehavior UCameraStackBehaviorCore
---@field Behaviors TArray<UCameraStackBehavior>
local FCameraStackData = {}



---@class FCameraStackMultiCrossBlendGroupTemplate
---@field BehaviorTemplates TArray<UCameraStackBehavior>
local FCameraStackMultiCrossBlendGroupTemplate = {}



---@class FCameraStackVolumeInfluence
---@field Owner TWeakObjectPtr<UObject>
---@field Behavior UCameraStackBehavior
---@field CrossBlendBehavior UCameraStackBehaviorInfluenceCrossBlend
---@field ExistingBehavior UCameraStackBehavior
local FCameraStackVolumeInfluence = {}



---@class FCameraStackVolumeInterfaceProperties
---@field VolumePreset UCameraStackVolumePreset
---@field Priority int32
---@field weight float
---@field BlendRadius float
---@field MaxCrossBlendSpeed float
local FCameraStackVolumeInterfaceProperties = {}



---@class FCameraStackVolumeOperationSettings
---@field BehaviorToAdd UCameraStackBehavior
---@field Operation ECameraStackVolumeOperation
---@field ExistingBehaviorClass TSubclassOf<UCameraStackBehavior>
local FCameraStackVolumeOperationSettings = {}



---@class FOptionalTriplet
---@field bValidA boolean
---@field ValueA float
---@field bValidB boolean
---@field ValueB float
---@field bValidC boolean
---@field ValueC float
local FOptionalTriplet = {}



---@class FQuatValueVelocity
local FQuatValueVelocity = {}


---@class FRotatorValueVelocity
local FRotatorValueVelocity = {}


---@class FScalarValueVelocity
local FScalarValueVelocity = {}


---@class FVectorValueVelocity
local FVectorValueVelocity = {}


---@class ICameraStackBehaviorInterface : IInterface
local ICameraStackBehaviorInterface = {}

---@param CameraData FCameraData
---@return boolean
function ICameraStackBehaviorInterface:OnWriteCameraDataEvent(CameraData) end
---@param DeltaSeconds float
---@return boolean
function ICameraStackBehaviorInterface:OnUpdateEvent(DeltaSeconds) end
---@return FString
function ICameraStackBehaviorInterface:OnGetDebugStatsEvent() end
---@return boolean
function ICameraStackBehaviorInterface:OnActivateEvent() end


---@class ICameraStackLimitsInterface : IInterface
local ICameraStackLimitsInterface = {}

---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function ICameraStackLimitsInterface:GetRotationLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function ICameraStackLimitsInterface:GetFocusDistanceLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function ICameraStackLimitsInterface:GetFieldOfViewLimits(OutMin, OutMax) end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function ICameraStackLimitsInterface:GetCameraSpaceTranslationLimits(OutMin, OutMax) end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function ICameraStackLimitsInterface:GetCameraSpaceRotationLimits(OutMin, OutMax) end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function ICameraStackLimitsInterface:GetArmOriginLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function ICameraStackLimitsInterface:GetArmLengthLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function ICameraStackLimitsInterface:GetApertureLimits(OutMin, OutMax) end


---@class ICameraStackTargetInterface : IInterface
local ICameraStackTargetInterface = {}

---@return AActor
function ICameraStackTargetInterface:GetRuntimeTarget() end


---@class ICameraStackVolumeInterface : IInterface
local ICameraStackVolumeInterface = {}


---@class UBTDecorator_CameraActiveInputTimeout : UBTDecorator_CameraInputTimeout
local UBTDecorator_CameraActiveInputTimeout = {}


---@class UBTDecorator_CameraContext : UBTDecorator
---@field Context FName
local UBTDecorator_CameraContext = {}



---@class UBTDecorator_CameraInputTimeout : UBTDecorator
---@field TimeLimit float
local UBTDecorator_CameraInputTimeout = {}



---@class UBTDecorator_JumpFallTimeout : UBTDecorator
---@field TimeLimit float
local UBTDecorator_JumpFallTimeout = {}



---@class UBTService_Camera_DisableInput : UBTService
---@field bDisableLookX boolean
---@field bDisableLookY boolean
---@field bOverrideMinDeadzone boolean
---@field MinDeadzone float
local UBTService_Camera_DisableInput = {}



---@class UBTT_Camera_AddBehavior : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BlendInDuration float
---@field BlendOutDuration float
---@field bReuseBehaviorOnReactivate boolean
local UBTT_Camera_AddBehavior = {}



---@class UBTT_Camera_AddCrossBlendBehavior : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BlendInDuration float
---@field BlendOutDuration float
---@field CrossBlendBehaviorClass TArray<TSubclassOf<UCameraStackBehaviorMultiCrossBlend>>
---@field GroupIndex int32
---@field weight float
---@field CrossBlendSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
local UBTT_Camera_AddCrossBlendBehavior = {}



---@class UBTT_Camera_Base : UBTTaskNode
local UBTT_Camera_Base = {}


---@class UBTT_Camera_BlendToStack : UBTT_Camera_BlendToStackBase
---@field BlendInDuration float
---@field BlendOutDuration float
---@field bLazyBlendOut boolean
local UBTT_Camera_BlendToStack = {}



---@class UBTT_Camera_BlendToStackBase : UBTT_Camera_Base
---@field StackSettings UCameraStackSettings
---@field bReuseBehaviorOnReactivate boolean
local UBTT_Camera_BlendToStackBase = {}



---@class UBTT_Camera_BlendToStack_AnimationRequest : UBTT_Camera_BlendToStackBase
local UBTT_Camera_BlendToStack_AnimationRequest = {}


---@class UBTT_Camera_CancelReset : UBTT_Camera_Base
local UBTT_Camera_CancelReset = {}


---@class UBTT_Camera_DisableBehavior : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field BlendOutDuration float
---@field BlendInDuration float
---@field bReturnImmediately boolean
local UBTT_Camera_DisableBehavior = {}



---@class UBTT_Camera_DisableBehaviors : UBTT_Camera_Base
---@field BehaviorClasses TArray<TSubclassOf<UCameraStackBehavior>>
---@field BehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field BlendOutDuration float
---@field BlendInDuration float
local UBTT_Camera_DisableBehaviors = {}



---@class UBTT_Camera_InsertBehaviorAfter : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BlendInDuration float
---@field BlendOutDuration float
---@field InsertAfterBehaviorClass TArray<TSubclassOf<UCameraStackBehavior>>
---@field InsertAfterBehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field bReuseBehaviorOnReactivate boolean
local UBTT_Camera_InsertBehaviorAfter = {}



---@class UBTT_Camera_InsertBehaviorBefore : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BlendInDuration float
---@field BlendOutDuration float
---@field InsertBeforeBehaviorClass TArray<TSubclassOf<UCameraStackBehavior>>
---@field InsertBeforeBehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field bReuseBehaviorOnReactivate boolean
local UBTT_Camera_InsertBehaviorBefore = {}



---@class UBTT_Camera_PauseBehavior : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field bReturnImmediately boolean
local UBTT_Camera_PauseBehavior = {}



---@class UBTT_Camera_ReplaceBehavior : UBTT_Camera_Base
---@field BehaviorClass TSubclassOf<UCameraStackBehavior>
---@field BlendInDuration float
---@field BlendOutDuration float
---@field BehaviorClassToReplace TArray<TSubclassOf<UCameraStackBehavior>>
---@field BlendOutPredecessorDuration float
---@field BlendInPredecessorDuration float
---@field PredecessorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field bRemovePredecessor boolean
local UBTT_Camera_ReplaceBehavior = {}



---@class UBTT_Camera_Reset : UBTT_Camera_Base
---@field ResetDuration float
---@field ResetCurve UCurveFloat
---@field bCancelResetOnInput boolean
---@field bSkipResetOnMouseInput boolean
---@field bResetYaw boolean
---@field bResetPitch boolean
---@field bResetToPitchFoundOnStack boolean
---@field PitchToResetTo float
local UBTT_Camera_Reset = {}



---@class UBTT_Camera_ResetCut : UBTT_Camera_Base
---@field ResetType ECameraStackResetType
---@field FixedArmRotationValue FRotator
---@field RotationOffset FVector2D
local UBTT_Camera_ResetCut = {}



---@class UBTT_Camera_SetPrimaryTargetActor : UBTT_Camera_Base
---@field TargetActor TSubclassOf<UCameraStackSecondaryTargetGetter>
---@field BlendInDuration float
---@field BlendOutDuration float
local UBTT_Camera_SetPrimaryTargetActor = {}



---@class UBTT_PlayCameraShake : UBTTaskNode
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field Scale float
local UBTT_PlayCameraShake = {}



---@class UCameraAspectRatioWidget : UUserWidget
local UCameraAspectRatioWidget = {}

---@param InBarScale float
function UCameraAspectRatioWidget:UI_UpdatePillarbox(InBarScale) end
---@param InBarScale float
function UCameraAspectRatioWidget:UI_UpdateLetterbox(InBarScale) end
function UCameraAspectRatioWidget:UI_HideBars() end


---@class UCameraCheatManager : UCheatManager
local UCameraCheatManager = {}


---@class UCameraDataHelper : UObject
local UCameraDataHelper = {}

---@param Vec FVector
---@return FRotator
function UCameraDataHelper:VecToRot(Vec) end
---@param Vec FVector
---@return FRotator
function UCameraDataHelper:ToOrientationRotator(Vec) end
---@param CameraData FCameraData
---@param Value FVector
---@param Velocity FVector
function UCameraDataHelper:SetTargetOffset(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value FRotator
---@param Velocity FRotator
function UCameraDataHelper:SetRotation(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
function UCameraDataHelper:SetFocusDistance(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
function UCameraDataHelper:SetFieldOfView(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value FVector
---@param Velocity FVector
function UCameraDataHelper:SetCameraSpaceTranslation(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value FRotator
---@param Velocity FRotator
function UCameraDataHelper:SetCameraSpaceRotation(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value FVector
---@param Velocity FVector
function UCameraDataHelper:SetArmOrigin(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
function UCameraDataHelper:SetArmLength(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
function UCameraDataHelper:SetAperture(CameraData, Value, Velocity) end
---@param CameraData FCameraData
---@param Value FRotator
---@param Velocity FRotator
function UCameraDataHelper:SetAccumulatedRotationDelta(CameraData, Value, Velocity) end
---@param Deg float
---@return float
function UCameraDataHelper:SafeUnwindDegrees(Deg) end
---@param Rot FRotator
---@return FVector
function UCameraDataHelper:RotToVec(Rot) end
---@param TargetLocation FVector
---@param InOutViewLocation FVector
---@param InOutViewRotation FRotator
---@param AngleInRadians float
function UCameraDataHelper:RotateAroundLocation(TargetLocation, InOutViewLocation, InOutViewRotation, AngleInRadians) end
---@param RayOrigin FVector
---@param RayDirection FVector
---@param Plane FPlane
---@return FVector
function UCameraDataHelper:RayPlaneIntersection(RayOrigin, RayDirection, Plane) end
---@param InScreenLocation FVector2D
---@param InInvViewProjectionMatrix FMatrix
---@return FVector
function UCameraDataHelper:GetWorldDirectionAtScreenLocation(InScreenLocation, InInvViewProjectionMatrix) end
---@param CameraData FCameraData
---@param OutValue FVector
---@param OutVelocity FVector
function UCameraDataHelper:GetTargetOffset(CameraData, OutValue, OutVelocity) end
---@param InWorldLocation FVector
---@param InViewProjectionMatrix FMatrix
---@param OutScreenLocation FVector2D
---@return boolean
function UCameraDataHelper:GetScreenLocationAtWorldLocation(InWorldLocation, InViewProjectionMatrix, OutScreenLocation) end
---@param CameraData FCameraData
---@param OutValue FRotator
---@param OutVelocity FRotator
function UCameraDataHelper:GetRotation(CameraData, OutValue, OutVelocity) end
---@param InFocalLength float
---@param InSensorWidth float
---@param bIncOffset boolean
---@return float
function UCameraDataHelper:GetFOVFromFocalLength(InFocalLength, InSensorWidth, bIncOffset) end
---@param CameraData FCameraData
---@param OutValue float
---@param OutVelocity float
function UCameraDataHelper:GetFocusDistance(CameraData, OutValue, OutVelocity) end
---@param InFieldOfView float
---@param InSensorWidth float
---@param bIncOffset boolean
---@return float
function UCameraDataHelper:GetFocalLengthFromFOV(InFieldOfView, InSensorWidth, bIncOffset) end
---@param CameraData FCameraData
---@param OutValue float
---@param OutVelocity float
function UCameraDataHelper:GetFieldOfView(CameraData, OutValue, OutVelocity) end
---@param CameraData FCameraData
---@param OutValue FVector
---@param OutVelocity FVector
function UCameraDataHelper:GetCameraSpaceTranslation(CameraData, OutValue, OutVelocity) end
---@param CameraData FCameraData
---@param OutValue FRotator
---@param OutVelocity FRotator
function UCameraDataHelper:GetCameraSpaceRotation(CameraData, OutValue, OutVelocity) end
---@param CameraData FCameraData
---@param OutValue FVector
---@param OutVelocity FVector
function UCameraDataHelper:GetArmOrigin(CameraData, OutValue, OutVelocity) end
---@param CameraData FCameraData
---@param OutValue float
---@param OutVelocity float
function UCameraDataHelper:GetArmLength(CameraData, OutValue, OutVelocity) end
---@param CameraData FCameraData
---@param OutValue float
---@param OutVelocity float
function UCameraDataHelper:GetAperture(CameraData, OutValue, OutVelocity) end
---@param CameraData FCameraData
---@param OutValue FRotator
---@param OutVelocity FRotator
function UCameraDataHelper:GetAccumulatedRotationDelta(CameraData, OutValue, OutVelocity) end
---@param Quat FQuat
---@param Axis FVector
---@return float
function UCameraDataHelper:FindSwingTwistDecomposition(Quat, Axis) end
---@param PlayerController APlayerController
---@param InScreenPosition FVector2D
---@param OutLocation FVector
---@param OutDirection FVector
function UCameraDataHelper:DeprojectScreenToWorldStable(PlayerController, InScreenPosition, OutLocation, OutDirection) end
---@param InTargetActor AActor
---@param InCameraTransform FTransform
---@param InFieldOfView float
---@return FMatrix
function UCameraDataHelper:ComputeViewProjectionMatrix(InTargetActor, InCameraTransform, InFieldOfView) end
---@param InTargetDirection FVector
---@param InScreenArea FBox2D
---@param InEyeLocation FVector
---@param InViewProjMatrix FMatrix
---@param InInvViewProjMatrix FMatrix
---@return FVector
function UCameraDataHelper:ComputeClosestDirectionInFrustum(InTargetDirection, InScreenArea, InEyeLocation, InViewProjMatrix, InInvViewProjMatrix) end
---@param CameraData FCameraData
---@param Value FVector
---@param Velocity FVector
---@param Scale float
function UCameraDataHelper:AddTargetOffset(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value FRotator
---@param Velocity FRotator
---@param Scale float
---@param bAccumulate boolean
function UCameraDataHelper:AddRotation(CameraData, Value, Velocity, Scale, bAccumulate) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
---@param Scale float
function UCameraDataHelper:AddFocusDistance(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
---@param Scale float
function UCameraDataHelper:AddFieldOfView(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value FVector
---@param Velocity FVector
---@param Scale float
function UCameraDataHelper:AddCameraSpaceTranslation(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value FRotator
---@param Velocity FRotator
---@param Scale float
function UCameraDataHelper:AddCameraSpaceRotation(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value FVector
---@param Velocity FVector
---@param Scale float
function UCameraDataHelper:AddArmOrigin(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
---@param Scale float
function UCameraDataHelper:AddArmLength(CameraData, Value, Velocity, Scale) end
---@param CameraData FCameraData
---@param Value float
---@param Velocity float
---@param Scale float
function UCameraDataHelper:AddAperture(CameraData, Value, Velocity, Scale) end


---@class UCameraPostProcessHandler : UObject
---@field BlendCamera TWeakObjectPtr<UCameraComponent>
local UCameraPostProcessHandler = {}



---@class UCameraStack : UObject
---@field Behaviors TArray<UCameraStackBehavior>
local UCameraStack = {}

---@param InBehavior UCameraStackBehavior
---@return boolean
function UCameraStack:UnpauseBehavior(InBehavior) end
---@param InBehavior UCameraStackBehaviorCore
---@return boolean
function UCameraStack:ResetBehaviors(InBehavior) end
---@param InBehavior UCameraStackBehaviorCore
---@param InBlendOutDuration float
---@param InBlendInDuration float
---@return boolean
function UCameraStack:ReplaceCoreBehavior(InBehavior, InBlendOutDuration, InBlendInDuration) end
---@param InBehavior UCameraStackBehavior
---@param InPredecessorBehavior UCameraStackBehavior
---@param InBlendOutDuration float
---@param InBlendInDuration float
---@return boolean
function UCameraStack:ReplaceBehavior(InBehavior, InPredecessorBehavior, InBlendOutDuration, InBlendInDuration) end
---@param InBehavior UCameraStackBehavior
---@param InBlendOutDuration float
---@return boolean
function UCameraStack:RemoveBehavior(InBehavior, InBlendOutDuration) end
---@param InBehavior UCameraStackBehavior
---@return boolean
function UCameraStack:PauseBehavior(InBehavior) end
---@param InBehavior UCameraStackBehavior
---@param InBeforeBehavior UCameraStackBehavior
---@param InBlendInDuration float
---@return boolean
function UCameraStack:InsertBeforeBehavior(InBehavior, InBeforeBehavior, InBlendInDuration) end
---@param InBehavior UCameraStackBehavior
---@param InAfterBehavior UCameraStackBehavior
---@param InBlendInDuration float
---@return boolean
function UCameraStack:InsertAfterBehavior(InBehavior, InAfterBehavior, InBlendInDuration) end
---@return UCameraStackBehavior
function UCameraStack:GetTopmostBehavior() end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function UCameraStack:GetRotationLimits(OutMin, OutMax) end
---@return ACameraStackActor
function UCameraStack:GetOwner() end
---@param OutMin float
---@param OutMax float
---@return boolean
function UCameraStack:GetFocusDistanceLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function UCameraStack:GetFieldOfViewLimits(OutMin, OutMax) end
---@return UCameraStackBehaviorCore
function UCameraStack:GetCoreBehavior() end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function UCameraStack:GetCameraSpaceTranslationLimits(OutMin, OutMax) end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function UCameraStack:GetCameraSpaceRotationLimits(OutMin, OutMax) end
---@param InType TSubclassOf<UCameraStackBehavior>
---@param InSorting ECameraStackBehaviorSorting
---@param FilterFlags int32
---@return UCameraStackBehavior
function UCameraStack:GetBehaviourWithType(InType, InSorting, FilterFlags) end
---@param InTypes TArray<TSubclassOf<UCameraStackBehavior>>
---@param InSorting ECameraStackBehaviorSorting
---@param FilterFlags int32
---@return UCameraStackBehavior
function UCameraStack:GetBehaviorWithTypes(InTypes, InSorting, FilterFlags) end
---@param InTypes TArray<TSubclassOf<UCameraStackBehavior>>
---@param InSorting ECameraStackBehaviorSorting
---@param FilterFlags int32
---@return TArray<UCameraStackBehavior>
function UCameraStack:GetBehaviorsWithTypes(InTypes, InSorting, FilterFlags) end
---@param InType TSubclassOf<UCameraStackBehavior>
---@param InSorting ECameraStackBehaviorSorting
---@param FilterFlags int32
---@return TArray<UCameraStackBehavior>
function UCameraStack:GetBehaviorsWithType(InType, InSorting, FilterFlags) end
---@param OutMin FOptionalTriplet
---@param OutMax FOptionalTriplet
---@return boolean
function UCameraStack:GetArmOriginLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function UCameraStack:GetArmLengthLimits(OutMin, OutMax) end
---@param OutMin float
---@param OutMax float
---@return boolean
function UCameraStack:GetApertureLimits(OutMin, OutMax) end
---@param InBehavior UCameraStackBehavior
---@param InBlendInDuration float
---@return boolean
function UCameraStack:EnableBehavior(InBehavior, InBlendInDuration) end
---@param InBehavior UCameraStackBehavior
---@param InBlendOutDuration float
---@return boolean
function UCameraStack:DisableBehavior(InBehavior, InBlendOutDuration) end
---@param BehaviorClass TSubclassOf<UCameraStackBehavior>
---@param Template UObject
---@return UCameraStackBehavior
function UCameraStack:CreateNonCoreBehavior(BehaviorClass, Template) end
---@param BehaviorClass TSubclassOf<UCameraStackBehaviorCore>
---@param Template UObject
---@return UCameraStackBehaviorCore
function UCameraStack:CreateCoreBehavior(BehaviorClass, Template) end
---@param InType TSubclassOf<UCameraStackBehavior>
---@param FilterFlags int32
---@return boolean
function UCameraStack:ContainsBehaviorWithType(InType, FilterFlags) end
---@param InStackData FCameraStackData
---@param InBlendInDuration float
---@return UCameraStackBehaviorMultiBehaviorBlend
function UCameraStack:AddStackBehaviors(InStackData, InBlendInDuration) end
---@param InBehavior UCameraStackBehavior
---@param InBlendInDuration float
---@param bInSkipFlags boolean
---@return boolean
function UCameraStack:AddBehavior(InBehavior, InBlendInDuration, bInSkipFlags) end


---@class UCameraStackAnimationComponent : UActorComponent
---@field CurrentRequest FCameraStackAnimationRequest
---@field LastRequest FCameraStackAnimationRequest
local UCameraStackAnimationComponent = {}

---@param InAnimationRequest FCameraStackAnimationRequest
---@param InRequester UObject
function UCameraStackAnimationComponent:PlayAnimation(InAnimationRequest, InRequester) end
---@param InRequester UObject
function UCameraStackAnimationComponent:EndAnimation(InRequester) end


---@class UCameraStackAttachParentGetter : UCameraStackSecondaryTargetGetter
local UCameraStackAttachParentGetter = {}


---@class UCameraStackBehavior : UObject
---@field CurrentList TWeakObjectPtr<UCameraStack>
---@field DisableCounter int32
---@field bPaused boolean
local UCameraStackBehavior = {}

---@param bInPaused boolean
function UCameraStackBehavior:SetPaused(bInPaused) end
---@param bInDisabled boolean
---@param bForce boolean
function UCameraStackBehavior:SetDisabled(bInDisabled, bForce) end
---@return boolean
function UCameraStackBehavior:IsPaused() end
---@return boolean
function UCameraStackBehavior:IsDisabled() end
---@return boolean
function UCameraStackBehavior:IsActive() end
---@return float
function UCameraStackBehavior:GetSecondsActive() end
---@param OutData FCameraData
---@return boolean
function UCameraStackBehavior:GetPreviousValues(OutData) end
---@return ACameraStackActor
function UCameraStackBehavior:GetOwner() end
---@return UCameraStack
function UCameraStackBehavior:GetBehaviorList() end
---@param OutData FCameraData
---@param bInUseUnblendedStackValues boolean
---@return boolean
function UCameraStackBehavior:GetAllPreviousValues(OutData, bInUseUnblendedStackValues) end


---@class UCameraStackBehaviorAddAccumulatedRotation : UCameraStackBehaviorBlend
---@field RotationPerSecond FRotator
local UCameraStackBehaviorAddAccumulatedRotation = {}



---@class UCameraStackBehaviorAddArmLength : UCameraStackBehaviorBlend
---@field ArmLengthOffset float
local UCameraStackBehaviorAddArmLength = {}



---@class UCameraStackBehaviorAddArmLengthFromTargetPitch : UCameraStackBehaviorBlend
---@field PitchToArmLengthOffsetCurve FRuntimeFloatCurve
---@field InterpSpeed float
local UCameraStackBehaviorAddArmLengthFromTargetPitch = {}



---@class UCameraStackBehaviorAddArmLengthFromTargetSize : UCameraStackBehaviorBlend
---@field Target UCameraStackSecondaryTargetGetter
---@field ArmLengthOffsetFromTargetSize FRuntimeFloatCurve
---@field bUpdateArmLength boolean
local UCameraStackBehaviorAddArmLengthFromTargetSize = {}



---@class UCameraStackBehaviorAddArmOriginTranslation : UCameraStackBehaviorBlend
---@field ArmOriginTranslation FVector
---@field bRelativeToTargetUpright boolean
local UCameraStackBehaviorAddArmOriginTranslation = {}



---@class UCameraStackBehaviorAddCameraSpaceRotation : UCameraStackBehaviorBlend
---@field CameraSpaceRotation FRotator
local UCameraStackBehaviorAddCameraSpaceRotation = {}



---@class UCameraStackBehaviorAddCameraSpaceTranslation : UCameraStackBehaviorBlend
---@field CameraSpaceTranslation FVector
local UCameraStackBehaviorAddCameraSpaceTranslation = {}



---@class UCameraStackBehaviorAddCameraSpaceTranslationFromPitch : UCameraStackBehaviorBlend
---@field PitchToTranslationCurve FRuntimeCurveVector
local UCameraStackBehaviorAddCameraSpaceTranslationFromPitch = {}



---@class UCameraStackBehaviorAddCameraSpaceTranslationFromRelativeTargetHeading : UCameraStackBehaviorBlend
---@field YawToTranslationCurve FRuntimeCurveVector
---@field InterpSpeed float
local UCameraStackBehaviorAddCameraSpaceTranslationFromRelativeTargetHeading = {}



---@class UCameraStackBehaviorAddCameraSpaceTranslationFromTargetSize : UCameraStackBehaviorBlend
---@field Target UCameraStackSecondaryTargetGetter
---@field TranslationOffsetFromTargetSize FRuntimeCurveVector
---@field bUpdateAtRuntime boolean
local UCameraStackBehaviorAddCameraSpaceTranslationFromTargetSize = {}



---@class UCameraStackBehaviorAddTargetOffset : UCameraStackBehaviorBlend
---@field TargetOffset FVector
---@field bTargetLocalSpace boolean
local UCameraStackBehaviorAddTargetOffset = {}



---@class UCameraStackBehaviorAdjustArmFromTargetVelocity : UCameraStackBehaviorBlend
---@field Scale FVector
---@field AngleToScale FRuntimeFloatCurve
---@field VelocityFilterHalflife float
---@field SpeedFilterHalflife float
---@field ScaleFilterHalflife float
---@field bDrawDebug boolean
local UCameraStackBehaviorAdjustArmFromTargetVelocity = {}

---@param InHalflife float
function UCameraStackBehaviorAdjustArmFromTargetVelocity:SetVelocityFilterHalflife(InHalflife) end
---@param InHalflife float
function UCameraStackBehaviorAdjustArmFromTargetVelocity:SetScaleFilterHalflife(InHalflife) end


---@class UCameraStackBehaviorAnimationBase : UCameraStackBehaviorBlend
---@field LoopMode ECameraStackAnimationLoopMode
---@field AnimationFrame ECameraStackAnimationFrame
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field PlayRate float
---@field AdditiveTranslationFactor FVector
---@field AdditiveRotationFactor FRotator
---@field AdditiveFactorOptionName FCameraOptionName
---@field PlayRateFactorOptionName FCameraOptionName
---@field AnimData FCameraStackAnimData
---@field AnimSequence UAnimSequenceBase
local UCameraStackBehaviorAnimationBase = {}



---@class UCameraStackBehaviorAnimationSequence : UCameraStackBehaviorAnimationBase
---@field SequenceToPlay UAnimSequenceBase
local UCameraStackBehaviorAnimationSequence = {}



---@class UCameraStackBehaviorAnimationSequenceClosest : UCameraStackBehaviorAnimationBase
---@field AnimSequenceOptions TArray<UAnimSequenceBase>
local UCameraStackBehaviorAnimationSequenceClosest = {}



---@class UCameraStackBehaviorAnimationSequenceRequested : UCameraStackBehaviorAnimationBase
local UCameraStackBehaviorAnimationSequenceRequested = {}


---@class UCameraStackBehaviorAttachToSpline : UCameraStackBehaviorBlend
---@field SplineGetter UCameraStackSplineGetter
---@field CameraTargetOffset FVector
---@field DistanceFromTarget float
---@field bDebugDraw boolean
local UCameraStackBehaviorAttachToSpline = {}



---@class UCameraStackBehaviorBakedShake : UCameraStackBehaviorBlend
---@field TraumaOverTime UCurveVector
local UCameraStackBehaviorBakedShake = {}



---@class UCameraStackBehaviorBlend : UCameraStackBehavior
local UCameraStackBehaviorBlend = {}

---@return float
function UCameraStackBehaviorBlend:GetBlendAlpha() end


---@class UCameraStackBehaviorCamera : UCameraStackBehaviorBlend
---@field bMaintainArmRotation boolean
---@field bMaintainArmOrigin boolean
local UCameraStackBehaviorCamera = {}

---@param InSourceCamera USceneComponent
---@param bInIsValidOverDuration boolean
function UCameraStackBehaviorCamera:SetSourceCameraComponent(InSourceCamera, bInIsValidOverDuration) end
---@param InSourceCamera AActor
---@param bInIsValidOverDuration boolean
function UCameraStackBehaviorCamera:SetSourceCamera(InSourceCamera, bInIsValidOverDuration) end


---@class UCameraStackBehaviorCameraLookAtOverride : UCameraStackBehaviorCamera
local UCameraStackBehaviorCameraLookAtOverride = {}


---@class UCameraStackBehaviorCameraSpaceRotationLag : UCameraStackBehaviorBlend
---@field LagSpeedYaw float
---@field LagSpeedPitch float
---@field LagSpeedRoll float
---@field bLagPreviousBehaviorOnly boolean
---@field bWorldSpace boolean
---@field bUseSubstepping boolean
---@field MaxTimeStep float
local UCameraStackBehaviorCameraSpaceRotationLag = {}



---@class UCameraStackBehaviorCameraStackComponent : UCameraStackBehaviorBlend
local UCameraStackBehaviorCameraStackComponent = {}


---@class UCameraStackBehaviorChooseByStyle : UCameraStackBehavior
---@field DefaultBehavior UCameraStackBehavior
---@field StyleBehaviors TMap<FName, UCameraStackBehavior>
local UCameraStackBehaviorChooseByStyle = {}



---@class UCameraStackBehaviorCollisionBase : UCameraStackBehaviorBlend
---@field ProbeSize float
---@field MinArmLengthLimit float
---@field ProbeChannel ECollisionChannel
---@field CollisionInterpSpeed float
---@field ReturnInterpSpeed float
---@field MinCameraSpeedToReturn float
---@field MaxCameraSpeedToReturn float
---@field bDrawDebug boolean
local UCameraStackBehaviorCollisionBase = {}



---@class UCameraStackBehaviorCollisionEyeOverlap : UCameraStackBehaviorCollisionBase
local UCameraStackBehaviorCollisionEyeOverlap = {}


---@class UCameraStackBehaviorCollisionPrediction : UCameraStackBehaviorCollisionBase
---@field ForwardPredictionTime float
---@field ForwardPredictionStep float
---@field SweepCountPerUpdate int32
---@field SecondsBetweenSweeps float
---@field bCheckForEyeOverlap boolean
---@field BlendExponent float
---@field MinCollisionInterpSpeed float
---@field GridCellSize float
---@field GridPointThreshold float
---@field GridDirectionThreshold float
local UCameraStackBehaviorCollisionPrediction = {}



---@class UCameraStackBehaviorCollisionSweep : UCameraStackBehaviorCollisionBase
---@field bCheckForEyeOverlap boolean
local UCameraStackBehaviorCollisionSweep = {}



---@class UCameraStackBehaviorCollisionSweepVertical : UCameraStackBehavior
---@field ProbeSize float
---@field ProbeChannel ECollisionChannel
---@field SweepStartHeight float
local UCameraStackBehaviorCollisionSweepVertical = {}



---@class UCameraStackBehaviorConvertToArmOriginTranslation : UCameraStackBehaviorBlend
local UCameraStackBehaviorConvertToArmOriginTranslation = {}


---@class UCameraStackBehaviorConvertToTranslation : UCameraStackBehaviorBlend
local UCameraStackBehaviorConvertToTranslation = {}


---@class UCameraStackBehaviorCore : UCameraStackBehavior
local UCameraStackBehaviorCore = {}


---@class UCameraStackBehaviorCore_Actor : UCameraStackBehaviorCore
---@field TransformActor TWeakObjectPtr<AActor>
local UCameraStackBehaviorCore_Actor = {}

---@param InTransformActor AActor
function UCameraStackBehaviorCore_Actor:SetTransformActor(InTransformActor) end


---@class UCameraStackBehaviorCore_Identity : UCameraStackBehaviorCore
local UCameraStackBehaviorCore_Identity = {}


---@class UCameraStackBehaviorCrossBlendBySpeed : UCameraStackBehaviorMultiCrossBlendStandalone
---@field SpeedToWeightCurve FRuntimeFloatCurve
---@field bHorizontalSpeed boolean
local UCameraStackBehaviorCrossBlendBySpeed = {}



---@class UCameraStackBehaviorCrossBlendByTargetPitch : UCameraStackBehaviorMultiCrossBlendStandalone
---@field TargetPitchToWeightCurve FRuntimeFloatCurve
local UCameraStackBehaviorCrossBlendByTargetPitch = {}



---@class UCameraStackBehaviorDollyZoom : UCameraStackBehaviorBlend
---@field FieldOfView float
local UCameraStackBehaviorDollyZoom = {}



---@class UCameraStackBehaviorFocusDistanceToAnimationTarget : UCameraStackBehaviorFocusDistanceToTarget
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
local UCameraStackBehaviorFocusDistanceToAnimationTarget = {}



---@class UCameraStackBehaviorFocusDistanceToLookAtTarget : UCameraStackBehaviorFocusDistanceToTarget
local UCameraStackBehaviorFocusDistanceToLookAtTarget = {}


---@class UCameraStackBehaviorFocusDistanceToSecondaryTarget : UCameraStackBehaviorFocusDistanceToTarget
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field bSetToPrimaryTargetIfTargetIsInvalid boolean
---@field bKeepLastFocusDistance boolean
local UCameraStackBehaviorFocusDistanceToSecondaryTarget = {}



---@class UCameraStackBehaviorFocusDistanceToTarget : UCameraStackBehaviorBlend
---@field MinFocusDistance float
---@field FocusDistanceOffset float
local UCameraStackBehaviorFocusDistanceToTarget = {}



---@class UCameraStackBehaviorFollowTargetRotationSpring : UCameraStackBehaviorBlend
---@field DeadspotRangeDegrees FVector2D
---@field TargetSpeedRange FVector2D
---@field Frequency float
---@field DampingRatio float
---@field bAffectYaw boolean
---@field bAffectPitch boolean
---@field bUseSubstepping boolean
---@field MaxTimeStep float
local UCameraStackBehaviorFollowTargetRotationSpring = {}



---@class UCameraStackBehaviorIncludeSecondaryTarget : UCameraStackBehaviorBlend
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field OffsetRatio float
---@field TargetRadiusFactor float
local UCameraStackBehaviorIncludeSecondaryTarget = {}



---@class UCameraStackBehaviorInfluenceCrossBlend : UCameraStackBehaviorMultiCrossBlend
local UCameraStackBehaviorInfluenceCrossBlend = {}


---@class UCameraStackBehaviorInputToYawSpeed : UCameraStackBehaviorBlend
---@field MinRequiredInput float
---@field MinTargetSpeed float
---@field LagSpeed float
---@field AngleToYawSpeedCurve UCurveFloat
---@field SpeedMultiplier float
---@field FollowCameraSpeedOptionName FCameraOptionName
local UCameraStackBehaviorInputToYawSpeed = {}



---@class UCameraStackBehaviorKeepLineOfSight : UCameraStackBehaviorBlend
---@field bDrawDebug boolean
---@field MaximumAngleInRadians float
---@field WalkAxisToMaxAngleScaleCurve UCurveFloat
---@field SweepCountPerUpdate int32
---@field SecondsBetweenSweeps float
---@field StepSizeInRadians float
---@field RotationSpeed float
---@field InterpSpeed float
---@field RotationSpeedTight float
---@field InterpSpeedTight float
---@field CollisionProximityTimeToSpeedAlpha UCurveFloat
---@field LineOfSightProbeChannel ECollisionChannel
---@field LineOfSightProbeSize float
---@field TraceTagName FName
local UCameraStackBehaviorKeepLineOfSight = {}



---@class UCameraStackBehaviorLag : UCameraStackBehaviorBlend
---@field SpeedX float
---@field SpeedY float
---@field SpeedZ float
---@field MinDistances FVector
---@field MaxDistances FVector
---@field bWorldSpace boolean
---@field bLagPreviousBehaviorOnly boolean
---@field bUseSubstepping boolean
---@field MaxTimeStep float
local UCameraStackBehaviorLag = {}



---@class UCameraStackBehaviorLagSpring : UCameraStackBehaviorBlend
---@field Frequency float
---@field DampingRatio float
---@field FilteringAmountOptionName FCameraOptionName
local UCameraStackBehaviorLagSpring = {}



---@class UCameraStackBehaviorLagSpringAttached : UCameraStackBehaviorBlend
---@field DamperHalflife float
---@field SpringHalflife float
local UCameraStackBehaviorLagSpringAttached = {}



---@class UCameraStackBehaviorLineOfSightDistance : UCameraStackBehaviorBlend
---@field bDrawDebug boolean
---@field MaximumAngleInDegrees float
---@field SweepCountPerUpdate int32
---@field SecondsBetweenSweeps float
---@field StepSizeInDegrees float
---@field ProbeChannel ECollisionChannel
---@field ProbeSize float
---@field SweepLength float
---@field TraceTagName FName
---@field MinArmLength float
---@field MinTargetMovingSpeed float
---@field MinTargetMovingTime float
---@field CameraReturnSpeed float
local UCameraStackBehaviorLineOfSightDistance = {}



---@class UCameraStackBehaviorLinearSpring : UCameraStackBehaviorBlend
---@field bDrawDebug boolean
---@field bUseSubstepping boolean
---@field MaxTimeStep float
---@field SpeedX float
---@field SpeedY float
---@field SpeedZ float
---@field FrequencyX float
---@field FrequencyY float
---@field FrequencyZ float
---@field DampingRatioX float
---@field DampingRatioY float
---@field DampingRatioZ float
---@field MinDistances FVector
---@field MaxDistances FVector
---@field DefaultSpeed float
---@field bEnableSpring boolean
local UCameraStackBehaviorLinearSpring = {}



---@class UCameraStackBehaviorLookAhead : UCameraStackBehaviorLookAtBase
---@field TimeAhead float
---@field VelocityFilterHalflife float
---@field LocationFilterHalflife float
---@field FollowCameraSpeedOptionName FCameraOptionName
---@field bDrawDebug boolean
local UCameraStackBehaviorLookAhead = {}



---@class UCameraStackBehaviorLookAheadAlongSpline : UCameraStackBehaviorLookAtBase
---@field SplineGetter UCameraStackSplineGetter
---@field CameraTargetOffset FVector
---@field DistanceFromSplineThresholdRange FVector2D
---@field HeightDifferenceFromSplineThresholdRange FVector2D
---@field LookAheadDistance float
---@field PointOrDirectionInterp float
---@field TargetOffsetFactor float
---@field bOnlyInForwardDirection boolean
---@field DirectionDifferenceFromSplineThresholdRange FVector2D
---@field bReturnPitchToDefault boolean
---@field FollowCameraSpeedOptionName FCameraOptionName
---@field bDebugDraw boolean
local UCameraStackBehaviorLookAheadAlongSpline = {}



---@class UCameraStackBehaviorLookAt : UCameraStackBehaviorLookAtBase
---@field LookAtTarget UCameraStackSecondaryTargetGetter
local UCameraStackBehaviorLookAt = {}



---@class UCameraStackBehaviorLookAtBase : UCameraStackBehaviorBlend
---@field ScreenArea FBox2D
---@field RotationSpeed float
---@field AngleToRotationSpeed UCurveFloat
---@field bAffectYaw boolean
---@field bAffectPitch boolean
---@field PitchLimits FVector2D
---@field DistanceToWeightCurve FRuntimeFloatCurve
---@field bDisableOnInput boolean
---@field bUseUnblendedStackValues boolean
local UCameraStackBehaviorLookAtBase = {}



---@class UCameraStackBehaviorMaintainTargetFraming : UCameraStackBehaviorBlend
---@field bDrawDebug boolean
local UCameraStackBehaviorMaintainTargetFraming = {}



---@class UCameraStackBehaviorMatchFloorPitch : UCameraStackBehaviorBlend
---@field bDrawDebug boolean
---@field TraceTagName FName
---@field TraceLength float
---@field TraceHeight float
---@field TraceDepth float
---@field PitchScaleUp float
---@field PitchScaleDown float
---@field PitchScaleDrop float
---@field ProbeSize float
---@field ProbeChannel ECollisionChannel
---@field InterpSpeed float
---@field InterpSpeedDrop float
local UCameraStackBehaviorMatchFloorPitch = {}



---@class UCameraStackBehaviorMatchFloorRotation : UCameraStackBehaviorBlend
---@field bEnablePitch boolean
---@field bEnableYaw boolean
---@field bEnableRoll boolean
local UCameraStackBehaviorMatchFloorRotation = {}



---@class UCameraStackBehaviorMatchTargetRotation : UCameraStackBehaviorBlend
---@field MatchYaw float
---@field MatchPitch float
---@field MatchRoll float
local UCameraStackBehaviorMatchTargetRotation = {}



---@class UCameraStackBehaviorMirrorOnCollision : UCameraStackBehavior
---@field ProbeSize float
---@field ProbeChannel ECollisionChannel
local UCameraStackBehaviorMirrorOnCollision = {}



---@class UCameraStackBehaviorMoveArmOriginToTarget : UCameraStackBehaviorBlend
---@field Target UCameraStackSecondaryTargetGetter
---@field Offset FVector
---@field PrimaryTargetOffsetFactor float
local UCameraStackBehaviorMoveArmOriginToTarget = {}



---@class UCameraStackBehaviorMoveTargetToActor : UCameraStackBehaviorBlend
local UCameraStackBehaviorMoveTargetToActor = {}


---@class UCameraStackBehaviorMoveTargetToAttachParent : UCameraStackBehaviorBlend
local UCameraStackBehaviorMoveTargetToAttachParent = {}


---@class UCameraStackBehaviorMoveToKeepInFrame : UCameraStackBehaviorBlend
---@field ScreenArea FBox2D
---@field Targets TArray<UCameraStackSecondaryTargetGetter>
---@field bConsiderTargetBounds boolean
---@field bTruck boolean
---@field bPedestal boolean
---@field DollyLimits FVector2D
---@field TruckLimits FVector2D
---@field PedestalLimits FVector2D
---@field bUseUnblendedStackValues boolean
local UCameraStackBehaviorMoveToKeepInFrame = {}



---@class UCameraStackBehaviorMultiBehaviorBlend : UCameraStackBehaviorBlend
---@field FirstBehavior UCameraStackBehavior
local UCameraStackBehaviorMultiBehaviorBlend = {}

---@param InFirstBehavior UCameraStackBehavior
function UCameraStackBehaviorMultiBehaviorBlend:Initialize(InFirstBehavior) end


---@class UCameraStackBehaviorMultiCrossBlend : UCameraStackBehaviorBlend
---@field MaxCrossBlendSpeed float
---@field CrossBlendBehaviorGroups TArray<FCameraCrossBlendBehaviorGroup>
local UCameraStackBehaviorMultiCrossBlend = {}

---@return TArray<FCameraCrossBlendBehaviorGroup>
function UCameraStackBehaviorMultiCrossBlend:GetCrossBlendBehaviorGroups() end
---@param InCameraStack UCameraStack
---@param InMaxCrossBlendSpeed float
---@return UCameraStackBehaviorMultiCrossBlend
function UCameraStackBehaviorMultiCrossBlend:CreateMultiCrossBlendBehavior(InCameraStack, InMaxCrossBlendSpeed) end


---@class UCameraStackBehaviorMultiCrossBlendStandalone : UCameraStackBehaviorMultiCrossBlend
---@field GroupTemplates TArray<FCameraStackMultiCrossBlendGroupTemplate>
---@field bUpdateWeightsFromImplementation boolean
local UCameraStackBehaviorMultiCrossBlendStandalone = {}



---@class UCameraStackBehaviorNoOp : UCameraStackBehavior
local UCameraStackBehaviorNoOp = {}


---@class UCameraStackBehaviorPitchFromTargetDistance : UCameraStackBehaviorBlend
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field PitchA float
---@field PitchB float
---@field HorizontalDistanceInterpWeight FRuntimeFloatCurve
---@field VerticalDistanceInterpWeight FRuntimeFloatCurve
---@field bUseDistanceToTargetBounds boolean
local UCameraStackBehaviorPitchFromTargetDistance = {}



---@class UCameraStackBehaviorPitchToFocalLength : UCameraStackBehaviorBlend
---@field DefaultFocalLength float
---@field PitchToFocalLengthCurve UCurveFloat
local UCameraStackBehaviorPitchToFocalLength = {}



---@class UCameraStackBehaviorPitchToTransformCurves : UCameraStackBehaviorBlend
---@field CurveData UCameraStackTransformCurveData
local UCameraStackBehaviorPitchToTransformCurves = {}



---@class UCameraStackBehaviorPushPull : UCameraStackBehaviorBlend
---@field bEnableLag boolean
---@field LagSpeed float
---@field MaxArmLength2D float
---@field MinArmLength2D float
---@field YawMinMax float
local UCameraStackBehaviorPushPull = {}



---@class UCameraStackBehaviorRail : UCameraStackBehaviorBlend
---@field SplineGetter UCameraStackSplineGetter
---@field CameraTargetOffset FVector
---@field SplineMovementFrequency float
---@field BlendDuration float
---@field bFollowSplineRotation boolean
---@field bDebugDraw boolean
local UCameraStackBehaviorRail = {}



---@class UCameraStackBehaviorRemoveArmOriginOffset : UCameraStackBehaviorBlend
local UCameraStackBehaviorRemoveArmOriginOffset = {}


---@class UCameraStackBehaviorResetRotation : UCameraStackBehaviorBlend
---@field ResetDuration float
---@field DefaultPitch float
---@field ResetCurve UCurveFloat
---@field DesiredDelta FRotator
---@field bCancelResetOnInput boolean
---@field bResetYaw boolean
---@field bResetPitch boolean
local UCameraStackBehaviorResetRotation = {}



---@class UCameraStackBehaviorRetargetAnimation : UCameraStackBehaviorLookAtBase
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field FramingScreenAreaExtent FVector2D
---@field bDrawDebug boolean
---@field AnimBehavior UCameraStackBehaviorAnimationBase
local UCameraStackBehaviorRetargetAnimation = {}



---@class UCameraStackBehaviorRotateEyeToBisector : UCameraStackBehaviorBlend
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field AngleRatio float
---@field BlendOutAngleRange FVector2D
---@field BlendOutDistanceRange FVector2D
---@field bDebugDraw boolean
local UCameraStackBehaviorRotateEyeToBisector = {}



---@class UCameraStackBehaviorRotateTowards : UCameraStackBehaviorBlend
---@field bRotateYaw boolean
---@field bRotatePitch boolean
---@field bRotateRoll boolean
---@field TargetRotation FRotator
---@field RotationSpeed float
---@field AngleToRotationSpeed UCurveFloat
local UCameraStackBehaviorRotateTowards = {}



---@class UCameraStackBehaviorRotateTowardsSecondaryTarget : UCameraStackBehaviorBlend
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field DistanceToYaw UCurveFloat
---@field YawAngleRange FVector2D
---@field bSymmetricalYaw boolean
---@field bCommitToDirection boolean
---@field bOtherSide boolean
---@field RotationSpeed float
---@field AngleToRotationSpeed UCurveFloat
---@field AngleBias float
---@field AccumulatedRotationAmount float
local UCameraStackBehaviorRotateTowardsSecondaryTarget = {}



---@class UCameraStackBehaviorRotationLag : UCameraStackBehaviorBlend
---@field LagSpeed float
---@field bLagPreviousBehaviorOnly boolean
---@field bAffectsYaw boolean
---@field bAffectsPitch boolean
---@field bAffectsRoll boolean
---@field bUseSubstepping boolean
---@field MaxTimeStep float
local UCameraStackBehaviorRotationLag = {}



---@class UCameraStackBehaviorRotationLagSpringAttached : UCameraStackBehaviorBlend
---@field YawAmount float
---@field PitchAmount float
---@field RollAmount float
---@field MaxYawSpeed float
---@field MaxPitchSpeed float
---@field MaxRollSpeed float
---@field DamperHalflife float
---@field SpringHalflife float
local UCameraStackBehaviorRotationLagSpringAttached = {}



---@class UCameraStackBehaviorRotationOffsetToTarget : UCameraStackBehaviorBlend
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field DistanceToYaw UCurveFloat
---@field YawAngleRange FVector2D
---@field bSymmetricalYaw boolean
---@field bCommitToDirection boolean
---@field bOtherSide boolean
---@field AngleBias float
local UCameraStackBehaviorRotationOffsetToTarget = {}



---@class UCameraStackBehaviorRotationSpring : UCameraStackBehaviorBlend
---@field Frequency float
---@field DampingRatio float
---@field FilteringAmountOptionName FCameraOptionName
local UCameraStackBehaviorRotationSpring = {}



---@class UCameraStackBehaviorRotationSpringVideoCapture : UCameraStackBehaviorRotationSpring
local UCameraStackBehaviorRotationSpringVideoCapture = {}


---@class UCameraStackBehaviorSetAperture : UCameraStackBehaviorBlend
---@field Aperture float
---@field ApertureOptionName FCameraOptionName
local UCameraStackBehaviorSetAperture = {}



---@class UCameraStackBehaviorSetArmLength : UCameraStackBehaviorBlend
---@field ArmLength float
local UCameraStackBehaviorSetArmLength = {}



---@class UCameraStackBehaviorSetDefaultPitch : UCameraStackBehavior
---@field DefaultPitch float
---@field ResetCurve UCurveFloat
local UCameraStackBehaviorSetDefaultPitch = {}



---@class UCameraStackBehaviorSetFOV : UCameraStackBehaviorBlend
---@field FieldOfView float
local UCameraStackBehaviorSetFOV = {}



---@class UCameraStackBehaviorSetRotationLimits : UCameraStackBehaviorBlend
---@field bEnablePitchLimits boolean
---@field MinPitch float
---@field MaxPitch float
---@field bEnableYawLimits boolean
---@field bLimitYawRelativeToTarget boolean
---@field minYaw float
---@field MaxYaw float
---@field bEnableRollLimits boolean
---@field minRoll float
---@field MaxRoll float
local UCameraStackBehaviorSetRotationLimits = {}



---@class UCameraStackBehaviorSetRotationLimitsRelativeToTarget : UCameraStackBehaviorBlend
---@field SecondaryTarget UCameraStackSecondaryTargetGetter
---@field bEnablePitchLimits boolean
---@field MinPitch float
---@field MaxPitch float
---@field bEnableYawLimits boolean
---@field minYaw float
---@field MaxYaw float
local UCameraStackBehaviorSetRotationLimitsRelativeToTarget = {}



---@class UCameraStackBehaviorSetTargetOffset : UCameraStackBehaviorBlend
---@field TargetOffset FVector
local UCameraStackBehaviorSetTargetOffset = {}



---@class UCameraStackBehaviorSetTargetWorldLocation : UCameraStackBehaviorBlend
---@field TargetWorldLocation FVector
---@field PrimaryTargetOffsetFactor float
local UCameraStackBehaviorSetTargetWorldLocation = {}



---@class UCameraStackBehaviorShake : UCameraStackBehaviorBlend
---@field ShakeLimits FRotator
---@field ShakeDelay FVector2D
---@field TraumaDuration float
---@field TraumaStart float
---@field TraumaPow float
---@field RepeatTraumaDelay float
---@field bUsePerlinNoise boolean
---@field bMaintainSeed boolean
---@field bKeepAlive boolean
local UCameraStackBehaviorShake = {}

---@param InTrauma float
function UCameraStackBehaviorShake:AddTrauma(InTrauma) end


---@class UCameraStackBehaviorSlopeMovementPitch : UCameraStackBehaviorBlend
---@field MovementPitchToCameraPitch FRuntimeFloatCurve
---@field PitchSpeed float
---@field PitchToPitchSpeed UCurveFloat
---@field MovementSpeedToPitchSpeed FRuntimeFloatCurve
---@field MovementPitchToPitchSpeed FRuntimeFloatCurve
---@field MovementPitchFrequency float
---@field MovementPitchDamping float
---@field SpeedRampUpFrequency float
---@field SpeedRampDownFrequency float
---@field SpeedDamping float
local UCameraStackBehaviorSlopeMovementPitch = {}



---@class UCameraStackBehaviorSteerAroundCorners : UCameraStackBehaviorBlend
---@field RotationSpeed float
---@field BlendExponent float
---@field SpeedToWeightCurve FRuntimeFloatCurve
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field SpeedOptionName FCameraOptionName
local UCameraStackBehaviorSteerAroundCorners = {}



---@class UCameraStackBehaviorTargetPitchToPitch : UCameraStackBehaviorBlend
---@field TargetPitchToPitchCurve FRuntimeFloatCurve
---@field InterpSpeed float
---@field OutputInterpSpeed float
local UCameraStackBehaviorTargetPitchToPitch = {}



---@class UCameraStackBehaviorUserFOVDollyZoom : UCameraStackBehaviorDollyZoom
---@field FieldOfViewOffsetOptionName FCameraOptionName
local UCameraStackBehaviorUserFOVDollyZoom = {}



---@class UCameraStackBehaviorUserInput : UCameraStackBehaviorBlend
---@field YawSpeed float
---@field DefaultPitchSpeed float
---@field PitchToPitchSpeedPositive UCurveFloat
---@field PitchToPitchSpeedNegative UCurveFloat
---@field DefaultPitch float
---@field InputMappingCurve UCurveFloat
---@field MinGamepadInputForAcceleration float
---@field AccelerationSpeedFactor float
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field ResetTime float
---@field ResetCurve UCurveFloat
---@field InvertXOptionName FCameraOptionName
---@field InvertYOptionName FCameraOptionName
---@field SensitivityOptionName FCameraOptionName
---@field AccelerationOptionName FCameraOptionName
---@field AimingSwitchOptionName FCameraOptionName
---@field bSwapCameraSticks boolean
local UCameraStackBehaviorUserInput = {}



---@class UCameraStackBehaviorUserNudgingInput : UCameraStackBehaviorBlend
---@field MaxYaw float
---@field MaxPitch float
---@field SmoothingFrequency float
---@field SmoothingDampingRatio float
---@field InputMappingCurve UCurveFloat
---@field InvertXOptionName FCameraOptionName
---@field InvertYOptionName FCameraOptionName
---@field AimingSwitchOptionName FCameraOptionName
local UCameraStackBehaviorUserNudgingInput = {}



---@class UCameraStackBehaviorUserTilt : UCameraStackBehaviorBlend
---@field MinTilt FRotator
---@field MaxTilt FRotator
local UCameraStackBehaviorUserTilt = {}



---@class UCameraStackBehaviorVelocityPitch : UCameraStackBehaviorBlend
---@field MaxVerticalSpeed float
---@field MaxPitchSpeed float
---@field PitchToPitchSpeedPositive UCurveFloat
---@field PitchToPitchSpeedNegative UCurveFloat
local UCameraStackBehaviorVelocityPitch = {}



---@class UCameraStackBehaviorWindwaker : UCameraStackBehaviorBlend
---@field MaxArmLength2D float
---@field MinArmLength2D float
local UCameraStackBehaviorWindwaker = {}



---@class UCameraStackCameraLookAtTargetGetter : UCameraStackSecondaryTargetGetterBlend
---@field LookAtStrength ECameraStackLookAtStrength
---@field bReturnHigherStrengthTargets boolean
local UCameraStackCameraLookAtTargetGetter = {}



---@class UCameraStackCineComponent : UCineCameraComponent
local UCameraStackCineComponent = {}


---@class UCameraStackComponent : USceneComponent
---@field StackSettings UCameraStackSettings
---@field OverrideActorClass TSubclassOf<ACameraStackActor>
local UCameraStackComponent = {}



---@class UCameraStackFramingLocationComponent : USceneComponent
local UCameraStackFramingLocationComponent = {}


---@class UCameraStackInfluenceHandle : UObject
---@field Preset UCameraStackVolumePreset
---@field Priority int32
---@field MaxBlendSpeed float
---@field weight float
local UCameraStackInfluenceHandle = {}

---@param NewWeight float
function UCameraStackInfluenceHandle:SetInfluenceWeight(NewWeight) end


---@class UCameraStackInfluenceManager : UObject
local UCameraStackInfluenceManager = {}

---@param InHandle UCameraStackInfluenceHandle
function UCameraStackInfluenceManager:UnregisterInfluence(InHandle) end
---@param InPreset UCameraStackVolumePreset
---@param Priority int32
---@param MaxBlendSpeed float
---@return UCameraStackInfluenceHandle
function UCameraStackInfluenceManager:RegisterInfluence(InPreset, Priority, MaxBlendSpeed) end


---@class UCameraStackInput : UObject
local UCameraStackInput = {}

---@return boolean
function UCameraStackInput:IsLooking() end
---@return boolean
function UCameraStackInput:HasAnyMouseLookInput() end
---@return boolean
function UCameraStackInput:HasAnyLookInput() end
---@return float
function UCameraStackInput:GetZoom() end
---@param bInvertX boolean
---@param bInvertY boolean
---@return FVector2D
function UCameraStackInput:GetWalk(bInvertX, bInvertY) end
---@return FVector2D
function UCameraStackInput:GetTilt() end
---@return float
function UCameraStackInput:GetRoll() end
---@return boolean
function UCameraStackInput:GetResetPressed() end
---@return boolean
function UCameraStackInput:GetQuickTurnPressed() end
---@return float
function UCameraStackInput:GetPedestal() end
---@param bInvertX boolean
---@param bInvertY boolean
---@return FVector2D
function UCameraStackInput:GetMouseLook(bInvertX, bInvertY) end
---@param bInvertX boolean
---@param bInvertY boolean
---@return FVector2D
function UCameraStackInput:GetLook(bInvertX, bInvertY) end
---@return ELastCameraInput
function UCameraStackInput:GetLastCameraInput() end
---@return float
function UCameraStackInput:GetFocusDistance() end
---@return FVector2D
function UCameraStackInput:GetDollyAndTruck() end


---@class UCameraStackModificationSettings : UDataAsset
---@field StackOperations TArray<UCameraStackOperationBase>
local UCameraStackModificationSettings = {}



---@class UCameraStackNearbyCameraSplineGetter : UCameraStackSplineGetter
---@field SplineType ECameraStackSplineType
---@field DistanceThreshold float
---@field CameraTargetOffset FVector
---@field LookAheadDistance float
local UCameraStackNearbyCameraSplineGetter = {}



---@class UCameraStackNearbyPointOfInterestTargetGetter : UCameraStackSecondaryTargetGetterBlend
local UCameraStackNearbyPointOfInterestTargetGetter = {}


---@class UCameraStackOperationBase : UObject
---@field bEnabled boolean
local UCameraStackOperationBase = {}



---@class UCameraStackOperationBlendToStack : UCameraStackOperationBase
---@field StackSettings UCameraStackSettings
---@field BlendInDuration float
---@field BlendOutDuration float
---@field bLazyBlendOut boolean
---@field bReuseBehaviorOnReactivate boolean
local UCameraStackOperationBlendToStack = {}



---@class UCameraStackOperationDisable : UCameraStackOperationBase
---@field BlendOutDuration float
---@field BlendInDuration float
---@field BehaviorsToDisable TArray<TSubclassOf<UCameraStackBehavior>>
---@field FilterFlags int32
local UCameraStackOperationDisable = {}



---@class UCameraStackOperationInsert : UCameraStackOperationBase
---@field Behavior UCameraStackBehavior
---@field BlendInDuration float
---@field BlendOutDuration float
---@field InsertLocation ECameraStackOperationInsertLocation
---@field BehaviorsToFind TArray<TSubclassOf<UCameraStackBehavior>>
---@field BehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field bLazyBlendOut boolean
---@field bReuseBehaviorOnReactivate boolean
local UCameraStackOperationInsert = {}



---@class UCameraStackOperationReplace : UCameraStackOperationBase
---@field Behavior UCameraStackBehavior
---@field BlendInDuration float
---@field BlendOutDuration float
---@field BehaviorsToFind TArray<TSubclassOf<UCameraStackBehavior>>
---@field BehaviorSorting ECameraStackBehaviorSorting
---@field FilterFlags int32
---@field bLazyBlendOut boolean
---@field bReuseBehaviorOnReactivate boolean
local UCameraStackOperationReplace = {}



---@class UCameraStackOperationScratchData : UObject
local UCameraStackOperationScratchData = {}


---@class UCameraStackPrimaryCameraTargetGetter : UCameraStackSecondaryTargetGetter
---@field OffsetFromTarget FVector
local UCameraStackPrimaryCameraTargetGetter = {}



---@class UCameraStackSecondaryTargetGetter : UObject
---@field CommitTime float
local UCameraStackSecondaryTargetGetter = {}

---@param DeltaSeconds float
function UCameraStackSecondaryTargetGetter:Update(DeltaSeconds) end
---@return boolean
function UCameraStackSecondaryTargetGetter:IsValid() end
---@return boolean
function UCameraStackSecondaryTargetGetter:HasValidData() end
---@return FVector
function UCameraStackSecondaryTargetGetter:GetTargetLocation() end
---@param OutCenterLocation FVector
---@param OutHalfHeight float
---@param OutRadius float
function UCameraStackSecondaryTargetGetter:GetTargetBoundingCylinder(OutCenterLocation, OutHalfHeight, OutRadius) end
---@return AActor
function UCameraStackSecondaryTargetGetter:GetTargetActor() end
---@param InList UCameraStack
function UCameraStackSecondaryTargetGetter:Activate(InList) end


---@class UCameraStackSecondaryTargetGetterBlend : UCameraStackSecondaryTargetGetter
---@field BlendDuration float
local UCameraStackSecondaryTargetGetterBlend = {}



---@class UCameraStackSettings : UDataAsset
---@field StackData FCameraStackData
---@field StyleOverrides TMap<FName, UCameraStackSettings>
local UCameraStackSettings = {}

---@param WorldContextObject UObject
---@return FCameraStackData
function UCameraStackSettings:GetStackData(WorldContextObject) end


---@class UCameraStackSplineGetter : UObject
local UCameraStackSplineGetter = {}

---@param DeltaSeconds float
function UCameraStackSplineGetter:Update(DeltaSeconds) end
---@return boolean
function UCameraStackSplineGetter:IsValid() end
---@return USplineComponent
function UCameraStackSplineGetter:GetSpline() end
---@param InList UCameraStack
function UCameraStackSplineGetter:Activate(InList) end


---@class UCameraStackStatics : UBlueprintFunctionLibrary
local UCameraStackStatics = {}

---@param InTargetActor AActor
---@param InStackSettings UCameraStackSettings
---@param InCameraActorClass TSubclassOf<ACameraStackActor>
---@return ACameraStackActor
function UCameraStackStatics:SpawnCameraStackActorForTarget(InTargetActor, InStackSettings, InCameraActorClass) end
---@param WorldContextObject UObject
---@param InTargetName FName
---@param InTargetActor AActor
---@param PlayerIndex int32
function UCameraStackStatics:SetPlayerCameraNamedTargetActor(WorldContextObject, InTargetName, InTargetActor, PlayerIndex) end
---@param WorldContextObject UObject
---@param InContextName FName
---@param bSet boolean
---@param PlayerIndex int32
function UCameraStackStatics:SetPlayerCameraContext(WorldContextObject, InContextName, bSet, PlayerIndex) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@param ResetDuration float
---@param DesiredDelta FRotator
---@param bResetYaw boolean
---@param bResetPitch boolean
function UCameraStackStatics:ResetPlayerCameraRotation(WorldContextObject, PlayerIndex, ResetDuration, DesiredDelta, bResetYaw, bResetPitch) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@return FTransform
function UCameraStackStatics:GetPlayerViewTransform(WorldContextObject, PlayerIndex) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@return FTransform
function UCameraStackStatics:GetPlayerCameraTransform(WorldContextObject, PlayerIndex) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@return ACameraStackManager
function UCameraStackStatics:GetPlayerCameraStackManager(WorldContextObject, PlayerIndex) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@return FRotator
function UCameraStackStatics:GetPlayerCameraArmRotation(WorldContextObject, PlayerIndex) end
---@param InTargetActor AActor
---@return ACameraStackActor
function UCameraStackStatics:GetCameraStackActorForTarget(InTargetActor) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@param InTargetLocation FVector
function UCameraStackStatics:ForceSetPlayerCameraArmRotationTowardsLocation(WorldContextObject, PlayerIndex, InTargetLocation) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@param InRotation FRotator
function UCameraStackStatics:ForceSetPlayerCameraArmRotation(WorldContextObject, PlayerIndex, InRotation) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
function UCameraStackStatics:ForcePlayerCameraReset(WorldContextObject, PlayerIndex) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@param InDuration float
function UCameraStackStatics:FilterCurrentPlayerCameraInput(WorldContextObject, PlayerIndex, InDuration) end
---@param WorldContextObject UObject
---@param InContextName FName
---@param PlayerIndex int32
function UCameraStackStatics:ClearPlayerCameraContext(WorldContextObject, InContextName, PlayerIndex) end
---@param InTeleportingActor AActor
---@return boolean
function UCameraStackStatics:CheckForCameraCutOnTeleport(InTeleportingActor) end


---@class UCameraStackTarget : UObject
---@field TargetActor TWeakObjectPtr<AActor>
---@field TargetSocket FName
---@field TargetOffset FVector
local UCameraStackTarget = {}

---@return boolean
function UCameraStackTarget:IsWorldCamera() end
---@return FVector
function UCameraStackTarget:GetTargetVelocity() end
---@return AActor
function UCameraStackTarget:GetTargetActor() end


---@class UCameraStackTransformCurveData : UDataAsset
---@field CameraLocationCurve UCurveVector
---@field FocalPointCurve UCurveVector
---@field InversePitchCurve UCurveFloat
local UCameraStackTransformCurveData = {}



---@class UCameraStackVolumeComponent : USceneComponent
---@field VolumeSettings FCameraStackVolumeInterfaceProperties
---@field VolumePreset UCameraStackVolumePreset
---@field Priority int32
---@field weight float
---@field BlendRadius float
---@field MaxCrossBlendSpeed float
local UCameraStackVolumeComponent = {}



---@class UCameraStackVolumeInfluenceComponent : UActorComponent
---@field Influences TArray<FCameraStackVolumeInfluence>
local UCameraStackVolumeInfluenceComponent = {}



---@class UCameraStackVolumePreset : UDataAsset
---@field VolumeOperations TArray<FCameraStackVolumeOperationSettings>
---@field StyleOverrides TMap<FName, UCameraStackVolumePreset>
local UCameraStackVolumePreset = {}



---@class UOptionalTripletHelper : UObject
local UOptionalTripletHelper = {}

---@param InVec FVector
---@param InMin FOptionalTriplet
---@param InMax FOptionalTriplet
---@return FVector
function UOptionalTripletHelper:ClampVec(InVec, InMin, InMax) end
---@param InRot FRotator
---@param InMin FOptionalTriplet
---@param InMax FOptionalTriplet
---@return FRotator
function UOptionalTripletHelper:ClampRot(InRot, InMin, InMax) end


---@class UQuatValueVelocityHelper : UObject
local UQuatValueVelocityHelper = {}

---@param Data FQuatValueVelocity
---@param Value FRotator
---@param DeltaSeconds float
function UQuatValueVelocityHelper:Update(Data, Value, DeltaSeconds) end
---@param Data FQuatValueVelocity
---@return FQuatValueVelocity
function UQuatValueVelocityHelper:Inverse(Data) end
---@param Data FQuatValueVelocity
---@param OutValue FRotator
---@param OutVelocity FVector
function UQuatValueVelocityHelper:Get(Data, OutValue, OutVelocity) end
---@param Data FQuatValueVelocity
---@param Value FRotator
---@param Velocity FVector
function UQuatValueVelocityHelper:Activate(Data, Value, Velocity) end


---@class URotatorValueVelocityHelper : UObject
local URotatorValueVelocityHelper = {}

---@param Data FRotatorValueVelocity
---@param Value FRotator
---@param DeltaSeconds float
function URotatorValueVelocityHelper:Update(Data, Value, DeltaSeconds) end
---@param Data FRotatorValueVelocity
---@return FRotatorValueVelocity
function URotatorValueVelocityHelper:Inverse(Data) end
---@param Data FRotatorValueVelocity
---@param OutValue FRotator
---@param OutVelocity FRotator
function URotatorValueVelocityHelper:Get(Data, OutValue, OutVelocity) end
---@param Data FRotatorValueVelocity
---@param Value FRotator
---@param Velocity FRotator
function URotatorValueVelocityHelper:Activate(Data, Value, Velocity) end


---@class UScalarValueVelocityHelper : UObject
local UScalarValueVelocityHelper = {}

---@param Data FScalarValueVelocity
---@param Value float
---@param DeltaSeconds float
function UScalarValueVelocityHelper:Update(Data, Value, DeltaSeconds) end
---@param Data FScalarValueVelocity
---@return FScalarValueVelocity
function UScalarValueVelocityHelper:Inverse(Data) end
---@param Data FScalarValueVelocity
---@param OutValue float
---@param OutVelocity float
function UScalarValueVelocityHelper:Get(Data, OutValue, OutVelocity) end
---@param Data FScalarValueVelocity
---@param Value float
---@param Velocity float
function UScalarValueVelocityHelper:Activate(Data, Value, Velocity) end


---@class UVectorValueVelocityHelper : UObject
local UVectorValueVelocityHelper = {}

---@param Data FVectorValueVelocity
---@param Value FVector
---@param DeltaSeconds float
function UVectorValueVelocityHelper:Update(Data, Value, DeltaSeconds) end
---@param Data FVectorValueVelocity
---@return FVectorValueVelocity
function UVectorValueVelocityHelper:Inverse(Data) end
---@param Data FVectorValueVelocity
---@param OutValue FVector
---@param OutVelocity FVector
function UVectorValueVelocityHelper:Get(Data, OutValue, OutVelocity) end
---@param Data FVectorValueVelocity
---@param Value FVector
---@param Velocity FVector
function UVectorValueVelocityHelper:Activate(Data, Value, Velocity) end


