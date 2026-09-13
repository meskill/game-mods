---@meta

---@class UUI_BP_InputAction_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnInputActionSelected UWidgetAnimation
---@field OnInputActionHovered UWidgetAnimation
---@field buttonBack UImage
---@field goldleafBorder UImage
---@field highlight UImage
---@field KBTextBlock UPhoenixRichTextBlock
---@field KeyboardButton UButton
---@field LockedIcon UImage
---@field ActionName FName
---@field KeyboardKey FInputActionKeyMapping
---@field KeyboardButtonClicked FUI_BP_InputAction_CKeyboardButtonClicked
---@field IsPrimary boolean
---@field GroupName FName
---@field IsLocked boolean
---@field KeyboardButtonHovered FUI_BP_InputAction_CKeyboardButtonHovered
---@field KeyboardButtonUnhovered FUI_BP_InputAction_CKeyboardButtonUnhovered
local UUI_BP_InputAction_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InputAction_C:GatherMenuReaderStrings(DepthLevel) end
---@param Key FInputActionKeyMapping
---@param IsPrimary boolean
---@param IsLocked boolean
function UUI_BP_InputAction_C:SetKeyboardKey(Key, IsPrimary, IsLocked) end
function UUI_BP_InputAction_C:BndEvt__KeyboardButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_InputAction_C:BndEvt__KeyboardButton_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_InputAction_C:BndEvt__KeyboardButton_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_InputAction_C:ExecuteUbergraph_UI_BP_InputAction(EntryPoint) end
---@param IsPrimary boolean
---@param InputAction UUI_BP_InputAction_C
function UUI_BP_InputAction_C:KeyboardButtonUnhovered__DelegateSignature(IsPrimary, InputAction) end
---@param IsPrimary boolean
---@param InputAction UUI_BP_InputAction_C
function UUI_BP_InputAction_C:KeyboardButtonHovered__DelegateSignature(IsPrimary, InputAction) end
---@param IsPrimary boolean
---@param InputAction UUI_BP_InputAction_C
function UUI_BP_InputAction_C:KeyboardButtonClicked__DelegateSignature(IsPrimary, InputAction) end


