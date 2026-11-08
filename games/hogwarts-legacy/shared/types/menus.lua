---@meta
-- How the game opens and closes its menus.

---@class UUIManager
local UUIManager = {}

---Called when the Field Guide (pause menu and its pages) opens; the game
---pauses immediately.
---@param PrePauseSeason ESeasonEnum
function UUIManager:FieldGuideMenuStart(PrePauseSeason) end

---Called just before `FieldGuideMenuStart` when a page opens directly;
---`MenuToLoad` names it, e.g. `"Inventory"`.
---@param MenuToLoad FName
---@param LoadToSubPage boolean
---@param LockToMenu boolean
function UUIManager:SetActiveMenu(MenuToLoad, LoadToSubPage, LockToMenu) end

---Called when the Field Guide closes (`ExitReason` 1: back to game); the game
---resumes with a delay.
---@param ExitReason EFieldGuideExitReasons
---@param SkipFadeScreen boolean
---@param CharacterID int32
---@param Filename FString
---@param FastTravelName FString
function UUIManager:ExitFieldGuideWithReason(ExitReason, SkipFadeScreen, CharacterID, Filename, FastTravelName) end

---True while a menu is open: turns on with a delay after opening, off when
---the game resumes.
---@return boolean
function UUIManager:InPauseMode() end

---@class UMapSubSystem
local UMapSubSystem = {}

---Same as `UUIManager:InPauseMode()`, for every Field Guide page, not only the
---map.
---@return boolean
function UMapSubSystem:GetInPauseMenu() end

---@class UGameplayStatics
local UGameplayStatics = {}

---True while a menu is open: turns on immediately after opening, off with a
---delay after closing.
---@param WorldContextObject UObject
---@return boolean
function UGameplayStatics:IsGamePaused(WorldContextObject) end
