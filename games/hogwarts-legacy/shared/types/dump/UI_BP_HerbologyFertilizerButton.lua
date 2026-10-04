---@meta

---@class UUI_BP_HerbologyFertilizerButton_C : UPhoenixUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field descriptionText UPhoenixTextBlock
---@field Icon UUI_BP_InventoryIconButton_C
---@field NameText UPhoenixTextBlock
---@field OnClicked FUI_BP_HerbologyFertilizerButton_COnClicked
---@field OnHovered FUI_BP_HerbologyFertilizerButton_COnHovered
---@field OnUnhovered FUI_BP_HerbologyFertilizerButton_COnUnhovered
---@field FertilizerName FName
local UUI_BP_HerbologyFertilizerButton_C = {}

---@param DepthLevel int32
---@return TArray<FString>
function UUI_BP_HerbologyFertilizerButton_C:GatherMenuReaderStrings(DepthLevel) end
---@param FertilizerItem FInventoryResult
function UUI_BP_HerbologyFertilizerButton_C:InitFertilizer(FertilizerItem) end
---@param IsDesignTime boolean
function UUI_BP_HerbologyFertilizerButton_C:PreConstruct(IsDesignTime) end
---@param IconButton UIconButtonWidget
function UUI_BP_HerbologyFertilizerButton_C:BndEvt__UI_BP_HerbologyFertilizerButton_Icon_K2Node_ComponentBoundEvent_3_ButtonClickDelegate__DelegateSignature(IconButton) end
---@param IconButton UIconButtonWidget
function UUI_BP_HerbologyFertilizerButton_C:BndEvt__UI_BP_HerbologyFertilizerButton_Icon_K2Node_ComponentBoundEvent_4_ButtonHoverDelegate__DelegateSignature(IconButton) end
---@param IconButton UIconButtonWidget
function UUI_BP_HerbologyFertilizerButton_C:BndEvt__UI_BP_HerbologyFertilizerButton_Icon_K2Node_ComponentBoundEvent_5_ButtonUnhoverDelegate__DelegateSignature(IconButton) end
---@param EntryPoint int32
function UUI_BP_HerbologyFertilizerButton_C:ExecuteUbergraph_UI_BP_HerbologyFertilizerButton(EntryPoint) end
---@param FertilizerID FName
function UUI_BP_HerbologyFertilizerButton_C:OnUnhovered__DelegateSignature(FertilizerID) end
---@param FertilizerID FName
---@param FertilizerButton UUI_BP_HerbologyFertilizerButton_C
function UUI_BP_HerbologyFertilizerButton_C:OnHovered__DelegateSignature(FertilizerID, FertilizerButton) end
---@param FertilizerID FName
function UUI_BP_HerbologyFertilizerButton_C:OnClicked__DelegateSignature(FertilizerID) end


