---@meta

---@class UUI_BP_SaveMenu_C : USaveGameWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SavedGameButton0 UUI_BP_SavedGameButton_C
---@field SavedGameButton1 UUI_BP_SavedGameButton_C
---@field SavedGameButton2 UUI_BP_SavedGameButton_C
---@field SavedGameButton3 UUI_BP_SavedGameButton_C
---@field SavedGameButton4 UUI_BP_SavedGameButton_C
---@field SavedGameButton5 UUI_BP_SavedGameButton_C
---@field SavedGameButton6 UUI_BP_SavedGameButton_C
---@field SavedGameButton7 UUI_BP_SavedGameButton_C
---@field SavedGameButton8 UUI_BP_SavedGameButton_C
---@field SavedGameButton9 UUI_BP_SavedGameButton_C
---@field SaveList UVerticalBox
---@field Title UPhoenixTextBlock
---@field OnGameSaved FUI_BP_SaveMenu_COnGameSaved
---@field DetailsAnimation UWidgetAnimation
---@field DetailsDirection int32
---@field buttons TArray<UUI_BP_SavedGameButton_C>
---@field OnLegendRequested FUI_BP_SaveMenu_COnLegendRequested
---@field HoveredSlot UUI_BP_SavedGameButton_C
---@field StartStopOverwrite FUI_BP_SaveMenu_CStartStopOverwrite
---@field StartStopDelete FUI_BP_SaveMenu_CStartStopDelete
---@field OnSaveStarted FUI_BP_SaveMenu_COnSaveStarted
---@field OnSaveFailed FUI_BP_SaveMenu_COnSaveFailed
---@field ParentLegend ULegend
---@field AudioIsHoveredSlotInUse boolean
local UUI_BP_SaveMenu_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_SaveMenu_C:GatherMenuReaderStrings(DepthLevel) end
function UUI_BP_SaveMenu_C:InitSlotButtons() end
---@param SaveButton UUI_BP_SavedGameButton_C
function UUI_BP_SaveMenu_C:SaveToSlot(SaveButton) end
---@param InputAction EUMGInputAction
---@param InputEvent EInputEvent
---@return boolean
function UUI_BP_SaveMenu_C:BlueprintOnUMGInputAction(InputAction, InputEvent) end
---@param SaveInfo TArray<FSaveGameInfo>
function UUI_BP_SaveMenu_C:RefreshButtons(SaveInfo) end
function UUI_BP_SaveMenu_C:OverwriteHoveredSave() end
function UUI_BP_SaveMenu_C:DeleteHoveredSave() end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SaveMenu_C:MenuButtonClicked(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SaveMenu_C:MenuButtonUnhovered(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SaveMenu_C:MenuButtonHovered(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SaveMenu_C:MenuButtonReleased(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_SaveMenu_C:MenuButtonPressed(Button) end
function UUI_BP_SaveMenu_C:Construct() end
---@param SaveData TArray<FSaveGameInfo>
function UUI_BP_SaveMenu_C:RefreshListAfterSave(SaveData) end
function UUI_BP_SaveMenu_C:BlueprintFocusAcquired() end
function UUI_BP_SaveMenu_C:Destruct() end
function UUI_BP_SaveMenu_C:RefreshListAfterSaveFailed() end
---@param EntryPoint int32
function UUI_BP_SaveMenu_C:ExecuteUbergraph_UI_BP_SaveMenu(EntryPoint) end
function UUI_BP_SaveMenu_C:OnSaveFailed__DelegateSignature() end
function UUI_BP_SaveMenu_C:OnSaveStarted__DelegateSignature() end
---@param Start boolean
---@param LegendIndex int32
function UUI_BP_SaveMenu_C:StartStopDelete__DelegateSignature(Start, LegendIndex) end
---@param Start boolean
---@param LegendIndex int32
function UUI_BP_SaveMenu_C:StartStopOverwrite__DelegateSignature(Start, LegendIndex) end
---@param LegendData TArray<FLegendItemData>
function UUI_BP_SaveMenu_C:OnLegendRequested__DelegateSignature(LegendData) end
function UUI_BP_SaveMenu_C:OnGameSaved__DelegateSignature() end


