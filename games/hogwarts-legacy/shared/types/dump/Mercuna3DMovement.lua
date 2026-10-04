---@meta

---@class FMercuna3DMovementAccelerations
---@field Forward float
---@field Backward float
---@field Sideways float
local FMercuna3DMovementAccelerations = {}



---@class FMercuna3DMovementProperties
---@field MaxSpeed float
---@field MaxAccel FVector
---@field MaxAccelerations FMercuna3DMovementAccelerations
---@field MaxAngSpeed float
---@field MaxPitchRate float
---@field MaxYawRate float
---@field MaxRollRate float
---@field MaxAngAccel float
---@field bEnableWorldAccelerationLimits boolean
---@field WorldAccelerationLimits FMercuna3DMovementWorldAccelerations
local FMercuna3DMovementProperties = {}



---@class FMercuna3DMovementWorldAccelerations
---@field Upward float
---@field Downward float
local FMercuna3DMovementWorldAccelerations = {}



---@class IMercuna3DMovementInterface : IInterface
local IMercuna3DMovementInterface = {}


---@class UMercuna3DMovementComponent : UPawnMovementComponent
---@field MovementProperties FMercuna3DMovementProperties
---@field bPositionCorrected boolean
---@field PendingImpulseToApply FVector
---@field Acceleration FVector
---@field AngularVelocity FVector
---@field MaxSimulationTimeStep float
---@field MaxSimulationIterations int32
local UMercuna3DMovementComponent = {}

---@param NewVelocity FVector
function UMercuna3DMovementComponent:SetVelocity(NewVelocity) end
---@param NewAngVel FVector
function UMercuna3DMovementComponent:SetAngularVelocity(NewAngVel) end
---@return FVector
function UMercuna3DMovementComponent:GetLocalVelocity() end
---@return FRotator
function UMercuna3DMovementComponent:GetLocalRotationRate() end
---@param Impulse FVector
function UMercuna3DMovementComponent:AddImpulse(Impulse) end


