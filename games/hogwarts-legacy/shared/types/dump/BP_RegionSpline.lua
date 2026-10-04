---@meta

---@class ABP_RegionSpline_C : APhoenixMapRegion
---@field Spline USplineComponent
---@field RegionMap TMap<E_RegionNames::Type, FLinearColor>
---@field Material UMaterialInstanceDynamic
local ABP_RegionSpline_C = {}

function ABP_RegionSpline_C:ReverseSplineOrder() end
---@param Visible boolean
function ABP_RegionSpline_C:Show(Visible) end
---@param Spline_Component USplineComponent
function ABP_RegionSpline_C:CreateSpline(Spline_Component) end
function ABP_RegionSpline_C:UserConstructionScript() end


