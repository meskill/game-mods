---@meta

---@class ADirectorCamController : APlayerController
local ADirectorCamController = {}


---@class ADirectorCamPawn : APawn
---@field MovementComponent UPawnMovementComponent
---@field CollisionComponent USphereComponent
---@field CameraComponent UCameraComponent
---@field bUsePhotoMode boolean
---@field PhotoModeConfig UPhotoModeConfig
local ADirectorCamPawn = {}

function ADirectorCamPawn:UpdateOptionsMenu() end
---@return boolean
function ADirectorCamPawn:ShouldShowFilmGrainOption() end
---@return boolean
function ADirectorCamPawn:ShouldShowChromaticAberrationOption() end
---@return boolean
function ADirectorCamPawn:ShouldEnablePoseOption() end
---@param bUsePhotoModePose boolean
---@param PoseAnimation UAnimSequenceBase
---@param bEquipWandForPose boolean
function ADirectorCamPawn:SetUsePhotoModePose(bUsePhotoModePose, PoseAnimation, bEquipWandForPose) end
---@param bUsePhotoModeValue boolean
function ADirectorCamPawn:SetUsePhotoModeExtraExposureCompensation(bUsePhotoModeValue) end
---@param bUsePhotoModeValue boolean
function ADirectorCamPawn:SetUsePhotoModeDisplaySaturation(bUsePhotoModeValue) end
---@param bUsePhotoModeValue boolean
function ADirectorCamPawn:SetUsePhotoModeDisplayContrast(bUsePhotoModeValue) end
---@param InUsePhotoMode boolean
function ADirectorCamPawn:SetUsePhotoMode(InUsePhotoMode) end
---@param InNewRoll float
function ADirectorCamPawn:SetRoll(InNewRoll) end
---@param NewValue float
function ADirectorCamPawn:SetPhotoModeExtraExposureCompensationValue(NewValue) end
---@param NewValue float
function ADirectorCamPawn:SetPhotoModeDisplaySaturationValue(NewValue) end
---@param NewValue float
function ADirectorCamPawn:SetPhotoModeDisplayContrastValue(NewValue) end
---@param bShouldHidePlayer boolean
function ADirectorCamPawn:SetHidePlayer(bShouldHidePlayer) end
---@param bShouldHideNPC boolean
function ADirectorCamPawn:SetHideNPC(bShouldHideNPC) end
---@param InNewFOV float
function ADirectorCamPawn:SetFOV(InNewFOV) end
---@param InFocusDistance float
function ADirectorCamPawn:SetFocusDistance(InFocusDistance) end
---@param InFocalLength int32
function ADirectorCamPawn:SetFocalLength(InFocalLength) end
function ADirectorCamPawn:OnToggleRuleOfThirds() end
function ADirectorCamPawn:OnPhotoModeReset() end
---@param Asset TSoftObjectPtr<UObject>
---@param ID FName
---@param bUseBlockingLoad boolean
function ADirectorCamPawn:LoadAsset(Asset, ID, bUseBlockingLoad) end
---@return boolean
function ADirectorCamPawn:GetUsePhotoMode() end
---@return FFloatRange
function ADirectorCamPawn:GetFOVRange() end
---@return int32
function ADirectorCamPawn:GetFocalLength() end
function ADirectorCamPawn:EnableCameraInput() end
function ADirectorCamPawn:ClosePhotoMode() end
function ADirectorCamPawn:ClearAndDisableCameraInput() end
---@param Asset UObject
---@param ID FName
function ADirectorCamPawn:BP_OnAssetLoaded(Asset, ID) end


---@class FPhotoModeFrame
---@field FrameName FString
---@field FrameImage TSoftObjectPtr<UTexture2D>
---@field LogoVerticalPadding float
---@field LogoHorizontalPadding float
local FPhotoModeFrame = {}



---@class FPhotoModeLogo
---@field FLogoName FString
---@field LogoImage TSoftObjectPtr<UTexture2D>
local FPhotoModeLogo = {}



---@class FPhotoModePose
---@field PoseName FString
---@field PoseAnimation TSoftObjectPtr<UAnimSequenceBase>
---@field bShouldEquipWand boolean
local FPhotoModePose = {}



---@class FPhotoModePostProcessEntry
---@field FilterName FString
---@field Filter TSoftObjectPtr<UPhotoModePostProcess>
---@field bShouldHideFilterStrengthSlider boolean
local FPhotoModePostProcessEntry = {}



---@class UCameraStackBehaviorUserDollyZoomInput : UCameraStackBehaviorDollyZoom
---@field ZoomSpeed float
---@field InputMappingCurve UCurveFloat
---@field MinGamepadInputForAcceleration float
---@field AccelerationSpeedFactor float
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field FilterFrequency float
---@field FilterDampingRatio float
---@field SensitivityOptionName FCameraOptionName
---@field AccelerationOptionName FCameraOptionName
---@field FilteringOptionName FCameraOptionName
---@field SwitchRollAndZoomInputOptionName FCameraOptionName
local UCameraStackBehaviorUserDollyZoomInput = {}



---@class UCameraStackBehaviorUserFocusDistanceInput : UCameraStackBehaviorBlend
---@field FocusDistanceSpeed float
---@field InputMappingCurve UCurveFloat
---@field MinGamepadInputForAcceleration float
---@field AccelerationSpeedFactor float
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field FilterFrequency float
---@field FilterDampingRatio float
---@field SensitivityOptionName FCameraOptionName
---@field AccelerationOptionName FCameraOptionName
---@field FilteringOptionName FCameraOptionName
local UCameraStackBehaviorUserFocusDistanceInput = {}



---@class UCameraStackBehaviorUserMoveInput : UCameraStackBehaviorBlend
---@field bMoveCameraBoomRelativeToArm boolean
---@field DollyTruckSpeed float
---@field PedestalSpeed float
---@field bDollyInLocalSpace boolean
---@field bTruckInLocalSpace boolean
---@field bPedestalInLocalSpace boolean
---@field InputMappingCurve UCurveFloat
---@field MinGamepadInputForAcceleration float
---@field AccelerationSpeedFactor float
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field FilterFrequency float
---@field FilterDampingRatio float
---@field SensitivityOptionName FCameraOptionName
---@field AccelerationOptionName FCameraOptionName
---@field PedestalSensitivityOptionName FCameraOptionName
---@field PedestalAccelerationOptionName FCameraOptionName
---@field FilteringOptionName FCameraOptionName
---@field DollyInLocalSpaceOptionName FCameraOptionName
---@field TruckInLocalSpaceOptionName FCameraOptionName
---@field PedestalInLocalSpaceOptionName FCameraOptionName
local UCameraStackBehaviorUserMoveInput = {}



---@class UCameraStackBehaviorUserRollInput : UCameraStackBehaviorBlend
---@field RollSpeed float
---@field InputMappingCurve UCurveFloat
---@field MinGamepadInputForAcceleration float
---@field AccelerationSpeedFactor float
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field SensitivityOptionName FCameraOptionName
---@field AccelerationOptionName FCameraOptionName
---@field SwitchRollAndZoomInputOptionName FCameraOptionName
local UCameraStackBehaviorUserRollInput = {}



---@class UCameraStackBehaviorUserZoomInput : UCameraStackBehaviorBlend
---@field ZoomSpeed float
---@field InputMappingCurve UCurveFloat
---@field MinGamepadInputForAcceleration float
---@field AccelerationSpeedFactor float
---@field AccelerationEaseSpeed float
---@field DecelerationEaseSpeed float
---@field FilterFrequency float
---@field FilterDampingRatio float
---@field SensitivityOptionName FCameraOptionName
---@field AccelerationOptionName FCameraOptionName
---@field FilteringOptionName FCameraOptionName
---@field SwitchRollAndZoomInputOptionName FCameraOptionName
local UCameraStackBehaviorUserZoomInput = {}



---@class UCameraStackDirectorCamArmOriginLockOnTargetGetter : UCameraStackSecondaryTargetGetterBlend
local UCameraStackDirectorCamArmOriginLockOnTargetGetter = {}


---@class UCameraStackDirectorCamFocusDistanceLockOnTargetGetter : UCameraStackSecondaryTargetGetterBlend
local UCameraStackDirectorCamFocusDistanceLockOnTargetGetter = {}


---@class UDirectorCamSettings : UObject
---@field PlayerControllerClass TSoftClassPtr<ADirectorCamController>
---@field PawnClass TSoftClassPtr<ADirectorCamPawn>
local UDirectorCamSettings = {}



---@class UPhotoModeConfig : UDataAsset
---@field PostProcessFilters TArray<FPhotoModePostProcessEntry>
---@field Frames TArray<FPhotoModeFrame>
---@field Logos TArray<FPhotoModeLogo>
---@field MalePoses TArray<FPhotoModePose>
---@field FemalePoses TArray<FPhotoModePose>
local UPhotoModeConfig = {}



---@class UPhotoModePostProcess : UDataAsset
---@field Settings FPostProcessSettings
local UPhotoModePostProcess = {}



