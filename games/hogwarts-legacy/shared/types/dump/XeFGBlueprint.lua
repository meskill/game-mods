---@meta

---@class UXeFGBlueprintLibrary : UBlueprintFunctionLibrary
local UXeFGBlueprintLibrary = {}

---@param State EXeFGUICompositionState
function UXeFGBlueprintLibrary:SetXeFGUICompositionState(State) end
---@param Mode EXeFGMode
function UXeFGBlueprintLibrary:SetXeFGMode(Mode) end
---@return boolean
function UXeFGBlueprintLibrary:IsXeFGSupported() end
---@return boolean
function UXeFGBlueprintLibrary:IfRelaunchRequiredByXeFG() end
---@return EXeFGUICompositionState
function UXeFGBlueprintLibrary:GetXeFGUICompositionState() end
---@return EXeFGMode
function UXeFGBlueprintLibrary:GetXeFGMode() end
---@return TArray<EXeFGMode>
function UXeFGBlueprintLibrary:GetSupportedXeFGModes() end


