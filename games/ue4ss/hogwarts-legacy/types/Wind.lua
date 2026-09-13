---@meta

---@class AWindAlign : AInfo
---@field Component UWindAlignComponent
local AWindAlign = {}



---@class AWindDeflector : AInfo
---@field Component UWindDeflectorComponent
local AWindDeflector = {}



---@class AWindDirectionalSourceWithEnvelope : AInfo
---@field Component UWindDirectionalSourceWithEnvelopeComponent
local AWindDirectionalSourceWithEnvelope = {}



---@class AWindMapActor : AInfo
---@field Component UWindMapComponent
local AWindMapActor = {}



---@class AWindPointSourceWithEnvelope : AInfo
---@field Component UWindPointSourceWithEnvelopeComponent
local AWindPointSourceWithEnvelope = {}



---@class AWindSourceDebugActor : AActor
---@field PointsXY int32
---@field PointsZ int32
---@field SpacingXY float
---@field SpacingZ float
---@field WindSpeedMinMax FVector2D
---@field WindSpeedLengthScaleMinMax FVector2D
---@field WindArrowMesh UStaticMesh
---@field WindArrowMeshMaterialOverride UMaterialInterface
---@field ScaleXYZ FVector
---@field bExactIndoors boolean
---@field bPerSampleInsideTesting boolean
---@field bWindSpeedLengthScaling boolean
---@field UpdatePump UWindSourceDebugUpdateComponent
---@field WindArrows UInstancedStaticMeshComponent
local AWindSourceDebugActor = {}



---@class AWindTrueNorth : AInfo
---@field Component UWindTrueNorthComponent
local AWindTrueNorth = {}



---@class AWindVortexSource : AInfo
---@field Component UWindSourceVortexComponent
local AWindVortexSource = {}



---@class FWindAffectedScale
---@field ScaleMinMax FVector2D
---@field WindSpeedMinMax FVector2D
local FWindAffectedScale = {}



---@class FWindAffectedScales
---@field ScaleX FWindAffectedScale
---@field ScaleY FWindAffectedScale
---@field ScaleZ FWindAffectedScale
---@field bUseScaleX boolean
---@field bUseScaleY boolean
---@field bUseScaleZ boolean
local FWindAffectedScales = {}



---@class UInsideOutside : UBlueprintFunctionLibrary
local UInsideOutside = {}

---@param WorldContextObject UObject
---@param Position FVector
---@param bExact boolean
---@return boolean
function UInsideOutside:PositionOutside(WorldContextObject, Position, bExact) end
---@param WorldContextObject UObject
---@param Position FVector
---@param bExact boolean
---@return boolean
function UInsideOutside:PositionInside(WorldContextObject, Position, bExact) end
---@param Actor AActor
---@return boolean
function UInsideOutside:ActorOutsideExactCached(Actor) end
---@param Actor AActor
---@return boolean
function UInsideOutside:ActorOutsideCoarseCached(Actor) end
---@param Actor AActor
---@return boolean
function UInsideOutside:ActorOutsideCached(Actor) end
---@param Actor AActor
---@return boolean
function UInsideOutside:ActorInsideExactCached(Actor) end
---@param Actor AActor
---@return boolean
function UInsideOutside:ActorInsideCoarseCached(Actor) end
---@param Actor AActor
---@return boolean
function UInsideOutside:ActorInsideCached(Actor) end


---@class UNiagaraDataInterfaceWindMap : UNiagaraDataInterface
local UNiagaraDataInterfaceWindMap = {}


---@class UWind : UBlueprintFunctionLibrary
local UWind = {}

---@param WindAzimuthDegrees float
---@param WindDirectionCompass EWindDirectionCompass
function UWind:WindWorldAzimuthToCompass(WindAzimuthDegrees, WindDirectionCompass) end
---@param WorldContextObject UObject
---@param WindDirection FVector
---@param WindAzimuthDegrees float
---@param WindAltitudeDegrees float
function UWind:WindDirectionToWorldAzimuthAltitude(WorldContextObject, WindDirection, WindAzimuthDegrees, WindAltitudeDegrees) end
---@param WorldContextObject UObject
---@param WindDirection FVector
---@param WindAzimuthDegrees float
function UWind:WindDirectionToWorldAzimuth(WorldContextObject, WindDirection, WindAzimuthDegrees) end
---@param WorldContextObject UObject
---@param WindDirection FVector
---@param WindDirectionCompass EWindDirectionCompass
function UWind:WindDirectionToCompass(WorldContextObject, WindDirection, WindDirectionCompass) end
---@param WindDirectionCompass EWindDirectionCompass
---@param CompassName FString
function UWind:WindDirectionCompassName(WindDirectionCompass, CompassName) end
---@param WorldContextObject UObject
---@param Position FVector
---@param WindDirection FVector
---@param WindSpeed float
---@param IncludeOutdoors float
function UWind:GetWindAtPosition(WorldContextObject, Position, WindDirection, WindSpeed, IncludeOutdoors) end
---@param SceneComponent USceneComponent
---@param WindDirection FVector
---@param WindSpeed float
---@param bIndoors boolean
function UWind:GetWindAtComponent(SceneComponent, WindDirection, WindSpeed, bIndoors) end
---@param Actor AActor
---@param WindDirection FVector
---@param WindSpeed float
---@param bIndoors boolean
function UWind:GetWindAtActor(Actor, WindDirection, WindSpeed, bIndoors) end
---@param BeaufortWindScale EBeaufortWindScale
---@param ScaleINdex int32
---@param ScaleName FString
---@param ScaleDescription FString
function UWind:BeaufortScaleName(BeaufortWindScale, ScaleINdex, ScaleName, ScaleDescription) end
---@param WindSpeed float
---@param BeaufortWindScale EBeaufortWindScale
function UWind:BeaufortScaleFromSpeed(WindSpeed, BeaufortWindScale) end


---@class UWindAffectedMaterialTickingComponent : UWindAffectedTickingComponent
---@field WindAffectedMaterial UMaterialInstanceDynamic
---@field WindAffectedParameters FWindAffectedParameters
local UWindAffectedMaterialTickingComponent = {}



---@class UWindAffectedOrientToTickingComponent : UWindAffectedTickingComponent
---@field bOrientToWind boolean
local UWindAffectedOrientToTickingComponent = {}



---@class UWindAffectedScaleOrientToTickingComponent : UWindAffectedOrientToTickingComponent
---@field WindScaling FWindAffectedScales
local UWindAffectedScaleOrientToTickingComponent = {}



---@class UWindAffectedTickingComponent : UWindAffectedComponent
---@field bTickBeforeBeginPlay boolean
local UWindAffectedTickingComponent = {}



---@class UWindAffectedUberTickingComponent : UWindAffectedScaleOrientToTickingComponent
---@field WindAffectedMaterial UMaterialInstanceDynamic
---@field WindAffectedParameters FWindAffectedParameters
local UWindAffectedUberTickingComponent = {}



---@class UWindAlignComponent : UWindSourceComponentBase
---@field Outdoors float
---@field Priority float
---@field Strength float
---@field SpeedMod float
---@field TransitionDistance float
---@field bBidirectional boolean
local UWindAlignComponent = {}

---@param InTransitionDistance float
function UWindAlignComponent:SetTransitionDistance(InTransitionDistance) end
---@param InNewStrength float
function UWindAlignComponent:SetStrength(InNewStrength) end
---@param InNewSpeed float
function UWindAlignComponent:SetSpeedMod(InNewSpeed) end
---@param InNewPriority float
function UWindAlignComponent:SetPriority(InNewPriority) end
---@param InNewOutdoors float
function UWindAlignComponent:SetOutdoors(InNewOutdoors) end
---@param bInNewBidirectional boolean
function UWindAlignComponent:SetBidirectional(bInNewBidirectional) end


---@class UWindDeflectorComponent : UWindSourceComponentBase
---@field Outdoors float
---@field Priority float
---@field Strength float
---@field SpeedMod float
---@field TransitionDistanceAlongDirection float
---@field FullEffectAlongNormal float
---@field bBidirectional boolean
---@field bFlipNormal boolean
local UWindDeflectorComponent = {}

---@param InNewTransitionDistanceAlongDirection float
function UWindDeflectorComponent:SetTransitionDistanceAlongDirection(InNewTransitionDistanceAlongDirection) end
---@param InNewStrength float
function UWindDeflectorComponent:SetStrength(InNewStrength) end
---@param InNewSpeed float
function UWindDeflectorComponent:SetSpeedMod(InNewSpeed) end
---@param InNewPriority float
function UWindDeflectorComponent:SetPriority(InNewPriority) end
---@param InNewOutdoors float
function UWindDeflectorComponent:SetOutdoors(InNewOutdoors) end
---@param InNewFullEffectAlongNormal float
function UWindDeflectorComponent:SetFullEffectAlongNormal(InNewFullEffectAlongNormal) end
---@param bInNewFlipNormal boolean
function UWindDeflectorComponent:SetFlipNormal(bInNewFlipNormal) end
---@param bInNewBidirectional boolean
function UWindDeflectorComponent:SetBidirectional(bInNewBidirectional) end


---@class UWindDirectionalSourceWithEnvelopeComponent : UWindDirectionalSourceComponent
---@field Envelope UWindEnvelopeController
---@field EnvelopeAffects EWindDirectionalEnvelopeAffects
---@field bAutoKillAfterEnvelope boolean
---@field TriggerEvent FWindDirectionalSourceWithEnvelopeComponentTriggerEvent
---@field StartTime float
---@field bActive boolean
local UWindDirectionalSourceWithEnvelopeComponent = {}

---@param InNewEnvelopeAffects EWindDirectionalEnvelopeAffects
function UWindDirectionalSourceWithEnvelopeComponent:SetEnvelopeAffects(InNewEnvelopeAffects) end
---@param InNewEnvelope UWindEnvelopeController
function UWindDirectionalSourceWithEnvelopeComponent:SetEnvelope(InNewEnvelope) end
---@param bInNewAutoKillAfterEnvelope boolean
function UWindDirectionalSourceWithEnvelopeComponent:SetAutoKillAfterEnvelope(bInNewAutoKillAfterEnvelope) end


---@class UWindEnvelopeController : UObject
local UWindEnvelopeController = {}


---@class UWindEnvelopeControllerASR : UWindEnvelopeController
---@field Delay float
---@field Attack float
---@field Sustain float
---@field Release float
---@field Amplitude float
---@field bLoop boolean
local UWindEnvelopeControllerASR = {}



---@class UWindEnvelopeControllerCurve : UWindEnvelopeControllerCurveBase
---@field Envelope UCurveFloat
local UWindEnvelopeControllerCurve = {}



---@class UWindEnvelopeControllerCurveBase : UWindEnvelopeController
local UWindEnvelopeControllerCurveBase = {}


---@class UWindEnvelopeControllerInlineCurve : UWindEnvelopeControllerCurveBase
---@field Envelope FRuntimeFloatCurve
local UWindEnvelopeControllerInlineCurve = {}



---@class UWindEnvelopeControllerOne : UWindEnvelopeControllerCurveBase
local UWindEnvelopeControllerOne = {}


---@class UWindGustControllerSimplexNoise : UWindGustController
---@field TimeScale float
---@field PositionScale FVector
---@field Mode EWindGustSimplexNoiseMode
---@field Seed float
---@field InvPositionScale FVector
local UWindGustControllerSimplexNoise = {}



---@class UWindGustControllerSimplexNoiseDirection : UWindGustControllerSimplexNoise
---@field NoiseRangeIn FVector2D
---@field GustRangeOut FVector2D
---@field Remap EWindGustCurveRemap
local UWindGustControllerSimplexNoiseDirection = {}



---@class UWindGustControllerSimplexNoiseSpeed : UWindGustControllerSimplexNoise
---@field NoiseRangeIn FVector2D
---@field GustRangeOut FVector2D
---@field Remap EWindGustCurveRemap
---@field SpeedOp EWindGustSpeedOp
local UWindGustControllerSimplexNoiseSpeed = {}



---@class UWindMapComponent : USceneComponent
local UWindMapComponent = {}


---@class UWindMapSubsystem : UWorldSubsystem
---@field MaterialParams UMaterialParameterCollection
---@field NiagaraParams UNiagaraParameterCollection
local UWindMapSubsystem = {}



---@class UWindPointSourceWithEnvelopeComponent : UWindPointSourceComponent
---@field Envelope UWindEnvelopeController
---@field EnvelopeAffects int32
---@field bAutoKillAfterEnvelope boolean
---@field TriggerEvent FWindPointSourceWithEnvelopeComponentTriggerEvent
---@field StartTime float
---@field bActive boolean
local UWindPointSourceWithEnvelopeComponent = {}

---@param InNewEnvelopeAffects EWindPointEnvelopeAffects
function UWindPointSourceWithEnvelopeComponent:UnsetEnvelopeAffects(InNewEnvelopeAffects) end
---@param InNewEnvelopeAffects EWindPointEnvelopeAffects
---@param bIsSet boolean
function UWindPointSourceWithEnvelopeComponent:TestEnvelopeAffects(InNewEnvelopeAffects, bIsSet) end
---@param InNewEnvelopeAffects EWindPointEnvelopeAffects
function UWindPointSourceWithEnvelopeComponent:SetEnvelopeAffects(InNewEnvelopeAffects) end
---@param InNewEnvelope UWindEnvelopeController
function UWindPointSourceWithEnvelopeComponent:SetEnvelope(InNewEnvelope) end
---@param bInNewAutoKillAfterEnvelope boolean
function UWindPointSourceWithEnvelopeComponent:SetAutoKillAfterEnvelope(bInNewAutoKillAfterEnvelope) end
function UWindPointSourceWithEnvelopeComponent:ClearEnvelopeAffects() end


---@class UWindSourceDebugUpdateComponent : UActorComponent
---@field UpdatesPerSecond int32
---@field bOnlyTickAfterBeginPlay boolean
local UWindSourceDebugUpdateComponent = {}



---@class UWindSourceVortexComponent : UWindSourceComponentBaseData
---@field Height float
---@field Radius float
---@field InnerRadius float
---@field Strength float
---@field Speed float
---@field Envelope UWindEnvelopeController
---@field EnvelopeAffects int32
---@field bAutoKillAfterEnvelope boolean
---@field TriggerEvent FWindSourceVortexComponentTriggerEvent
---@field StartTime float
---@field bActive boolean
local UWindSourceVortexComponent = {}

---@param InNewEnvelopeAffects EWindVortexEnvelopeAffects
function UWindSourceVortexComponent:UnsetEnvelopeAffects(InNewEnvelopeAffects) end
---@param InNewEnvelopeAffects EWindVortexEnvelopeAffects
---@param bIsSet boolean
function UWindSourceVortexComponent:TestEnvelopeAffects(InNewEnvelopeAffects, bIsSet) end
---@param InNewStrength float
function UWindSourceVortexComponent:SetStrength(InNewStrength) end
---@param InNewSpeed float
function UWindSourceVortexComponent:SetSpeed(InNewSpeed) end
---@param InNewRadius float
function UWindSourceVortexComponent:SetRadius(InNewRadius) end
---@param InNewInnerRadius float
function UWindSourceVortexComponent:SetInnerRadius(InNewInnerRadius) end
---@param InNewHeight float
function UWindSourceVortexComponent:SetHeight(InNewHeight) end
---@param InNewEnvelopeAffects EWindVortexEnvelopeAffects
function UWindSourceVortexComponent:SetEnvelopeAffects(InNewEnvelopeAffects) end
---@param InNewEnvelope UWindEnvelopeController
function UWindSourceVortexComponent:SetEnvelope(InNewEnvelope) end
---@param bInNewAutoKillAfterEnvelope boolean
function UWindSourceVortexComponent:SetAutoKillAfterEnvelope(bInNewAutoKillAfterEnvelope) end
function UWindSourceVortexComponent:ClearEnvelopeAffects() end


---@class UWindTrueNorthComponent : USceneComponent
local UWindTrueNorthComponent = {}


