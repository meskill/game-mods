---@meta

---@class ABP_CM_Text_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TextRender UTextRenderComponent
---@field Scene USceneComponent
---@field Text FText
local ABP_CM_Text_C = {}

function ABP_CM_Text_C:UserConstructionScript() end
function ABP_CM_Text_C:ReceiveBeginPlay() end
function ABP_CM_Text_C:StartText() end
---@param EntryPoint int32
function ABP_CM_Text_C:ExecuteUbergraph_BP_CM_Text(EntryPoint) end


