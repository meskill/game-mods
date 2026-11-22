---
name: lua
description: Use when reading, writing, reviewing, debugging, or refactoring Lua code in this project, as well as managing Lua dependencies, builds, type checks, and tests with Lux.
---

# Lua development

Use this skill for Lua code or lua dependencies work throughout the project.

## Dependencies

The dependencies are managed by `lux` tool.

- Use `lx add <dependency> -p <package>` to add a dependency to the specified package.
- Declare only the dependencies a package requires directly; `lx dist flat-archive` packages transitive dependencies, local ones included.
- Read the root `lux.toml` and the affected package's `lux.toml` before choosing commands or changing dependencies. Use the manifest's `package` value for package selectors, not its directory name
- in case of uncertainty consult the official [doc](https://lux.lumen-labs.org/) and `--help` flag for lux commands.
- Keep the documented lux version current: when `lx --version` differs from the version in `CONTRIBUTING.md` ("lux-cli X was used last time"), run `lx check` and `lx test` from the repo root; once they pass, set that line and the `Troubleshooting (lux X)` heading below to the new version, and re-verify or drop the troubleshooting entries.

## Code

### Type checking

Run `lx check` from the repository root; it checks every workspace member at once.

For a quick check while editing, pass a Lua file: `lx check --path <file.lua>`. It creates no
files but checks the file's whole directory and can report `unresolved-require` warnings for
modules the workspace check resolves; confirm with `lx check`.

Never pass a directory to `--path`: lux treats it as a standalone project, fails to
resolve local `path` dependencies, and litters the member with its own `lux.lock` and
`.lux/` tree (plus `.luarc.json` when the check runs). Delete them if that happens.
Type-library configuration belongs in the root `.luarc.json`
(`workspace.library`), not in per-package copies.

### Tests

To test a package run `lx test -p <package>` from the repository root, where `<package>` is the
`package` value from its `lux.toml` (e.g. `hogwarts-legacy-lumos-keeper`), not the directory
name. Running `lx test` inside a member directory runs other members' suites too.

Put tests to the spec directory in package and define the `[test]` configuration in the `lux.toml` file.

The tests should be present for any package - if there is no meaningful test add the `stub_spec.lua` with the stub to avoid errors when running tests on the workspace caused by missing tests.

### Code formatting

Format only what you changed: `lx fmt -p <package>` or `lx fmt --path <file.lua>`. Plain `lx fmt`
formats the whole workspace and rewraps unrelated files.

## Troubleshooting (lux 0.55.2)

Lux mishandles a local package that several members declare by `path` (`ue4ss`, `hogwarts-legacy`): it does not normalize the joined path, so each member's copy counts as a different package. Drop this section once lux fixes it.

| Symptom | Fix |
|---|---|
| `cannot install duplicate entrypoints: ue4ss, hogwarts-legacy`; `lux.lock` left with only `test_dependencies` | Never recreate `lux.lock` with `lx sync`/`lx check`. Run `lx generate-lockfile`, then `lx sync`. |
| `failed to acquire metadata for '<package>==0.1.0'` / `lux cannot download rocks from a local path` (the package is locked but missing from `.lux/`) | Delete the package from `lux.lock` (its `dependencies.rocks` entry, `dependencies.entrypoints` key, and its hash in other rocks' `dependencies`), then `lx sync`. |

- `lx test -p <package>` on a package another member depends on (e.g. `ue4ss-devtools`), after editing its sources, replaces its install in `.lux/` with the member's own build; the next `lx check` hits the `failed to acquire metadata` error. Use the fix above. Once the run also failed first with `failed to remove directory '...\etc'`; creating that empty `etc` directory let it continue.
- A fresh clone (no `.lux/`) cannot be set up: the second fix does not work for `ue4ss` and `hogwarts-legacy`, which hit the first error.
