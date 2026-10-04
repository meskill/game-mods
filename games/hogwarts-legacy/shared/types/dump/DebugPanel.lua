---@meta

---@class FDebugPanelControl
local FDebugPanelControl = {}


---@class FSingleDebugPanel
local FSingleDebugPanel = {}


---@class UDebugPanel : UObject
---@field Controls FDebugPanelControl
---@field bVisible boolean
local UDebugPanel = {}



---@class UDebugPanelComponent : UActorComponent
---@field IntVariables TMap<FName, int32>
---@field Panel UDebugPanel
local UDebugPanelComponent = {}

---@param Show boolean
function UDebugPanelComponent:ShowPanel(Show) end
---@param controlID EDebugPanelControlID
---@param Visible boolean
---@return boolean
function UDebugPanelComponent:SetVisible(controlID, Visible) end
---@param controlID EDebugPanelControlID
---@param ShadowOffset FVector2D
---@param shadowColor FLinearColor
---@return boolean
function UDebugPanelComponent:SetupShadow(controlID, ShadowOffset, shadowColor) end
---@param controlID EDebugPanelControlID
---@param Text FString
---@param Color FLinearColor
---@return boolean
function UDebugPanelComponent:SetTextAndColor(controlID, Text, Color) end
---@param controlID EDebugPanelControlID
---@param Text FString
---@return boolean
function UDebugPanelComponent:SetText(controlID, Text) end
---@param controlID EDebugPanelControlID
---@param font FSlateFontInfo
---@return boolean
function UDebugPanelComponent:SetFont(controlID, font) end
---@param controlID EDebugPanelControlID
---@param Color FLinearColor
---@return boolean
function UDebugPanelComponent:SetColor(controlID, Color) end
---@return boolean
function UDebugPanelComponent:PanelVisible() end
---@param controlID EDebugPanelControlID
---@return boolean
function UDebugPanelComponent:IsMultilineText(controlID) end
function UDebugPanelComponent:HidePanel() end
---@param controlID EDebugPanelControlID
---@param lineLimit int32
---@return boolean
function UDebugPanelComponent:EnableMultilineText(controlID, lineLimit) end
---@param controlID EDebugPanelControlID
---@return boolean
function UDebugPanelComponent:DisableMultilineText(controlID) end
---@param onlyForWorld UWorld
---@return boolean
function UDebugPanelComponent:CreateUnique(onlyForWorld) end
---@param ID FName
---@param onlyForWorld UWorld
---@return boolean
function UDebugPanelComponent:CreateShared(ID, onlyForWorld) end
---@return boolean
function UDebugPanelComponent:Created() end
---@param controlID EDebugPanelControlID
---@return boolean
function UDebugPanelComponent:ClearText(controlID) end
---@return boolean
function UDebugPanelComponent:ClearScrollingText() end
---@param Text FString
---@return boolean
function UDebugPanelComponent:AppendTextLine(Text) end


---@class UDebugPanelImGuiWindow : UObject
local UDebugPanelImGuiWindow = {}


