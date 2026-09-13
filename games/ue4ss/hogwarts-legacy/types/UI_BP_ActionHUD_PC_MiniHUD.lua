---@meta

---@class UUI_BP_ActionHUD_PC_MiniHUD_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Group1 UUI_BP_MiniSelectionDiamond_C
---@field Group2 UUI_BP_MiniSelectionDiamond_C
---@field Group3 UUI_BP_MiniSelectionDiamond_C
---@field Group4 UUI_BP_MiniSelectionDiamond_C
---@field GroupId int32
---@field ActionGroupArray TArray<UUI_BP_MiniSelectionDiamond_C>
---@field GropuArray TArray<UUI_BP_MiniSelectionDiamond_C>
local UUI_BP_ActionHUD_PC_MiniHUD_C = {}

---@param NewGroupIndex int32
---@param AvailableGroups int32
function UUI_BP_ActionHUD_PC_MiniHUD_C:SetHUDGroup(NewGroupIndex, AvailableGroups) end
function UUI_BP_ActionHUD_PC_MiniHUD_C:Construct() end
---@param EntryPoint int32
function UUI_BP_ActionHUD_PC_MiniHUD_C:ExecuteUbergraph_UI_BP_ActionHUD_PC_MiniHUD(EntryPoint) end


