---@meta

---@class UUI_BP_GadgetWheel_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ShowRecipe UWidgetAnimation
---@field showDetails UWidgetAnimation
---@field OutroAnimation UWidgetAnimation
---@field IntroAnimation UWidgetAnimation
---@field brewDetails UHorizontalBox
---@field brewLabel UPhoenixTextBlock
---@field BroomButton UUI_BP_GadgetWheel_StandaloneItem_C
---@field ButtonPrompt UPhoenixRichTextBlock
---@field detailsBorder UBorder
---@field DurationDetailBox_1 UVerticalBox
---@field durationLabel UPhoenixTextBlock
---@field FelixFelicisButton UUI_BP_GadgetWheelItem_C
---@field FelixFelicisPanel UCanvasPanel
---@field FlyingMountButton UUI_BP_GadgetWheel_StandaloneItem_C
---@field GroundMountButton UUI_BP_GadgetWheel_StandaloneItem_C
---@field ingredient1 UUI_BP_IngredientRequirement_C
---@field ingredient2 UUI_BP_IngredientRequirement_C
---@field ingredient3 UUI_BP_IngredientRequirement_C
---@field ingredientsList UVerticalBox
---@field ItemBL UUI_BP_GadgetWheelItem_C
---@field ItemBottom UUI_BP_GadgetWheelItem_C
---@field ItemBR UUI_BP_GadgetWheelItem_C
---@field ItemLeft UUI_BP_GadgetWheelItem_C
---@field ItemNameText UPhoenixTextBlock
---@field ItemRight UUI_BP_GadgetWheelItem_C
---@field ItemTL UUI_BP_GadgetWheelItem_C
---@field ItemTop UUI_BP_GadgetWheelItem_C
---@field ItemTR UUI_BP_GadgetWheelItem_C
---@field potionDuration UPhoenixTextBlock
---@field potionsInfo UVerticalBox
---@field potionsRecipe UBorder
---@field recipeTitle UPhoenixTextBlock
---@field ReleaseText UPhoenixRichTextBlock
---@field StickImage UPhoenixRichTextBlock
---@field Time UPhoenixTextBlock
---@field UnlockHintText UPhoenixTextBlock
---@field WheelBorder UBorder
---@field WheelCanvasPanel UCanvasPanel
---@field Yield UPhoenixTextBlock
---@field yieldLabel UPhoenixTextBlock
---@field StickDeadZone float
---@field SelectedWheelItem UUI_BP_GadgetWheelItem_C
---@field LastSelectedWheelItem UUI_BP_GadgetWheelItem_C
---@field GadgetItems TArray<FName>
---@field ItemRecipeLocks TArray<FName>
---@field ForceCloseUI FUI_BP_GadgetWheel_CForceCloseUI
---@field ItemPickupLocks TArray<FName>
---@field WheelItemArray TArray<UUI_BP_GadgetWheelItem_C>
---@field MountItemArray TArray<UUI_BP_GadgetWheel_StandaloneItem_C>
---@field SelectedMountItem UUI_BP_GadgetWheel_StandaloneItem_C
---@field PlayerOnGround boolean
---@field UnlockMessageSideMap TMap<UUI_BP_GadgetWheelItem_C, boolean>
---@field DetailsShowing boolean
---@field PotionIngredientArray TArray<UUI_BP_IngredientRequirement_C>
---@field RecipeShowing boolean
---@field UnselectedTime float
---@field FFButtonHoldTime float
---@field ResetFFTimer FUI_BP_GadgetWheel_CResetFFTimer
---@field FelixFelicisAvailable boolean
local UUI_BP_GadgetWheel_C = {}

---@param Result boolean
function UUI_BP_GadgetWheel_C:CanMountCreature(Result) end
function UUI_BP_GadgetWheel_C:CheckForItemChangeForMenuReader() end
---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_GadgetWheel_C:GatherMenuReaderStrings(DepthLevel) end
---@param InputAction EUMGInputAction
---@param Handled boolean
function UUI_BP_GadgetWheel_C:HandleButtonReleased(InputAction, Handled) end
function UUI_BP_GadgetWheel_C:DelayedClearHighlight() end
---@param ItemId FName
---@param ShowRecipe boolean
function UUI_BP_GadgetWheel_C:ShowPotionRecipePanel(ItemId, ShowRecipe) end
UUI_BP_GadgetWheel_C['Update Lock Message'] = function(self, ) end
---@param EnableHover boolean
function UUI_BP_GadgetWheel_C:SetItemsHoverable(EnableHover) end
UUI_BP_GadgetWheel_C['Unbind Cursor Events'] = function(self, ) end
UUI_BP_GadgetWheel_C['Confirm Item Selection'] = function(self, ) end
UUI_BP_GadgetWheel_C['Bind Cursor Events'] = function(self, ) end
UUI_BP_GadgetWheel_C['Handle Cursor Mount Selection'] = function(self, ) end
UUI_BP_GadgetWheel_C['Populate Item Arrays'] = function(self, ) end
UUI_BP_GadgetWheel_C['Set Active Item Text'] = function(self, ) end
UUI_BP_GadgetWheel_C['Handle Cursor Wheel Selection'] = function(self, ) end
---@param StickVal FVector2D
---@param InputPin float
UUI_BP_GadgetWheel_C['Handle Stick Selection'] = function(self, StickVal, InputPin) end
UUI_BP_GadgetWheel_C['Enable Cursor if Required'] = function(self, ) end
---@param SelectedItem UUI_BP_GadgetWheel_StandaloneItem_C
---@param HolderID FName
---@param Success boolean
function UUI_BP_GadgetWheel_C:ResolveSelectedMountBroom(SelectedItem, HolderID, Success) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_GadgetWheel_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param HolderID FName
---@param FoundItem boolean
---@param ItemName FName
function UUI_BP_GadgetWheel_C:FindSlottedBroomMountItem(HolderID, FoundItem, ItemName) end
function UUI_BP_GadgetWheel_C:SetStandaloneButtonData() end
---@param StickVal FVector2D
function UUI_BP_GadgetWheel_C:MoveStickImage(StickVal) end
UUI_BP_GadgetWheel_C['Resolve Selected Wheel Item'] = function(self, ) end
function UUI_BP_GadgetWheel_C:SetWheelData() end
---@param StickAngle float
---@param Item UUI_BP_GadgetWheelItem_C
function UUI_BP_GadgetWheel_C:GetItemForAngle(StickAngle, Item) end
---@param IsDesignTime boolean
function UUI_BP_GadgetWheel_C:PreConstruct(IsDesignTime) end
function UUI_BP_GadgetWheel_C:Construct() end
---@param AxisInputData FUMGConsolidatedAxisInputData
function UUI_BP_GadgetWheel_C:BlueprintConsolidatedUMGInputAxis(AxisInputData) end
function UUI_BP_GadgetWheel_C:Destruct() end
function UUI_BP_GadgetWheel_C:HideDetailsComplete() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UUI_BP_GadgetWheel_C:Tick(MyGeometry, InDeltaTime) end
function UUI_BP_GadgetWheel_C:OnResetFFButtonHold() end
---@param EntryPoint int32
function UUI_BP_GadgetWheel_C:ExecuteUbergraph_UI_BP_GadgetWheel(EntryPoint) end
function UUI_BP_GadgetWheel_C:ResetFFTimer__DelegateSignature() end
function UUI_BP_GadgetWheel_C:ForceCloseUI__DelegateSignature() end


