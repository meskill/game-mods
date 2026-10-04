---@meta

---@class UUI_BP_MiniSelectionDiamond_C : UMiniSelectionDiamondBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field UnavailableFeedback UWidgetAnimation
---@field toActive UWidgetAnimation
---@field Back UImage
---@field groupPanel UCanvasPanel
---@field statusIndicator UImage
local UUI_BP_MiniSelectionDiamond_C = {}

function UUI_BP_MiniSelectionDiamond_C:LockedDiamondSelected() end
---@param StatusIndex int32
function UUI_BP_MiniSelectionDiamond_C:SetGroupStatus(StatusIndex) end
---@param IsDesignTime boolean
function UUI_BP_MiniSelectionDiamond_C:PreConstruct(IsDesignTime) end
---@param NewState int32
function UUI_BP_MiniSelectionDiamond_C:OnSetState(NewState) end
---@param EntryPoint int32
function UUI_BP_MiniSelectionDiamond_C:ExecuteUbergraph_UI_BP_MiniSelectionDiamond(EntryPoint) end


