---@meta

---@class UUI_BP_InputAxis_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnInputAxisSelected UWidgetAnimation
---@field OnInputAxisHovered UWidgetAnimation
---@field buttonBack UImage
---@field goldleafBorder UImage
---@field highlight UImage
---@field KBTextBlock UPhoenixRichTextBlock
---@field KeyboardButton UButton
---@field LockedIcon UImage
---@field DisplayActionName FString
---@field KeyboardKey FInputAxisKeyMapping
---@field KeyboardButtonClicked FUI_BP_InputAxis_CKeyboardButtonClicked
---@field RealActionName FString
---@field AxisName FName
---@field IsPrimary boolean
---@field GroupName FName
---@field IsLocked boolean
---@field KeyboardButtonHovered FUI_BP_InputAxis_CKeyboardButtonHovered
---@field KeyboardButtonUnhovered FUI_BP_InputAxis_CKeyboardButtonUnhovered
local UUI_BP_InputAxis_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InputAxis_C:GatherMenuReaderStrings(DepthLevel) end
---@param IsRebinding boolean
function UUI_BP_InputAxis_C:SetRebindingFlair(IsRebinding) end
---@param Key FInputAxisKeyMapping
---@param IsPrimary boolean
---@param IsLocked boolean
function UUI_BP_InputAxis_C:SetKeyboardKey(Key, IsPrimary, IsLocked) end
function UUI_BP_InputAxis_C:BndEvt__KeyboardButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_InputAxis_C:BndEvt__KeyboardButton_K2Node_ComponentBoundEvent_3_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_InputAxis_C:BndEvt__KeyboardButton_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UUI_BP_InputAxis_C:ExecuteUbergraph_UI_BP_InputAxis(EntryPoint) end
---@param IsPrimary boolean
---@param InputAxis UUI_BP_InputAxis_C
function UUI_BP_InputAxis_C:KeyboardButtonUnhovered__DelegateSignature(IsPrimary, InputAxis) end
---@param IsPrimary boolean
---@param InputAxis UUI_BP_InputAxis_C
function UUI_BP_InputAxis_C:KeyboardButtonHovered__DelegateSignature(IsPrimary, InputAxis) end
---@param IsPrimary boolean
---@param InputAxis UUI_BP_InputAxis_C
function UUI_BP_InputAxis_C:KeyboardButtonClicked__DelegateSignature(IsPrimary, InputAxis) end


