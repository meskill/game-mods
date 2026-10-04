---@meta

---@class UUI_BP_HUD_CompanionSelection_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideCompanionSelection UWidgetAnimation
---@field ShowCompanionSelection UWidgetAnimation
---@field CompanionDisabledText UPhoenixTextBlock
---@field Legend UUI_BP_LegendBar_C
---@field ScreenLegend UUI_BP_Legend_Horizontal_Screen_C
---@field isCompanionLevelShown boolean
---@field CompanionsMap TMap<FName, UUI_BP_CompanionSelectionButton_C>
---@field InitialCompanion FName
---@field CurrentCompanion FName
---@field DisabledCompanions TArray<FName>
---@field HoveredCompanion FName
local UUI_BP_HUD_CompanionSelection_C = {}

---@param CharacterHovered boolean
---@param HoveredCharacterSelected boolean
function UUI_BP_HUD_CompanionSelection_C:UpdateLegend(CharacterHovered, HoveredCharacterSelected) end
---@param CompanionName FName
---@param CompanionSelectionButton UUI_BP_CompanionSelectionButton_C
function UUI_BP_HUD_CompanionSelection_C:SetCompanionSelectionButton(CompanionName, CompanionSelectionButton) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_HUD_CompanionSelection_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param compButton UUI_BP_CompanionSelectionButton_C
function UUI_BP_HUD_CompanionSelection_C:CompanionSelected(compButton) end
---@param compButton UUI_BP_CompanionSelectionButton_C
function UUI_BP_HUD_CompanionSelection_C:companionUnhovered(compButton) end
---@param compButton UUI_BP_CompanionSelectionButton_C
function UUI_BP_HUD_CompanionSelection_C:CompanionHovered(compButton) end
function UUI_BP_HUD_CompanionSelection_C:Construct() end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_HUD_CompanionSelection_C:OnOutroStarted(OutroType, OutroDuration) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_HUD_CompanionSelection_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
function UUI_BP_HUD_CompanionSelection_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_HUD_CompanionSelection_C:OnIntroEnded(IntroType) end
---@param Caller UObject
function UUI_BP_HUD_CompanionSelection_C:CompanionLevelShown(Caller) end
function UUI_BP_HUD_CompanionSelection_C:Destruct() end
---@param EntryPoint int32
function UUI_BP_HUD_CompanionSelection_C:ExecuteUbergraph_UI_BP_HUD_CompanionSelection(EntryPoint) end


