---@meta

---@class AUsdStageActor : AActor
---@field RootLayer FFilePath
---@field InitialLoadSet EUsdInitialLoadSet
---@field PurposesToLoad int32
---@field RenderContext FName
---@field SceneComponent USceneComponent
---@field Time float
---@field StartTimeCode float
---@field EndTimeCode float
---@field TimeCodesPerSecond float
---@field LevelSequence ULevelSequence
---@field RootUsdTwin UUsdPrimTwin
---@field PrimsToAnimate TSet<FString>
---@field ObjectsToWatch TMap<UObject, FString>
---@field AssetCache UUsdAssetCache
---@field Transactor UUsdTransactor
local AUsdStageActor = {}

---@param InTime float
function AUsdStageActor:SetTime(InTime) end
---@param RootFilePath FString
function AUsdStageActor:SetRootLayer(RootFilePath) end
---@param NewRenderContext FName
function AUsdStageActor:SetRenderContext(NewRenderContext) end
---@param NewPurposesToLoad int32
function AUsdStageActor:SetPurposesToLoad(NewPurposesToLoad) end
---@param NewLoadSet EUsdInitialLoadSet
function AUsdStageActor:SetInitialLoadSet(NewLoadSet) end
---@return float
function AUsdStageActor:GetTime() end
---@param Object UObject
---@return FString
function AUsdStageActor:GetSourcePrimPath(Object) end
---@param PrimPath FString
---@return USceneComponent
function AUsdStageActor:GetGeneratedComponent(PrimPath) end
---@param PrimPath FString
---@return TArray<UObject>
function AUsdStageActor:GetGeneratedAssets(PrimPath) end


---@class UUsdPrimTwin : UObject
---@field PrimPath FString
---@field SpawnedActor TSoftObjectPtr<AActor>
---@field SceneComponent TWeakObjectPtr<USceneComponent>
---@field Children TMap<FString, UUsdPrimTwin>
---@field Parent TWeakObjectPtr<UUsdPrimTwin>
local UUsdPrimTwin = {}



---@class UUsdTransactor : UObject
local UUsdTransactor = {}


