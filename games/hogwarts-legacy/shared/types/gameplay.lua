---@meta
-- Game functions that show when the player leaves gameplay: menus, loading
-- screens, the conjuration menu, dialogue and vendors. Seen in three runs
-- (devtools/src/experiments/menu.lua). `ABiped_Player.InCinematic` is in
-- player.lua.

---@class UUIManager
local UUIManager = {}

---Runs when the pause menu (or the map, or another menu page) opens. The game
---pauses right away.
---@param PrePauseSeason ESeasonEnum
function UUIManager:FieldGuideMenuStart(PrePauseSeason) end

---Runs just before `FieldGuideMenuStart` when a page is opened directly.
---`MenuToLoad` is the page name, e.g. `"Map"` or `"Inventory"`.
---@param MenuToLoad FName
---@param LoadToSubPage boolean
---@param LockToMenu boolean
function UUIManager:SetActiveMenu(MenuToLoad, LoadToSubPage, LockToMenu) end

---Runs when the menu closes. `ExitReason` is why: 1 = back to the game,
---8 = fast travel from the map (a loading screen follows 0.3 s later).
---@param ExitReason EFieldGuideExitReasons
---@param SkipFadeScreen boolean
---@param CharacterID int32
---@param Filename FString
---@param FastTravelName FString
function UUIManager:ExitFieldGuideWithReason(ExitReason, SkipFadeScreen, CharacterID, Filename, FastTravelName) end

---Runs whenever the screen finishes fading in: the menu opening and closing,
---a dialogue starting and ending. The first one after a loading screen
---appears means the loading screen is gone (4 to 9 s after it appeared).
function UUIManager:OnFadeInComplete() end

---Don't hook this: the game passes a broken `Caller`, and reading it crashes
---the game.
---@param Caller UObject
function UUIManager:MoviePlaybackFinished(Caller) end

---True while a menu is open. Turns on a bit late.
---@return boolean
function UUIManager:InPauseMode() end

---@class UScreenFadeWidget
local UScreenFadeWidget = {}

---Runs when a loading screen appears, e.g. after fast travel.
function UScreenFadeWidget:OnCurtainLowered() end

---@class ABiped_PlayerController
local ABiped_PlayerController = {}

---Runs together with `UScreenFadeWidget:OnCurtainLowered`, when a loading
---screen appears.
function ABiped_PlayerController:OnCurtainLowered() end

---@class ABiped_Player
local ABiped_Player = {}

---Never runs after a fast travel's loading screen: not a "back in the world"
---signal.
function ABiped_Player:OnCurtainRaised() end

---Blocks something the player can do until the matching `PopDisableStack`.
---A dialogue or a vendor visit blocks moving (`MovingDisabledStack`), spells,
---menus and more at once, for the whole conversation, and unblocks them all
---when it ends. The game keeps running.
---@param StackName FName_GameLogicVarInt32
function ABiped_Player:PushDisableStack(StackName) end

---Unblocks what `PushDisableStack` blocked.
---@param StackName FName_GameLogicVarInt32
function ABiped_Player:PopDisableStack(StackName) end

---@class APlayerController
local APlayerController = {}

---Runs whenever the controller gets a new pawn: the map's `MapPawn` when the
---map opens, a `DefaultPawn` while a fast travel loads, then the player again.
---Not a "back in the world" signal on its own.
---@param NewPawn APawn
function APlayerController:ClientRestart(NewPawn) end

---@class UPhoenixHUDWidget
local UPhoenixHUDWidget = {}

---Opens (`Show` true) or closes (`Show` false) the Room of Requirement
---conjuration menu. The game keeps running.
---@param Show boolean
---@param IntroType int32
function UPhoenixHUDWidget:ShowConjurationUI(Show, IntroType) end

---@class UConversationComponent
local UConversationComponent = {}

---Runs when the player starts talking to someone, vendors included.
---@param interactionActor AActor
---@return boolean
function UConversationComponent:BeginInteraction(interactionActor) end

---The current conversation, or an invalid object when there is none. A
---vendor's is `SG_VendorConversationGear`. Turns invalid about a second after
---the dialogue ends.
---@return UConversationState
function UConversationComponent:GetCurrentConversation() end

---The dialogue choices: one panel per line the player answers, created when
---the line starts and destroyed when a choice is picked; the next panel
---follows at once. The last one, with no options, holds the closing lines.
---@class UUI_BP_OptionPanel_C
local UUI_BP_OptionPanel_C = {}

---Runs when the choices show, after the other character's lines.
function UUI_BP_OptionPanel_C:Construct() end

---Runs when the player picks a choice, 0-based.
---@param SelectedIndex int32
function UUI_BP_OptionPanel_C:OptionSelected(SelectedIndex) end

---Runs right after `OptionSelected`.
function UUI_BP_OptionPanel_C:Destruct() end

---The vendor screen, opened by a vendor's conversation; the conversation's
---`MovingDisabledStack` lasts until the screen closes.
---@class UUI_BP_Vendor_C
local UUI_BP_Vendor_C = {}

---Runs when the vendor screen opens.
function UUI_BP_Vendor_C:Construct() end

---Runs when the vendor screen has closed; the player is back in control 0.6 s
---later.
function UUI_BP_Vendor_C:Destruct() end

---@class UFastTravelManager
local UFastTravelManager = {}

---Stays false through a fast travel: don't use it.
---@return boolean
function UFastTravelManager:IsFastTravelling() end

---@class UMapSubSystem
local UMapSubSystem = {}

---True while any menu page is open, not just the map. Same as
---`UUIManager:InPauseMode()`.
---@return boolean
function UMapSubSystem:GetInPauseMenu() end

---@class UGameplayStatics
local UGameplayStatics = {}

---True while the pause menu, the map or the action wheel is open. Turns on
---right away and off a bit late; it is already false during a fast travel's
---loading screen. The conjuration menu, dialogue and vendors don't pause the
---game.
---@param WorldContextObject UObject
---@return boolean
function UGameplayStatics:IsGamePaused(WorldContextObject) end
