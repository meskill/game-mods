# Contributing

## Tooling

1. Install [lux](https://lux.lumen-labs.org) on windows from release page.

> lux-cli 0.44.0 was used last time.

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

This will create a new shell in the proper environment with the required build tools available for installing packages and building native modules.


### Lua

Use lux to manage dependencies and verify the lua scripts. To add dependency use `lx add <package>` command. To check the script use `lx check --path <path_to_package>`. To run tests use `lx test -p <package>`.
