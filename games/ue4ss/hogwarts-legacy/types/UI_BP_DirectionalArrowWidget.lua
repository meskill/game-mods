---@meta

---@class UUI_BP_DirectionalArrowWidget_C : UUserWidget
---@field RotationPanel UCanvasPanel
---@field UI_BP_ArrowWidget UUI_BP_ArrowWidget_C
local UUI_BP_DirectionalArrowWidget_C = {}

function UUI_BP_DirectionalArrowWidget_C:Remove() end
---@param InType EAudioVisualizerType
function UUI_BP_DirectionalArrowWidget_C:SetType(InType) end
---@param Rotation float
function UUI_BP_DirectionalArrowWidget_C:SetRotation(Rotation) end


