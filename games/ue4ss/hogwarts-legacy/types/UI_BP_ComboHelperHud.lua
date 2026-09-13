---@meta

---@class UUI_BP_ComboHelperHud_C : UComboHelperHud
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ScrollToPreviousSpell UWidgetAnimation
---@field ScrollToNextSpell UWidgetAnimation
---@field SuccessAnim UWidgetAnimation
---@field Intro UWidgetAnimation
---@field ActiveSpell UUI_BP_ComboHelper_SpellItem_C
---@field spell_L1 UUI_BP_ComboHelper_SpellItem_C
---@field spell_L2 UUI_BP_ComboHelper_SpellItem_C
---@field spell_L3 UUI_BP_ComboHelper_SpellItem_C
---@field spell_L4 UUI_BP_ComboHelper_SpellItem_C
---@field spell_L5 UUI_BP_ComboHelper_SpellItem_C
---@field spell_R1 UUI_BP_ComboHelper_SpellItem_C
---@field spell_R2 UUI_BP_ComboHelper_SpellItem_C
---@field spell_R3 UUI_BP_ComboHelper_SpellItem_C
---@field spell_R4 UUI_BP_ComboHelper_SpellItem_C
---@field spell_R5 UUI_BP_ComboHelper_SpellItem_C
---@field SpellItems TArray<UUI_BP_ComboHelper_SpellItem_C>
---@field ['Spell Names'] TArray<FString>
---@field ['Num Spells'] int32
---@field currentSpellIndex int32
---@field RewindPlaybackSpeed float
---@field ComboCompleted boolean
---@field NumAttempts int32
local UUI_BP_ComboHelperHud_C = {}

function UUI_BP_ComboHelperHud_C:SequenceEvent__ENTRYPOINTUI_BP_ComboHelperHud_1() end
function UUI_BP_ComboHelperHud_C:SequenceEvent__ENTRYPOINTUI_BP_ComboHelperHud_0() end
function UUI_BP_ComboHelperHud_C:RewindSpellCombo() end
UUI_BP_ComboHelperHud_C['ResetSpells to Standard Position'] = function(self, ) end
---@param SpellIndex int32
---@param Spell UUI_BP_ComboHelper_SpellItem_C
UUI_BP_ComboHelperHud_C['Set Spell From Array'] = function(self, SpellIndex, Spell) end
function UUI_BP_ComboHelperHud_C:UpdateSpellSuccess() end
---@param CurrentIndex int32
function UUI_BP_ComboHelperHud_C:UpdateSpellCarousel(CurrentIndex) end
function UUI_BP_ComboHelperHud_C:ScrollAnimationComplete() end
function UUI_BP_ComboHelperHud_C:PreviousScrollAnimationComplete() end
function UUI_BP_ComboHelperHud_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_ComboHelperHud_C:Tick(MyGeometry, InDeltaTime) end
---@param bShow boolean
function UUI_BP_ComboHelperHud_C:OnShowComboHelperChanged(bShow) end
---@param SpellNames TArray<FString>
---@param NumSpells int32
function UUI_BP_ComboHelperHud_C:OnRequiredSpellsChanged(SpellNames, NumSpells) end
---@param NumSucceeded int32
function UUI_BP_ComboHelperHud_C:OnSpellSucceeded(NumSucceeded) end
---@param NumSucceeded int32
function UUI_BP_ComboHelperHud_C:OnSpellFailed(NumSucceeded) end
function UUI_BP_ComboHelperHud_C:OnComboCompleted() end
function UUI_BP_ComboHelperHud_C:OnComboReset() end
function UUI_BP_ComboHelperHud_C:BndEvt__UI_BP_ComboHelperHud_activeSpell_K2Node_ComponentBoundEvent_0_OnSuccessAnimationComplete__DelegateSignature() end
function UUI_BP_ComboHelperHud_C:BndEvt__UI_BP_ComboHelperHud_activeSpell_K2Node_ComponentBoundEvent_2_OnFailureAnimationComplete__DelegateSignature() end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_ComboHelperHud_C:OnAutoWinRequested(PopupScreen, CompletionActionIndex) end
---@param EntryPoint int32
function UUI_BP_ComboHelperHud_C:ExecuteUbergraph_UI_BP_ComboHelperHud(EntryPoint) end


