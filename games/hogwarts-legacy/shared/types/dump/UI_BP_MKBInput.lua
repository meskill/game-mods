---@meta

---@class UUI_BP_MKBInput_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CancelCallout UPhoenixRichTextBlock
---@field CancelCallout_MenuLMB UPhoenixRichTextBlock
---@field CancelRebindCallout UPhoenixRichTextBlock
---@field CancelRebindText UPhoenixTextBlock
---@field CancelText UPhoenixTextBlock
---@field CancelText_MenuLMB UPhoenixTextBlock
---@field ConfirmCallout UPhoenixRichTextBlock
---@field ConfirmText UPhoenixTextBlock
---@field ConflictList UVerticalBox
---@field ConflictsText_MenuLMB UPhoenixRichTextBlock
---@field ConflictsText_Multiple UPhoenixRichTextBlock
---@field ConflictTitle UPhoenixTextBlock
---@field ContentSwitcher UWidgetSwitcher
---@field InputBlockerPanel UCanvasPanel
---@field panelBack UUI_BP_FG_DetailsPanelBack_C
---@field RebindTitle UPhoenixTextBlock
---@field RetryCallout UPhoenixRichTextBlock
---@field RetryCallout_MenuLMB UPhoenixRichTextBlock
---@field RetryText UPhoenixTextBlock
---@field RetryText_MenuLMB UPhoenixTextBlock
---@field ForbiddenKeys TArray<FKey>
---@field OneDirectionalAxes TArray<FName>
---@field Parent UUI_BP_KeyMapping_C
---@field CurrentActionRow UUI_BP_InputActionAlt_Row_C
---@field CurrentAxisRow UUI_BP_InputAxisAlt_Row_C
---@field RebindIsPrimary boolean
---@field IsWaitingForInputForRebind boolean
---@field CachedConflictingActions TArray<FInputActionKeyMapping>
---@field CachedConflictingAxes TArray<FInputAxisKeyMapping>
---@field CachedQueuedActionMapping FInputActionKeyMapping
---@field CachedQueuedAxisMapping FInputAxisKeyMapping
---@field CachedQueuedMappingIsAxis boolean
---@field CachedConflictItems TArray<UPhoenixUserWidget>
local UUI_BP_MKBInput_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_MKBInput_C:GatherMenuReaderStrings(DepthLevel) end
---@param InAxisName FName
---@param GroupName FName
---@return int32
function UUI_BP_MKBInput_C:GetAxisStaticVariables(InAxisName, GroupName) end
---@param InActionName FName
---@param GroupName FName
---@return int32
function UUI_BP_MKBInput_C:GetActionStaticVariables(InActionName, GroupName) end
function UUI_BP_MKBInput_C:ConfirmCachedConflicts() end
---@param Key FKey
---@param ActionName FName
---@param RetVal boolean
UUI_BP_MKBInput_C['Is Key for Action'] = function(self, Key, ActionName, RetVal) end
---@param Key FKey
---@param ConflictingActions TArray<FInputActionKeyMapping>
---@param ConflictingAxes TArray<FInputAxisKeyMapping>
function UUI_BP_MKBInput_C:ShowConflictUI(Key, ConflictingActions, ConflictingAxes) end
---@param Input FKey
function UUI_BP_MKBInput_C:HandleRebind(Input) end
---@param Scale float
UUI_BP_MKBInput_C['GetCurrentAxisRowAxis Scale'] = function(self, Scale) end
---@param NewAxis FInputAxisKeyMapping
---@param Success boolean
---@param ConflictingInputActions TArray<FInputActionKeyMapping>
---@param ConflictingInputAxes TArray<FInputAxisKeyMapping>
function UUI_BP_MKBInput_C:UpdateAxisMapping(NewAxis, Success, ConflictingInputActions, ConflictingInputAxes) end
---@param NewAction FInputActionKeyMapping
---@param Success boolean
---@param ConflictingActions TArray<FInputActionKeyMapping>
---@param ConflictingAxes TArray<FInputAxisKeyMapping>
function UUI_BP_MKBInput_C:UpdateActionMapping(NewAction, Success, ConflictingActions, ConflictingAxes) end
---@param InputKey FKey
---@param IsValid boolean
function UUI_BP_MKBInput_C:ValidateInput(InputKey, IsValid) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUI_BP_MKBInput_C:OnMouseWheel(MyGeometry, MouseEvent) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUI_BP_MKBInput_C:OnMouseButtonDown(MyGeometry, MouseEvent) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UUI_BP_MKBInput_C:OnKeyDown(MyGeometry, InKeyEvent) end
---@param IsDesignTime boolean
function UUI_BP_MKBInput_C:PreConstruct(IsDesignTime) end
function UUI_BP_MKBInput_C:Construct() end
---@param InFocusEvent FFocusEvent
function UUI_BP_MKBInput_C:OnFocusLost(InFocusEvent) end
---@param EntryPoint int32
function UUI_BP_MKBInput_C:ExecuteUbergraph_UI_BP_MKBInput(EntryPoint) end


