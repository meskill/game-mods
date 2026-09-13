---@meta

---@class ABP_VanishmentStyle_WallObject_C : AVanishmentStyleBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field NonUniformScale FVector
---@field ScaleFactor float
---@field ['Rotation Direction'] float
---@field TranslationOffset FVector
---@field TranslationAmount float
---@field InitialTransform FTransform
---@field SpawnOutRotation float
---@field CenterOffset FVector
local ABP_VanishmentStyle_WallObject_C = {}

function ABP_VanishmentStyle_WallObject_C:StartVanishment() end
---@param EntryPoint int32
function ABP_VanishmentStyle_WallObject_C:ExecuteUbergraph_BP_VanishmentStyle_WallObject(EntryPoint) end


