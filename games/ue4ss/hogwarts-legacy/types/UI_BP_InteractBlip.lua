---@meta

---@class UUI_BP_InteractBlip_C : UHUDElementGroup
---@field UberGraphFrame FPointerToUberGraphFrame
---@field FadeintoInteract UWidgetAnimation
---@field ActionText UPhoenixRichTextBlock
---@field Blip UCanvasPanel
---@field ButtonCallout UPhoenixRichTextBlock
---@field ButtonPrompt UCanvasPanel
---@field descriptionText UPhoenixTextBlock
---@field LockBG UImage
---@field Meter UCanvasPanel
---@field meterBar UImage
---@field MissionImage UImage
---@field NoMeterButton UCanvasPanel
---@field seperator UScaleBox
---@field SquareMeter UCanvasPanel
---@field squareMeterBar_1 UImage
---@field TargetBlip UImage
---@field TrackBorder UImage
---@field ParentActor AActor
---@field EnemyAIComponent UBP_EnemyAI_C
---@field ObjectStateInfo UObjectStateInfo
---@field Finisher boolean
---@field CallOutComponent UCallOutComponent
---@field PlayerPawn ABiped_Player
---@field InteractHeld boolean
---@field ChargeTime float
---@field HeldTime float
---@field FadeSpeed float
---@field InteractButtonPressedHandle FHermesBPDelegateHandle
---@field InteractCancelledHandle FHermesBPDelegateHandle
---@field RefreshCalloutsHandle FHermesBPDelegateHandle
---@field ShowButtonsFlagChangedHandle FHermesBPDelegateHandle
---@field CachedButtonInfoResult boolean
local UUI_BP_InteractBlip_C = {}

---@return UWidget
function UUI_BP_InteractBlip_C:GetOffscreenIndicator() end
---@param OutroType int32
---@return float
function UUI_BP_InteractBlip_C:GetOutroDuration(OutroType) end
function UUI_BP_InteractBlip_C:DefferedShowButtonInfo() end
---@param LoadedTex UTexture2D
---@param CallbackObj UObject
function UUI_BP_InteractBlip_C:SetTrackBorderIcon(LoadedTex, CallbackObj) end
---@param CogStimSource UCognitionStimuliSourceComponent
function UUI_BP_InteractBlip_C:MeterVisibility(CogStimSource) end
---@param Result boolean
function UUI_BP_InteractBlip_C:ShowingKeyboard(Result) end
---@param Condition boolean
function UUI_BP_InteractBlip_C:ShowButtonInfo(Condition) end
---@param CognitionStimuliSourceComponent UCognitionStimuliSourceComponent
---@return FSlateColor
function UUI_BP_InteractBlip_C:GetTextColor(CognitionStimuliSourceComponent) end
function UUI_BP_InteractBlip_C:MissionIcon() end
function UUI_BP_InteractBlip_C:ResetMeterBar() end
function UUI_BP_InteractBlip_C:ActionSetup() end
---@param CachedResult boolean
function UUI_BP_InteractBlip_C:GameLogicElementEvt_InteractButtonWatcher_Prompt_K2Node_GameLogicBoolResultEvent_0(CachedResult) end
---@param CharacterID FName
---@param BarPercent float
function UUI_BP_InteractBlip_C:UpdateCallOutUI(CharacterID, BarPercent) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_InteractBlip_C:Tick(MyGeometry, InDeltaTime) end
---@param Parent AActor
---@param CallOutComponent UCallOutComponent
function UUI_BP_InteractBlip_C:SetupWidget(Parent, CallOutComponent) end
function UUI_BP_InteractBlip_C:Construct() end
function UUI_BP_InteractBlip_C:Destruct() end
---@param Revealio boolean
function UUI_BP_InteractBlip_C:ShowWidget(Revealio) end
---@param Caller UObject
function UUI_BP_InteractBlip_C:InteractionButtonPressed(Caller) end
---@param Caller UObject
function UUI_BP_InteractBlip_C:InteractionCancelled(Caller) end
---@param IsOffscreen boolean
function UUI_BP_InteractBlip_C:SetIsOffscreenCallout(IsOffscreen) end
---@param HasOffscreenProxy boolean
function UUI_BP_InteractBlip_C:SetHasOffscreenProxyActive(HasOffscreenProxy) end
---@param bFromUpdate boolean
function UUI_BP_InteractBlip_C:AwareStateInfoChanged(bFromUpdate) end
---@param Revealio boolean
function UUI_BP_InteractBlip_C:AttackThreatDataChange(Revealio) end
---@param Caller UObject
function UUI_BP_InteractBlip_C:RefreshButtonCallouts(Caller) end
function UUI_BP_InteractBlip_C:BeaconChanged() end
---@param Caller UObject
---@param int int32
function UUI_BP_InteractBlip_C:ShowButtonGraphicsFlagChanged(Caller, int) end
---@param EntryPoint int32
function UUI_BP_InteractBlip_C:ExecuteUbergraph_UI_BP_InteractBlip(EntryPoint) end


