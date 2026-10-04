---@meta

---@class UUI_BP_CreatureSpeciesButton_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TutorialBounce UWidgetAnimation
---@field SpeciesSelected UWidgetAnimation
---@field OnSpeciesButtonHover UWidgetAnimation
---@field buttonContent UCanvasPanel
---@field ClickButton UButton
---@field CreatureImage UImage
---@field emptyIcon UPhoenixImage
---@field selectedBorder UPhoenixImage
---@field selectedGlow UPhoenixImage
---@field TutorialHighlight UImage
---@field OnHovered FUI_BP_CreatureSpeciesButton_COnHovered
---@field OnUnhovered FUI_BP_CreatureSpeciesButton_COnUnhovered
---@field OnClicked FUI_BP_CreatureSpeciesButton_COnClicked
---@field TypeID FName
---@field Highlighted boolean
---@field Enabled boolean
---@field IsEmpty boolean
---@field IsSelected boolean
local UUI_BP_CreatureSpeciesButton_C = {}

---@param IsEmpty boolean
function UUI_BP_CreatureSpeciesButton_C:SetEmptyButton(IsEmpty) end
---@param buttonSelected boolean
function UUI_BP_CreatureSpeciesButton_C:SetIsSelected(buttonSelected) end
---@param Enabled boolean
function UUI_BP_CreatureSpeciesButton_C:SetEnabled(Enabled) end
---@param NewHighlighted boolean
function UUI_BP_CreatureSpeciesButton_C:SetHighlighted(NewHighlighted) end
---@param TypeID FName
function UUI_BP_CreatureSpeciesButton_C:GetSpeciesID(TypeID) end
---@param TypeID FName
---@param Count int32
function UUI_BP_CreatureSpeciesButton_C:InitSpeciesButton(TypeID, Count) end
function UUI_BP_CreatureSpeciesButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_CreatureSpeciesButton_C:BndEvt__ClickButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_CreatureSpeciesButton_C:BndEvt__ClickButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
---@param bIsTutorialHighlighted boolean
function UUI_BP_CreatureSpeciesButton_C:CustomEvent(bIsTutorialHighlighted) end
---@param EntryPoint int32
function UUI_BP_CreatureSpeciesButton_C:ExecuteUbergraph_UI_BP_CreatureSpeciesButton(EntryPoint) end
---@param Button UUI_BP_CreatureSpeciesButton_C
function UUI_BP_CreatureSpeciesButton_C:OnClicked__DelegateSignature(Button) end
---@param Button UUI_BP_CreatureSpeciesButton_C
function UUI_BP_CreatureSpeciesButton_C:OnUnhovered__DelegateSignature(Button) end
---@param Button UUI_BP_CreatureSpeciesButton_C
function UUI_BP_CreatureSpeciesButton_C:OnHovered__DelegateSignature(Button) end


