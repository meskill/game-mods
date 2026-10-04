---@meta

---@class AUMGInputManager : AActor
---@field ReferenceUMGInputAction EUMGInputAction
---@field ReferenceUMGInputAxis EUMGInputAxis
---@field UMGInputActionListeners TMap<FUMGInputActionInfo, FUMGInputListenerStack>
---@field UMGInputAxisListeners TMap<EUMGInputAxis, FUMGInputListenerStack>
---@field UMGTouchListeners TMap<FUMGInputActionInfo, FUMGInputListenerStack>
local AUMGInputManager = {}

---@param InputListener FUMGInputListener
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:UnregisterUMGTouch(InputListener, InputAction, InputEvent) end
---@param InputListener FUMGInputListener
function AUMGInputManager:UnregisterUMGInputListener(InputListener) end
---@param InputListener FUMGInputListener
---@param InputAxis EUMGInputAxis
function AUMGInputManager:UnregisterUMGInputAxis(InputListener, InputAxis) end
---@param InputListener FUMGInputListener
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:UnregisterUMGInputAction(InputListener, InputAction, InputEvent) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:UnregisterInputTouch(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
function AUMGInputManager:UnregisterInputAxis(InputAxis) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:UnregisterInputAction(InputAction, InputEvent) end
---@param InputListener FUMGInputListener
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:RegisterUMGTouch(InputListener, InputAction, InputEvent) end
---@param InputListener FUMGInputListener
---@param InputAxis EUMGInputAxis
function AUMGInputManager:RegisterUMGInputAxis(InputListener, InputAxis) end
---@param InputListener FUMGInputListener
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:RegisterUMGInputAction(InputListener, InputAction, InputEvent) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:RegisterInputTouch(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
function AUMGInputManager:RegisterInputAxis(InputAxis) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:RegisterInputAction(InputAction, InputEvent) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:OnTouchAction(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
---@param AxisValue float
function AUMGInputManager:OnInputAxis(InputAxis, AxisValue) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:OnInputAction(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
---@return FString
function AUMGInputManager:GetInputAxisEnumValueAsString(InputAxis) end
---@param InputAction EUMGInputAction
---@return FString
function AUMGInputManager:GetInputActionEnumValueAsString(InputAction) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:CreateTouchActionBinding(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
function AUMGInputManager:CreateInputAxisBinding(InputAxis) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function AUMGInputManager:CreateInputActionBinding(InputAction, InputEvent) end


---@class FUMGConsolidatedAxisInputData
---@field bAnyAxisInputSinceLastTick boolean
---@field LeftThumbstickAxisValues FVector2D
---@field RightThumbstickAxisValues FVector2D
---@field LeftTriggerAxisValue float
---@field RightTriggerAxisValue float
---@field MouseWheelAxisValue float
---@field MouseAxisValues FVector2D
---@field TouchpadAxisValues FVector2D
local FUMGConsolidatedAxisInputData = {}



---@class FUMGInputActionInfo
---@field InputAction EUMGInputAction
---@field InputEvent EInputEvent
local FUMGInputActionInfo = {}



---@class FUMGInputListener
---@field UIPriority int32
---@field UMGFocusWidget UUMGFocusWidget
local FUMGInputListener = {}



---@class FUMGInputListenerStack
---@field InputListenerStack TArray<FUMGInputListener>
local FUMGInputListenerStack = {}



---@class UUMGFocusManager : UObject
---@field UMGInputManager AUMGInputManager
local UUMGFocusManager = {}



---@class UUMGFocusWidget : UUserWidget
---@field FocusInputPriority int32
---@field FocusInputActions TArray<EUMGInputAction>
---@field FocusInputAxis TArray<EUMGInputAxis>
---@field ConsolidatedAxisInputData FUMGConsolidatedAxisInputData
---@field bHasFocus boolean
local UUMGFocusWidget = {}

---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function UUMGFocusWidget:UnregisterUMGTouchAction(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
function UUMGFocusWidget:UnregisterUMGInputAxis(InputAxis) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function UUMGFocusWidget:UnregisterUMGInputAction(InputAction, InputEvent) end
function UUMGFocusWidget:UnregisterAllUMGInputAxis() end
---@param InputEvent EInputEvent
function UUMGFocusWidget:UnregisterAllUMGInputActions(InputEvent) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function UUMGFocusWidget:RegisterUMGTouchAction(InputAction, InputEvent) end
---@param InputAxis EUMGInputAxis
function UUMGFocusWidget:RegisterUMGInputAxis(InputAxis) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
function UUMGFocusWidget:RegisterUMGInputAction(InputAction, InputEvent) end
function UUMGFocusWidget:RegisterAllUMGInputAxis() end
---@param InputEvent EInputEvent
function UUMGFocusWidget:RegisterAllUMGInputActions(InputEvent) end
function UUMGFocusWidget:LoseFocus() end
---@return boolean
function UUMGFocusWidget:HasFocus() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUMGFocusWidget:BlueprintOnUMGInputAction(InputAction, InputEvent) end
function UUMGFocusWidget:BlueprintFocusLost() end
function UUMGFocusWidget:BlueprintFocusAcquired() end
---@param AxisInputData FUMGConsolidatedAxisInputData
function UUMGFocusWidget:BlueprintConsolidatedUMGInputAxis(AxisInputData) end
function UUMGFocusWidget:AcquireFocus() end


