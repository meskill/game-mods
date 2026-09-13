---@meta

---@class ALandscapeDummyCamera : AActor
local ALandscapeDummyCamera = {}


---@class FCachedMIDParameter
---@field Parameter FName
---@field Index int32
local FCachedMIDParameter = {}



---@class FCachedMIDParameterScalar : FCachedMIDParameter
---@field Value float
local FCachedMIDParameterScalar = {}



---@class FCachedMIDParameterVector : FCachedMIDParameter
---@field Value FLinearColor
local FCachedMIDParameterVector = {}



---@class FCachedMIDParameters
---@field Scalars TArray<FCachedMIDParameterScalar>
---@field Vectors TArray<FCachedMIDParameterVector>
local FCachedMIDParameters = {}



---@class FCachedMIDParametersSet
---@field MIDMap TMap<TWeakObjectPtr<UMaterialInstanceDynamic>, FCachedMIDParameters>
local FCachedMIDParametersSet = {}



