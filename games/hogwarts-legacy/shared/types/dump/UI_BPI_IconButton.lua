---@meta

---@class IUI_BPI_IconButton_C : IInterface
local IUI_BPI_IconButton_C = {}

---@param size FVector2D
function IUI_BPI_IconButton_C:I_SetIconSize(size) end
---@param NewContent UWidget
function IUI_BPI_IconButton_C:I_AddExtraContent(NewContent) end
---@param ImageName FString
function IUI_BPI_IconButton_C:I_SetImage(ImageName) end
---@param IconName FString
function IUI_BPI_IconButton_C:I_GetIconName(IconName) end
---@param IconName FString
function IUI_BPI_IconButton_C:I_SetIconName(IconName) end


