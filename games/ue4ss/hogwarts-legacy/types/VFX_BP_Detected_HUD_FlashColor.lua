---@meta

---@class UVFX_BP_Detected_HUD_FlashColor_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Flash_On_Off UWidgetAnimation
---@field DEtected_Flash UImage
local UVFX_BP_Detected_HUD_FlashColor_C = {}

---@param IsDesignTime boolean
function UVFX_BP_Detected_HUD_FlashColor_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UVFX_BP_Detected_HUD_FlashColor_C:ExecuteUbergraph_VFX_BP_Detected_HUD_FlashColor(EntryPoint) end


