---@meta

---@class UBP_VendorShopUI_C : USceneAction_Blueprint
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InteractionTarget APawn
---@field VendorWidget UUI_BP_Vendor_C
local UBP_VendorShopUI_C = {}

function UBP_VendorShopUI_C:GetInteractActor() end
---@param ActionState UObject
function UBP_VendorShopUI_C:OnCreate(ActionState) end
---@param TextButton UUI_BP_InteractButton_C
function UBP_VendorShopUI_C:OnButtonClicked(TextButton) end
function UBP_VendorShopUI_C:OnMenuCancelled() end
---@param Time float
---@param cancelled boolean
---@param IsScrubbing boolean
function UBP_VendorShopUI_C:OnExitInterval(Time, cancelled, IsScrubbing) end
function UBP_VendorShopUI_C:ShowVendorUI() end
---@param Time float
---@param IsScrubbing boolean
function UBP_VendorShopUI_C:OnEnterInterval(Time, IsScrubbing) end
function UBP_VendorShopUI_C:OnCloseUI() end
---@param EntryPoint int32
function UBP_VendorShopUI_C:ExecuteUbergraph_BP_VendorShopUI(EntryPoint) end


