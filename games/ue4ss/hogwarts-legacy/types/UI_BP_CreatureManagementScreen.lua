---@meta

---@class UUI_BP_CreatureManagementScreen_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field showDetailsPanel UWidgetAnimation
---@field SNC_02_FadeOut UWidgetAnimation
---@field BeastManagement_IN UWidgetAnimation
---@field ShowErrorMessage UWidgetAnimation
---@field activeBeastsCurrent UPhoenixTextBlock
---@field ActiveBeastsLabel UPhoenixTextBlock
---@field activeBeastsMax UPhoenixTextBlock
---@field beastManagementBorder UBorder
---@field breedingScaleBox UScaleBox
---@field BreedingWarningBox UOverlay
---@field detailsPanel UUI_BP_CreatureManagement_DetailsPanel_C
---@field ErrorMessageText UPhoenixTextBlock
---@field Icon UImage
---@field inventoryScroll UUI_BP_ItemScrollBox_C
---@field NoCreaturesMessage UPhoenixTextBlock
---@field NoCreaturesPanel UCanvasPanel
---@field ScreenLegend UUI_BP_Legend_Horizontal_Screen_C
---@field scrim UPhoenixImage
---@field speciesCurrent UPhoenixTextBlock
---@field SpeciesLabel UPhoenixTextBlock
---@field speciesMax UPhoenixTextBlock
---@field StationTitle UPhoenixTextBlock
---@field vivariumGrid UUniformGridPanel
---@field StatusWidgetTooltip UUI_BP_CreatureInNurtureSpaceTooltip_C
---@field NurturingSpaceID FName
---@field HoveredCreatureButton UUI_BP_CreatureButton_C
---@field HoveredInventoryButton UUI_BP_InventoryIconButton_C
---@field AddCreatureTooltip UUI_BP_CreatureAddToNurtureSpaceTooltip_C
---@field IsScreenExitingToFollowScreen boolean
---@field CreatureToFollow AActor
---@field CurrentNumInventoryCreatures int32
---@field CurrentNumNurturingSpaceCreatures int32
---@field CanReleaseToNurturingSpace boolean
---@field SaveReleasedCreatureUIDInstead boolean
---@field ReleasedCreatureUIDIdentifier FString
---@field currentVivariumButton UUI_BP_CreatureButton_C
---@field canSelectCreature boolean
---@field VivariumCreatureButtons TArray<UUI_BP_CreatureButton_C>
---@field CurrentVivariumCreatures TArray<UCreatureState>
---@field LastReleasedCreatureID int32
---@field RequiredTypesToRelease TArray<FName>
---@field AlreadySelectedCreatureUIDs TArray<int32>
---@field HermesHandles TArray<FHermesBPDelegateHandle>
---@field IsHiddenFromViewport boolean
local UUI_BP_CreatureManagementScreen_C = {}

function UUI_BP_CreatureManagementScreen_C:AdjustForViewportWidth() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_CreatureManagementScreen_C:GatherMenuReaderStrings(DepthLevel) end
---@param CreatureID FName
---@param Variation FName
---@param Button UUI_BP_InventoryIconButton_C
function UUI_BP_CreatureManagementScreen_C:ClearNewStatus(CreatureID, Variation, Button) end
---@param CreatureID FName
---@param Variation FName
---@param IsNew boolean
function UUI_BP_CreatureManagementScreen_C:IsNewCreature(CreatureID, Variation, IsNew) end
---@param CreatureStates TArray<UCreatureState>
---@param CreatureSpecies TMap<FName, int32>
function UUI_BP_CreatureManagementScreen_C:GetNurtureSpaceCreaturesToDisplay(CreatureStates, CreatureSpecies) end
---@param InventoryResultsArray TArray<FInventoryResult>
---@param FilteredArray TArray<FInventoryResult>
function UUI_BP_CreatureManagementScreen_C:FilterOutSNC_02SelectedCreatures(InventoryResultsArray, FilteredArray) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureManagementScreen_C:SaveSNC_02ReleasedCreature(CreatureState) end
---@param HoveredCreatureState UCreatureState
---@param CreatureDescription FString
function UUI_BP_CreatureManagementScreen_C:UpdateCreatureTooltipDescription(HoveredCreatureState, CreatureDescription) end
---@param IconButton UUI_BP_InventoryIconButton_C
function UUI_BP_CreatureManagementScreen_C:UpdateInventoryButtonEnabled(IconButton) end
function UUI_BP_CreatureManagementScreen_C:UpdateCreatureInInventoryTooltip() end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_CreatureManagementScreen_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param FromSubScreen boolean
function UUI_BP_CreatureManagementScreen_C:PlayScreenIntro(FromSubScreen) end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureManagementScreen_C:ViewCreatureDetails(CreatureButton) end
---@param ButtonPressed UUI_BP_CreatureButton_C
---@param Return_Value FEventReply
function UUI_BP_CreatureManagementScreen_C:ReturnCreatureToInventory(ButtonPressed, Return_Value) end
---@param CreatureState UCreatureState
function UUI_BP_CreatureManagementScreen_C:AddCreatureToNurtureSpace(CreatureState) end
---@param ToFollowScreen boolean
function UUI_BP_CreatureManagementScreen_C:TriggerExitScreen(ToFollowScreen) end
---@param CreatureState UCreatureState
UUI_BP_CreatureManagementScreen_C['Update Creature in Nurture Space Tooltip'] = function(self, CreatureState) end
---@param Message FString
function UUI_BP_CreatureManagementScreen_C:DisplayErrorMessage(Message) end
---@param ButtonWidget UUI_BP_CreatureButton_C
---@param CreatureState UCreatureState
---@param MotherStateIfUnborn TSoftObjectPtr<UCreatureState>
function UUI_BP_CreatureManagementScreen_C:InitCreatureButton(ButtonWidget, CreatureState, MotherStateIfUnborn) end
---@param CreatureStates TArray<UCreatureState>
---@param MaxNumCreatures int32
---@param MaxNumSpecies int32
---@param CreatureSpecies TMap<FName, int32>
---@param PlayAddAnimation boolean
function UUI_BP_CreatureManagementScreen_C:PopulateCreatureList(CreatureStates, MaxNumCreatures, MaxNumSpecies, CreatureSpecies, PlayAddAnimation) end
---@param PlayAddAnimation boolean
function UUI_BP_CreatureManagementScreen_C:InitForNurturingSpace(PlayAddAnimation) end
function UUI_BP_CreatureManagementScreen_C:Finished_E8409943489DCF8C0282D6A9FFD4BE36() end
---@param IsDesignTime boolean
function UUI_BP_CreatureManagementScreen_C:PreConstruct(IsDesignTime) end
function UUI_BP_CreatureManagementScreen_C:Construct() end
function UUI_BP_CreatureManagementScreen_C:Destruct() end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureManagementScreen_C:OnCreatureHovered(CreatureButton) end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureManagementScreen_C:OnCreatureUnhovered(CreatureButton) end
---@param IconButton UIconButtonWidget
function UUI_BP_CreatureManagementScreen_C:OnInventoryButtonHovered(IconButton) end
---@param IconButton UIconButtonWidget
function UUI_BP_CreatureManagementScreen_C:OnInventoryButtonUnhovered(IconButton) end
---@param CreatureButton UUI_BP_CreatureButton_C
function UUI_BP_CreatureManagementScreen_C:OnCreatureClicked(CreatureButton) end
function UUI_BP_CreatureManagementScreen_C:OnCreatureChanged() end
---@param IconButton UIconButtonWidget
function UUI_BP_CreatureManagementScreen_C:OnInventoryButtonClicked(IconButton) end
---@param IntroType int32
---@param IntroDuration float
function UUI_BP_CreatureManagementScreen_C:OnIntroStarted(IntroType, IntroDuration) end
---@param OutroType int32
---@param OutroDuration float
function UUI_BP_CreatureManagementScreen_C:OnOutroStarted(OutroType, OutroDuration) end
---@param OutroType int32
function UUI_BP_CreatureManagementScreen_C:OnOutroEnded(OutroType) end
function UUI_BP_CreatureManagementScreen_C:OnCreatureSummoned() end
---@param Caller UObject
---@param String FString
function UUI_BP_CreatureManagementScreen_C:SNC_02_BeastReleaseStarted(Caller, String) end
---@param IntroType int32
function UUI_BP_CreatureManagementScreen_C:OnIntroEnded(IntroType) end
---@param Button UIconButtonWidget
function UUI_BP_CreatureManagementScreen_C:BndEvt__UI_BP_CreatureManagementScreen_inventoryScroll_K2Node_ComponentBoundEvent_0_OnButtonClicked__DelegateSignature(Button) end
---@param Button UIconButtonWidget
function UUI_BP_CreatureManagementScreen_C:BndEvt__UI_BP_CreatureManagementScreen_inventoryScroll_K2Node_ComponentBoundEvent_1_OnButtonHovered__DelegateSignature(Button) end
---@param Button UIconButtonWidget
function UUI_BP_CreatureManagementScreen_C:BndEvt__UI_BP_CreatureManagementScreen_inventoryScroll_K2Node_ComponentBoundEvent_2_OnButtonUnhovered__DelegateSignature(Button) end
---@param EntryPoint int32
function UUI_BP_CreatureManagementScreen_C:ExecuteUbergraph_UI_BP_CreatureManagementScreen(EntryPoint) end


