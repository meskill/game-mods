---
name: lua
description: Use when reading, writing, reviewing, debugging, or refactoring Lua code in this project, as well as managing Lua dependencies, builds, type checks, and tests with Lux.
---

# Lua development

Use this skill for Lua code work throughout the project. Current guidance covers the Lux workflow that supports that work; Lua coding patterns can be added later. Follow existing code conventions in the meantime.

## Sources of truth

Paths below are relative to the repository root, not this skill directory (`../../..` from here).

- Read `CONTRIBUTING.md` for tooling installation and required development environment setup before updating dependencies or building packages.
- Read the root `lux.toml` and the affected package's `lux.toml` before choosing commands or changing dependencies. Use the manifest's `package` value for package selectors, not its directory name.
- Consult installed command help for version-specific flags. Official documentation: https://lux.lumen-labs.org/.

## Commands

Run workspace commands from the repository root after following the relevant setup instructions in `CONTRIBUTING.md`. Replace example package names with the affected manifest's `package` value.

| Task | Command |
| --- | --- |
| Inspect installed version | `lx --version` |
| Add a dependency to the current package | `lux add <dependency>` |
| Add a dependency to a workspace member | `lux add <dependency> -p net` |
| Build a workspace member | `lx build -p net` |
| Test a workspace member | `lx test -p net` |

Angle-bracket values are placeholders, not literal Nushell arguments.

### Type checking

Use `lx check --path <path>` to type check the affected package. From the repository root:

```nu
lx check --path core/net
lx check --path backends/dsx
```

`--path` takes a filesystem path, not a package name.

## Working discipline

- Add dependencies through Lux in the consuming package, not the root package by default. Let Lux manage dependency resolution and `lux.lock`; do not hand-edit the lockfile or use standalone LuaRocks commands as a substitute.
- Preserve the manifest's Lua version and existing dependency style, including local path dependencies. Do not upgrade tooling or unrelated dependencies as part of ordinary Lua work.
- Follow each package's `[build]` and `[test]` configuration. The current `net` and `backends_dsx` packages use the builtin build backend and Busted tests; run them through Lux rather than invoking Busted directly.
- After a change, run the affected package's type check and tests; build when the change affects packaging or native dependencies. Include dependent packages when their behavior is affected.
- Report the exact commands and outcomes. Missing build tools, failed dependency installation, and unavailable test backends are blockers, not successful checks.
