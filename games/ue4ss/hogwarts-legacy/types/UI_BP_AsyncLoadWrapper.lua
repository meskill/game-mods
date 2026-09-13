---@meta

---@class UUI_BP_AsyncLoadWrapper_C : UAsyncLoadWrapper
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Container UCanvasPanel
---@field Loadingwidget UCircularThrobber
local UUI_BP_AsyncLoadWrapper_C = {}

---@return UCanvasPanel
function UUI_BP_AsyncLoadWrapper_C:GetAttachCanvas() end
---@param AsyncChildWidget UUserWidget
function UUI_BP_AsyncLoadWrapper_C:GetChild(AsyncChildWidget) end
function UUI_BP_AsyncLoadWrapper_C:Construct() end
---@param IsDesignTime boolean
function UUI_BP_AsyncLoadWrapper_C:PreConstruct(IsDesignTime) end
function UUI_BP_AsyncLoadWrapper_C:EditorPreviewConstruct() end
function UUI_BP_AsyncLoadWrapper_C:InitChild() end
---@param SelfReference UAsyncLoadWrapper
function UUI_BP_AsyncLoadWrapper_C:ChildLoadComplete(SelfReference) end
---@param Parent UUserWidget
function UUI_BP_AsyncLoadWrapper_C:SetParent(Parent) end
---@param NewVisibility ESlateVisibility
function UUI_BP_AsyncLoadWrapper_C:SetThrobberVisibility(NewVisibility) end
---@param EntryPoint int32
function UUI_BP_AsyncLoadWrapper_C:ExecuteUbergraph_UI_BP_AsyncLoadWrapper(EntryPoint) end


