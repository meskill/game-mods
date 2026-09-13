---@meta

---@class FMultiFX2Data
---@field MultiBase UMultiFX2_Base
---@field FXObject UObject
---@field MaterialInstanceDynamic UMaterialInstanceDynamic
---@field AdditionalObjectArray TArray<UObject>
local FMultiFX2Data = {}



---@class FMultiFX2DataArray
---@field DataArray TArray<FMultiFX2Data>
local FMultiFX2DataArray = {}



---@class FMultiFX2Handle
---@field Handle uint64
local FMultiFX2Handle = {}



---@class FMultiFX2Var
---@field FX UMultiFX2_Base
local FMultiFX2Var = {}



---@class UFXAdjustments : UObject
local UFXAdjustments = {}


---@class UFXEnd : UObject
local UFXEnd = {}


---@class UFXFilter : UObject
---@field bIsNot boolean
local UFXFilter = {}



---@class UFXUpdate : UObject
local UFXUpdate = {}


---@class UMultiFX2Asset : UDataAsset
---@field FX2 TArray<UMultiFX2_Base>
local UMultiFX2Asset = {}



---@class UMultiFX2Manager : UObject
---@field FXDataArray TArray<FMultiFX2DataArray>
local UMultiFX2Manager = {}

function UMultiFX2Manager:UpdateFX() end
---@param FXAsset UMultiFX2Asset
---@param Target UObject
---@param Instigator AActor
---@param Location FVector
---@param Rotation FRotator
---@param AttachPointName FName
---@return FMultiFX2Handle
function UMultiFX2Manager:SpawnFXAsset(FXAsset, Target, Instigator, Location, Rotation, AttachPointName) end
---@param Var TArray<FMultiFX2Var>
---@param Target UObject
---@param Instigator AActor
---@param Location FVector
---@param Rotation FRotator
---@param AttachPointName FName
---@return FMultiFX2Handle
function UMultiFX2Manager:SpawnFXArray(Var, Target, Instigator, Location, Rotation, AttachPointName) end
---@param Var FMultiFX2Var
---@param Target UObject
---@param Instigator AActor
---@param Location FVector
---@param Rotation FRotator
---@param AttachPointName FName
---@return FMultiFX2Handle
function UMultiFX2Manager:SpawnFX(Var, Target, Instigator, Location, Rotation, AttachPointName) end
---@param InHandle FMultiFX2Handle
---@param InRotation FRotator
function UMultiFX2Manager:SetRotation(InHandle, InRotation) end
---@param InHandle FMultiFX2Handle
---@param InLocation FVector
function UMultiFX2Manager:SetLocation(InHandle, InLocation) end
---@param Scale float
function UMultiFX2Manager:SetFootprintLifetimeScale(Scale) end
---@param InHandle FMultiFX2Handle
---@param Dilation float
function UMultiFX2Manager:SetCustomTimeDilation(InHandle, Dilation) end
---@param InHandle FMultiFX2Handle
---@return boolean
function UMultiFX2Manager:IsLooping(InHandle) end
---@param InHandle FMultiFX2Handle
---@return boolean
function UMultiFX2Manager:IsActive(InHandle) end
---@param InHandle FMultiFX2Handle
---@param bImmediate boolean
function UMultiFX2Manager:DestroyFXHandle(InHandle, bImmediate) end


---@class UMultiFX2SkelData : UObject
---@field ReferenceSkeletonArray TArray<USkeletalMesh>
local UMultiFX2SkelData = {}



---@class UMultiFX2_Base : UObject
local UMultiFX2_Base = {}


---@class UMultiFX2_Filtered : UMultiFX2_Base
---@field filters TArray<UFXFilter>
---@field Adjustments TArray<UFXAdjustments>
---@field Updates TArray<UFXUpdate>
---@field Ends TArray<UFXEnd>
local UMultiFX2_Filtered = {}



