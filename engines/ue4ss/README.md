# UE4SS engine

Integration with the [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) engine.

- provide proper typings for UE4SS API controlled by the `[ue4ss]` section in `./helpers/lux.toml`
- provide set of helpers to work with UE4SS API (`./helpers`)
- provide a development mod to run Lua in a running game and log calls with timestamps (`./devtools`, never shipped)

## Versioning

The intention is to provide compatible API with the fresh UE4SS standalone installations and [Ultra+](https://theultraplace.com) installations. This is done by using most common denominator of the latest version from UE4SS repo and the version supplied by Ultra+ manager (inferred from logs).

To update to new version, update the `[ue4ss]` section in `./helpers/lux.toml` with the new version and run `nu ./scripts/update-types.nu` to download new types.

## Threads and timers

UE4SS runs a mod's async callbacks (`LoopAsync`, `ExecuteAsync`,
`ExecuteWithDelay`, key binds) on its own thread, sharing the mod's Lua state
with hooks on the game thread. Lua is not thread-safe, so doing this
repeatedly eventually corrupts the state and crashes the game: the game thread
aborts in UE4SS's `Registry::get_function_ref` (`ucrtbase.dll`, `0xc0000409`).
See [RE-UE4SS #168](https://github.com/UE4SS-RE/RE-UE4SS/issues/168) and
[#1180](https://github.com/UE4SS-RE/RE-UE4SS/issues/1180). Hogwarts Legacy
crashed this way with a 100 ms `LoopAsync` → `ExecuteInGameThread` poll and no
longer does on game-thread timers.

- Repeat work with `Loop.gameThread` (`helpers/src/ue4ss/loop.lua`), which uses
  `LoopInGameThreadWithDelay`; for one-off delays use
  `ExecuteInGameThreadWithDelay`. Never `LoopAsync`.
- Start loops once, at load, and let them idle instead of starting and
  cancelling one per event: cancelling from inside a timer's own callback
  edits the list UE4SS is iterating (#1180). A stopped `Loop.gameThread` stays
  registered and does nothing.
- Keep async code to one-off work that must not block the game, such as
  waiting on a socket, and hand the result to the game thread.
- Restart the game rather than **Restart All Mods** when testing stability:
  restarting leaves stale callbacks behind
  ([#1438](https://github.com/UE4SS-RE/RE-UE4SS/issues/1438)).
