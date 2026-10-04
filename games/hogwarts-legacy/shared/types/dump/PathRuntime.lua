---@meta

---@class FLinearizedPath : FLinearizedSpline
---@field PathPointAux TArray<FLinearizedPathSplineAux>
---@field NegBorderPoints TArray<FLinearizedPathBorderPoint>
---@field PosBorderPoints TArray<FLinearizedPathBorderPoint>
local FLinearizedPath = {}



---@class FLinearizedPathBorderPoint
---@field Position FVector2D
---@field FirstSplineIndex int32
---@field LastSplineIndex int32
local FLinearizedPathBorderPoint = {}



---@class FLinearizedPathSplineAux
---@field BorderIndex int32
---@field BorderExtent float
local FLinearizedPathSplineAux = {}



---@class FLinearizedSpline
---@field IsLooped boolean
---@field SplinePoints TArray<FLinearizedSplinePoint>
---@field Length float
---@field Bounds FBox
local FLinearizedSpline = {}



---@class FLinearizedSplinePoint
---@field Position FVector
---@field Distance float
---@field TangentOffset float
local FLinearizedSplinePoint = {}



---@class FPathEditControl
---@field bMirrorExtent boolean
local FPathEditControl = {}



---@class FPathExtent
---@field Neg float
---@field Pos float
local FPathExtent = {}



---@class UPathComponent : USplineComponent
---@field LinearizedPath FLinearizedPath
---@field UUID int64
---@field ControlPointMap TArray<float>
local UPathComponent = {}



