# Hogwarts Legacy

Describe how different part of the game works and how to work with them inside the lua scripts.

## Functionality

### Menus

The pause menu and its pages (Gear, Inventory, Talents, Map, Settings, …) are
all the Field Guide. Every opening and closing takes the same path:

| Moment | Signal |
| --- | --- |
| Opening | `UIManager:FieldGuideMenuStart`; a page opened directly is preceded by `UIManager:SetActiveMenu` with its `MenuToLoad` (`"Inventory"`, `"Settings"`, …) |
| Paused | `GameplayStatics:IsGamePaused` turns true immediately |
| Closing | `UIManager:ExitFieldGuideWithReason` with `ExitReason=1` (back to game) |
| Resumed | `IsGamePaused`, `UIManager:InPauseMode` and `MapSubSystem:GetInPauseMenu` turn false together, with a delay after closing |

`InPauseMode` and `GetInPauseMenu` turn true with a delay after opening, so
they are worse opening signals than `IsGamePaused`. `SetInMenuTransition`
moves the camera between pages and does not mark opening or closing. These
never fired: `Biped_Player:PauseMenuStart`, `InGameMenuScreen:ExitPauseMenu`,
`MapSubSystem:SetInPauseMenu`, `GameplayStatics:SetGamePaused`,
`UIManager:RequestGameAndSystemPause`,
`PhoenixGameSettings:OnFullScreenMenuActive|Inactive`,
`TutorialSystem:ClosePauseMenu`, and the `Screen` close functions.

Spell tracking stops while `IsGamePaused` is true, which matches the Field
Guide's opening and closing. The map opened by its own key, dialogue, vendors
and loading screens are not verified yet.

The shared `hogwarts.menus` module (`shared/src/hogwarts/menus.lua`) hooks
the opening and closing calls:

```lua
local Menus = require("hogwarts.menus")

local unsubscribe = Menus.subscribe({
	opened = function() end, -- the game pauses immediately
	closed = function() end, -- the game resumes with a delay
})
Menus.isOpen()
```

A menu already open when the mod loads is not seen until it is reopened.
