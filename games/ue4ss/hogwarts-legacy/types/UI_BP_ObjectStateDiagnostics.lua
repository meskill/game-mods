---@meta

---@class UUI_BP_ObjectStateDiagnostics_C : UUserWidget
---@field Charred_Bar UProgressBar
---@field Frozen_CheckBox UCheckBox
---@field Health_Bar UProgressBar
---@field OnFire_CheckBox UCheckBox
---@field Wetness_Bar UProgressBar
---@field ObjectStateInfo UObjectStateInfo
local UUI_BP_ObjectStateDiagnostics_C = {}

---@return ECheckBoxState
function UUI_BP_ObjectStateDiagnostics_C:GetOnFireCheckedState() end
---@return ECheckBoxState
function UUI_BP_ObjectStateDiagnostics_C:GetFrozenCheckedState() end
---@return float
function UUI_BP_ObjectStateDiagnostics_C:GetCharredPercent() end
---@return float
function UUI_BP_ObjectStateDiagnostics_C:GetHealthPercent() end
---@return float
function UUI_BP_ObjectStateDiagnostics_C:GetWetnessPercent() end


