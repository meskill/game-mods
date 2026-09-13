---@meta

---@class UFloatingModloaderMainWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CloseButton UButton
---@field CloseText UTextBlock
---@field Color UImage
---@field MainCanvas UCanvasPanel
---@field MainScrollBox UScrollBox
---@field MinimizeButton UButton
---@field MinimizeText UTextBlock
---@field ScalingButton UButton
---@field ScrollBoxVerticalBox UVerticalBox
---@field textBox UEditableText
---@field TopWindowButton UButton
---@field MousePosition FVector2D
---@field DeltaPosition FVector2D
---@field ['Minimized?'] boolean
---@field MaximizedScale FVector2D
---@field ModLoaderSave UModLoaderSave_C
---@field ChildCount int32
---@field Location FVector
---@field Rotation FRotator
---@field ChildWidget UModloaderChildWidget_C
---@field MinimumX float
---@field MinimumY float
---@field MenuKey FKey
---@field LoadSuccess boolean
local UFloatingModloaderMainWidget_C = {}

---@param ChildText FText
function UFloatingModloaderMainWidget_C:AddChildFunc(ChildText) end
---@param TextToPrint FString
---@param NewWindow_ boolean
function UFloatingModloaderMainWidget_C:PrintToDebug(TextToPrint, NewWindow_) end
function UFloatingModloaderMainWidget_C:StopPositionTimer() end
function UFloatingModloaderMainWidget_C:StartPositionTimer() end
function UFloatingModloaderMainWidget_C:BndEvt__Button_41_K2Node_ComponentBoundEvent_174_OnButtonReleasedEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__Button_41_K2Node_ComponentBoundEvent_161_OnButtonPressedEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:StopScalingTimer() end
function UFloatingModloaderMainWidget_C:StartScalingTimer() end
function UFloatingModloaderMainWidget_C:BndEvt__ScalingButton_K2Node_ComponentBoundEvent_1_OnButtonReleasedEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__ScalingButton_K2Node_ComponentBoundEvent_0_OnButtonPressedEvent__DelegateSignature() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UFloatingModloaderMainWidget_C:Tick(MyGeometry, InDeltaTime) end
function UFloatingModloaderMainWidget_C:Construct() end
function UFloatingModloaderMainWidget_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_3_OnButtonPressedEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__PauseButton_K2Node_ComponentBoundEvent_4_OnButtonPressedEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__MinimizeButton_K2Node_ComponentBoundEvent_9_OnButtonHoverEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__MinimizeButton_K2Node_ComponentBoundEvent_8_OnButtonHoverEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_7_OnButtonHoverEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_6_OnButtonHoverEvent__DelegateSignature() end
function UFloatingModloaderMainWidget_C:ChildrenCountTimer() end
function UFloatingModloaderMainWidget_C:LoadEvent() end
function UFloatingModloaderMainWidget_C:CountChildrenEvent() end
function UFloatingModloaderMainWidget_C:SaveEvent() end
function UFloatingModloaderMainWidget_C:ShowEvent() end
function UFloatingModloaderMainWidget_C:KeyboardFocusEvent() end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UFloatingModloaderMainWidget_C:BndEvt__TextBox_K2Node_ComponentBoundEvent_0_OnEditableTextCommittedEvent__DelegateSignature(Text, CommitMethod) end
function UFloatingModloaderMainWidget_C:Destruct() end
function UFloatingModloaderMainWidget_C:VisibilityToggleEvent() end
---@param LevelInstance ULevelStreamingDynamic
---@param CallingWidget UModloaderChildWidget_C
function UFloatingModloaderMainWidget_C:ChildRemovedEvent(LevelInstance, CallingWidget) end
---@param EntryPoint int32
function UFloatingModloaderMainWidget_C:ExecuteUbergraph_FloatingModloaderMainWidget(EntryPoint) end


