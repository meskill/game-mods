---@meta

---@class UUI_BP_InputAxisAlt_Row_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnInputAxisSelected UWidgetAnimation
---@field OnInputAxisHovered UWidgetAnimation
---@field ActionNameBox UPhoenixTextBlock
---@field AlternativeInput UUI_BP_InputAxis_C
---@field NoBindingIcon UPhoenixImage
---@field PrimaryInput UUI_BP_InputAxis_C
---@field Primary FInputAxisKeyMapping
---@field FakeLockedPrimary FInputAxisKeyMapping
---@field Alternative FInputAxisKeyMapping
---@field AxisName FName
---@field IsBiDirectionalAxis boolean
---@field IsPositiveAxis boolean
---@field InputClicked FUI_BP_InputAxisAlt_Row_CInputClicked
---@field GroupName FName
---@field ForbiddenKeys TArray<FKey>
---@field TitleTextKey FString
---@field DefaultTitleColor FSlateColor
---@field NoBindingTitleColor FSlateColor
---@field InputHovered FUI_BP_InputAxisAlt_Row_CInputHovered
---@field InputUnhovered FUI_BP_InputAxisAlt_Row_CInputUnhovered
local UUI_BP_InputAxisAlt_Row_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_InputAxisAlt_Row_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_InputAxisAlt_Row_C:UpdateConflictState() end
UUI_BP_InputAxisAlt_Row_C['Rebuild Row'] = function(self, ) end
---@param IsPrimary boolean
function UUI_BP_InputAxisAlt_Row_C:UpdateTelemetry(IsPrimary) end
---@param IsPrimary boolean
---@param InputAxis UUI_BP_InputAxis_C
function UUI_BP_InputAxisAlt_Row_C:HandleUnhovered(IsPrimary, InputAxis) end
---@param IsPrimary boolean
---@param InputAxis UUI_BP_InputAxis_C
function UUI_BP_InputAxisAlt_Row_C:HandleHovered(IsPrimary, InputAxis) end
---@param IsPrimary boolean
---@param InputAxis UUI_BP_InputAxis_C
function UUI_BP_InputAxisAlt_Row_C:HandleClicked(IsPrimary, InputAxis) end
---@param IsRebinding boolean
function UUI_BP_InputAxisAlt_Row_C:SetRebindingFlair(IsRebinding) end
function UUI_BP_InputAxisAlt_Row_C:Construct() end
---@param EntryPoint int32
function UUI_BP_InputAxisAlt_Row_C:ExecuteUbergraph_UI_BP_InputAxisAlt_Row(EntryPoint) end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_InputAxisAlt_Row_C:InputUnhovered__DelegateSignature(Row, IsPrimary) end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_InputAxisAlt_Row_C:InputHovered__DelegateSignature(Row, IsPrimary) end
---@param Row UUI_BP_InputAxisAlt_Row_C
---@param IsPrimary boolean
function UUI_BP_InputAxisAlt_Row_C:InputClicked__DelegateSignature(Row, IsPrimary) end


