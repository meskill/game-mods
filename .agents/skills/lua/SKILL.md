---
name: lua
description: Use when reading, writing, reviewing, debugging, or refactoring Lua code in this project, as well as managing Lua dependencies, builds, type checks, and tests with Lux.
---

# Lua development

Use this skill for Lua code or lua dependencies work throughout the project.

## Dependencies

The dependencies are managed by `lux` tool.

- Use commands `lux add <dependency> -p <package>` to add specific dependency to the specified package.
- Add all the transitive dependencies to the game package (the package that is built eventually). This is because lux doesn't package the transitive dependencies currently due to [issue](https://github.com/lumen-oss/lux/issues/2018)
- Read the root `lux.toml` and the affected package's `lux.toml` before choosing commands or changing dependencies. Use the manifest's `package` value for package selectors, not its directory name
- in case of uncertainty consult the official [doc](https://lux.lumen-labs.org/) and `--help` flag for lux commands.

## Code

### Type checking

Run `lx check` from the repository root; it checks every workspace member at once.

Do not pass `--path`: it treats the directory as a standalone project and litters the
member with its own `lux.lock`, `.lux/` tree, and `.luarc.json`. There is no supported
way to check a single package today. Type-library configuration therefore belongs in
the root `.luarc.json` (`workspace.library`), not in per-package copies.

### Tests

To test a package use `lx test -p <package>`.

Put tests to the spec directory in package and define the `[test]` configuration in the `lux.toml` file.

The tests should be present for any package - if there is no meaningful test add the `stub_spec.lua` with the stub to avoid errors when running tests on the workspace caused by missing tests.

### Code formatting

Make sure to use `lx fmt` command to autoformat the code.
