---@meta

---@class UUI_BP_CombatParry_ButtonCallout_C : UCombatParryButtonCallout
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ResetWidget UWidgetAnimation
---@field OutroNeutral UWidgetAnimation
---@field OutroSuccess UWidgetAnimation
---@field OutroFail UWidgetAnimation
---@field NormalTiming UWidgetAnimation
---@field PerfectTiming UWidgetAnimation
---@field Button UPhoenixRichTextBlock
---@field ButtonFlame UPhoenixImage
---@field ButtonFrame UImage
---@field ButtonPulse UPhoenixImage
---@field Canvas UCanvasPanel
---@field InitialButtonRing UImage
---@field InitialButtonRing_1 UImage
---@field Ring UImage
---@field RingBorder UBorder
---@field ShatterButton UImage
---@field ShatterButtonFrame UImage
---@field ShatteredPanel UCanvasPanel
---@field ButtonColor_B FLinearColor
---@field ButtonColor_Circle FLinearColor
---@field ButtonColor_Y FLinearColor
---@field ButtonColor_Triangle FLinearColor
---@field ButtonColor_Keyboard FLinearColor
---@field CurrentCombatParryType ECombatParryType
---@field CurrentUIPlatformInputDevice EUIPlatformInputDevice
---@field CanTweakFrame boolean
---@field ParryTimeProgress float
---@field CanPlayPerfectTiming boolean
---@field Protego_Edge FLinearColor
---@field Protego_Center FLinearColor
---@field Dodge_Edge FLinearColor
---@field Dodge_Center FLinearColor
local UUI_BP_CombatParry_ButtonCallout_C = {}

UUI_BP_CombatParry_ButtonCallout_C['Refresh Platform Specific Button'] = function(self, ) end
---@param bPerfectTiming boolean
function UUI_BP_CombatParry_ButtonCallout_C:BlueprintSetPerfectTimingState(bPerfectTiming) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_CombatParry_ButtonCallout_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_CombatParry_ButtonCallout_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_CombatParry_ButtonCallout_C:OnOutroEnded(OutroType) end
function UUI_BP_CombatParry_ButtonCallout_C:OnInputDeviceChanged() end
---@param IntroType int32
function UUI_BP_CombatParry_ButtonCallout_C:OnIntroEnded(IntroType) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_CombatParry_ButtonCallout_C:Tick(MyGeometry, InDeltaTime) end
---@param ParryType ECombatParryType
function UUI_BP_CombatParry_ButtonCallout_C:BlueprintSetParryType(ParryType) end
function UUI_BP_CombatParry_ButtonCallout_C:Construct() end
---@param EntryPoint int32
function UUI_BP_CombatParry_ButtonCallout_C:ExecuteUbergraph_UI_BP_CombatParry_ButtonCallout(EntryPoint) end


