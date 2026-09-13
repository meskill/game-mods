---@meta

---@class UUI_BP_ComboHelper_SpellItem_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Ready UWidgetAnimation
---@field Fail UWidgetAnimation
---@field Success UWidgetAnimation
---@field colorPulse UPhoenixImage
---@field contentHolder UCanvasPanel
---@field itemBack UPhoenixImage
---@field Outline UScaleBox
---@field SpellIcon UImage
---@field stateBack UPhoenixImage
---@field stateFlame UPhoenixImage
---@field stateIcon UCanvasPanel
---@field successMark UPhoenixImage
---@field OnSuccessAnimationComplete FUI_BP_ComboHelper_SpellItem_COnSuccessAnimationComplete
---@field OnFailureAnimationComplete FUI_BP_ComboHelper_SpellItem_COnFailureAnimationComplete
---@field SpellName FString
local UUI_BP_ComboHelper_SpellItem_C = {}

function UUI_BP_ComboHelper_SpellItem_C:SequenceEvent__ENTRYPOINTUI_BP_ComboHelper_SpellItem_1() end
function UUI_BP_ComboHelper_SpellItem_C:SequenceEvent__ENTRYPOINTUI_BP_ComboHelper_SpellItem_0() end
---@param ShowStatus boolean
function UUI_BP_ComboHelper_SpellItem_C:ShowStatusSuccess(ShowStatus) end
---@param SpellCategory ESpellCategory
UUI_BP_ComboHelper_SpellItem_C['Set Spell Category Color'] = function(self, SpellCategory) end
function UUI_BP_ComboHelper_SpellItem_C:SuccessAnimationFinished() end
function UUI_BP_ComboHelper_SpellItem_C:FailureAnimationFinished() end
---@param SpellName FString
function UUI_BP_ComboHelper_SpellItem_C:SetSpellName(SpellName) end
function UUI_BP_ComboHelper_SpellItem_C:PlaySuccess() end
function UUI_BP_ComboHelper_SpellItem_C:PlayFail() end
function UUI_BP_ComboHelper_SpellItem_C:ResetState() end
function UUI_BP_ComboHelper_SpellItem_C:PlayReady() end
---@param EntryPoint int32
function UUI_BP_ComboHelper_SpellItem_C:ExecuteUbergraph_UI_BP_ComboHelper_SpellItem(EntryPoint) end
function UUI_BP_ComboHelper_SpellItem_C:OnFailureAnimationComplete__DelegateSignature() end
function UUI_BP_ComboHelper_SpellItem_C:OnSuccessAnimationComplete__DelegateSignature() end


