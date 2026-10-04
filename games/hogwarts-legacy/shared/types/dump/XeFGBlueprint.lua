---@meta

---@class UXeFGBlueprintLibrary : UBlueprintFunctionLibrary
local UXeFGBlueprintLibrary = {}

---@param Mode EXeFGMode
function UXeFGBlueprintLibrary:SetXeFGMode(Mode) end
---@return boolean
function UXeFGBlueprintLibrary:IsXeFGSupported() end
---@return boolean
function UXeFGBlueprintLibrary:IfRelaunchRequiredByXeFG() end
---@return EXeFGMode
function UXeFGBlueprintLibrary:GetXeFGMode() end
---@return TArray<EXeFGMode>
function UXeFGBlueprintLibrary:GetSupportedXeFGModes() end


