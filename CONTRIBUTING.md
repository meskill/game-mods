# Contributing

## Tooling

1. Install [lux](https://lux.lumen-labs.org) on windows from release page.

> lux-cli 0.55.2 was used last time.

2. _Windows_: Install Windows Build Tools with proper additional tooling.

```sh
winget install Microsoft.VisualStudio.BuildTools --override "--wait --passive --add Microsoft.VisualStudio.Workload.VCTools --includeRecommended"
```

> Version: 18.10.0 was used last time.

## Development


1. _Windows_: Every time you need to update dependencies or build the package, before doing this:

```sh
dev.cmd
```

This will create a new nu shell in the proper environment with the required build tools available for installing packages and building native modules, and with the `dist` command (see [Building mods](#building-mods)).

In VS Code, this shell is the default integrated terminal (`dev` profile in `.vscode/settings.json`).


### Lua

Use lux to manage dependencies and verify the lua scripts. To add dependency use `lx add <package>` command. To check the scripts use `lx check` (no way to run separately for package for now). To run tests use `lx test -p <package>`.


### Nushell

[Nushell](https://www.nushell.sh/) is used for scripting and automation. Use `nu` command to run scripts.

### Building mods

Every buildable mod has a `mod.toml` in its directory under `games/<game>/<mod>/`:

```toml
name = "dualsense-support"   # selected with -m; output dir name
game = "hogwarts-legacy"     # selected with -g

[build]
type = "ue4ss"               # build type, see below
```

Build every mod of a game, or one mod with `-m`, from the `dev.cmd` shell (native dependencies need the build tools); `dist` works from any directory. Without flags, `dist` builds the mod you are in: the one whose `mod.toml` directory contains the current directory.

```sh
dist                                           # the mod containing the current directory
dist -g hogwarts-legacy                        # every mod of the game
dist -g hogwarts-legacy -m dualsense-support   # one mod
dist -g hogwarts-legacy -m dualsense-support -a  # one mod, plus its archive
```

To deploy straight into a game installation, copy `.dist-overrides.example.toml` to `.dist-overrides.toml` (local, ignored by git) and set each game's installation directory.

## AI use

AI is fine for code and assets. These must come from you:

- issues and pull request descriptions;
- in-game testing: report only what you saw;
- user-facing docs: mod READMEs, changelogs and mod pages.

AI may polish your text (grammar, wording, format), but not add to it.
