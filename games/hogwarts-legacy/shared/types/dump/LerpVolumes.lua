---@meta

---@class ALerpVolume : AVolume
---@field Interpolants TArray<ULerpVolumeInterpolant>
---@field Shape FVolumeCenterlineSettings
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bUnbounded boolean
---@field bEnabled boolean
local ALerpVolume = {}

---@param NewPriority float
function ALerpVolume:SetPriority(NewPriority) end


---@class ALerpVolumeAttached : AActor
---@field AttachVolume AVolume
---@field Interpolants TArray<ULerpVolumeInterpolant>
---@field Shape FVolumeCenterlineSettings
---@field BlendDomain FBlendDomain
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
local ALerpVolumeAttached = {}

---@param NewPriority float
function ALerpVolumeAttached:SetPriority(NewPriority) end
function ALerpVolumeAttached:Recompute() end


---@class ALerpVolumesSingleton : AActor
---@field Interpolants TArray<ULerpVolumeInterpolant>
---@field FinalInterpolants TArray<ULerpVolumeFinalInterpolant>
---@field Priority float
---@field InterpolantDefaults FLerpVolumesInterpolants
---@field CurrentState FLerpVolumesInterpolantsEvaluator
---@field LocalState FLerpVolumesInterpolantsEvaluator
---@field LastLocalStatePosition FVector
---@field bLastLocalStateValid boolean
local ALerpVolumesSingleton = {}

---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FVector
function ALerpVolumesSingleton:LerpVolumesSetWorldVectorDefault(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FVector
function ALerpVolumesSingleton:LerpVolumesSetWorldUnitDirectionDefault(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FName
function ALerpVolumesSingleton:LerpVolumesSetWorldTagDefaultName(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FString
function ALerpVolumesSingleton:LerpVolumesSetWorldTagDefault(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue float
function ALerpVolumesSingleton:LerpVolumesSetWorldScalarDefault(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue int32
function ALerpVolumesSingleton:LerpVolumesSetWorldIntegerDefault(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FLinearColor
function ALerpVolumesSingleton:LerpVolumesSetWorldColorDefault(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param bExists boolean
function ALerpVolumesSingleton:LerpVolumesIsWorldVector(WorldContextObject, VariableName, bExists) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param bExists boolean
function ALerpVolumesSingleton:LerpVolumesIsWorldUnitDirection(WorldContextObject, VariableName, bExists) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param bExists boolean
function ALerpVolumesSingleton:LerpVolumesIsWorldTag(WorldContextObject, VariableName, bExists) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param bExists boolean
function ALerpVolumesSingleton:LerpVolumesIsWorldScalar(WorldContextObject, VariableName, bExists) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param bExists boolean
function ALerpVolumesSingleton:LerpVolumesIsWorldInteger(WorldContextObject, VariableName, bExists) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param bExists boolean
function ALerpVolumesSingleton:LerpVolumesIsWorldColor(WorldContextObject, VariableName, bExists) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FVector
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetWorldVector(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FVector
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetWorldUnitDirection(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableType ELerpVolumesInterpolantType
function ALerpVolumesSingleton:LerpVolumesGetWorldType(WorldContextObject, VariableName, VariableType) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FString
---@param ValueMode ELerpVolumesGetTagValueMode
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetWorldTag(WorldContextObject, VariableName, VariableValue, ValueMode) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue float
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetWorldScalar(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue int32
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetWorldInteger(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param VariableName FName
---@param VariableValue FLinearColor
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetWorldColor(WorldContextObject, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param Position FVector
---@param VariableName FName
---@param VariableValue FVector
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetVectorAtPosition(WorldContextObject, Position, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param Position FVector
---@param VariableName FName
---@param VariableValue FVector
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetUnitDirectionAtPosition(WorldContextObject, Position, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param Position FVector
---@param VariableName FName
---@param VariableValue FString
---@param ValueMode ELerpVolumesGetTagValueMode
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetTagAtPosition(WorldContextObject, Position, VariableName, VariableValue, ValueMode) end
---@param WorldContextObject UObject
---@param Position FVector
---@param VariableName FName
---@param VariableValue float
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetScalarAtPosition(WorldContextObject, Position, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param Position FVector
---@param VariableName FName
---@param VariableValue int32
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetIntegerAtPosition(WorldContextObject, Position, VariableName, VariableValue) end
---@param WorldContextObject UObject
---@param Position FVector
---@param VariableName FName
---@param VariableValue FLinearColor
---@return boolean
function ALerpVolumesSingleton:LerpVolumesGetColorAtPosition(WorldContextObject, Position, VariableName, VariableValue) end


---@class FBoxBoundsInfo
---@field Center FVector
---@field Extent FVector
---@field Radius float
local FBoxBoundsInfo = {}



---@class FLerpVolumeInfo
---@field Volume AVolume
---@field Centerline FVolumeCenterlineSettings
---@field BlendRadius float
---@field BlendWeight float
---@field BoundingBox FBox
---@field bUnbounded boolean
local FLerpVolumeInfo = {}



---@class FLerpVolumeInterpolantInfo
---@field Volume FLerpVolumeInfo
---@field Pos FVector
---@field Depth float
---@field DepthBlend float
---@field DomainWeightBlend float
---@field FinalBlend float
---@field bIsCamera boolean
local FLerpVolumeInterpolantInfo = {}



---@class FLerpVolumesApplyWorldContext
---@field World UWorld
---@field sender AActor
---@field Receiver AActor
---@field MPCs TMap<UMaterialParameterCollection, UMaterialParameterCollectionInstance>
---@field NPCs TMap<UNiagaraParameterCollection, UNiagaraParameterCollectionInstance>
---@field Mode int32
local FLerpVolumesApplyWorldContext = {}



---@class FLerpVolumesAudioStateGroupLocation : FLerpVolumesAudioStateGroupNameBase
local FLerpVolumesAudioStateGroupLocation = {}


---@class FLerpVolumesAudioStateGroupName : FLerpVolumesAudioStateGroupNameBase
local FLerpVolumesAudioStateGroupName = {}


---@class FLerpVolumesAudioStateGroupNameBase
---@field Name FName
local FLerpVolumesAudioStateGroupNameBase = {}



---@class FLerpVolumesColor : FLerpVolumesInterpolantPCs
---@field Value FLinearColor
local FLerpVolumesColor = {}



---@class FLerpVolumesColorName : FLerpVolumesName
local FLerpVolumesColorName = {}


---@class FLerpVolumesInteger : FLerpVolumesInterpolantPCs
---@field Value int32
---@field MinValue int32
---@field MaxValue int32
---@field bClampMinValue boolean
---@field bClampMaxValue boolean
local FLerpVolumesInteger = {}



---@class FLerpVolumesIntegerName : FLerpVolumesName
local FLerpVolumesIntegerName = {}


---@class FLerpVolumesInterpolantBase
---@field HermesMessage FName
---@field WWiseRTPC FName
local FLerpVolumesInterpolantBase = {}



---@class FLerpVolumesInterpolantPCs : FLerpVolumesInterpolantBase
---@field MaterialParameterCollection UMaterialParameterCollection
---@field NiagaraParameterCollection UNiagaraParameterCollection
local FLerpVolumesInterpolantPCs = {}



---@class FLerpVolumesInterpolants
---@field Scalars TMap<FName, FLerpVolumesScalar>
---@field Integers TMap<FName, FLerpVolumesInteger>
---@field Vectors TMap<FName, FLerpVolumesVector>
---@field Directions TMap<FName, FLerpVolumesUnitDirection>
---@field Colors TMap<FName, FLerpVolumesColor>
---@field Tags TMap<FName, FLerpVolumesTag>
local FLerpVolumesInterpolants = {}



---@class FLerpVolumesInterpolantsEvaluator
---@field Interpolants FLerpVolumesInterpolants
---@field ContextData ULerpVolumesPresistentContextData
local FLerpVolumesInterpolantsEvaluator = {}



---@class FLerpVolumesLevelName : FLerpVolumesName
local FLerpVolumesLevelName = {}


---@class FLerpVolumesName
---@field Name FName
local FLerpVolumesName = {}



---@class FLerpVolumesRawLevelName : FLerpVolumesName
local FLerpVolumesRawLevelName = {}


---@class FLerpVolumesRemapLevelName
---@field InLevelName FString
---@field OutLevelName FString
---@field bExactMatch boolean
local FLerpVolumesRemapLevelName = {}



---@class FLerpVolumesReplaceLevelPrefix
---@field LevelPrefix FString
---@field ReplaceWith FString
local FLerpVolumesReplaceLevelPrefix = {}



---@class FLerpVolumesReplaceLevelSubString
---@field LevelSubString FString
---@field ReplaceWith FString
local FLerpVolumesReplaceLevelSubString = {}



---@class FLerpVolumesReplaceLevelSuffix
---@field LevelSuffix FString
---@field ReplaceWith FString
local FLerpVolumesReplaceLevelSuffix = {}



---@class FLerpVolumesScalar : FLerpVolumesInterpolantPCs
---@field Value float
---@field MinValue float
---@field MaxValue float
---@field bClampMinValue boolean
---@field bClampMaxValue boolean
---@field bNormalizeValue boolean
local FLerpVolumesScalar = {}



---@class FLerpVolumesScalarName : FLerpVolumesName
local FLerpVolumesScalarName = {}


---@class FLerpVolumesTag : FLerpVolumesInterpolantBase
---@field DefaultValue FLerpVolumesTagEntry
---@field AlphaTransition float
---@field bForceFullHistory boolean
---@field bOnlySetDefaultWWiseRTPCIfNotEmpty boolean
---@field History TArray<FLerpVolumesTagEntry>
---@field DefaultValueMode ELerpVolumesTagValueMode
---@field RTPCValueMode ELerpVolumesTagValueMode
---@field HermesValueMode ELerpVolumesTagValueMode
local FLerpVolumesTag = {}



---@class FLerpVolumesTagEntry
---@field StringValue FString
---@field NameValue FName
local FLerpVolumesTagEntry = {}



---@class FLerpVolumesTagName : FLerpVolumesName
local FLerpVolumesTagName = {}


---@class FLerpVolumesUnitDirection : FLerpVolumesInterpolantPCs
---@field Value FVector
local FLerpVolumesUnitDirection = {}



---@class FLerpVolumesUnitDirectionName : FLerpVolumesName
local FLerpVolumesUnitDirectionName = {}


---@class FLerpVolumesVector : FLerpVolumesInterpolantPCs
---@field Value FVector
local FLerpVolumesVector = {}



---@class FLerpVolumesVectorName : FLerpVolumesName
local FLerpVolumesVectorName = {}


---@class FLerpVolumesWorldInfo
---@field Singleton ALerpVolumesSingleton
---@field LocalEvaluators TArray<ULerpVolumesLocalEvaluationComponent>
---@field Volumes TArray<TWeakObjectPtr<UObject>>
local FLerpVolumesWorldInfo = {}



---@class FVolumeCenterlineSettings
---@field Mode EVolumeCenterlineMode
---@field CeilingFlatness float
---@field FloorFlatness float
local FVolumeCenterlineSettings = {}



---@class ILerpVolumeInterface : IInterface
local ILerpVolumeInterface = {}


---@class ULerpVolumeColorDayNightInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesColorName
---@field DayValue FLinearColor
---@field NightValue FLinearColor
local ULerpVolumeColorDayNightInterpolant = {}



---@class ULerpVolumeColorIndoorsOutdoorsInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesColorName
---@field IndoorsValue FLinearColor
---@field OutdoorsValue FLinearColor
local ULerpVolumeColorIndoorsOutdoorsInterpolant = {}



---@class ULerpVolumeColorInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesColorName
---@field Value FLinearColor
local ULerpVolumeColorInterpolant = {}



---@class ULerpVolumeDefaultInterpolant : ULerpVolumeTagInterpolantBase
local ULerpVolumeDefaultInterpolant = {}


---@class ULerpVolumeDiretionToCenterInterpolant : ULerpVolumeDynamicUnitDirectionInterpolant
local ULerpVolumeDiretionToCenterInterpolant = {}


---@class ULerpVolumeDiretionToWallInterpolant : ULerpVolumeDynamicUnitDirectionInterpolant
local ULerpVolumeDiretionToWallInterpolant = {}


---@class ULerpVolumeDistanceFromCenterInterpolant : ULerpVolumeDistanceMetersInterpolant
local ULerpVolumeDistanceFromCenterInterpolant = {}


---@class ULerpVolumeDistanceFromCenterXYInterpolant : ULerpVolumeDistanceMetersInterpolant
local ULerpVolumeDistanceFromCenterXYInterpolant = {}


---@class ULerpVolumeDistanceFromOppositeWallInterpolant : ULerpVolumeDistanceFromWallInterpolant
local ULerpVolumeDistanceFromOppositeWallInterpolant = {}


---@class ULerpVolumeDistanceFromWallInterpolant : ULerpVolumeDistanceMetersInterpolant
local ULerpVolumeDistanceFromWallInterpolant = {}


---@class ULerpVolumeDistanceMetersInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesScalarName
local ULerpVolumeDistanceMetersInterpolant = {}



---@class ULerpVolumeDistanceToCeilingInterpolant : ULerpVolumeDistanceMetersInterpolant
local ULerpVolumeDistanceToCeilingInterpolant = {}


---@class ULerpVolumeDistanceToFloorInterpolant : ULerpVolumeDistanceMetersInterpolant
local ULerpVolumeDistanceToFloorInterpolant = {}


---@class ULerpVolumeDynamicTagInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesTagName
local ULerpVolumeDynamicTagInterpolant = {}



---@class ULerpVolumeDynamicUnitDirectionInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesUnitDirectionName
local ULerpVolumeDynamicUnitDirectionInterpolant = {}



---@class ULerpVolumeFinalDefaultTagInterpolant : ULerpVolumeFinalTagInterpolant
local ULerpVolumeFinalDefaultTagInterpolant = {}


---@class ULerpVolumeFinalInterpolant : ULerpVolumeInterpolant
local ULerpVolumeFinalInterpolant = {}


---@class ULerpVolumeFinalLastLevelNameInterpolant : ULerpVolumeFinalTagInterpolant
---@field LevelNameInterpolant FLerpVolumesTagName
local ULerpVolumeFinalLastLevelNameInterpolant = {}



---@class ULerpVolumeFinalLastTagInterpolant : ULerpVolumeFinalTagInterpolant
---@field SourceInterpolant FLerpVolumesTagName
local ULerpVolumeFinalLastTagInterpolant = {}



---@class ULerpVolumeFinalLastValidTagInterpolant : ULerpVolumeFinalTagInterpolant
local ULerpVolumeFinalLastValidTagInterpolant = {}


---@class ULerpVolumeFinalLevelNameInterpolant : ULerpVolumeFinalTagInterpolant
local ULerpVolumeFinalLevelNameInterpolant = {}


---@class ULerpVolumeFinalTagInterpolant : ULerpVolumeFinalInterpolant
---@field Name FLerpVolumesTagName
local ULerpVolumeFinalTagInterpolant = {}



---@class ULerpVolumeFullLevelNameInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesTagName
---@field bExhaustiveLevels boolean
local ULerpVolumeFullLevelNameInterpolant = {}



---@class ULerpVolumeIntegerDayNightInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesIntegerName
---@field DayValue int32
---@field NightValue int32
local ULerpVolumeIntegerDayNightInterpolant = {}



---@class ULerpVolumeIntegerIndoorsOutdoorsInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesIntegerName
---@field IndoorsValue int32
---@field OutdoorsValue int32
local ULerpVolumeIntegerIndoorsOutdoorsInterpolant = {}



---@class ULerpVolumeIntegerInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesIntegerName
---@field Value int32
local ULerpVolumeIntegerInterpolant = {}



---@class ULerpVolumeInterpolant : UObject
local ULerpVolumeInterpolant = {}


---@class ULerpVolumeLevelAudioLocationNameInterpolant : ULerpVolumeLevelNameInterpolantBase
---@field Name FLerpVolumesTagName
---@field LevelName FLerpVolumesAudioStateGroupLocation
local ULerpVolumeLevelAudioLocationNameInterpolant = {}



---@class ULerpVolumeLevelNameInterpolant : ULerpVolumeLevelNameInterpolantBase
---@field Name FLerpVolumesTagName
---@field LevelName FLerpVolumesLevelName
local ULerpVolumeLevelNameInterpolant = {}



---@class ULerpVolumeLevelNameInterpolantBase : ULerpVolumeInterpolant
local ULerpVolumeLevelNameInterpolantBase = {}


---@class ULerpVolumeManualLevelNameInterpolant : ULerpVolumeLevelNameInterpolantBase
---@field Name FLerpVolumesTagName
---@field UseLevelName FName
local ULerpVolumeManualLevelNameInterpolant = {}



---@class ULerpVolumeNameInterpolant : ULerpVolumeTagInterpolantBase
---@field Value FName
local ULerpVolumeNameInterpolant = {}



---@class ULerpVolumeNameTagInterpolant : ULerpVolumeDynamicTagInterpolant
local ULerpVolumeNameTagInterpolant = {}


---@class ULerpVolumeRelativeIntegerInterpolant : ULerpVolumeIntegerInterpolant
local ULerpVolumeRelativeIntegerInterpolant = {}


---@class ULerpVolumeRelativeScalarInterpolant : ULerpVolumeScalarInterpolant
local ULerpVolumeRelativeScalarInterpolant = {}


---@class ULerpVolumeScalarDayNightInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesScalarName
---@field DayValue float
---@field NightValue float
local ULerpVolumeScalarDayNightInterpolant = {}



---@class ULerpVolumeScalarIndoorsOutdoorsInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesScalarName
---@field IndoorsValue float
---@field OutdoorsValue float
local ULerpVolumeScalarIndoorsOutdoorsInterpolant = {}



---@class ULerpVolumeScalarInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesScalarName
---@field Value float
local ULerpVolumeScalarInterpolant = {}



---@class ULerpVolumeTagDayNightInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesTagName
---@field DayValue FString
---@field NightValue FString
---@field DayValueName FName
---@field NightValueName FName
local ULerpVolumeTagDayNightInterpolant = {}



---@class ULerpVolumeTagIndoorsOutdoorsInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesTagName
---@field IndoorsValue FString
---@field OutdoorsValue FString
---@field IndoorsValueName FName
---@field OutdoorsValueName FName
local ULerpVolumeTagIndoorsOutdoorsInterpolant = {}



---@class ULerpVolumeTagInterpolant : ULerpVolumeTagInterpolantBase
---@field Value FString
---@field CachedNameValue FName
local ULerpVolumeTagInterpolant = {}



---@class ULerpVolumeTagInterpolantBase : ULerpVolumeInterpolant
---@field Name FLerpVolumesTagName
local ULerpVolumeTagInterpolantBase = {}



---@class ULerpVolumeUnitDirectionDayNightInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesUnitDirectionName
---@field DayValue FVector
---@field NightValue FVector
local ULerpVolumeUnitDirectionDayNightInterpolant = {}



---@class ULerpVolumeUnitDirectionIndoorsOutdoorsInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesUnitDirectionName
---@field IndoorsValue FVector
---@field OutdoorsValue FVector
local ULerpVolumeUnitDirectionIndoorsOutdoorsInterpolant = {}



---@class ULerpVolumeUnitDirectionInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesUnitDirectionName
---@field Value FVector
local ULerpVolumeUnitDirectionInterpolant = {}



---@class ULerpVolumeVectorDayNightInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesVectorName
---@field DayValue FVector
---@field NightValue FVector
local ULerpVolumeVectorDayNightInterpolant = {}



---@class ULerpVolumeVectorIndoorsOutdoorsInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesVectorName
---@field IndoorsValue FVector
---@field OutdoorsValue FVector
local ULerpVolumeVectorIndoorsOutdoorsInterpolant = {}



---@class ULerpVolumeVectorInterpolant : ULerpVolumeInterpolant
---@field Name FLerpVolumesVectorName
---@field Value FVector
local ULerpVolumeVectorInterpolant = {}



---@class ULerpVolumesBoundsCacheLevelRemapping : UDataAsset
---@field FastLevelNameMap TMap<FName, FName>
local ULerpVolumesBoundsCacheLevelRemapping = {}

function ULerpVolumesBoundsCacheLevelRemapping:RebuildAll() end


---@class ULerpVolumesFinalTagHistory : ULerpVolumesPresistentContextDataBase
---@field Current FLerpVolumesTagEntry
---@field Prior FLerpVolumesTagEntry
local ULerpVolumesFinalTagHistory = {}



---@class ULerpVolumesLastValidTag : ULerpVolumesPresistentContextDataBase
---@field LastValid FLerpVolumesTagEntry
local ULerpVolumesLastValidTag = {}



---@class ULerpVolumesLibrary : UDataAsset
---@field VolumeCollisionChannel ECollisionChannel
---@field Interpolants FLerpVolumesInterpolants
---@field DefaultInterpolants TArray<ULerpVolumeInterpolant>
---@field DefaultInterpolantsPriority float
---@field FinalInterpolants TArray<ULerpVolumeFinalInterpolant>
local ULerpVolumesLibrary = {}



---@class ULerpVolumesLocalEvaluationComponent : USceneComponent
---@field SecondsPerUpdate float
---@field DistanceThreshold float
---@field bUseDistanceThreshold boolean
---@field bUpdatesEnabled boolean
---@field EvaluationDelegate FLerpVolumesLocalEvaluationComponentEvaluationDelegate
---@field LocalLibrary ULerpVolumesLibrary
---@field LocalInterpolantDefaults FLerpVolumesInterpolants
---@field LocalState FLerpVolumesInterpolantsEvaluator
---@field UpdateCountdown float
---@field LastPosition FVector
---@field bLastPositionValid boolean
local ULerpVolumesLocalEvaluationComponent = {}

---@param Enable boolean
function ULerpVolumesLocalEvaluationComponent:SetUpdatesEnabled(Enable) end
---@param NewLocalLibrary ULerpVolumesLibrary
function ULerpVolumesLocalEvaluationComponent:SetLocalLibrary(NewLocalLibrary) end
---@param VariableName FName
---@return boolean
function ULerpVolumesLocalEvaluationComponent:IsLocalVector(VariableName) end
---@param VariableName FName
---@return boolean
function ULerpVolumesLocalEvaluationComponent:IsLocalUnitDirection(VariableName) end
---@param VariableName FName
---@return boolean
function ULerpVolumesLocalEvaluationComponent:IsLocalTag(VariableName) end
---@param VariableName FName
---@return boolean
function ULerpVolumesLocalEvaluationComponent:IsLocalScalar(VariableName) end
---@param VariableName FName
---@return boolean
function ULerpVolumesLocalEvaluationComponent:IsLocalInteger(VariableName) end
---@param VariableName FName
---@return boolean
function ULerpVolumesLocalEvaluationComponent:IsLocalColor(VariableName) end
---@param VariableName FName
---@param VariableValue FVector
---@return boolean
function ULerpVolumesLocalEvaluationComponent:GetLocalVector(VariableName, VariableValue) end
---@param VariableName FName
---@param VariableValue FVector
---@return boolean
function ULerpVolumesLocalEvaluationComponent:GetLocalUnitDirection(VariableName, VariableValue) end
---@param VariableName FName
---@param VariableType ELerpVolumesInterpolantType
function ULerpVolumesLocalEvaluationComponent:GetLocalType(VariableName, VariableType) end
---@param VariableName FName
---@param VariableValue FString
---@return boolean
function ULerpVolumesLocalEvaluationComponent:GetLocalTag(VariableName, VariableValue) end
---@param VariableName FName
---@param VariableValue float
---@return boolean
function ULerpVolumesLocalEvaluationComponent:GetLocalScalar(VariableName, VariableValue) end
---@param VariableName FName
---@param VariableValue int32
---@return boolean
function ULerpVolumesLocalEvaluationComponent:GetLocalInteger(VariableName, VariableValue) end
---@param VariableName FName
---@param VariableValue FLinearColor
---@return boolean
function ULerpVolumesLocalEvaluationComponent:GetLocalColor(VariableName, VariableValue) end
function ULerpVolumesLocalEvaluationComponent:ForceUpdate() end
---@return boolean
function ULerpVolumesLocalEvaluationComponent:AreUpdatesEnabled() end


---@class ULerpVolumesPresistentContextData : UObject
---@field DataMap TMap<FName, ULerpVolumesPresistentContextDataBase>
local ULerpVolumesPresistentContextData = {}



---@class ULerpVolumesPresistentContextDataBase : UObject
local ULerpVolumesPresistentContextDataBase = {}


