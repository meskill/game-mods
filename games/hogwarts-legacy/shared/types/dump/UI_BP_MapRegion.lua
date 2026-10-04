---@meta

---@class AUI_BP_MapRegion_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field regionForwardAxis ESplineMeshAxis::Type
---@field regionDynamicMaterial UMaterialInstanceDynamic
---@field RegionMeshes TArray<UStaticMeshComponent>
---@field DynamicMaterialInstances TArray<UMaterialInstance>
local AUI_BP_MapRegion_C = {}

---@param SplineComponent USplineComponent
function AUI_BP_MapRegion_C:CreateSpline(SplineComponent) end
---@param Visible boolean
function AUI_BP_MapRegion_C:Show(Visible) end
function AUI_BP_MapRegion_C:ReceiveBeginPlay() end
---@param SplineComponent USplineComponent
function AUI_BP_MapRegion_C:SetupSpline_Event_1(SplineComponent) end
---@param EntryPoint int32
function AUI_BP_MapRegion_C:ExecuteUbergraph_UI_BP_MapRegion(EntryPoint) end


