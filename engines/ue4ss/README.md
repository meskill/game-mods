# UE4SS engine

Integration with the [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) engine.

- provide proper typings for UE4SS API controlled by the `[ue4ss]` section in `./helpers/lux.toml`
- provide set of helpers to work with UE4SS API (`./helpers`)
- provide a development mod to run Lua in a running game and log calls with timestamps (`./devtools`, never shipped)

## Versioning

The intention is to provide compatible API with the fresh UE4SS standalone installations and [Ultra+](https://theultraplace.com) installations. This is done by using most common denominator of the latest version from UE4SS repo and the version supplied by Ultra+ manager (inferred from logs).

To update to new version, update the `[ue4ss]` section in `./helpers/lux.toml` with the new version and run `nu ./scripts/update-types.nu` to download new types.
