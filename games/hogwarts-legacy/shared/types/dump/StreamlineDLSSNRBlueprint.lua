---@meta

---@class UStreamlineLibraryDLSSNR : UBlueprintFunctionLibrary
local UStreamlineLibraryDLSSNR = {}

---@param ToneStrength float
function UStreamlineLibraryDLSSNR:SetDLSSNRToneStrength(ToneStrength) end
---@param StyleID int32
function UStreamlineLibraryDLSSNR:SetDLSSNRStyle(StyleID) end
---@param StructuralStrength float
function UStreamlineLibraryDLSSNR:SetDLSSNRStructuralStrength(StructuralStrength) end
---@param SkinStructureStrength float
function UStreamlineLibraryDLSSNR:SetDLSSNRSkinStructureStrength(SkinStructureStrength) end
---@param DLSSNRMode EStreamlineDLSSNRMode
function UStreamlineLibraryDLSSNR:SetDLSSNRMode(DLSSNRMode) end
---@param Intensity float
function UStreamlineLibraryDLSSNR:SetDLSSNRIntensity(Intensity) end
---@param MaskMode EStreamlineDLSSNRMaskMode
function UStreamlineLibraryDLSSNR:SetDLSSNRControlMaskMode(MaskMode) end
---@return EStreamlineFeatureSupport
function UStreamlineLibraryDLSSNR:QueryDLSSNRSupport() end
---@return boolean
function UStreamlineLibraryDLSSNR:IsDLSSNRSupported() end
---@param DLSSNRMode EStreamlineDLSSNRMode
---@return boolean
function UStreamlineLibraryDLSSNR:IsDLSSNRModeSupported(DLSSNRMode) end
---@return TArray<EStreamlineDLSSNRMode>
function UStreamlineLibraryDLSSNR:GetSupportedDLSSNRModes() end
---@return float
function UStreamlineLibraryDLSSNR:GetDLSSNRToneStrength() end
---@return int32
function UStreamlineLibraryDLSSNR:GetDLSSNRStyle() end
---@return float
function UStreamlineLibraryDLSSNR:GetDLSSNRStructuralStrength() end
---@return float
function UStreamlineLibraryDLSSNR:GetDLSSNRSkinStructureStrength() end
---@return EStreamlineDLSSNRMode
function UStreamlineLibraryDLSSNR:GetDLSSNRMode() end
---@return float
function UStreamlineLibraryDLSSNR:GetDLSSNRIntensity() end
---@return EStreamlineDLSSNRMaskMode
function UStreamlineLibraryDLSSNR:GetDLSSNRControlMaskMode() end
---@return EStreamlineDLSSNRMode
function UStreamlineLibraryDLSSNR:GetDefaultDLSSNRMode() end


