---@meta

---@class UUI_BP_InputActionAlt_Row_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnInputActionSelected UWidgetAnimation
---@field OnInputActionHovered UWidgetAnimation
---@field ActionNameBox UPhoenixTextBlock
---@field AlternativeInput UUI_BP_InputAction_C
---@field NoBindingIcon UPhoenixImage
---@field PrimaryInput UUI_BP_InputAction_C
---@field GroupName FName
---@field ActionName FName
---@field Primary FInputActionKeyMapping
---@field Alternative FInputActionKeyMapping
---@field InputClicked FUI_BP_InputActionAlt_Row_CInputClicked
---@field ForbiddenKeys TArray<FKey>
---@field DefaultTitleColor FSlateColor
---@field NoBindingTitleColor FSlateColor
---@field InputHovered FUI_BP_InputActionAlt_Row_CInputHovered
---@field InputUnhovered FUI_BP_InputActionAlt_Row_CInputUnhovered
---@field LastHoveredInputAction UUI_BP_InputAction_C
local UUI_BP_InputActionAlt_Row_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InputActionAlt_Row_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_InputActionAlt_Row_C:UpdateConflictState() end
---@param IsPrimary boolean
function UUI_BP_InputActionAlt_Row_C:UpdateTelemetry(IsPrimary) end
---@param IsPrimary boolean
---@param InputAction UUI_BP_InputAction_C
function UUI_BP_InputActionAlt_Row_C:HandleUnhovered(IsPrimary, InputAction) end
---@param IsPrimary boolean
---@param InputAction UUI_BP_InputAction_C
function UUI_BP_InputActionAlt_Row_C:HandleHovered(IsPrimary, InputAction) end
---@param IsPrimary boolean
---@param InputAction UUI_BP_InputAction_C
function UUI_BP_InputActionAlt_Row_C:HandleClicked(IsPrimary, InputAction) end
function UUI_BP_InputActionAlt_Row_C:SetActionNameDefault() end
function UUI_BP_InputActionAlt_Row_C:SetActionNameHighlight() end
---@param IsRebinding boolean
function UUI_BP_InputActionAlt_Row_C:SetRebindingFlair(IsRebinding) end
function UUI_BP_InputActionAlt_Row_C:Construct() end
---@param EntryPoint int32
function UUI_BP_InputActionAlt_Row_C:ExecuteUbergraph_UI_BP_InputActionAlt_Row(EntryPoint) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_InputActionAlt_Row_C:InputUnhovered__DelegateSignature(Row, IsPrimary) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_InputActionAlt_Row_C:InputHovered__DelegateSignature(Row, IsPrimary) end
---@param Row UUI_BP_InputActionAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_InputActionAlt_Row_C:InputClicked__DelegateSignature(Row, IsPrimary) end


