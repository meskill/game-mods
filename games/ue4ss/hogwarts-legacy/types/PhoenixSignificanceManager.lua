---@meta

---@class APhoenixBudgetedStaticMeshActor : AStaticMeshActor
---@field DefaultSignificanceBias ESignificanceBiasEnum
---@field bAllowRegistrationWithSignificanceManager boolean
local APhoenixBudgetedStaticMeshActor = {}



---@class FBudgeterPayload
local FBudgeterPayload = {}


---@class FBudgeterTickFunction : FTickFunction
local FBudgeterTickFunction = {}


---@class FClothBudgeterPayload : FBudgeterPayload
local FClothBudgeterPayload = {}


---@class FLODBudgeterPayload : FBudgeterPayload
local FLODBudgeterPayload = {}


---@class FLODInfo
local FLODInfo = {}


---@class FSceneRigBudgeterPayload : FBudgeterPayload
local FSceneRigBudgeterPayload = {}


---@class IClothBudgeterInterface : IInterface
local IClothBudgeterInterface = {}


---@class ILODBudgeterInterface : IInterface
local ILODBudgeterInterface = {}


---@class ISceneRigBudgeterInterface : IInterface
local ISceneRigBudgeterInterface = {}


---@class ISignificanceInterface : IInterface
local ISignificanceInterface = {}


---@class UBudgeter : UObject
local UBudgeter = {}


---@class UClothBudgeter : UBudgeter
local UClothBudgeter = {}


---@class ULODBudgeter : UBudgeter
local ULODBudgeter = {}


---@class UPhoenixSignificanceManager : UObject
---@field Budgeters TArray<UBudgeter>
local UPhoenixSignificanceManager = {}

---@param bInPaused boolean
---@return boolean
function UPhoenixSignificanceManager:SetPaused(bInPaused) end
---@param Object UObject
---@param SignificanceBias ESignificanceBiasEnum
---@return boolean
function UPhoenixSignificanceManager:SetObjectSignficanceBias(Object, SignificanceBias) end
---@param DestroyedActor AActor
function UPhoenixSignificanceManager:OnRegisteredActorDestroyed(DestroyedActor) end
---@param WorldContextObject UObject
---@return UPhoenixSignificanceManager
function UPhoenixSignificanceManager:GetSignificanceManager(WorldContextObject) end
---@param Object UObject
---@return float
function UPhoenixSignificanceManager:GetSignificance(Object) end


---@class USceneRigBudgeter : UBudgeter
local USceneRigBudgeter = {}


