---@meta

---@class UModloaderChildWidget_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ModName UTextBlock
---@field RemoveButton UButton
---@field RemoveText UTextBlock
---@field TextVariable FText
---@field Location FVector
---@field Rotation FRotator
---@field LevelInstance ULevelStreamingDynamic
---@field modLoader UFloatingModloaderMainWidget_C
local UModloaderChildWidget_C = {}

---@param InText FText
function UModloaderChildWidget_C:SetText(InText) end
function UModloaderChildWidget_C:BndEvt__Button_75_K2Node_ComponentBoundEvent_80_OnButtonClickedEvent__DelegateSignature() end
function UModloaderChildWidget_C:BndEvt__Button_75_K2Node_ComponentBoundEvent_24_OnButtonHoverEvent__DelegateSignature() end
function UModloaderChildWidget_C:BndEvt__RemoveButton_K2Node_ComponentBoundEvent_62_OnButtonHoverEvent__DelegateSignature() end
---@param EntryPoint int32
function UModloaderChildWidget_C:ExecuteUbergraph_ModloaderChildWidget(EntryPoint) end


