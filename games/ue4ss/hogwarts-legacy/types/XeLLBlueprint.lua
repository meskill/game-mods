---@meta

---@class UXeLLBlueprintLibrary : UBlueprintFunctionLibrary
local UXeLLBlueprintLibrary = {}

---@param Mode EXeLLMode
function UXeLLBlueprintLibrary:SetXeLLMode(Mode) end
---@param bEnabled boolean
function UXeLLBlueprintLibrary:SetFlashIndicatorEnabled(bEnabled) end
---@return boolean
function UXeLLBlueprintLibrary:IsXeLLSupported() end
---@return EXeLLMode
function UXeLLBlueprintLibrary:GetXeLLMode() end
---@return TArray<EXeLLMode>
function UXeLLBlueprintLibrary:GetSupportedXeLLModes() end
---@return float
function UXeLLBlueprintLibrary:GetSimulationLatencyInMs() end
---@return float
function UXeLLBlueprintLibrary:GetRenderSubmitLatencyInMs() end
---@return float
function UXeLLBlueprintLibrary:GetRenderLatencyInMs() end
---@return float
function UXeLLBlueprintLibrary:GetPresentLatencyInMs() end
---@return boolean
function UXeLLBlueprintLibrary:GetLatencyMarkEnabled() end
---@return float
function UXeLLBlueprintLibrary:GetInputLatencyInMs() end
---@return float
function UXeLLBlueprintLibrary:GetGameToRenderLatencyInMs() end
---@return float
function UXeLLBlueprintLibrary:GetGameLatencyInMs() end
---@return boolean
function UXeLLBlueprintLibrary:GetFlashIndicatorEnabled() end


