---@meta

---@class AFluidSimActor : AActor
---@field FluidSimComponent UFluidSimComponent
---@field FluidSimEmitter UFluidSimEmitterComponent
local AFluidSimActor = {}



---@class FCompiledFluidSimParams
---@field Params FFluidSimParams
---@field ColorMap UTexture2D
local FCompiledFluidSimParams = {}



---@class FFluidSimEmitterParams
---@field EmitterMultiplier float
---@field EmitterDir FVector4
---@field EmitterBias float
---@field MotionVectorStrength float
local FFluidSimEmitterParams = {}



---@class FFluidSimParams
---@field Enabled boolean
---@field DrawDebugBounds boolean
---@field Optimize boolean
---@field OptimizationThreshold float
---@field VolumeScale FVector
---@field ComputeDimensions FVector
---@field ColorCurve UCurveLinearColor
---@field ColorCurveScale float
---@field ColorIntensity float
---@field FadeEdges boolean
---@field BuoyancyGravity FVector
---@field LocalSpaceBuoyancyGravity boolean
---@field MotionVectorStrength float
---@field VolumeMotion boolean
---@field VelocityDissipation float
---@field SourceDissipation float
---@field Vorticity float
---@field VorticityTrails float
---@field TimeStep float
---@field iterations int32
---@field Density float
---@field SlowLighting boolean
---@field EdgeFadeScale float
---@field EdgeFadeBias float
local FFluidSimParams = {}



---@class UFluidSimBlueprintLibrary : UBlueprintFunctionLibrary
local UFluidSimBlueprintLibrary = {}


---@class UFluidSimComponent : USceneComponent
---@field FluidSimParams FFluidSimParams
---@field ColorMap UTexture2D
local UFluidSimComponent = {}

---@param VorticityTrailsIn float
function UFluidSimComponent:SetVorticityTrails(VorticityTrailsIn) end
---@param VorticityIn float
function UFluidSimComponent:SetVorticity(VorticityIn) end
---@param VolumeScaleIn FVector
function UFluidSimComponent:SetVolumeScale(VolumeScaleIn) end
---@param VolumeMotionIn boolean
function UFluidSimComponent:SetVolumeMotion(VolumeMotionIn) end
---@param VelocityDissipationIn float
function UFluidSimComponent:SetVelocityDissipation(VelocityDissipationIn) end
---@param TimeStepIn float
function UFluidSimComponent:SetTimeStep(TimeStepIn) end
---@param SourceDissipationIn float
function UFluidSimComponent:SetSourceDissipation(SourceDissipationIn) end
---@param MotionVectorStrengthIn float
function UFluidSimComponent:SetMotionVectorStrength(MotionVectorStrengthIn) end
---@param FadeEdgesIn boolean
function UFluidSimComponent:SetFadeEdges(FadeEdgesIn) end
---@param EnabledIn boolean
function UFluidSimComponent:SetEnabled(EnabledIn) end
---@param DrawDebugBoundsIn boolean
function UFluidSimComponent:SetDrawDebugBounds(DrawDebugBoundsIn) end
---@param DensityIn float
function UFluidSimComponent:SetDensity(DensityIn) end
---@param ComputeDimensionsIn FVector
function UFluidSimComponent:SetComputeDimensions(ComputeDimensionsIn) end
---@param ColorIntensityIn float
function UFluidSimComponent:SetColorIntensity(ColorIntensityIn) end
---@param ColorCurveScaleIn float
function UFluidSimComponent:SetColorCurveScale(ColorCurveScaleIn) end
---@param ColorCurveIn UCurveLinearColor
function UFluidSimComponent:SetColorCurve(ColorCurveIn) end
---@param BuoyancyGravityIn FVector
function UFluidSimComponent:SetBuoyancyGravity(BuoyancyGravityIn) end
---@return float
function UFluidSimComponent:GetVorticityTrails() end
---@return float
function UFluidSimComponent:GetVorticity() end
---@return FVector
function UFluidSimComponent:GetVolumeScale() end
---@return boolean
function UFluidSimComponent:GetVolumeMotion() end
---@return float
function UFluidSimComponent:GetVelocityDissipation() end
---@return float
function UFluidSimComponent:GetTimeStep() end
---@return float
function UFluidSimComponent:GetMotionVectorStrength() end
---@return boolean
function UFluidSimComponent:GetFadeEdges() end
---@return boolean
function UFluidSimComponent:GetEnabled() end
---@return boolean
function UFluidSimComponent:GetDrawDebugBounds() end
---@return float
function UFluidSimComponent:GetDensity() end
---@return FVector
function UFluidSimComponent:GetComputeDimensions() end
---@return float
function UFluidSimComponent:GetColorIntensity() end
---@return float
function UFluidSimComponent:GetColorCurveScale() end
---@return UCurveLinearColor
function UFluidSimComponent:GetColorCurve() end
---@return FVector
function UFluidSimComponent:GetBuoyancyGravity() end


---@class UFluidSimEmitterComponent : UStaticMeshComponent
---@field EmitterParams FFluidSimEmitterParams
local UFluidSimEmitterComponent = {}

---@param MotionVectorStrengthIn float
function UFluidSimEmitterComponent:SetMotionVectorStrength(MotionVectorStrengthIn) end
---@param EmitterPosIn FVector4
function UFluidSimEmitterComponent:SetEmitterPos(EmitterPosIn) end
---@param EmitterMultiplierIn float
function UFluidSimEmitterComponent:SetEmitterMultiplier(EmitterMultiplierIn) end
---@param EmitterDirIn FVector4
function UFluidSimEmitterComponent:SetEmitterDir(EmitterDirIn) end
---@param EmitterBiasIn float
function UFluidSimEmitterComponent:SetEmitterBias(EmitterBiasIn) end
---@return float
function UFluidSimEmitterComponent:GetMotionVectorStrength() end
---@return float
function UFluidSimEmitterComponent:GetEmitterMultiplier() end
---@return FVector4
function UFluidSimEmitterComponent:GetEmitterDir() end
---@return float
function UFluidSimEmitterComponent:GetEmitterBias() end


---@class UFluidSimRadialForceComponent : USphereComponent
---@field Force float
local UFluidSimRadialForceComponent = {}

---@param ForceIn float
function UFluidSimRadialForceComponent:SetRadialForce(ForceIn) end
---@return float
function UFluidSimRadialForceComponent:GetRadialForce() end


---@class UVectorFieldFluidSim : UVectorField
---@field SizeX int32
---@field SizeY int32
---@field SizeZ int32
local UVectorFieldFluidSim = {}



---@class UVectorFieldFluidSimComponent : UVectorFieldComponent
---@field FluidSimVectorField UVectorFieldFluidSim
local UVectorFieldFluidSimComponent = {}



