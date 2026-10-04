---@meta

---@class UUI_BP_BroomChallengeAccept_C : UBroomChallengeScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BREventPopupOff UWidgetAnimation
---@field PlayerFifthPlaceNumOn UWidgetAnimation
---@field PlayerFourthPlaceNumOn UWidgetAnimation
---@field PlayerThirdPlaceNumOn UWidgetAnimation
---@field PlayerSecondPlaceNumOn UWidgetAnimation
---@field PlayerFirstPlaceNumberOn UWidgetAnimation
---@field BREventPopupOn UWidgetAnimation
---@field Legend UUI_BP_Legend_Horizontal_Screen_C
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field PlayersBestTime UPhoenixTextBlock
---@field PlayersBestTimeName UPhoenixTextBlock
---@field position1 UUI_BP_BroomPosition_C
---@field position2 UUI_BP_BroomPosition_C
---@field position3 UUI_BP_BroomPosition_C
---@field position4 UUI_BP_BroomPosition_C
---@field position5 UUI_BP_BroomPosition_C
---@field RaceNameText UPhoenixTextBlock
---@field RaceObj ARace
---@field PositionArray TArray<UUI_BP_BroomPosition_C>
---@field OutroIndex int32
---@field RaceStarting boolean
local UUI_BP_BroomChallengeAccept_C = {}

function UUI_BP_BroomChallengeAccept_C:SequenceEvent__ENTRYPOINTUI_BP_BroomChallengeAccept_0() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_BroomChallengeAccept_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUI_BP_BroomChallengeAccept_C:Construct() end
function UUI_BP_BroomChallengeAccept_C:OnOutroAnimationComplete() end
---@param Caller UObject
---@param int int32
function UUI_BP_BroomChallengeAccept_C:OnRaceCountdownBegin(Caller, int) end
---@param EntryPoint int32
function UUI_BP_BroomChallengeAccept_C:ExecuteUbergraph_UI_BP_BroomChallengeAccept(EntryPoint) end


