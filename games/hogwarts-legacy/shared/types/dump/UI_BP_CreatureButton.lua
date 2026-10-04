---@meta

---@class UUI_BP_CreatureButton_C : UIconButtonWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OnHoverAnimation UWidgetAnimation
---@field OnSelectedAnimation UWidgetAnimation
---@field CreatureAlbinoIcon UImage
---@field CreatureGenderIcon UImage
---@field CreatureImage UImage
---@field CreatureNameText UPhoenixTextBlock
---@field creatureSizeBox USizeBox
---@field emptyImage UImage
---@field newHighlight UImage
---@field ReadyInLabel UPhoenixTextBlock
---@field StatusSizeBox USizeBox
---@field statusText UPhoenixTextBlock
---@field StatusTime UCanvasPanel
---@field StatusWidgetSwitcher UWidgetSwitcher
---@field timeText UPhoenixTextBlock
---@field UI_BP_CreatureStatusSummary UUI_BP_CreatureStatusSummary_C
---@field CreatureState UCreatureState
---@field OnHovered FUI_BP_CreatureButton_COnHovered
---@field OnUnhovered FUI_BP_CreatureButton_COnUnhovered
---@field OnClicked FUI_BP_CreatureButton_COnClicked
---@field UnbornCreature_MotherState TSoftObjectPtr<UCreatureState>
---@field CreatureDefinition UCreatureDefinition
---@field AdultCreatureDefinition UCreatureDefinition
---@field UnbornCreatureState UCreatureState
---@field isButtonHovered boolean
---@field AlwaysClickable boolean
---@field CreatureIndex int32
---@field IsEmpty boolean
---@field IsMale boolean
---@field IsAlbino boolean
local UUI_BP_CreatureButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureButton_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_CreatureButton_C:UpdateBeastState() end
---@param ShowEmptySlot boolean
UUI_BP_CreatureButton_C['Set Is Empty'] = function(self, ShowEmptySlot) end
---@param BeastTypeIndex int32
function UUI_BP_CreatureButton_C:ToggleBeastState(BeastTypeIndex) end
function UUI_BP_CreatureButton_C:PlaySelectedAnimation() end
function UUI_BP_CreatureButton_C:InitPregnantCreature() end
---@param Enabled boolean
function UUI_BP_CreatureButton_C:SetEnabled(Enabled) end
function UUI_BP_CreatureButton_C:UpdateReservedSlot() end
function UUI_BP_CreatureButton_C:UpdatePregnantCreature() end
function UUI_BP_CreatureButton_C:UpdateEgg() end
function UUI_BP_CreatureButton_C:UpdateHatchingProgress() end
function UUI_BP_CreatureButton_C:UpdateRegularCreatureStatusLabel() end
function UUI_BP_CreatureButton_C:UpdateRegularCreature() end
function UUI_BP_CreatureButton_C:UpdateUnbornCreature() end
function UUI_BP_CreatureButton_C:UpdateGestationProgress() end
---@param Result boolean
function UUI_BP_CreatureButton_C:IsHoverable(Result) end
function UUI_BP_CreatureButton_C:InitEgg() end
function UUI_BP_CreatureButton_C:InitRegularCreature() end
function UUI_BP_CreatureButton_C:InitUnbornCreature() end
function UUI_BP_CreatureButton_C:InitEmptySlot() end
---@param CreatureState UCreatureState
function UUI_BP_CreatureButton_C:GetCreatureState(CreatureState) end
---@param InCreatureState UCreatureState
---@param InIfUnbornCreatureStateMother TSoftObjectPtr<UCreatureState>
function UUI_BP_CreatureButton_C:SetCreatureState(InCreatureState, InIfUnbornCreatureStateMother) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_CreatureButton_C:Tick(MyGeometry, InDeltaTime) end
---@param IsDesignTime boolean
function UUI_BP_CreatureButton_C:PreConstruct(IsDesignTime) end
function UUI_BP_CreatureButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end
function UUI_BP_CreatureButton_C:ForceUnhover() end
function UUI_BP_CreatureButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_1_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_CreatureButton_C:BndEvt__TheButton_K2Node_ComponentBoundEvent_4_OnButtonHoverEvent__DelegateSignature() end
function UUI_BP_CreatureButton_C:Destruct() end
function UUI_BP_CreatureButton_C:OnNeedsChanged() end
function UUI_BP_CreatureButton_C:OnByproductCooldownEnded() end
---@param EntryPoint int32
function UUI_BP_CreatureButton_C:ExecuteUbergraph_UI_BP_CreatureButton(EntryPoint) end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureButton_C:OnClicked__DelegateSignature(CreatureButton) end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureButton_C:OnUnhovered__DelegateSignature(CreatureButton) end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureButton_C:OnHovered__DelegateSignature(CreatureButton) end


