# Workspace for game mods

Multi-repo to create mods for different games. Multi-repo approach helps with sharding knowledge and code between game and mods.

## Repo structure

- `core/` - shared code and tools for all games and mods.
- `backends/<backend>/` - shared code for different external systems, like DSX.
- `engines/<engine>/` - shared code for a game engine, e.g. UE4SS.
- `games/<game>/<mod>/` - a mod for a game, where `<game>` is the game folder name and `<mod>` is the mod folder name.

## How to use this repo

### For mod users

Look for the mod you want in `games/<game>/<mod>/README.md` and follow its instructions. It'll probably require some game integration to be installed, like UE4SS, so in this case also refer the `engines/<engine>/README.md` for the details on the compatible versions.

### For mods developers

Follow `CONTRIBUTING.md` on how to setup dev environment and how to change or add new mods.

## AI disclaimer

Code is written with AI help. Issues, pull requests, testing and user docs come from people; AI only polishes their wording. See [AI use](CONTRIBUTING.md#ai-use).
