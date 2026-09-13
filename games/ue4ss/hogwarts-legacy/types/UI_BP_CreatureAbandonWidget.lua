---@meta

---@class UUI_BP_CreatureAbandonWidget_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimateIn UWidgetAnimation
---@field AreYouSureText UPhoenixTextBlock
---@field boxBorder UOverlay
---@field CreatureGenderIcon UImage
---@field CreatureImage UImage
---@field CreatureNameText UPhoenixTextBlock
---@field menuBoxTitle UPhoenixTextBlock
---@field PopupLegend UUI_BP_Legend_Horizontal_Tooltip_C
---@field PregnancyIcon UImage
---@field OnClosed FUI_BP_CreatureAbandonWidget_COnClosed
local UUI_BP_CreatureAbandonWidget_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureAbandonWidget_C:GatherMenuReaderStrings(DepthLevel) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_CreatureAbandonWidget_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureAbandonWidget_C:SetCreatureState(CreatureState) end
---@param IsDesignTime boolean
function UUI_BP_CreatureAbandonWidget_C:PreConstruct(IsDesignTime) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_CreatureAbandonWidget_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_CreatureAbandonWidget_C:OnOutroStarted(OutroType, OutroDuration) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureAbandonWidget_C:I_SetCreatureState(CreatureState) end
---@param OutroType int32
function UUI_BP_CreatureAbandonWidget_C:OnOutroEnded(OutroType) end
---@param IntroType int32
function UUI_BP_CreatureAbandonWidget_C:OnIntroEnded(IntroType) end
---@param EntryPoint int32
function UUI_BP_CreatureAbandonWidget_C:ExecuteUbergraph_UI_BP_CreatureAbandonWidget(EntryPoint) end
function UUI_BP_CreatureAbandonWidget_C:OnClosed__DelegateSignature() end


