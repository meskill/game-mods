---@meta

---@class UUI_BP_ChallengeHud_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ReadyWaveNumberOn UWidgetAnimation
---@field TimerWarningPulse UWidgetAnimation
---@field CounterUpdate UWidgetAnimation
---@field ChallengeHUDOn UWidgetAnimation
---@field Border_1 UBorder
---@field Border_2 UBorder
---@field ChallengeTrim UImage
---@field CounterBG UImage
---@field EnemyIcon UImage
---@field PhoenixTextBlock_0 UPhoenixTextBlock
---@field PhoenixTextBlock_1 UPhoenixTextBlock
---@field PhoenixTextBlock_2 UPhoenixTextBlock
---@field WaveLabel UPhoenixTextBlock
local UUI_BP_ChallengeHud_C = {}

---@param WaveNumber int32
function UUI_BP_ChallengeHud_C:SetWaveText(WaveNumber) end
function UUI_BP_ChallengeHud_C:Construct() end
---@param EntryPoint int32
function UUI_BP_ChallengeHud_C:ExecuteUbergraph_UI_BP_ChallengeHud(EntryPoint) end


