---@meta

---@class UUI_BP_BroomRaceHUD_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowTimeSummary UWidgetAnimation
---@field ShowTimePenalty UWidgetAnimation
---@field ShowGatesUI UWidgetAnimation
---@field EndOfRaceTransition UWidgetAnimation
---@field BubbleCountdownOn UWidgetAnimation
---@field BRResultsPopupOff UWidgetAnimation
---@field BRResultsPopupOn UWidgetAnimation
---@field BestTimeResultsOff UWidgetAnimation
---@field BestTimeResultsOn UWidgetAnimation
---@field BestTimeAmount UPhoenixTextBlock
---@field BestTimeNumber UPhoenixTextBlock
---@field BestTimeResults UPhoenixTextBlock
---@field BestTimeResultsPopup UCanvasPanel
---@field CountDownGroup UCanvasPanel
---@field CurrentGates UPhoenixTextBlock
---@field EndOfRaceBG UOverlay
---@field EndOfRaceTimePanel UOverlay
---@field ExitLegendPanel UOverlay
---@field PenaltyTimeHeader UPhoenixTextBlock
---@field PenaltyTimeText UPhoenixTextBlock
---@field PhoenixImage_10 UPhoenixImage
---@field PhoenixImage_251 UPhoenixImage
---@field PlayerTime UPhoenixTextBlock
---@field PlayerTimeResult UPhoenixTextBlock
---@field RawTimeText UPhoenixTextBlock
---@field ResultsPopup UCanvasPanel
---@field TimePenaltyText UPhoenixTextBlock
---@field TotalGates UPhoenixTextBlock
---@field TotalTimeText UPhoenixTextBlock
---@field UI_BP_BroomHUD UUI_BP_BroomHUD_C
---@field UI_BP_LegendItem UUI_BP_LegendItem_C
---@field RaceObj ARace
---@field BroomObj AFlyingBroom
---@field OutroType int32
---@field MissedGates int32
---@field IsRaceComplete boolean
---@field OnCountdownBeginHandle FHermesBPDelegateHandle
---@field CountdownUpdateHandle FHermesBPDelegateHandle
---@field CountdownCompleteHandle FHermesBPDelegateHandle
---@field GateHitHandle FHermesBPDelegateHandle
---@field MissedGateHandle FHermesBPDelegateHandle
---@field RaceFinishedHandle FHermesBPDelegateHandle
---@field BoostHandle FHermesBPDelegateHandle
---@field BoostEndHandle FHermesBPDelegateHandle
---@field BoostGainStartHandle FHermesBPDelegateHandle
---@field BoostGainEndHandle FHermesBPDelegateHandle
---@field RaceAbandonedHandle FHermesBPDelegateHandle
---@field YesNoScreen UPopupScreen
local UUI_BP_BroomRaceHUD_C = {}

function UUI_BP_BroomRaceHUD_C:ClearHUD() end
function UUI_BP_BroomRaceHUD_C:ClearRaceInfo() end
function UUI_BP_BroomRaceHUD_C:SetRaceInfo() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_BroomRaceHUD_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param Abandoned boolean
function UUI_BP_BroomRaceHUD_C:RaceComplete(Abandoned) end
---@param CountdownNum int32
function UUI_BP_BroomRaceHUD_C:PlayCountdownAnim(CountdownNum) end
function UUI_BP_BroomRaceHUD_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_BroomRaceHUD_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_BroomRaceHUD_C:WidgetAnimationEvt_BestTimeResultsOn_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_BroomRaceHUD_C:WidgetAnimationEvt_BRResultsPopupOn_K2Node_WidgetAnimationEvent_1() end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_BroomRaceHUD_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_BroomRaceHUD_C:OnOutroEnded(OutroType) end
function UUI_BP_BroomRaceHUD_C:WidgetAnimationEvt_ShowTimeSummary_K2Node_WidgetAnimationEvent_2() end
function UUI_BP_BroomRaceHUD_C:Show() end
function UUI_BP_BroomRaceHUD_C:Hide() end
---@param Caller UObject
---@param int int32
function UUI_BP_BroomRaceHUD_C:OnRaceCountdownBegin(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_BroomRaceHUD_C:OnRaceCountdownUpdate(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_BroomRaceHUD_C:OnRaceCountdownComplete(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_BroomRaceHUD_C:OnHitGate(Caller, int) end
---@param Caller UObject
---@param int int32
function UUI_BP_BroomRaceHUD_C:OnMissedGatePenalty(Caller, int) end
---@param Caller UObject
function UUI_BP_BroomRaceHUD_C:OnRaceFinished(Caller) end
---@param Caller UObject
function UUI_BP_BroomRaceHUD_C:HighBoostGainStart(Caller) end
---@param Caller UObject
function UUI_BP_BroomRaceHUD_C:HighBoostGainEnd(Caller) end
---@param Caller UObject
---@param Actor AActor
function UUI_BP_BroomRaceHUD_C:BroomBoost(Caller, Actor) end
---@param Caller UObject
---@param Actor AActor
function UUI_BP_BroomRaceHUD_C:BroomBoostEnd(Caller, Actor) end
---@param Caller UObject
function UUI_BP_BroomRaceHUD_C:OnRaceAbandoned(Caller) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_BroomRaceHUD_C:PopupClosedEvent(PopupScreen, CompletionActionIndex) end
---@param EntryPoint int32
function UUI_BP_BroomRaceHUD_C:ExecuteUbergraph_UI_BP_BroomRaceHUD(EntryPoint) end


