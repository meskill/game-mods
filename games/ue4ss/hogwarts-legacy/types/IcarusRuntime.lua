---@meta

---@class UBTDecorator_IcarusCanFly : UBTDecorator
local UBTDecorator_IcarusCanFly = {}


---@class UBTDecorator_IcarusIsFlying : UBTDecorator
local UBTDecorator_IcarusIsFlying = {}


---@class UBTDecorator_IcarusIsPerched : UBTDecorator
local UBTDecorator_IcarusIsPerched = {}


---@class UBTTask_Icarus_MoveTo : UBTTask_Mercuna_MoveTo
---@field bUsePathfinding boolean
---@field bUseDynamicAvoidance boolean
---@field bUseTurnSmoothing boolean
local UBTTask_Icarus_MoveTo = {}



---@class UIcarus3DMovementComponent : UMercuna3DMovementComponent
---@field OnBehaviorCompleted FIcarus3DMovementComponentOnBehaviorCompleted
---@field bCanEverFly boolean
---@field DefaultTakeOffAbility TSubclassOf<UAblAbility>
---@field DefaultTakeOffAbilityOverride TSubclassOf<UAblAbility>
---@field bStartFlying boolean
local UIcarus3DMovementComponent = {}

---@param Result EBehaviorResult::Type
function UIcarus3DMovementComponent:IcarusBehaviorComplete__DelegateSignature(Result) end
---@return float
function UIcarus3DMovementComponent:GetTurningCircleRadius() end
function UIcarus3DMovementComponent:EnableFlying() end
---@param bSwitchToGroundNavigation boolean
function UIcarus3DMovementComponent:DisableFlying(bSwitchToGroundNavigation) end
---@param TakeOffAbility TSubclassOf<UAblAbility>
---@param bTeleportIfNoTakeOffAbility boolean
function UIcarus3DMovementComponent:BehaviorTakeOffStart(TakeOffAbility, bTeleportIfNoTakeOffAbility) end
---@param Result EBehaviorResult::Type
function UIcarus3DMovementComponent:BehaviorStop(Result) end
---@param LocationToLandAt FVector
---@param Height float
function UIcarus3DMovementComponent:BehaviorLandingLocationStart(LocationToLandAt, Height) end
---@param ActorToLandAt AActor
---@param Height float
---@param ActorUpdateDistance float
function UIcarus3DMovementComponent:BehaviorLandingActorStart(ActorToLandAt, Height, ActorUpdateDistance) end
---@param CircleCenterLocation FVector
---@param Radius float
---@param Height float
---@param bClockwise boolean
---@param bLookAtCirclingLocation boolean
---@param LookAtMaxPitch float
function UIcarus3DMovementComponent:BehaviorCircleLocationStart(CircleCenterLocation, Radius, Height, bClockwise, bLookAtCirclingLocation, LookAtMaxPitch) end
---@param CircleCenterActor AActor
---@param Radius float
---@param Height float
---@param bClockwise boolean
---@param bLookAtCirclingActor boolean
---@param LookAtMaxPitch float
---@param ActorUpdateDistance float
function UIcarus3DMovementComponent:BehaviorCircleActorStart(CircleCenterActor, Radius, Height, bClockwise, bLookAtCirclingActor, LookAtMaxPitch, ActorUpdateDistance) end


---@class UIcarusConfig : UObject
---@field BehaviorCirclingMinimumValidPointsRatio float
local UIcarusConfig = {}



---@class UIcarusNavigationComponent : UMercunaNavigationComponent
---@field TurningCircleLookAheadTime float
---@field OriginalMoveRequest FMercunaMoveRequest
---@field CurrentPath UMercunaPath
---@field NewPath UMercunaPath
local UIcarusNavigationComponent = {}

---@param bInUseTurnSmoothing boolean
function UIcarusNavigationComponent:SetUseTurnSmoothing(bInUseTurnSmoothing) end
---@return boolean
function UIcarusNavigationComponent:GetUseTurnSmoothing() end


