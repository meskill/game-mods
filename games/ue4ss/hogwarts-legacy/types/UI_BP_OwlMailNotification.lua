---@meta

---@class UUI_BP_OwlMailNotification_C : UOwlMailNotification
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowSenderNameTransition UWidgetAnimation
---@field CloseEnvelope UWidgetAnimation
---@field ResetEnvelope UWidgetAnimation
---@field ShowSender UWidgetAnimation
---@field FadeOut UWidgetAnimation
---@field FadeIn UWidgetAnimation
---@field ReadLegend UUI_BP_LegendItem_C
---@field SenderIcon UImage
---@field SenderName UPhoenixTextBlock
---@field AwaitingInput boolean
---@field QueuedEntries TArray<FMailEntry>
---@field CurrentMailEntry FMailEntry
---@field CurrentCountdownTime float
---@field MaxCountdownTime float
---@field isSenderShowing boolean
---@field isAutoPlay boolean
local UUI_BP_OwlMailNotification_C = {}

function UUI_BP_OwlMailNotification_C:SequenceEvent__ENTRYPOINTUI_BP_OwlMailNotification_1() end
function UUI_BP_OwlMailNotification_C:SequenceEvent__ENTRYPOINTUI_BP_OwlMailNotification_0() end
---@param NewEntry FMailEntry
---@param DisplayPriority int32
function UUI_BP_OwlMailNotification_C:QueueNotification(NewEntry, DisplayPriority) end
function UUI_BP_OwlMailNotification_C:HideMailNotification() end
---@param MailEntry FMailEntry
function UUI_BP_OwlMailNotification_C:ShowMailNotification(MailEntry) end
function UUI_BP_OwlMailNotification_C:OnInitialized() end
---@param Caller UObject
function UUI_BP_OwlMailNotification_C:ShowOwlMail(Caller) end
function UUI_BP_OwlMailNotification_C:WidgetAnimationEvt_FadeIn_K2Node_WidgetAnimationEvent_0() end
function UUI_BP_OwlMailNotification_C:WidgetAnimationEvt_FadeOut_K2Node_WidgetAnimationEvent_1() end
function UUI_BP_OwlMailNotification_C:DialogueLineComplete() end
---@param IsDesignTime boolean
function UUI_BP_OwlMailNotification_C:PreConstruct(IsDesignTime) end
function UUI_BP_OwlMailNotification_C:ReadMail() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_OwlMailNotification_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_OwlMailNotification_C:OnEnvelopeClosed() end
function UUI_BP_OwlMailNotification_C:CheckToShowNameTransition() end
function UUI_BP_OwlMailNotification_C:Destruct() end
---@param EntryPoint int32
function UUI_BP_OwlMailNotification_C:ExecuteUbergraph_UI_BP_OwlMailNotification(EntryPoint) end


