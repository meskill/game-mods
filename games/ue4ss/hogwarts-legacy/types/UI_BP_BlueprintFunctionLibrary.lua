---@meta

---@class UUI_BP_BlueprintFunctionLibrary_C : UBlueprintFunctionLibrary
local UUI_BP_BlueprintFunctionLibrary_C = {}

---@param __WorldContext UObject
---@param SaveWarning FString
function UUI_BP_BlueprintFunctionLibrary_C:GetSaveWarningString(__WorldContext, SaveWarning) end
---@param inString FString
---@param BannedWords TArray<FString>
---@param CheckSubstrings boolean
---@param __WorldContext UObject
---@param ContainsBanned boolean
function UUI_BP_BlueprintFunctionLibrary_C:ContainsBannedWord(inString, BannedWords, CheckSubstrings, __WorldContext, ContainsBanned) end
---@param __WorldContext UObject
---@param HouseColor FLinearColor
function UUI_BP_BlueprintFunctionLibrary_C:GetHouseColors(__WorldContext, HouseColor) end


