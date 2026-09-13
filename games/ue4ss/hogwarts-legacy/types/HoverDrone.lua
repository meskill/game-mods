---@meta

---@class AHoverDroneController : AActor
---@field OnControlModeChanged FHoverDroneControllerOnControlModeChanged
---@field OnToggleMiniMap FHoverDroneControllerOnToggleMiniMap
---@field ControlModePawnClass TSubclassOf<APawn>
---@field m_MinimapWidgetClass UClass
---@field m_pFollowActor AActor
---@field MyStruct FHoverDroneConfigStruct
---@field m_pInputComponent UInputComponent
---@field m_pPlayerController APlayerController
---@field JumpToBookmarkCameraFadeTime float
---@field JumpToBookmarkCameraHoldBlackTime float
local AHoverDroneController = {}

function AHoverDroneController:ToggleHUD() end
function AHoverDroneController:StartHoverDroneFromSystemMenu() end
---@param BoundsMin FVector
---@param BoundsMax FVector
function AHoverDroneController:SetPlayerBounds(BoundsMin, BoundsMax) end
---@param Max FVector
---@param Min FVector
function AHoverDroneController:GetPlayerBounds(Max, Min) end
---@return float
function AHoverDroneController:GetPawnAltitude() end
---@return APhoenixHoverDronePawn
function AHoverDroneController:GetDronePawn() end
---@return FString
function AHoverDroneController:GetControlModeString() end
---@return EHoverDroneControlMode::Type
function AHoverDroneController:GetControlMode() end


---@class AHoverDroneHUD : AHUD
local AHoverDroneHUD = {}


---@class APhoenixHoverDronePawn : ADefaultPawn
---@field MaxAccelToGravRatio float
---@field DroneTiltInterpSpeed_Accel float
---@field DroneTiltInterpSpeed_Decel float
---@field ZoomRate float
---@field FOVInterpSpeed float
---@field maxFOV float
---@field minFOV float
---@field SpeedAdjustment float
---@field SpeedAdjustRate float
---@field SpeedAdjustMin float
---@field SpeedAdjustMax float
---@field MinIconScale float
---@field MinIconDist float
---@field MaxIconDist float
---@field bAutoFocus boolean
---@field AutoFocusInterpSpeed float
---@field CameraApertureFStop float
---@field ScreenFringeFOVCurve UCurveVector
---@field TouchingActorEntryPosition FVector
---@field m_progressWidgetClass TSubclassOf<UUserWidget>
---@field m_followWidgetClass TSubclassOf<UUserWidget>
---@field m_filterComponentClass TSubclassOf<UActorComponent>
---@field m_MinimapWidgetClass UClass
---@field FoliageOverlapComponent UCapsuleComponent
---@field ActorOverlapComponent UCapsuleComponent
---@field m_pMinimapWidget UUserWidget
---@field m_pProgressWidget UUserWidget
---@field m_pFollowWidget UUserWidget
local APhoenixHoverDronePawn = {}

---@return boolean
function APhoenixHoverDronePawn:IsMaintainingConstantAltitude() end
---@return float
function APhoenixHoverDronePawn:GetAltitude() end
---@param InVal boolean
function APhoenixHoverDronePawn:AllowIcons(InVal) end
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function APhoenixHoverDronePawn:ActorOverlapEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param OverlapInfo FHitResult
function APhoenixHoverDronePawn:ActorOverlapBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, OverlapInfo) end


---@class FHoverDroneConfigStruct
---@field TestString FString
local FHoverDroneConfigStruct = {}



---@class UHoverDroneConfigObject : UObject
---@field m_HoverDroneControllerClass TSubclassOf<AActor>
local UHoverDroneConfigObject = {}



---@class UPhoenixHoverDroneMovementComponent : UFloatingPawnMovement
---@field RotAcceleration float
---@field RotDeceleration float
---@field MaxPitchRotSpeed float
---@field MaxYawRotSpeed float
---@field TurboRotAcceleration float
---@field TurboRotDeceleration float
---@field TurboMaxPitchRotSpeed float
---@field TurboMaxYawRotSpeed float
---@field TurboAccelerationRange FVector2D
---@field TurboAccelerationAltitudeRange FVector2D
---@field TurboDeceleration float
local UPhoenixHoverDroneMovementComponent = {}



