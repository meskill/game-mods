# DSX adaptive triggers

Reference: Paliverse's official **DSX v3.1+ UDP example**:

- [Program.cs][example] — request format, port discovery, and effect parameters
  (`AddAdaptiveTriggerToPacket` and the “DSX v3 Trigger Modes” comments).
- [Resources.cs][types] — numeric `InstructionType`, `Trigger`, and `TriggerMode`
  IDs, plus the status-response fields.

## Endpoint

Enable DSX's UDP server. Send one JSON document per datagram to
`127.0.0.1`, default port `6969`. DSX v3.1 Beta 1.37+ publishes its configured
port in `%LOCALAPPDATA%\DSX\DSX_UDP_PortNumber.txt`.

## Requests

### 1. Find the controller

Send `GetDSXStatus` (`type: 0`):

```json
{"instructions":[{"type":0,"parameters":[]}]}
```

Receive the reply on the same socket. Select an entry in `Devices` with
`IsSupportAT: true` and use its `Index`. The examples below assume index `0`.

### 2. Apply an effect

Send `TriggerUpdate` (`type: 1`). Parameters are:

```text
[controllerIndex, trigger, mode, ...effectArguments]
```

Trigger IDs: **left = 1**, **right = 2**. Use numeric IDs, not names.
This request applies right-trigger `FEEDBACK` (`21`), start position `1`,
strength `4`:

```json
{"instructions":[{"type":1,"parameters":[0,2,21,1,4]}]}
```

A new effect replaces the previous effect on that trigger. To update both
triggers, put two instructions in the same `instructions` array.

## DSX v3 effect modes

Extra arguments follow the controller, trigger, and mode IDs.
Positions are discrete travel regions, not percentages. For start/end
effects, choose an end greater than the start.

| Mode | ID | Extra arguments, in order |
| --- | ---: | --- |
| `OFF` | 20 | None |
| `FEEDBACK` | 21 | Start `1–9`, strength `1–8` |
| `WEAPON` | 22 | Start `2–7`, end `3–8`, strength `1–8` |
| `VIBRATION` | 23 | Start `1–9`, amplitude `1–8`, frequency `1–40` |
| `SLOPE_FEEDBACK` | 24 | Start `1–8`, end `2–9`, initial strength `1–8`, final strength `1–8` |
| `MULTIPLE_POSITION_FEEDBACK` | 25 | Ten region strengths, each `0–8` |
| `MULTIPLE_POSITION_VIBRATION` | 26 | Frequency `1–40`, then ten region amplitudes, each `0–8` |

For example, right-trigger `WEAPON` (`22`), start `2`, end `6`, strength `4`:

```json
{"instructions":[{"type":1,"parameters":[0,2,22,2,6,4]}]}
```

Legacy and raw custom modes are listed in the [official reference][example];
the table above focuses on the named v3 effects.

## Stop or restore

Disable both triggers with mode `OFF` (`20`):

```json
{"instructions":[
  {"type":1,"parameters":[0,1,20]},
  {"type":1,"parameters":[0,2,20]}
]}
```

When relinquishing control, send `ResetToUserSettings` (`type: 7`):

```json
{"instructions":[{"type":7,"parameters":[0]}]}
```

`OFF` disables trigger effects; reset restores the controller's entire DSX
profile, not just its triggers. Effects have no duration argument: send
another effect or `OFF` to end them. Do not rely on socket closure to clear
effects. UDP delivery, including reset, is best effort.

[example]: https://github.com/Paliverse/DSX/blob/main/Mod%20System%20%28DSX%20v3%29/Mod%20System%20%28DSX%20v3.1%2B%29/DSX_UDP_Example/Program.cs
[types]: https://github.com/Paliverse/DSX/blob/main/Mod%20System%20%28DSX%20v3%29/Mod%20System%20%28DSX%20v3.1%2B%29/DSX_UDP_Example/Resources.cs