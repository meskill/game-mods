---@meta

---@class AAmbulatoryHUD : AAbleHUD
local AAmbulatoryHUD = {}

function AAmbulatoryHUD:ToggleAmbulatoryHUD() end
function AAmbulatoryHUD:OnIntegrate() end


---@class AAmbulatory_Character : AAble_Character
---@field AkEvent UAkAudioEvent
---@field FootPlantEffects UFootPlantEffects
---@field bIsBiped boolean
---@field bUseTurnAssist boolean
---@field bAbstractMobility boolean
---@field bTestNewMobilityMotions boolean
---@field bOnlyLockOnMode boolean
---@field MinimumMovementSpeed float
---@field MaximumMovementSpeed float
---@field SlowWalkMovementSpeed float
---@field WalkMovementSpeed float
---@field FastWalkMovementSpeed float
---@field JogMovementSpeed float
---@field SprintMovementSpeed float
---@field AmbulatoryData UAmbulatory_Data
---@field PathSpec FOdcPathSpec
---@field JumpStartHeight float
---@field JumpStartVelocity FVector
---@field Debug boolean
---@field LadderActor AActor
---@field WorldSpeedTracker FValueTracker
---@field CharacterTeleportedDelegate FAmbulatory_CharacterCharacterTeleportedDelegate
---@field LookAtTargetTracker UTargetTracker
---@field FaceTargetTracker UTargetTracker
---@field AimAtTargetTracker UTargetTracker
---@field SpeedModeTracker USpeedModeTracker
---@field SpeedModifierTracker USpeedModeTracker
---@field WadingWaterComponents TArray<UPrimitiveComponent>
---@field FixedWorldDirection FVector
---@field LedgeComponent TWeakObjectPtr<UPrimitiveComponent>
---@field m_navLinkUsingLedge boolean
---@field m_linkType ELinkType
---@field m_traceWallRadius float
---@field m_traceWallDropRadius float
---@field m_traceWallForward float
---@field m_traceWallHeightAdjust float
---@field m_traceLedgeRadius float
---@field m_traceLedgeIntoWallAdjust float
---@field m_traceLedgeUpAdjust float
---@field m_traceLedgeDownCast float
local AAmbulatory_Character = {}

function AAmbulatory_Character:StopWorldTurnInPlace() end
---@param WorldDirection FVector
function AAmbulatory_Character:StartWorldTurnInPlace(WorldDirection) end
function AAmbulatory_Character:SprintStop() end
---@param SpeedModType ESpeedModifierType::Type
function AAmbulatory_Character:SprintStart(SpeedModType) end
---@param MyMessage FString
---@param WorldContextObject UObject
---@param Duration float
function AAmbulatory_Character:ShowTimingMessage(MyMessage, WorldContextObject, Duration) end
---@param WorldSpeed float
---@param WorldDirection FVector
function AAmbulatory_Character:SetWorldSpeedAndDirection(WorldSpeed, WorldDirection) end
---@param WorldSpeed float
function AAmbulatory_Character:SetWorldSpeed(WorldSpeed) end
---@param bUseSpeedModifier boolean
function AAmbulatory_Character:SetUseSpeedModifier(bUseSpeedModifier) end
---@param InAbstractSpeed float
---@param InDirection FVector
---@param InSetMobilityStateBasedOnSpeed boolean
function AAmbulatory_Character:SetTargetSpeedAndDirection(InAbstractSpeed, InDirection, InSetMobilityStateBasedOnSpeed) end
---@param InAbstractSpeed float
---@param InSetMobilityStateBasedOnSpeed boolean
function AAmbulatory_Character:SetTargetSpeed(InAbstractSpeed, InSetMobilityStateBasedOnSpeed) end
---@param SpeedMode ETargetSpeedMode::Type
---@param SpeedModifier ETargetSpeedMode::Type
---@param SpeedPriority ETargetSpeedPriority::Type
function AAmbulatory_Character:SetSpeedMode(SpeedMode, SpeedModifier, SpeedPriority) end
---@param InMin float
---@param InMax float
function AAmbulatory_Character:SetMovementSpeeds(InMin, InMax) end
---@param Transform FTransform
function AAmbulatory_Character:SetMountTransform(Transform) end
---@param normal FVector
function AAmbulatory_Character:SetMountNormal(normal) end
---@param InMobilityModeState EMobilityModeState::Type
function AAmbulatory_Character:SetMobilityModeState(InMobilityModeState) end
---@param InMobilityActionState EMobilityActionState::Type
---@param bSetTargetSpeed boolean
function AAmbulatory_Character:SetMobilityActionState(InMobilityActionState, bSetTargetSpeed) end
---@param InType ELandingType::Type
function AAmbulatory_Character:SetLandingType(InType) end
---@param InType EJumpingType::Type
function AAmbulatory_Character:SetJumpingType(InType) end
---@param isIdle boolean
function AAmbulatory_Character:SetIsInIdle(isIdle) end
---@param InFlag boolean
function AAmbulatory_Character:SetInWaterVolume(InFlag) end
---@param InWorldDirection FVector
function AAmbulatory_Character:SetDesiredDirection(InWorldDirection) end
---@param InType EClimbingLedgeState::Type
function AAmbulatory_Character:SetClimbingLedgeState(InType) end
---@param InType EClimbingLadderState::Type
function AAmbulatory_Character:SetClimbingLadderState(InType) end
---@param SpeedMode ETargetSpeedMode::Type
---@param SpeedModifier ETargetSpeedMode::Type
function AAmbulatory_Character:SetBaseSpeedMode(SpeedMode, SpeedModifier) end
---@param InFlag boolean
function AAmbulatory_Character:Set_ForceTurnAndFace(InFlag) end
---@param SpeedPriority ETargetSpeedPriority::Type
function AAmbulatory_Character:RevertSpeedMode(SpeedPriority) end
function AAmbulatory_Character:RevertMobilityModeState() end
---@param bSetTargetSpeed boolean
function AAmbulatory_Character:RevertMobilityActionState(bSetTargetSpeed) end
---@param InWaterComponent UPrimitiveComponent
function AAmbulatory_Character:RemoveWadingComponent(InWaterComponent) end
---@param InAnimInstance UAnimInstance
function AAmbulatory_Character:JumpStarted(InAnimInstance) end
---@param InAnimInstance UAnimInstance
function AAmbulatory_Character:JumpFinished(InAnimInstance) end
---@param InWaterComponent UPrimitiveComponent
---@return boolean
function AAmbulatory_Character:IsWadingComponent(InWaterComponent) end
---@return boolean
function AAmbulatory_Character:IsUsingSpeedModifier() end
---@return int32
function AAmbulatory_Character:GetWadingComponentCount() end
---@return UPrimitiveComponent
function AAmbulatory_Character:GetWadingComponent() end
---@param OutState ETargetSpeedMode::Type
function AAmbulatory_Character:GetTargetSpeedModifier(OutState) end
---@return ESpeedModifierType::Type
function AAmbulatory_Character:GetSpeedModifierType() end
---@param OutMobilityActionState EMobilityActionState::Type
function AAmbulatory_Character:GetPreviousMobilityActionState(OutMobilityActionState) end
---@return FOdcPathSpec
function AAmbulatory_Character:GetPathSpec() end
---@param LedgeTransform FTransform
function AAmbulatory_Character:GetMountTransform(LedgeTransform) end
---@param LedgeNormal FVector
function AAmbulatory_Character:GetMountNormal(LedgeNormal) end
---@param OutMobilityModeState EMobilityModeState::Type
function AAmbulatory_Character:GetMobilityModeState(OutMobilityModeState) end
---@param InAnimInstance UAnimInstance
---@param OutString FString
function AAmbulatory_Character:GetMobilityActionStateName(InAnimInstance, OutString) end
---@param OutMobilityActionState EMobilityActionState::Type
function AAmbulatory_Character:GetMobilityActionState(OutMobilityActionState) end
---@return UTargetTracker
function AAmbulatory_Character:GetLookAtTargetTracker() end
---@return int32
function AAmbulatory_Character:GetLinkUsageFlags() end
---@param LedgeTransform FTransform
function AAmbulatory_Character:GetLedgeTransform(LedgeTransform) end
---@param LedgeNormal FVector
function AAmbulatory_Character:GetLedgeNormal(LedgeNormal) end
---@param OutType ELandingType::Type
function AAmbulatory_Character:GetLandingType(OutType) end
---@param OutType EJumpingType::Type
function AAmbulatory_Character:GetJumpingType(OutType) end
---@return boolean
function AAmbulatory_Character:GetIsMovementInput() end
---@return boolean
function AAmbulatory_Character:GetIsInIdle() end
---@return UTargetTracker
function AAmbulatory_Character:GetFaceTargetTracker() end
---@param OutType EClimbingLedgeState::Type
function AAmbulatory_Character:GetClimbingLedgeState(OutType) end
---@param OutType EClimbingLadderState::Type
function AAmbulatory_Character:GetClimbingLadderState(OutType) end
---@return int32
function AAmbulatory_Character:GetBlockageFlags() end
---@param OutState ETargetSpeedMode::Type
function AAmbulatory_Character:GetBaseSpeedMode(OutState) end
---@return UTargetTracker
function AAmbulatory_Character:GetAimAtTargetTracker() end
---@param InSceneComponent USceneComponent
function AAmbulatory_Character:DestroyAttachedSceneComponent(InSceneComponent) end
---@param InDirection FVector
---@param bInComputeDegrees boolean
---@return float
function AAmbulatory_Character:ComputeDesiredDirectionAngle(InDirection, bInComputeDegrees) end
---@param SourceTracker UTargetTracker
---@param DestTracker UTargetTracker
---@param bInComputeDegrees boolean
---@return float
function AAmbulatory_Character:ComputeAngleBetweenTargetTrackers(SourceTracker, DestTracker, bInComputeDegrees) end
---@param InDirection FVector
---@param InSourceForward FVector
---@param bInComputeDegrees boolean
---@return float
function AAmbulatory_Character:ComputeAngle(InDirection, InSourceForward, bInComputeDegrees) end
---@param DeltaRotation FRotator
function AAmbulatory_Character:CharacterRotatedBySupport(DeltaRotation) end
---@param InTransform FTransform
---@param InTag FName
---@return USceneComponent
function AAmbulatory_Character:AttachSceneComponent(InTransform, InTag) end
---@param WorldSpeed float
---@param InWorldDirection FVector
function AAmbulatory_Character:ApplySlideHorizontalMovement(WorldSpeed, InWorldDirection) end
---@param InMobilityModeState EMobilityModeState::Type
function AAmbulatory_Character:ApplyMobilityModeStateSpeeds(InMobilityModeState) end
---@return boolean
function AAmbulatory_Character:AmIMovingIntoStairs() end
---@return boolean
function AAmbulatory_Character:AmIMovingIntoSlopes() end
---@return boolean
function AAmbulatory_Character:AmIGoingUpStairs() end
---@return boolean
function AAmbulatory_Character:AmIGoingDownStairs() end
---@param InWaterComponent UPrimitiveComponent
function AAmbulatory_Character:AddWadingComponent(InWaterComponent) end


---@class FAmbulatoryHUDStyle : FSlateWidgetStyle
---@field CurrentActorTextStyle FTextBlockStyle
---@field ImpulseTextStyle FTextBlockStyle
---@field PendingLinearTextStyle FTextBlockStyle
---@field LinearVelocityTextStyle FTextBlockStyle
---@field MovementComponentVelocityTextStyle FTextBlockStyle
---@field MovementModeTextStyle FTextBlockStyle
---@field OverrideRootMotionTextStyle FTextBlockStyle
---@field HasRootMotionTextStyle FTextBlockStyle
---@field PerforminatorTextStyle FTextBlockStyle
---@field DampingTextStyle FTextBlockStyle
---@field AtRestTextStyle FTextBlockStyle
---@field TreeRowStyle FTableRowStyle
---@field HUDMargin FMargin
---@field TreeMargin FMargin
local FAmbulatoryHUDStyle = {}



---@class FAmbulatory_MobilityMode
---@field bApplyMovementSpeeds boolean
---@field MinimumMovementSpeed float
---@field MaximumMovementSpeed float
---@field SlowWalkTargetSpeed float
---@field WalkTargetSpeed float
---@field JogTargetSpeed float
---@field SprintTargetSpeed float
---@field UseStrafe boolean
local FAmbulatory_MobilityMode = {}



---@class FAvaMotionWarpingModifier
---@field Animation TWeakObjectPtr<UAnimSequenceBase>
---@field StartTime float
---@field EndTime float
---@field PreviousPosition float
---@field CurrentPosition float
---@field weight float
---@field bInLocalSpace boolean
---@field State EAvaMotionWarpingModifierState
local FAvaMotionWarpingModifier = {}



---@class FAvaMotionWarpingModifier_OrientToRequest : FAvaMotionWarpingModifier
local FAvaMotionWarpingModifier_OrientToRequest = {}


---@class FAvaMotionWarpingModifier_Scale : FAvaMotionWarpingModifier
---@field Scale FVector
local FAvaMotionWarpingModifier_Scale = {}



---@class FAvaMotionWarpingModifier_SkewWarp : FAvaMotionWarpingModifier_Warp
local FAvaMotionWarpingModifier_SkewWarp = {}


---@class FAvaMotionWarpingModifier_Warp : FAvaMotionWarpingModifier
---@field SyncPointName FName
---@field bWarpTranslation boolean
---@field bDisallowHorizontalStretching boolean
---@field bDisallowHorizontalSquishing boolean
---@field bIgnoreZAxis boolean
---@field bWarpRotation boolean
---@field RotationType EMotionWarpRotationType
---@field WarpRotationTimeMultiplier float
---@field CachedSyncPoint FAvaMotionWarpingSyncPoint
local FAvaMotionWarpingModifier_Warp = {}



---@class FAvaMotionWarpingSyncPoint
---@field Location FVector
---@field Rotation FQuat
local FAvaMotionWarpingSyncPoint = {}



---@class FAvaRootMotionWarper
---@field DefaultMotionWarpWindowFinders TArray<TSubclassOf<UAvaMotionWarpWindowFinder>>
---@field CharacterOwner TWeakObjectPtr<ACharacter>
---@field MotionWarpWindowFinders TArray<UAvaMotionWarpWindowFinder>
---@field SyncPoints TMap<FName, FAvaMotionWarpingSyncPoint>
local FAvaRootMotionWarper = {}



---@class FMotionTableEvent
---@field EventStates TMap<FName, FMotionTableEventState>
---@field StateToEventStateMap TMap<FName, FName>
local FMotionTableEvent = {}



---@class FMotionTableEventState
---@field TimeToEvent float
---@field TravelDistanceToEvent float
---@field FollowThroughDuration float
---@field FollowThroughTravelDistance float
---@field EventStateVariations TSet<FName>
local FMotionTableEventState = {}



---@class FMotionTableState
---@field bLoop boolean
---@field Duration float
---@field TravelDistance float
---@field Transitions TMap<FName, FMotionTableTransition>
local FMotionTableState = {}



---@class FMotionTableTransition
---@field TransitionDuration float
---@field TransitionTravelDistance float
---@field TransitionMarkerTimes TArray<FFloatInterval>
---@field TargetStateCycleTime float
local FMotionTableTransition = {}



---@class FMovementEventData
---@field MovementEventName FName
---@field MinApproachAngle float
---@field MaximumAngleForCommitment float
---@field TimeToLocationCurve FRuntimeFloatCurve
---@field TimeToRotationCurve FRuntimeFloatCurve
local FMovementEventData = {}



---@class FMovementPredictionSettings
---@field bEnablePrediction boolean
---@field PredictionDuration float
---@field MinJumpOnHeight float
---@field MaxJumpOnHeight float
---@field MinJumpDownHeight float
---@field JumpOverDistance float
---@field MaxGrazingAngle float
---@field DistanceBetweenProbes float
---@field TurnRate float
---@field bTimeSlice boolean
---@field bEnableLandingPrediction boolean
---@field bOnlyLandOnNavmesh boolean
---@field bWaterCollisionChannelIsSet boolean
---@field WaterCollisionChannel ECollisionChannel
---@field bDebugDelayBetweenUpdates boolean
---@field bDebugDrawTrajectory boolean
---@field bDebugDrawSensorInfo boolean
---@field SensorDrawDuration float
---@field bDebugDrawSweeps boolean
local FMovementPredictionSettings = {}



---@class FMovementSensorInfo
---@field SensorType EMovementSensorType
---@field Location FVector
---@field normal FVector
---@field MoveNormal FVector
---@field MoveTransform FTransform
---@field MoveVelocity FVector
---@field Time float
---@field TimeUntilImpact float
local FMovementSensorInfo = {}



---@class FSharedContinuousImpulseHelper
local FSharedContinuousImpulseHelper = {}


---@class FSurfaceTypeChanged
---@field LastSurfaceType EPhysicalSurface
---@field NewSurfaceType EPhysicalSurface
---@field normal FVector
---@field Friction float
local FSurfaceTypeChanged = {}



---@class FSurfaceTypeToVFX : FTableRowBase
---@field SurfaceTypeName FName
---@field VFX UParticleSystem
local FSurfaceTypeToVFX = {}



---@class FTraversalDetectionSettings
---@field MinLedgeHeight float
---@field MaxLedgeHeight float
---@field SweepRadius float
---@field SweepDistance float
---@field SweepLookAheadTime float
---@field VerticalTrajectoryLookAheadTime float
---@field LedgeMaxWallAngleToInput float
---@field LedgeCheckRadius float
---@field LedgeCheckHalfHeight float
---@field LedgeCheckTiltAngle float
---@field CapsuleSizeCheckRadius float
---@field CapsuleSizeCheckHalfHeight float
---@field CharacterCapsuleDefaultHalfHeight float
---@field MaxVaultDistance float
---@field VaultHeightPastObstacle float
---@field MaxWallHangAngle float
---@field BlockingWallStoppingDistance float
---@field MaxBlockingWallAngle float
---@field BlockingWallAngleHysteresis float
---@field BlockingWallCheckMaxWalkableFloorAngle float
local FTraversalDetectionSettings = {}



---@class FTraversalDropDownSettings
---@field bEnableJumpDown boolean
---@field bEnableTeeterOnEdge boolean
---@field MinJumpDownHeight float
---@field MinTeeterOnEdgeHeight float
---@field TeeterEdgeDistance float
---@field DeepWaterCollisionChannel ECollisionChannel
local FTraversalDropDownSettings = {}



---@class FTraversalLadderSettings
---@field LadderExtent FVector2D
---@field SweepLookAheadTime float
---@field SweepLookAheadTimeWhenJumping float
---@field SweepWidth float
---@field MountRungsBottom int32
---@field MountRungsTop int32
---@field ClimbAnimRungs int32
---@field CharacterFwdOffset float
local FTraversalLadderSettings = {}



---@class FTraversalMetricsSettings
---@field MaxNormalStepUpHeight float
---@field MaxHalfMeterStepUpHeight float
---@field MaxJumpUpOrVaultHeight float
---@field MaxTwoMeterClimbHeight float
---@field MaxThreeMeterClimbHeight float
---@field MaxSwimClimbHeight float
---@field MaxLandingLeapFrogHeight float
---@field MaxLandingLedgeWaistHeight float
---@field MaxLandingLedgeHangHeight float
---@field MaxJumpUpLedgeHeight float
---@field MaxAutoTraverseHeightOnGround float
---@field MaxAutoTraverseAngle float
local FTraversalMetricsSettings = {}



---@class FTraversalModeSnappingSettings
---@field MaxHorizontalDistance float
---@field MaxHorizontalDistanceNoInput float
---@field MaxTimeToLedge float
local FTraversalModeSnappingSettings = {}



---@class FTraversalSnappingSettings
---@field ModeSnappingSettings FTraversalModeSnappingSettings
---@field JumpVaultSnappingSettings FTraversalModeSnappingSettings
---@field AutoTraversalSnappingSettings FTraversalModeSnappingSettings
local FTraversalSnappingSettings = {}



---@class FTraversalSwimDiveSettings
---@field DeepWaterCollisionChannel ECollisionChannel
---@field FallIntoWaterMinSpeed float
---@field FallIntoWaterMinTimeToImpact float
---@field FallIntoWaterMaxTimeToImpact float
---@field FallIntoWaterMinWaterDepth float
---@field DiveIntoWaterFwdSpeed float
---@field DiveIntoWaterUpImpulse float
---@field DiveIntoWaterImpulseDelay float
---@field DiveIntoWaterMaxHeight float
---@field DiveIntoWaterMinWaterDepth float
local FTraversalSwimDiveSettings = {}



---@class FValueTracker
local FValueTracker = {}


---@class FWandCastInfo
---@field WandCastType EWandCastType::Type
---@field LastWandCastType EWandCastType::Type
---@field PreWandCastState EPreWandCastState::Type
---@field AnticipationWandCastState EPreWandCastState::Type
---@field LastWandCastState ELastWandCastState::Type
---@field TimeAtLastAttack float
---@field LastDiscreteAngle float
---@field LastBaseAttackIndex int32
---@field AttackCount int32
---@field bMelee boolean
---@field bComboFinisher boolean
---@field bTransitionAnimation boolean
local FWandCastInfo = {}



---@class IAmbulatory_AnimInstance_Interface : IInterface
local IAmbulatory_AnimInstance_Interface = {}

function IAmbulatory_AnimInstance_Interface:SetStartMoveTimeToCurrentTime() end
---@param TranslationOffset FVector
---@param RotationOffset FRotator
function IAmbulatory_AnimInstance_Interface:SetRootMotionOffsets(TranslationOffset, RotationOffset) end
---@param State boolean
function IAmbulatory_AnimInstance_Interface:SetPlayerIKState(State) end
---@param InType ELandingType::Type
function IAmbulatory_AnimInstance_Interface:SetLandingType(InType) end
---@param InType EJumpingType::Type
function IAmbulatory_AnimInstance_Interface:SetJumpingType(InType) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:SetIsViewAlignedWithDesiredDirection(InFlag) end
---@param InIsAim boolean
function IAmbulatory_AnimInstance_Interface:SetIsAim(InIsAim) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:SetIsActorAlignedWithDesiredDirection(InFlag) end
---@param State boolean
function IAmbulatory_AnimInstance_Interface:SetIKState(State) end
---@param State boolean
function IAmbulatory_AnimInstance_Interface:SetGlobalIKState(State) end
---@param InType EClimbingLedgeState::Type
function IAmbulatory_AnimInstance_Interface:SetClimbingLedgeState(InType) end
---@param InType EClimbingLadderState::Type
function IAmbulatory_AnimInstance_Interface:SetClimbingLadderState(InType) end
---@param bInFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_WandCastMelee(bInFlag) end
---@param InWalkRunLean float
function IAmbulatory_AnimInstance_Interface:Set_WalkRunLean(InWalkRunLean) end
---@param InSpeed float
function IAmbulatory_AnimInstance_Interface:Set_TrackingSpeed(InSpeed) end
---@param InDirection float
function IAmbulatory_AnimInstance_Interface:Set_StopTurnDirection(InDirection) end
---@param InDirection float
function IAmbulatory_AnimInstance_Interface:Set_StartTurnDirection(InDirection) end
---@param InSpeed float
function IAmbulatory_AnimInstance_Interface:Set_Speed(InSpeed) end
---@param InSpeed float
function IAmbulatory_AnimInstance_Interface:Set_ShortStepTrackingSpeed(InSpeed) end
---@param InPlayRate float
function IAmbulatory_AnimInstance_Interface:Set_PlayRate(InPlayRate) end
---@param InState EMobilityModeState::Type
function IAmbulatory_AnimInstance_Interface:Set_MobilityModeState(InState) end
---@param InState EMobilityActionState::Type
function IAmbulatory_AnimInstance_Interface:Set_MobilityActionState(InState) end
---@param InMaxSpeed float
function IAmbulatory_AnimInstance_Interface:Set_MaxSpeed(InMaxSpeed) end
---@param InDirection float
function IAmbulatory_AnimInstance_Interface:Set_LookAtDirection(InDirection) end
---@param InSpeed float
function IAmbulatory_AnimInstance_Interface:Set_LastDesiredWorldSpeed(InSpeed) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_IsTurningInPlace(InFlag) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_IsStrafing(InFlag) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_IsOverridenForCinematic(InFlag) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_IsMoving(InFlag) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_IsMovementInput(InFlag) end
---@param InFlag boolean
function IAmbulatory_AnimInstance_Interface:Set_ForceTurnAndFace(InFlag) end
---@param InSpeed float
function IAmbulatory_AnimInstance_Interface:Set_FixedSpeed(InSpeed) end
---@param InDirection float
function IAmbulatory_AnimInstance_Interface:Set_FixedDesiredDirection(InDirection) end
---@param InDesiredHorizontalBodyLean float
function IAmbulatory_AnimInstance_Interface:Set_DesiredHorizontalBodyLean(InDesiredHorizontalBodyLean) end
---@param InDesiredForwardBodyLean float
function IAmbulatory_AnimInstance_Interface:Set_DesiredForwardBodyLean(InDesiredForwardBodyLean) end
---@param InDirection float
function IAmbulatory_AnimInstance_Interface:Set_DesiredDirection(InDirection) end
---@param InDesiredBodyTurn float
function IAmbulatory_AnimInstance_Interface:Set_DesiredBodyTurn(InDesiredBodyTurn) end
---@param InAimLeanYaw float
function IAmbulatory_AnimInstance_Interface:Set_AimLeanYaw(InAimLeanYaw) end
---@param InAimLeanPitch float
function IAmbulatory_AnimInstance_Interface:Set_AimLeanPitch(InAimLeanPitch) end
function IAmbulatory_AnimInstance_Interface:Revert_MobilityModeState() end
function IAmbulatory_AnimInstance_Interface:Revert_MobilityActionState() end
function IAmbulatory_AnimInstance_Interface:InitRootMotionModifierVectors() end
---@return boolean
function IAmbulatory_AnimInstance_Interface:GetPlayerIKState() end
---@param OutType ELandingType::Type
function IAmbulatory_AnimInstance_Interface:GetLandingType(OutType) end
---@param OutType EJumpingType::Type
function IAmbulatory_AnimInstance_Interface:GetJumpingType(OutType) end
---@return boolean
function IAmbulatory_AnimInstance_Interface:GetIKState() end
---@return boolean
function IAmbulatory_AnimInstance_Interface:GetGlobalIKState() end
---@param OutType EClimbingLedgeState::Type
function IAmbulatory_AnimInstance_Interface:GetClimbingLedgeState(OutType) end
---@param OutType EClimbingLadderState::Type
function IAmbulatory_AnimInstance_Interface:GetClimbingLadderState(OutType) end
---@return boolean
function IAmbulatory_AnimInstance_Interface:Get_WandCastMelee() end
---@return float
function IAmbulatory_AnimInstance_Interface:Get_WalkRunLean() end
---@param OutDirection float
function IAmbulatory_AnimInstance_Interface:Get_StopTurnDirection(OutDirection) end
---@param OutDirection float
function IAmbulatory_AnimInstance_Interface:Get_StartTurnDirection(OutDirection) end
---@param OutSpeed float
function IAmbulatory_AnimInstance_Interface:Get_Speed(OutSpeed) end
---@param OutState EMobilityModeState::Type
function IAmbulatory_AnimInstance_Interface:Get_PrevMobilityModeState(OutState) end
---@param OutState EMobilityActionState::Type
function IAmbulatory_AnimInstance_Interface:Get_PrevMobilityActionState(OutState) end
---@param OutPlayRate float
function IAmbulatory_AnimInstance_Interface:Get_PlayRate(OutPlayRate) end
---@param OutState EMobilityModeState::Type
function IAmbulatory_AnimInstance_Interface:Get_MobilityModeState(OutState) end
---@param OutState EMobilityActionState::Type
function IAmbulatory_AnimInstance_Interface:Get_MobilityActionState(OutState) end
---@param OutMaxSpeed float
function IAmbulatory_AnimInstance_Interface:Get_MaxSpeed(OutMaxSpeed) end
---@param OutDirection float
function IAmbulatory_AnimInstance_Interface:Get_LookAtDirection(OutDirection) end
---@param OutAimLeanYaw float
---@param OutAimLeanPitch float
function IAmbulatory_AnimInstance_Interface:Get_Lean(OutAimLeanYaw, OutAimLeanPitch) end
---@param OutSpeed float
function IAmbulatory_AnimInstance_Interface:Get_LastDesiredWorldSpeed(OutSpeed) end
---@param OutFlag boolean
function IAmbulatory_AnimInstance_Interface:Get_IsTurningInPlace(OutFlag) end
---@param OutFlag boolean
function IAmbulatory_AnimInstance_Interface:Get_IsMoving(OutFlag) end
---@param OutFlag boolean
function IAmbulatory_AnimInstance_Interface:Get_IsMovementInput(OutFlag) end
---@param OutSpeed float
function IAmbulatory_AnimInstance_Interface:Get_FixedSpeed(OutSpeed) end
---@param OutDirection float
function IAmbulatory_AnimInstance_Interface:Get_FixedDesiredDirection(OutDirection) end
---@param OutDirection float
function IAmbulatory_AnimInstance_Interface:Get_DesiredDirection(OutDirection) end


---@class IAmbulatory_Character_Interface : IInterface
local IAmbulatory_Character_Interface = {}

function IAmbulatory_Character_Interface:StopWorldTurnInPlace() end
---@param WorldDirection FVector
function IAmbulatory_Character_Interface:StartWorldTurnInPlace(WorldDirection) end
function IAmbulatory_Character_Interface:SprintStop() end
---@param SpeedModType ESpeedModifierType::Type
function IAmbulatory_Character_Interface:SprintStart(SpeedModType) end
---@param bUseSpeedModifier boolean
function IAmbulatory_Character_Interface:SetUseSpeedModifier(bUseSpeedModifier) end
---@param InFlag boolean
function IAmbulatory_Character_Interface:SetTurnAssist(InFlag) end
---@param SpeedMode ETargetSpeedMode::Type
---@param SpeedModifier ETargetSpeedMode::Type
---@param SpeedPriority ETargetSpeedPriority::Type
function IAmbulatory_Character_Interface:SetSpeedMode(SpeedMode, SpeedModifier, SpeedPriority) end
---@param InMin float
---@param InMax float
function IAmbulatory_Character_Interface:SetMovementSpeeds(InMin, InMax) end
---@param Transform FTransform
function IAmbulatory_Character_Interface:SetMountTransform(Transform) end
---@param normal FVector
function IAmbulatory_Character_Interface:SetMountNormal(normal) end
---@param InMobilityModeState EMobilityModeState::Type
function IAmbulatory_Character_Interface:SetMobilityModeState(InMobilityModeState) end
---@param InMobilityActionState EMobilityActionState::Type
---@param bSetTargetSpeed boolean
function IAmbulatory_Character_Interface:SetMobilityActionState(InMobilityActionState, bSetTargetSpeed) end
---@param InType ELandingType::Type
function IAmbulatory_Character_Interface:SetLandingType(InType) end
---@param InType EJumpingType::Type
function IAmbulatory_Character_Interface:SetJumpingType(InType) end
---@param IsInIdle boolean
function IAmbulatory_Character_Interface:SetIsInIdle(IsInIdle) end
---@param bInFlag boolean
function IAmbulatory_Character_Interface:SetInWaterVolume(bInFlag) end
---@param InWorldDirection FVector
function IAmbulatory_Character_Interface:SetDesiredDirection(InWorldDirection) end
---@param InType EClimbingLedgeState::Type
function IAmbulatory_Character_Interface:SetClimbingLedgeState(InType) end
---@param InType EClimbingLadderState::Type
function IAmbulatory_Character_Interface:SetClimbingLadderState(InType) end
---@param SpeedMode ETargetSpeedMode::Type
---@param SpeedModifier ETargetSpeedMode::Type
function IAmbulatory_Character_Interface:SetBaseSpeedMode(SpeedMode, SpeedModifier) end
---@param InFlag boolean
function IAmbulatory_Character_Interface:Set_ForceTurnAndFace(InFlag) end
---@param SpeedPriority ETargetSpeedPriority::Type
function IAmbulatory_Character_Interface:RevertSpeedMode(SpeedPriority) end
function IAmbulatory_Character_Interface:RevertMobilityModeState() end
---@param bSetTargetSpeed boolean
function IAmbulatory_Character_Interface:RevertMobilityActionState(bSetTargetSpeed) end
---@param InAnimInstance UAnimInstance
function IAmbulatory_Character_Interface:JumpStarted(InAnimInstance) end
---@param InAnimInstance UAnimInstance
function IAmbulatory_Character_Interface:JumpFinished(InAnimInstance) end
---@return boolean
function IAmbulatory_Character_Interface:IsUsingSpeedModifier() end
---@param OutState ETargetSpeedMode::Type
function IAmbulatory_Character_Interface:GetTargetSpeedModifier(OutState) end
---@return ESpeedModifierType::Type
function IAmbulatory_Character_Interface:GetSpeedModifierType() end
---@param OutMobilityActionState EMobilityActionState::Type
function IAmbulatory_Character_Interface:GetPreviousMobilityActionState(OutMobilityActionState) end
---@param LedgeTransform FTransform
function IAmbulatory_Character_Interface:GetMountTransform(LedgeTransform) end
---@param LedgeNormal FVector
function IAmbulatory_Character_Interface:GetMountNormal(LedgeNormal) end
---@param OutMobilityModeState EMobilityModeState::Type
function IAmbulatory_Character_Interface:GetMobilityModeState(OutMobilityModeState) end
---@param OutMobilityActionState EMobilityActionState::Type
function IAmbulatory_Character_Interface:GetMobilityActionState(OutMobilityActionState) end
---@return UTargetTracker
function IAmbulatory_Character_Interface:GetLookAtTargetTracker() end
---@param OutTransform FTransform
function IAmbulatory_Character_Interface:GetLedgeTransform(OutTransform) end
---@param OutVector FVector
function IAmbulatory_Character_Interface:GetLedgeNormal(OutVector) end
---@param OutType ELandingType::Type
function IAmbulatory_Character_Interface:GetLandingType(OutType) end
---@param OutType EJumpingType::Type
function IAmbulatory_Character_Interface:GetJumpingType(OutType) end
---@return boolean
function IAmbulatory_Character_Interface:GetIsMovementInput() end
---@return boolean
function IAmbulatory_Character_Interface:GetIsInIdle() end
---@return UTargetTracker
function IAmbulatory_Character_Interface:GetFaceTargetTracker() end
---@param OutType EClimbingLedgeState::Type
function IAmbulatory_Character_Interface:GetClimbingLedgeState(OutType) end
---@param OutType EClimbingLadderState::Type
function IAmbulatory_Character_Interface:GetClimbingLadderState(OutType) end
---@param OutState ETargetSpeedMode::Type
function IAmbulatory_Character_Interface:GetBaseSpeedMode(OutState) end
---@return UTargetTracker
function IAmbulatory_Character_Interface:GetAimAtTargetTracker() end
---@param InSceneComponent USceneComponent
function IAmbulatory_Character_Interface:DestroyAttachedSceneComponent(InSceneComponent) end
---@param InTransform FTransform
---@param InTag FName
---@return USceneComponent
function IAmbulatory_Character_Interface:AttachSceneComponent(InTransform, InTag) end
---@param InMobilityModeState EMobilityModeState::Type
function IAmbulatory_Character_Interface:ApplyMobilityModeStateSpeeds(InMobilityModeState) end


---@class UAmbulatoryAnimTask : UObject
local UAmbulatoryAnimTask = {}


---@class UAmbulatoryAnimationAssetChooser : UAblAnimationAssetChooser
local UAmbulatoryAnimationAssetChooser = {}


---@class UAmbulatoryHUDWidgetStyle : USlateWidgetStyleContainerBase
---@field AmbulatoryHUDWidgetStyle FAmbulatoryHUDStyle
local UAmbulatoryHUDWidgetStyle = {}



---@class UAmbulatoryTurnAssistAnimTask : UAmbulatoryAnimTask
---@field bUseFixedDirection boolean
---@field TurnAssistCurve UCurveFloat
---@field TurnAssistTimeMultiplier UCurveFloat
---@field ResetTimerWithinRange FVector2D
local UAmbulatoryTurnAssistAnimTask = {}



---@class UAmbulatory_AnimInstance : UAble_AnimInstance
---@field MobilityModeState EMobilityModeState::Type
---@field PrevMobilityModeState EMobilityModeState::Type
---@field bPartialBodyUseAbilitiesTest boolean
---@field MobilityActionState EMobilityActionState::Type
---@field PrevMobilityActionState EMobilityActionState::Type
---@field JumpType EJumpingType::Type
---@field LandType ELandingType::Type
---@field AnimSpeedType EAnimSpeedType::Type
---@field AnimMechanicType EAnimMechanicType::Type
---@field ClimbingLedgeState EClimbingLedgeState::Type
---@field ClimbingLadderState EClimbingLadderState::Type
---@field StrafeAngle float
---@field IsMoving boolean
---@field IsAim boolean
---@field IsMovementInput boolean
---@field IsTurningInPlace boolean
---@field IsStrafing boolean
---@field DesiredIsStrafing boolean
---@field ForceTurnAndFace boolean
---@field BlockedByWall boolean
---@field IsViewAlignedWithDesiredDirection boolean
---@field IsActorAlignedWithDesiredDirection boolean
---@field LookAtDirection float
---@field DesiredDirection float
---@field InterpedDesiredDirection float
---@field LastDesiredDirection float
---@field FixedDesiredDirection float
---@field StopTurnDirection float
---@field StartTurnDirection float
---@field WalkRunLean float
---@field Speed float
---@field FixedSpeed float
---@field TrackingSpeed float
---@field ShortStepTrackingSpeed float
---@field LastDesiredWorldSpeed float
---@field MaxSpeed float
---@field PlayRate float
---@field DesiredForwardBodyLean float
---@field DesiredHorizontalBodyLean float
---@field DesiredBodyTurn float
---@field GameTimeAtStartMove float
---@field GameTimeAtStopMove float
---@field AimLeanYaw float
---@field AimLeanPitch float
---@field JumpHeight float
---@field IsFlicked boolean
---@field IsOverridenForCinematic boolean
---@field IsInIdle boolean
---@field LookAtTargetPitch float
---@field LookAtTargetYaw float
---@field LookAtTargetLocation FVector
---@field HasLookAtTarget boolean
---@field ImpactDirection FVector
---@field bUsingStairsAnims boolean
---@field WandCastInfo FWandCastInfo
local UAmbulatory_AnimInstance = {}

function UAmbulatory_AnimInstance:WandCastInfo_ClearAttackCount() end
---@param PreWandCastState EPreWandCastState::Type
function UAmbulatory_AnimInstance:SetWandCastInfo_PreWandCastState(PreWandCastState) end
---@param AnticipationWandCastState EPreWandCastState::Type
function UAmbulatory_AnimInstance:SetWandCastInfo_AnticipationWandCastState(AnticipationWandCastState) end
function UAmbulatory_AnimInstance:SetStartMoveTimeToCurrentTime() end
---@param State boolean
function UAmbulatory_AnimInstance:SetPlayerIKState(State) end
---@param WandCastType EWandCastType::Type
function UAmbulatory_AnimInstance:SetNextWandCastType(WandCastType) end
---@param InType ELandingType::Type
function UAmbulatory_AnimInstance:SetLandingType(InType) end
---@param InType EJumpingType::Type
function UAmbulatory_AnimInstance:SetJumpingType(InType) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:SetIsViewAlignedWithDesiredDirection(InFlag) end
---@param InIsAim boolean
function UAmbulatory_AnimInstance:SetIsAim(InIsAim) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:SetIsActorAlignedWithDesiredDirection(InFlag) end
---@param State boolean
---@param Delay float
---@param EaseTime float
function UAmbulatory_AnimInstance:SetIKStateWithEaseIn(State, Delay, EaseTime) end
---@param State boolean
function UAmbulatory_AnimInstance:SetIKState(State) end
---@param State boolean
function UAmbulatory_AnimInstance:SetGlobalIKState(State) end
---@param InType EClimbingLedgeState::Type
function UAmbulatory_AnimInstance:SetClimbingLedgeState(InType) end
---@param InType EClimbingLadderState::Type
function UAmbulatory_AnimInstance:SetClimbingLadderState(InType) end
---@param bInFlag boolean
function UAmbulatory_AnimInstance:Set_WandCastMelee(bInFlag) end
---@param InWalkRunLean float
function UAmbulatory_AnimInstance:Set_WalkRunLean(InWalkRunLean) end
---@param InSpeed float
function UAmbulatory_AnimInstance:Set_TrackingSpeed(InSpeed) end
---@param InDirection float
function UAmbulatory_AnimInstance:Set_StopTurnDirection(InDirection) end
---@param InDirection float
function UAmbulatory_AnimInstance:Set_StartTurnDirection(InDirection) end
---@param InSpeed float
function UAmbulatory_AnimInstance:Set_Speed(InSpeed) end
---@param InSpeed float
function UAmbulatory_AnimInstance:Set_ShortStepTrackingSpeed(InSpeed) end
---@param InPlayRate float
function UAmbulatory_AnimInstance:Set_PlayRate(InPlayRate) end
---@param InState EMobilityModeState::Type
function UAmbulatory_AnimInstance:Set_MobilityModeState(InState) end
---@param InState EMobilityActionState::Type
function UAmbulatory_AnimInstance:Set_MobilityActionState(InState) end
---@param InMaxSpeed float
function UAmbulatory_AnimInstance:Set_MaxSpeed(InMaxSpeed) end
---@param InDirection float
function UAmbulatory_AnimInstance:Set_LookAtDirection(InDirection) end
---@param InSpeed float
function UAmbulatory_AnimInstance:Set_LastDesiredWorldSpeed(InSpeed) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:Set_IsTurningInPlace(InFlag) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:Set_IsStrafing(InFlag) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:Set_IsOverridenForCinematic(InFlag) end
---@param InIsMoving boolean
function UAmbulatory_AnimInstance:Set_IsMoving(InIsMoving) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:Set_IsMovementInput(InFlag) end
---@param InFlag boolean
function UAmbulatory_AnimInstance:Set_ForceTurnAndFace(InFlag) end
---@param InSpeed float
function UAmbulatory_AnimInstance:Set_FixedSpeed(InSpeed) end
---@param InDirection float
function UAmbulatory_AnimInstance:Set_FixedDesiredDirection(InDirection) end
---@param InDesiredHorizontalBodyLean float
function UAmbulatory_AnimInstance:Set_DesiredHorizontalBodyLean(InDesiredHorizontalBodyLean) end
---@param InDesiredForwardBodyLean float
function UAmbulatory_AnimInstance:Set_DesiredForwardBodyLean(InDesiredForwardBodyLean) end
---@param InDirection float
function UAmbulatory_AnimInstance:Set_DesiredDirection(InDirection) end
---@param InDesiredBodyTurn float
function UAmbulatory_AnimInstance:Set_DesiredBodyTurn(InDesiredBodyTurn) end
---@param InAimLeanYaw float
function UAmbulatory_AnimInstance:Set_AimLeanYaw(InAimLeanYaw) end
---@param InAimLeanPitch float
function UAmbulatory_AnimInstance:Set_AimLeanPitch(InAimLeanPitch) end
function UAmbulatory_AnimInstance:Revert_MobilityModeState() end
function UAmbulatory_AnimInstance:Revert_MobilityActionState() end
function UAmbulatory_AnimInstance:InitRootMotionModifierVectors() end
---@return EPreWandCastState::Type
function UAmbulatory_AnimInstance:GetWandCastInfo_AnticipationWandCastState() end
---@return boolean
function UAmbulatory_AnimInstance:GetPlayerIKState() end
---@param OutType ELandingType::Type
function UAmbulatory_AnimInstance:GetLandingType(OutType) end
---@param OutType EJumpingType::Type
function UAmbulatory_AnimInstance:GetJumpingType(OutType) end
---@return boolean
function UAmbulatory_AnimInstance:GetIKState() end
---@return boolean
function UAmbulatory_AnimInstance:GetGlobalIKState() end
---@param OutType EClimbingLedgeState::Type
function UAmbulatory_AnimInstance:GetClimbingLedgeState(OutType) end
---@param OutType EClimbingLadderState::Type
function UAmbulatory_AnimInstance:GetClimbingLadderState(OutType) end
---@return boolean
function UAmbulatory_AnimInstance:Get_WandCastMelee() end
---@return float
function UAmbulatory_AnimInstance:Get_WalkRunLean() end
---@param OutDirection float
function UAmbulatory_AnimInstance:Get_StopTurnDirection(OutDirection) end
---@param OutDirection float
function UAmbulatory_AnimInstance:Get_StartTurnDirection(OutDirection) end
---@param OutSpeed float
function UAmbulatory_AnimInstance:Get_Speed(OutSpeed) end
---@param OutState EMobilityModeState::Type
function UAmbulatory_AnimInstance:Get_PrevMobilityModeState(OutState) end
---@param OutState EMobilityActionState::Type
function UAmbulatory_AnimInstance:Get_PrevMobilityActionState(OutState) end
---@param OutPlayRate float
function UAmbulatory_AnimInstance:Get_PlayRate(OutPlayRate) end
---@param OutState EMobilityModeState::Type
function UAmbulatory_AnimInstance:Get_MobilityModeState(OutState) end
---@param OutState EMobilityActionState::Type
function UAmbulatory_AnimInstance:Get_MobilityActionState(OutState) end
---@param OutMaxSpeed float
function UAmbulatory_AnimInstance:Get_MaxSpeed(OutMaxSpeed) end
---@param OutDirection float
function UAmbulatory_AnimInstance:Get_LookAtDirection(OutDirection) end
---@param OutAimLeanYaw float
---@param OutAimLeanPitch float
function UAmbulatory_AnimInstance:Get_Lean(OutAimLeanYaw, OutAimLeanPitch) end
---@param OutSpeed float
function UAmbulatory_AnimInstance:Get_LastDesiredWorldSpeed(OutSpeed) end
---@param OutFlag boolean
function UAmbulatory_AnimInstance:Get_IsTurningInPlace(OutFlag) end
---@param InIsMoving boolean
function UAmbulatory_AnimInstance:Get_IsMoving(InIsMoving) end
---@param OutFlag boolean
function UAmbulatory_AnimInstance:Get_IsMovementInput(OutFlag) end
---@param OutSpeed float
function UAmbulatory_AnimInstance:Get_FixedSpeed(OutSpeed) end
---@param OutDirection float
function UAmbulatory_AnimInstance:Get_DesiredDirection(OutDirection) end
function UAmbulatory_AnimInstance:AnimNotify_TurnAssistOn() end
function UAmbulatory_AnimInstance:AnimNotify_TurnAssistOff() end
function UAmbulatory_AnimInstance:AnimNotify_StartMoveBegin() end
function UAmbulatory_AnimInstance:AnimNotify_SetStrafing() end
function UAmbulatory_AnimInstance:AnimNotify_MoveEnd() end
function UAmbulatory_AnimInstance:AnimNotify_MoveBegin() end
function UAmbulatory_AnimInstance:AnimNotify_LeftIdle() end
function UAmbulatory_AnimInstance:AnimNotify_LandingFinished() end
function UAmbulatory_AnimInstance:AnimNotify_JumpStarted() end
function UAmbulatory_AnimInstance:AnimNotify_JumpFinished() end
function UAmbulatory_AnimInstance:AnimNotify_IdleBegin() end


---@class UAmbulatory_Data : UDataAsset
---@field IdleTurnAssistCurve UCurveFloat
---@field TurnAssistCurve UCurveFloat
---@field SpeedCurve UCurveFloat
---@field PlayRateCurve UCurveFloat
---@field CPS2SpeedCurve UCurveFloat
---@field MobilityModes TMap<EMobilityModeState::Type, FAmbulatory_MobilityMode>
local UAmbulatory_Data = {}



---@class UAmbulatory_MovementComponent : UAble_MovementComponent
---@field bOverridePhysWalking boolean
---@field bComputeDistanceToSurfaceWhenFalling boolean
---@field WindVelocity FVector
---@field SuckHeight float
---@field bAllowTransitionalImpulse boolean
---@field AdditionalGravityScale float
---@field bUseNavMetricsForStepUp boolean
---@field bMitigateStuckFalling boolean
---@field bMitigateStuckPenetratingExtraMovementCapsule boolean
---@field bCanEverStepOutOfWater boolean
---@field bUseWaterSurfaceForStepUp boolean
---@field SwimDepth float
---@field WaterDepth float
---@field WaterLevel float
---@field FluidFriction float
---@field WaterTerminalVelocity float
---@field FlowForceScale float
---@field bApplyMaxFlowForceLimit boolean
---@field MaxFlowForce float
---@field bDisableSurfaceAcceleration boolean
---@field bSkipOverlaps boolean
---@field AvaRootMotionWarper FAvaRootMotionWarper
---@field AbleAbilityComponent UAblAbilityComponent
---@field SkeletalMeshComponent USkeletalMeshComponent
---@field AnimRootMotionAngularVelocity FRotator
local UAmbulatory_MovementComponent = {}

function UAmbulatory_MovementComponent:ZeroVelocity() end
function UAmbulatory_MovementComponent:ZeroLinearVelocity() end
---@param ImpulseContainer FSharedContinuousImpulseHelper
---@param InImpulse FVector
---@param bInIgnoreMass boolean
function UAmbulatory_MovementComponent:UpdateSharedContinuousImpulse(ImpulseContainer, InImpulse, bInIgnoreMass) end
---@param InImpulse FVector
---@return FSharedContinuousImpulseHelper
function UAmbulatory_MovementComponent:SetSharedContinuousLinearImpulse(InImpulse) end
---@param InFrictionOverride float
function UAmbulatory_MovementComponent:SetFrictionOverride(InFrictionOverride) end
---@param Impulse FVector
function UAmbulatory_MovementComponent:SetFallImpulse(Impulse) end
---@param bFlag boolean
function UAmbulatory_MovementComponent:SetAllowTransitionalImpulse(bFlag) end
---@param Delegate_SurfaceTypeChanged FHermesBindSurfaceTypeChangedDelegate_SurfaceTypeChanged
---@param Owner UObject
---@param Handle FHermesBPDelegateHandle
function UAmbulatory_MovementComponent:HermesBindSurfaceTypeChanged(Delegate_SurfaceTypeChanged, Owner, Handle) end
---@return float
function UAmbulatory_MovementComponent:GetSurfaceIncline() end
---@return FVector
function UAmbulatory_MovementComponent:GetFallLineFlat() end
---@return FVector
function UAmbulatory_MovementComponent:GetFallLine() end
---@return float
function UAmbulatory_MovementComponent:GetFallAlongSurfaceDistance() end
---@return EPhysicalSurface
function UAmbulatory_MovementComponent:GetCurrentSurfaceType() end
---@return FVector
function UAmbulatory_MovementComponent:GetAdditiveToRootMotionVelocity() end
---@param bFlatGround boolean
---@return FVector
function UAmbulatory_MovementComponent:ComputeSurfaceAccelerationDirection(bFlatGround) end
function UAmbulatory_MovementComponent:ClearTransitionalImpulse() end
---@param ImpulseContainer FSharedContinuousImpulseHelper
function UAmbulatory_MovementComponent:ClearSharedContinuousImpulse(ImpulseContainer) end
function UAmbulatory_MovementComponent:ClearLastSurfaceType() end
function UAmbulatory_MovementComponent:ClearAdditiveToRootMotionVelocity() end
---@param InAdditiveToRootMotionVelocity FVector
function UAmbulatory_MovementComponent:AddToRootMotionVelocity(InAdditiveToRootMotionVelocity) end


---@class UAmbulatory_TurnAssistOffNotify : UAnimNotifyState
local UAmbulatory_TurnAssistOffNotify = {}


---@class UAnimNotifyState_AvaMotionWarp : UAnimNotifyState
---@field RootMotionModifierConfig UAvaMotionWarpingModifierConfig
local UAnimNotifyState_AvaMotionWarp = {}

---@param InMotionWarper FAvaRootMotionWarper
---@param InWindowFinder UAvaMotionWarpWindowFinder
---@param InAnimation UAnimSequenceBase
---@param StartTime float
---@param EndTime float
function UAnimNotifyState_AvaMotionWarp:AddMotionWarpModifier(InMotionWarper, InWindowFinder, InAnimation, StartTime, EndTime) end


---@class UAnimNotify_MotionTableEvent : UAnimNotify
---@field Name FName
local UAnimNotify_MotionTableEvent = {}



---@class UAvaEmptyMotionWarpWindowFinder : UAvaMotionWarpWindowFinder
local UAvaEmptyMotionWarpWindowFinder = {}


---@class UAvaMotionWarpWindowFinder : UObject
local UAvaMotionWarpWindowFinder = {}


---@class UAvaMotionWarpingModifierConfig : UObject
local UAvaMotionWarpingModifierConfig = {}


---@class UAvaMotionWarpingModifierConfig_Scale : UAvaMotionWarpingModifierConfig
---@field Scale FVector
local UAvaMotionWarpingModifierConfig_Scale = {}

---@param InMotionWarper FAvaRootMotionWarper
---@param InWindowFinder UAvaMotionWarpWindowFinder
---@param InAnimation UAnimSequenceBase
---@param InStartTime float
---@param InEndTime float
---@param InScale FVector
function UAvaMotionWarpingModifierConfig_Scale:AddRootMotionModifierScale(InMotionWarper, InWindowFinder, InAnimation, InStartTime, InEndTime, InScale) end


---@class UAvaMotionWarpingModifierConfig_SkewWarp : UAvaMotionWarpingModifierConfig_Warp
local UAvaMotionWarpingModifierConfig_SkewWarp = {}

---@param InMotionWarper FAvaRootMotionWarper
---@param InWindowFinder UAvaMotionWarpWindowFinder
---@param InAnimation UAnimSequenceBase
---@param InStartTime float
---@param InEndTime float
---@param InSyncPointName FName
---@param bInWarpTranslation boolean
---@param bInIgnoreZAxis boolean
---@param bInWarpRotation boolean
---@param InRotationType EMotionWarpRotationType
---@param InWarpRotationTimeMultiplier float
function UAvaMotionWarpingModifierConfig_SkewWarp:AddMotionWarpingModifierSkewWarp(InMotionWarper, InWindowFinder, InAnimation, InStartTime, InEndTime, InSyncPointName, bInWarpTranslation, bInIgnoreZAxis, bInWarpRotation, InRotationType, InWarpRotationTimeMultiplier) end


---@class UAvaMotionWarpingModifierConfig_Warp : UAvaMotionWarpingModifierConfig
---@field SyncPointName FName
---@field bWarpTranslation boolean
---@field bDisallowHorizontalStretching boolean
---@field bDisallowHorizontalSquishing boolean
---@field bIgnoreZAxis boolean
---@field bWarpRotation boolean
---@field RotationType EMotionWarpRotationType
---@field WarpRotationTimeMultiplier float
local UAvaMotionWarpingModifierConfig_Warp = {}

---@param InMotionWarper FAvaRootMotionWarper
---@param InWindowFinder UAvaMotionWarpWindowFinder
---@param InAnimation UAnimSequenceBase
---@param InStartTime float
---@param InEndTime float
---@param InSyncPointName FName
---@param bInWarpTranslation boolean
---@param bInDisallowHorizontalStretching boolean
---@param bInDisallowHorizontalSquishing boolean
---@param bInIgnoreZAxis boolean
---@param bInWarpRotation boolean
---@param InRotationType EMotionWarpRotationType
---@param InWarpRotationTimeMultiplier float
function UAvaMotionWarpingModifierConfig_Warp:AddRootMotionModifierSimpleWarp(InMotionWarper, InWindowFinder, InAnimation, InStartTime, InEndTime, InSyncPointName, bInWarpTranslation, bInDisallowHorizontalStretching, bInDisallowHorizontalSquishing, bInIgnoreZAxis, bInWarpRotation, InRotationType, InWarpRotationTimeMultiplier) end


---@class UCurveClip : UCurveBase
---@field TimeToPhaseCurve FRichCurve
---@field PhaseToTimeCurve FRichCurve
---@field FootPlantsCurve FRichCurve
---@field VelocityCurves FRichCurve
---@field AccelerationCurves FRichCurve
local UCurveClip = {}

---@param InTime float
---@return FVector
function UCurveClip:GetVelocity(InTime) end
---@param InTime float
---@return EFootPlantEnum
function UCurveClip:GetFootPlants(InTime) end
---@param InTime float
---@return FVector
function UCurveClip:GetAcceleration(InTime) end


---@class UFacialAnimationAnimNotifyState : UAnimNotifyState
---@field FacialAnimation FFacialAnimation
---@field FacialAnimationPriority EManagedFacialAnimationPriority
local UFacialAnimationAnimNotifyState = {}



---@class UFacialEmotionAnimNotifyState : UAnimNotifyState
---@field FacialEmotion EFacialEmotion
---@field TransitionTime float
---@field FacialEmotionPriority EManagedFacialEmotionPriority
---@field AnimTags FGameplayTagContainer
local UFacialEmotionAnimNotifyState = {}



---@class UFacialEmotionInstanceData : UObject
local UFacialEmotionInstanceData = {}


---@class UFootPlantAnimNotify : UAnimNotify
---@field NotifyName FName
---@field ImpactTypeName FName
---@field FootPlant EFootPlantEnum
---@field bRegenerateOnCreatePhaseCurve boolean
---@field bIgnoreFootPlant boolean
---@field NotifyTime float
---@field TimeID float
---@field AudioMaxDistanceToListener float
local UFootPlantAnimNotify = {}



---@class UFootPlantEffects : UObject
---@field FootPlantOccurredDelegate FFootPlantEffectsFootPlantOccurredDelegate
---@field SurfaceTypeToVFXTable UDataTable
---@field TestVFX UParticleSystem
local UFootPlantEffects = {}



---@class UMotionTable : UDataAsset
---@field StateData TMap<FName, FMotionTableState>
---@field EventData TMap<FName, FMotionTableEvent>
---@field AliasStateNameMap TMap<FString, FName>
---@field AliasesWithVariations TSet<FString>
---@field AnimationStateNameMap TMap<FString, FName>
local UMotionTable = {}

---@param InStartState FName
---@param InEndState FName
---@return boolean
function UMotionTable:HasStateTransition(InStartState, InEndState) end
---@param InEventName FName
---@param InStartState FName
---@return boolean
function UMotionTable:HasEventTransition(InEventName, InStartState) end
---@param InAnimationName FString
---@return FName
function UMotionTable:GetVariationStateNameFromAnimation(InAnimationName) end
---@param InTimeToReachState float
---@param InEndState FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetTravelDistanceToState(InTimeToReachState, InEndState, InStartState, InCycleTime) end
---@param InTimeToReachEvent float
---@param InEventName FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetTravelDistanceToEvent(InTimeToReachEvent, InEventName, InStartState, InCycleTime) end
---@param InTimeToReachEvent float
---@param InEventName FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetTimeToReachEventBefore(InTimeToReachEvent, InEventName, InStartState, InCycleTime) end
---@param InEventName FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetTimeToReachEvent(InEventName, InStartState, InCycleTime) end
---@param InTimeToReachEndState float
---@param InEndState FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetTimeToReachEndStateBefore(InTimeToReachEndState, InEndState, InStartState, InCycleTime) end
---@param InEndState FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetTimeToReachEndState(InEndState, InStartState, InCycleTime) end
---@param InStartState FName
---@param InEndState FName
---@return float
function UMotionTable:GetStateTransitionTravelDistance(InStartState, InEndState) end
---@param InStartState FName
---@param InEndState FName
---@return float
function UMotionTable:GetStateTransitionDuration(InStartState, InEndState) end
---@param InAliasedStateName FString
---@return FName
function UMotionTable:GetStateNameFromAlias(InAliasedStateName) end
---@param InEventName FName
---@param InStartState FName
---@return FName
function UMotionTable:GetStateContainingEvent(InEventName, InStartState) end
---@param InTimeToReachEvent float
---@param InEventName FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetNearestTimeToReachEvent(InTimeToReachEvent, InEventName, InStartState, InCycleTime) end
---@param InTimeToReachEndState float
---@param InEndState FName
---@param InStartState FName
---@param InCycleTime float
---@return float
function UMotionTable:GetNearestTimeToReachEndState(InTimeToReachEndState, InEndState, InStartState, InCycleTime) end
---@param InEventName FName
---@param InStartState FName
---@return float
function UMotionTable:GetEventTransitionTravelDistance(InEventName, InStartState) end
---@param InEventName FName
---@param InStartState FName
---@return float
function UMotionTable:GetEventFollowThroughTravelDistance(InEventName, InStartState) end
---@param InEventName FName
---@param InStartState FName
---@return float
function UMotionTable:GetEventFollowThroughDuration(InEventName, InStartState) end
---@param InEventName FName
---@param InStartState FName
---@return float
function UMotionTable:GetEventCycleTime(InEventName, InStartState) end
---@param InAliasedStateName FString
---@return boolean
function UMotionTable:AliasHasVariations(InAliasedStateName) end


---@class UMotionWarpingUtilities : UBlueprintFunctionLibrary
local UMotionWarpingUtilities = {}

---@param Location FVector
---@param Rotation FRotator
---@return FAvaMotionWarpingSyncPoint
function UMotionWarpingUtilities:MakeMotionWarpingSyncPoint(Location, Rotation) end
---@param Animation UAnimSequenceBase
---@param StartTime float
---@param EndTime float
---@return FTransform
function UMotionWarpingUtilities:ExtractRootMotionFromAnimation(Animation, StartTime, EndTime) end
---@param SyncPoint FAvaMotionWarpingSyncPoint
---@param Location FVector
---@param Rotation FRotator
function UMotionWarpingUtilities:BreakMotionWarpingSyncPoint(SyncPoint, Location, Rotation) end


---@class UMovementPredictionComponent : UActorComponent
---@field Settings FMovementPredictionSettings
---@field MotionTable UMotionTable
---@field bEnableEventMatching boolean
---@field MovementEventData TMap<EMovementSensorType, FMovementEventData>
---@field MovementWarpingStrength float
---@field SteeringCorrectionStrength float
---@field SteeringCorrectionWeightOverTime FRuntimeFloatCurve
---@field FlightSteeringYawCorrectionWeightOverTime FRuntimeFloatCurve
---@field FlightSteeringPitchCorrectionWeightOverTime FRuntimeFloatCurve
---@field bDebugDrawMotionEvents boolean
local UMovementPredictionComponent = {}

---@param InType EMovementSensorType
function UMovementPredictionComponent:TriggerMovementEvent(InType) end
---@param InState FName
function UMovementPredictionComponent:SetMovementState(InState) end
---@return boolean
function UMovementPredictionComponent:IsLastEventFollowThroughComplete() end
---@param InEventName FName
---@param OutTimeUntilTransition float
---@return boolean
function UMovementPredictionComponent:GetTimeToEventTransition(InEventName, OutTimeUntilTransition) end
---@return float
function UMovementPredictionComponent:GetSteeringCorrectionAngle() end
---@param InTimeFromNow float
---@return FTransform
function UMovementPredictionComponent:GetPredictedUncorrectedTransform(InTimeFromNow) end
---@param InTimeFromNow float
---@return FTransform
function UMovementPredictionComponent:GetPredictedTransform(InTimeFromNow) end
---@param SensorTypes TArray<EMovementSensorType>
---@param InTimeFromNow float
---@param OutSensorInfo FMovementSensorInfo
---@return boolean
function UMovementPredictionComponent:GetNextSensorInfoOfTypes(SensorTypes, InTimeFromNow, OutSensorInfo) end
---@param SensorType EMovementSensorType
---@param InTimeFromNow float
---@param OutSensorInfo FMovementSensorInfo
---@return boolean
function UMovementPredictionComponent:GetNextSensorInfo(SensorType, InTimeFromNow, OutSensorInfo) end
---@param InGlancingAngleThresholdDegrees float
---@param OutSensorInfo FMovementSensorInfo
---@return boolean
function UMovementPredictionComponent:GetNextBlockingCollision(InGlancingAngleThresholdDegrees, OutSensorInfo) end
---@return FName
function UMovementPredictionComponent:GetMovementState() end
---@param OutType EMovementSensorType
---@param OutTimeToEvent float
---@return boolean
function UMovementPredictionComponent:GetMovementEventTarget(OutType, OutTimeToEvent) end
---@return float
function UMovementPredictionComponent:GetMovementAnimTime() end
---@param InInputRotation FRotator
---@return FRotator
function UMovementPredictionComponent:GetFlightSteeringCorrectionAngles(InInputRotation) end
---@param InEventName FName
---@param InCurrentState FName
---@param OutAnimTime float
---@return boolean
function UMovementPredictionComponent:GetEventFollowThroughAnimTime(InEventName, InCurrentState, OutAnimTime) end
---@param InEventName FName
---@param InCurrentState FName
---@param OutAnimTime float
---@return boolean
function UMovementPredictionComponent:GetEventAnimTime(InEventName, InCurrentState, OutAnimTime) end


---@class USpeedModeTracker : UObject
local USpeedModeTracker = {}

---@param InSpeedMode ETargetSpeedMode::Type
---@param InPriority ETargetSpeedPriority::Type
---@param bBroadcastChange boolean
function USpeedModeTracker:SetTargetSpeedMode(InSpeedMode, InPriority, bBroadcastChange) end
---@param InSpeedMode ETargetSpeedMode::Type
function USpeedModeTracker:SetBaseTargetSpeedMode(InSpeedMode) end
---@return ETargetSpeedMode::Type
function USpeedModeTracker:GetTargetSpeedMode() end
---@return ETargetSpeedMode::Type
function USpeedModeTracker:GetBaseTargetSpeedMode() end
---@param InPriority ETargetSpeedPriority::Type
---@param bBroadcastChange boolean
function USpeedModeTracker:ClearTargetSpeedMode(InPriority, bBroadcastChange) end


---@class UTargetTracker : UObject
---@field NotifyOfNewBestTarget FTargetTrackerNotifyOfNewBestTarget
---@field NotifyTargetListIsNowEmpty FTargetTrackerNotifyTargetListIsNowEmpty
---@field Targets TMap<ETargetID::Type, UTargetTypeBase>
local UTargetTracker = {}

---@param InTargetID ETargetID::Type
---@param InTargetToRemove UTargetTypeBase
function UTargetTracker:RemoveTargetByPtr(InTargetID, InTargetToRemove) end
---@param InTargetID ETargetID::Type
---@param bCheckForEmptyList boolean
function UTargetTracker:RemoveTarget(InTargetID, bCheckForEmptyList) end
---@return boolean
function UTargetTracker:IsTargetListEmptyThisFrame() end
---@return TMap<ETargetID::Type, UTargetTypeBase>
function UTargetTracker:GetTargets() end
---@param InTargetID ETargetID::Type
---@return FVector
function UTargetTracker:GetTargetLocation(InTargetID) end
---@param InTargetType ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:GetTargetByID(InTargetType) end
---@param InTargetID ETargetID::Type
---@return AActor
function UTargetTracker:GetTargetActor(InTargetID) end
---@param InTargetID ETargetID::Type
---@return float
function UTargetTracker:GetComputedPriority(InTargetID) end
---@return ETargetID::Type
function UTargetTracker:GetBestTargetID() end
---@return UTargetTypeBase
function UTargetTracker:GetBestTarget() end
---@param ProjectFromLocation FVector
---@param ProjectDistance float
---@return FVector
function UTargetTracker:ComputeTargetLocation(ProjectFromLocation, ProjectDistance) end
---@param SourceLocation FVector
---@param InTargetID ETargetID::Type
---@param bFlattenInXYPlane boolean
---@param bNormalize boolean
---@return FVector
function UTargetTracker:ComputeDirectionToTargetOfType(SourceLocation, InTargetID, bFlattenInXYPlane, bNormalize) end
---@param SourceLocation FVector
---@param bFlattenInXYPlane boolean
---@param bNormalize boolean
---@return FVector
function UTargetTracker:ComputeDirection(SourceLocation, bFlattenInXYPlane, bNormalize) end
---@param InActor AActor
---@param bFlattenInXYPlane boolean
---@return FVector
function UTargetTracker:ComputeCameraDirection(InActor, bFlattenInXYPlane) end
---@param InTargetType ETargetType::Type
---@return boolean
function UTargetTracker:AnyValidTargetsByType(InTargetType) end
---@param InTargetID ETargetID::Type
---@return boolean
function UTargetTracker:AnyValidTargetsByID(InTargetID) end
---@return boolean
function UTargetTracker:AnyValidTargets() end
---@param InStaticWorldDirection FVector
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_StaticWorldDirection(InStaticWorldDirection, InTargetID) end
---@param InTargetLocation FVector
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_Location(InTargetLocation, InTargetID) end
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_DesiredDirection(InTargetID) end
---@param TargetClass TSubclassOf<UTargetTypeBase>
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_Custom(TargetClass, InTargetID) end
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_CameraDirection(InTargetID) end
---@param InTargetActor AActor
---@param InTargetOffset FVector
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_ActorWithOffset(InTargetActor, InTargetOffset, InTargetID) end
---@param InTargetActor AActor
---@param InTargetID ETargetID::Type
---@return UTargetTypeBase
function UTargetTracker:AddTarget_Actor(InTargetActor, InTargetID) end


---@class UTargetTypeActor : UTargetTypeBase
local UTargetTypeActor = {}

---@param InTargetActor AActor
function UTargetTypeActor:SetTargetActor(InTargetActor) end
---@param InSocketName FName
function UTargetTypeActor:SetSocketName(InSocketName) end
---@param InActorOffset FVector
function UTargetTypeActor:SetActorOffset(InActorOffset) end
---@return AActor
function UTargetTypeActor:GetTargetActor() end
---@return FName
function UTargetTypeActor:GetSocketName() end
---@return FVector
function UTargetTypeActor:GetActorOffset() end


---@class UTargetTypeBase : UObject
local UTargetTypeBase = {}

---@param InExpirationTime float
function UTargetTypeBase:SetExpirationTime(InExpirationTime) end
---@param InPriority float
function UTargetTypeBase:SetComputedPriority(InPriority) end
---@return ETargetType::Type
function UTargetTypeBase:GetTargetType() end
---@return float
function UTargetTypeBase:GetExpirationTime() end
---@return float
function UTargetTypeBase:GetComputedPriority() end


---@class UTargetTypeCamera : UTargetTypeBase
local UTargetTypeCamera = {}

---@param InPlayerCameraManager APlayerCameraManager
function UTargetTypeCamera:SetPlayerCameraManager(InPlayerCameraManager) end
---@return APlayerCameraManager
function UTargetTypeCamera:GetPlayerCameraManager() end


---@class UTargetTypeDesiredDirection : UTargetTypeBase
local UTargetTypeDesiredDirection = {}


---@class UTargetTypeLocation : UTargetTypeBase
local UTargetTypeLocation = {}

---@param InTargetLocation FVector
function UTargetTypeLocation:SetTargetLocation(InTargetLocation) end
---@return FVector
function UTargetTypeLocation:GetTargetLocation() end


---@class UTargetTypeStaticWorldDirection : UTargetTypeBase
local UTargetTypeStaticWorldDirection = {}

---@param InStaticWorldDirection FVector
function UTargetTypeStaticWorldDirection:SetStaticWorldDirection(InStaticWorldDirection) end


---@class UTraversalSettings : UDataAsset
---@field GroundTraversalSettings FTraversalDetectionSettings
---@field JumpFallTraversalSettings FTraversalDetectionSettings
---@field MetricsSettings FTraversalMetricsSettings
---@field SnappingSettings FTraversalSnappingSettings
---@field SwimDiveSettings FTraversalSwimDiveSettings
---@field LadderSettings FTraversalLadderSettings
---@field DropDownSettings FTraversalDropDownSettings
local UTraversalSettings = {}



