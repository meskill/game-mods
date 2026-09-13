---@meta

---@class UUI_BP_Station_Social_Interaction_C : UScreen
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OptionBox UVerticalBox
---@field StationComponent UStationComponent
---@field Actions TArray<FStationQueryData>
---@field ['Current Station'] AStation
---@field EnteredStation boolean
---@field Popout UUI_BP_BasicToolTipPopout_C
---@field ActionMap TMap<FName, int32>
---@field AITree UBTTask_AvaAITree
---@field OptionArray TArray<UUI_BP_StationInteractButton_C>
---@field currentOptionIndex int32
---@field currentOptionButton UUI_BP_StationInteractButton_C
---@field maxOptions int32
---@field ButtonPressedHere boolean
local UUI_BP_Station_Social_Interaction_C = {}

---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_Station_Social_Interaction_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUI_BP_Station_Social_Interaction_C:OnMouseButtonDown(MyGeometry, MouseEvent) end
function UUI_BP_Station_Social_Interaction_C:PreviousOption() end
function UUI_BP_Station_Social_Interaction_C:NextOption() end
---@param Button UUI_BP_StationInteractButton_C
function UUI_BP_Station_Social_Interaction_C:OnButtonHovered(Button) end
---@param Enabled boolean
function UUI_BP_Station_Social_Interaction_C:Camera(Enabled) end
function UUI_BP_Station_Social_Interaction_C:CleanupandLeaveStation() end
---@param Button UUI_BP_StationInteractButton_C
function UUI_BP_Station_Social_Interaction_C:SelectedButton(Button) end
---@param Actions TArray<FStationQueryData>
function UUI_BP_Station_Social_Interaction_C:GetStationOptions(Actions) end
function UUI_BP_Station_Social_Interaction_C:Construct() end
function UUI_BP_Station_Social_Interaction_C:Destruct() end
function UUI_BP_Station_Social_Interaction_C:ClassLoaded() end
---@param Caller UObject
function UUI_BP_Station_Social_Interaction_C:StationStoryEnded(Caller) end
---@param Caller UObject
function UUI_BP_Station_Social_Interaction_C:CloseStationInteraction(Caller) end
---@param EntryPoint int32
function UUI_BP_Station_Social_Interaction_C:ExecuteUbergraph_UI_BP_Station_Social_Interaction(EntryPoint) end


