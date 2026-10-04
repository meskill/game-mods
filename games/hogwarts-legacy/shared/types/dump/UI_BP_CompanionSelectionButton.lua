---@meta

---@class UUI_BP_CompanionSelectionButton_C : UAvaUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowHighlight UWidgetAnimation
---@field compButton UButton
---@field CompName UPhoenixTextBlock
---@field houseIcon UImage
---@field InfoVerticalBox UVerticalBox
---@field UnavailableIcon UImage
---@field Companion FName
---@field IsLocked boolean
---@field OnCompanionHovered FUI_BP_CompanionSelectionButton_COnCompanionHovered
---@field OnCompanionUnhovered FUI_BP_CompanionSelectionButton_COnCompanionUnhovered
---@field OnCompanionSelected FUI_BP_CompanionSelectionButton_COnCompanionSelected
---@field isClickable boolean
local UUI_BP_CompanionSelectionButton_C = {}

---@param IsSelected boolean
function UUI_BP_CompanionSelectionButton_C:SetIsSelected(IsSelected) end
---@param CompName FName
---@param companionLocked boolean
---@param companionDisabled boolean
function UUI_BP_CompanionSelectionButton_C:SetCompanionData(CompName, companionLocked, companionDisabled) end
---@param IsDesignTime boolean
function UUI_BP_CompanionSelectionButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_CompanionSelectionButton_C:Construct() end
function UUI_BP_CompanionSelectionButton_C:BndEvt__compButton_K2Node_ComponentBoundEvent_0_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_CompanionSelectionButton_C:BndEvt__compButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_CompanionSelectionButton_C:BndEvt__compButton_K2Node_ComponentBoundEvent_2_OnButtonPressedEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_CompanionSelectionButton_C:ExecuteUbergraph_UI_BP_CompanionSelectionButton(EntryPoint) end
---@param Companion UUI_BP_CompanionSelectionButton_C
function UUI_BP_CompanionSelectionButton_C:OnCompanionSelected__DelegateSignature(Companion) end
---@param Companion UUI_BP_CompanionSelectionButton_C
function UUI_BP_CompanionSelectionButton_C:OnCompanionUnhovered__DelegateSignature(Companion) end
---@param Companion UUI_BP_CompanionSelectionButton_C
function UUI_BP_CompanionSelectionButton_C:OnCompanionHovered__DelegateSignature(Companion) end


