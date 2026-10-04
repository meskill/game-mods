---@meta

---@class IUI_BPI_Screen_C : IInterface
local IUI_BPI_Screen_C = {}

---@param Parent UUserWidget
function IUI_BPI_Screen_C:SetParent(Parent) end
---@param RenderSize FVector2D
function IUI_BPI_Screen_C:GetAsyncWrapperRenderSize(RenderSize) end
function IUI_BPI_Screen_C:InEditorPostConstruct() end
function IUI_BPI_Screen_C:Initialize() end


