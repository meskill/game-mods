# DSX integration

Package to provide integration with [DSX](https://store.steampowered.com/app/1812620/DSX/), so the Lua scripts can control the DualSense controller with the help of DSX.

## How does it work

DSX provides a UDP API that is available on the local network. See [Api documentation](./API.md) for more details on available commands and server interaction.

In order to be able to use UDP from Lua environment, the package [core/net](../../core/net/README.md) is used, so refer it's doc to get the details on possible limitations and requirements.

## Testing

Testing requires actual controller turned on and connected to DSX with the DSX server running. Some of the tests will use the actual commands and responses from the DSX server for the real device. But, this will only verify the very basic functionality of the protocol, since the DSX doesn't provide any feedback on the actual device state.

To verify manually, use `./examples` directory to run the manual tests, that allow to get the feedback on the actual device:

- `adaptive_triggers.lua` - test the adaptive triggers functionality changing the state on the device. Run `sweep` to test multiple effects in a row, or run specific effect to test only it.
