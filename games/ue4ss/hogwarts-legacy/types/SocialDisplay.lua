---@meta

---@class ASocialAIController : AAIController
local ASocialAIController = {}

---@param InSpeed float
function ASocialAIController:SetRequestedSpeed(InSpeed) end
---@param Dest FVector
---@param AcceptanceRadius float
---@param bStopOnOverlap boolean
---@param bUsePathfinding boolean
---@param bProjectDestinationToNavigation boolean
---@param bCanStrafe boolean
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@param bAllowPartialPaths boolean
---@return EPathFollowingRequestResult::Type
function ASocialAIController:PlayerMoveToDestination(Dest, AcceptanceRadius, bStopOnOverlap, bUsePathfinding, bProjectDestinationToNavigation, bCanStrafe, FilterClass, bAllowPartialPaths) end
---@return float
function ASocialAIController:GetRequestedSpeed() end
---@return float
function ASocialAIController:GetPathDistanceToGoal() end


---@class ASocialNavigatorController : ASocialTravelerController
local ASocialNavigatorController = {}


---@class ASocialSplineController : ASocialTravelerController
local ASocialSplineController = {}


---@class ASocialTravelerController : ASocialAIController
local ASocialTravelerController = {}


---@class FSocialAgent
---@field m_radius float
---@field m_Offset FVector
---@field m_alertOnApproach boolean
local FSocialAgent = {}



---@class FSocialMultiAgentMember : FSocialAgent
local FSocialMultiAgentMember = {}


---@class USocialAgentComponent : UActorComponent
---@field m_FOV float
---@field m_participatesInCollisionAvoidance boolean
local USocialAgentComponent = {}



---@class USocialAgentObstacleComponent : USocialAgentComponent
local USocialAgentObstacleComponent = {}


---@class USocialAgentPathFollowerComponent : USocialAgentPawnComponent
local USocialAgentPathFollowerComponent = {}


---@class USocialAgentPawnComponent : USocialAgentComponent
---@field m_avoidLOD int32
local USocialAgentPawnComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function USocialAgentPawnComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end


---@class USocialDisplayManager : UCrowdManagerBase
---@field m_lookAheadTime float
---@field m_borderLookAheadTime float
---@field m_logConstraintAllocation boolean
---@field m_logAgentPairs boolean
---@field m_enableAgentSelection boolean
---@field m_drawVelocityObstacles boolean
---@field m_drawOptimalConstraints boolean
---@field m_drawPenetratingConstraints boolean
---@field m_debugFrameCount uint32
---@field m_debugFrameOffset int32
local USocialDisplayManager = {}



---@class USocialFollowingComponent : UPreferredNavDataPathFollowingComponent
---@field m_agent USocialAgentPawnComponent
local USocialFollowingComponent = {}

---@param i_deltaSeconds float
---@param i_oldLocation FVector
---@param i_oldVelocity FVector
function USocialFollowingComponent:OnMovementUpdated(i_deltaSeconds, i_oldLocation, i_oldVelocity) end


---@class USocialMultiAgentComponent : UActorComponent
---@field MemberAgents TArray<FSocialMultiAgentMember>
local USocialMultiAgentComponent = {}



---@class USplineFollowingComponent : UPathFollowingComponent
---@field Agent USocialAgentPawnComponent
local USplineFollowingComponent = {}



