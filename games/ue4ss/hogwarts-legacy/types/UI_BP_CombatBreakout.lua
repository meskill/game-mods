---@meta

---@class UUI_BP_CombatBreakout_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BreakoutNotify UWidgetAnimation
---@field BreakoutRingSuccess UWidgetAnimation
---@field BreakoutRingFail UWidgetAnimation
---@field SwapBreakoutButton UWidgetAnimation
---@field BreakoutButton UPhoenixRichTextBlock
---@field BreakoutButtonFrame UImage
---@field BreakoutColorMask UImage
---@field BreakoutGlow UImage
---@field BreakoutGroup UCanvasPanel
---@field BreakoutRing UImage
---@field ButtonFlame UPhoenixImage
---@field RandomBreakout boolean
---@field BreakoutComplete boolean
---@field BreakoutInputPressed boolean
local UUI_BP_CombatBreakout_C = {}

---@param Caller UObject
function UUI_BP_CombatBreakout_C:BreakoutTimeout(Caller) end
---@param Button FString
---@param IsRandom boolean
function UUI_BP_CombatBreakout_C:BreakoutIconRamdomizer(Button, IsRandom) end
---@param changed boolean
---@param ButtonStr FString
UUI_BP_CombatBreakout_C['Breakout State Change'] = function(self, changed, ButtonStr) end
---@param Caller UObject
function UUI_BP_CombatBreakout_C:Breakout_Success(Caller) end
---@param Caller UObject
function UUI_BP_CombatBreakout_C:Breakout_Failure(Caller) end
function UUI_BP_CombatBreakout_C:Construct() end
function UUI_BP_CombatBreakout_C:AnimationComplete() end
---@param EntryPoint int32
function UUI_BP_CombatBreakout_C:ExecuteUbergraph_UI_BP_CombatBreakout(EntryPoint) end


