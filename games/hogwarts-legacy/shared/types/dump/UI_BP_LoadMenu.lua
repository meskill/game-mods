---@meta

---@class UUI_BP_LoadMenu_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field showDetailsPanel UWidgetAnimation
---@field detailPanel UUI_BP_LoadSaveDetails_C
---@field SaveItems UVerticalBox
---@field Title UPhoenixTextBlock
---@field UI_BP_SimpleScrollBox UUI_BP_SimpleScrollBox_C
---@field IsSaveMenu boolean
---@field OnLoadSave FUI_BP_LoadMenu_COnLoadSave
---@field CharacterID int32
---@field DetailsDirection int32
---@field ClickedLoadButton UUI_BP_SavedGameButton_C
---@field ParentLegend ULegend
local UUI_BP_LoadMenu_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_LoadMenu_C:GatherMenuReaderStrings(DepthLevel) end
---@param PopupScreen UPopupScreen
---@param CompletionActionIndex int32
function UUI_BP_LoadMenu_C:OnLoadConfirmPopupClosed(PopupScreen, CompletionActionIndex) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_LoadMenu_C:MenuButtonUnhovered(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_LoadMenu_C:MenuButtonHovered(Button) end
---@param Button UUI_BP_SavedGameButton_C
function UUI_BP_LoadMenu_C:MenuButtonSelected(Button) end
---@param CharacterID int32
function UUI_BP_LoadMenu_C:SetLoadSaveData(CharacterID) end
---@param IsDesignTime boolean
function UUI_BP_LoadMenu_C:PreConstruct(IsDesignTime) end
function UUI_BP_LoadMenu_C:Construct() end
---@param EntryPoint int32
function UUI_BP_LoadMenu_C:ExecuteUbergraph_UI_BP_LoadMenu(EntryPoint) end
---@param Filename FString
---@param CharacterID int32
function UUI_BP_LoadMenu_C:OnLoadSave__DelegateSignature(Filename, CharacterID) end


