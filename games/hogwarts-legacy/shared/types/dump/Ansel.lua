---@meta

---@class UAnselFunctionLibrary : UBlueprintFunctionLibrary
local UAnselFunctionLibrary = {}

---@param WorldContextObject UObject
function UAnselFunctionLibrary:StopSession(WorldContextObject) end
---@param WorldContextObject UObject
function UAnselFunctionLibrary:StartSession(WorldContextObject) end
---@param WorldContextObject UObject
---@param UIControlTarget EUIControlEffectTarget
---@param bIsVisible boolean
function UAnselFunctionLibrary:SetUIControlVisibility(WorldContextObject, UIControlTarget, bIsVisible) end
---@param NumSettleFrames int32
function UAnselFunctionLibrary:SetSettleFrames(NumSettleFrames) end
---@param bIsPhotographyAllowed boolean
function UAnselFunctionLibrary:SetIsPhotographyAllowed(bIsPhotographyAllowed) end
---@param TranslationSpeed float
function UAnselFunctionLibrary:SetCameraMovementSpeed(TranslationSpeed) end
---@param MaxCameraDistance float
function UAnselFunctionLibrary:SetCameraConstraintDistance(MaxCameraDistance) end
---@param CameraSize float
function UAnselFunctionLibrary:SetCameraConstraintCameraSize(CameraSize) end
---@param bShouldAutoPostprocess boolean
function UAnselFunctionLibrary:SetAutoPostprocess(bShouldAutoPostprocess) end
---@param bShouldAutoPause boolean
function UAnselFunctionLibrary:SetAutoPause(bShouldAutoPause) end
---@return boolean
function UAnselFunctionLibrary:IsPhotographyAvailable() end
---@return boolean
function UAnselFunctionLibrary:IsPhotographyAllowed() end
---@param WorldContextObject UObject
---@param NewCameraLocation FVector
---@param PreviousCameraLocation FVector
---@param OriginalCameraLocation FVector
---@param OutCameraLocation FVector
function UAnselFunctionLibrary:ConstrainCameraByGeometry(WorldContextObject, NewCameraLocation, PreviousCameraLocation, OriginalCameraLocation, OutCameraLocation) end
---@param WorldContextObject UObject
---@param NewCameraLocation FVector
---@param PreviousCameraLocation FVector
---@param OriginalCameraLocation FVector
---@param OutCameraLocation FVector
---@param MaxDistance float
function UAnselFunctionLibrary:ConstrainCameraByDistance(WorldContextObject, NewCameraLocation, PreviousCameraLocation, OriginalCameraLocation, OutCameraLocation, MaxDistance) end


