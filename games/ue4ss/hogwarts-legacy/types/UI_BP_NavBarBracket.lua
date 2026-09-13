---@meta

---@class UUI_BP_NavBarBracket_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Base UScaleBox
---@field End UScaleBox
---@field middle UScaleBox
---@field ScaleValue float
local UUI_BP_NavBarBracket_C = {}

---@param IsDesignTime boolean
function UUI_BP_NavBarBracket_C:PreConstruct(IsDesignTime) end
function UUI_BP_NavBarBracket_C:Construct() end
---@param EntryPoint int32
function UUI_BP_NavBarBracket_C:ExecuteUbergraph_UI_BP_NavBarBracket(EntryPoint) end


