---@meta

---@class UPrintWindowWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CloseButton UButton
---@field CloseText UTextBlock
---@field Color UImage
---@field MainCanvas UCanvasPanel
---@field MainScrollBox UScrollBox
---@field MinimizeButton UButton
---@field MinimizeText UTextBlock
---@field ScalingButton UButton
---@field textBox UMultiLineEditableText
---@field TopBackground UImage
---@field TopWindowButton UButton
---@field MousePosition FVector2D
---@field DeltaPosition FVector2D
---@field ['Minimized?'] boolean
---@field MaximizedScale FVector2D
local UPrintWindowWidget_C = {}

---@param TextToAdd FString
function UPrintWindowWidget_C:PrintText(TextToAdd) end
function UPrintWindowWidget_C:StopPositionTimer() end
function UPrintWindowWidget_C:StartPositionTimer() end
function UPrintWindowWidget_C:BndEvt__Button_41_K2Node_ComponentBoundEvent_174_OnButtonReleasedEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__Button_41_K2Node_ComponentBoundEvent_161_OnButtonPressedEvent__DelegateSignature() end
function UPrintWindowWidget_C:StopScalingTimer() end
function UPrintWindowWidget_C:StartScalingTimer() end
function UPrintWindowWidget_C:BndEvt__ScalingButton_K2Node_ComponentBoundEvent_1_OnButtonReleasedEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__ScalingButton_K2Node_ComponentBoundEvent_0_OnButtonPressedEvent__DelegateSignature() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UPrintWindowWidget_C:Tick(MyGeometry, InDeltaTime) end
function UPrintWindowWidget_C:Construct() end
function UPrintWindowWidget_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_3_OnButtonPressedEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__PauseButton_K2Node_ComponentBoundEvent_4_OnButtonPressedEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__MinimizeButton_K2Node_ComponentBoundEvent_9_OnButtonHoverEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__MinimizeButton_K2Node_ComponentBoundEvent_8_OnButtonHoverEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_7_OnButtonHoverEvent__DelegateSignature() end
function UPrintWindowWidget_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_6_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UPrintWindowWidget_C:ExecuteUbergraph_PrintWindowWidget(EntryPoint) end


