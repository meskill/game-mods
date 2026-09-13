# DSX UDP API

## Requirements

- DSX v3.1 or newer, running, UDP server enabled in DSX settings.
- UDP to `127.0.0.1`, one ASCII JSON document per datagram.
- Port: DSX v3.1 Beta 1.37+ writes it to
  `%LOCALAPPDATA%\DSX\DSX_UDP_PortNumber.txt` as a plain integer; fall back
  to `6969`.

## Message format

```json
{"instructions":[{"type":<int>,"parameters":[...]}, ...]}
```

`parameters` is positional; its meaning depends on `type`. Enums travel as
integer IDs. Several instructions fit in one datagram and are applied in
order — use this to update both triggers atomically.

## Replies and errors

DSX answers each datagram with one status document, no matter what the
datagram contained. There is no error channel, no per-instruction result,
and no read-back of applied state.

- **Nothing is validated.** Unknown types, bad controller indexes, trigger
  `0`, out-of-range, missing, or extra arguments are dropped with the same
  acknowledgement a valid effect gets. Validate client-side.
- **`{"instructions":[]}` gets no reply at all.** Truncated JSON, non-JSON
  text, a zero-length datagram, `{}`, `{"instructions":null}`,
  `{"instructions":{}}`, `{"instructions":5}` and a bare `[]` are all
  answered normally; only the empty instruction array is ignored. Skip the
  send when a conditional batch comes out empty, or a blocking read
  afterwards stalls for its full timeout.
- **One reply per datagram, not per instruction**, queued whether the
  client reads it or not. Drain the queue before a status request if the
  snapshot must be current.
- **Effects persist** until replaced by another effect, `OFF`, or
  `ResetToUserSettings`. There is no duration argument, and closing the
  socket changes nothing on the controller.
- The reply carries no trigger, lightbar, or LED state; the client is the
  only record of what is applied.

## Instruction types

| ID | Name | Parameters |
| --: | --- | --- |
| 0 | `GetDSXStatus` | `[]` |
| 1 | `TriggerUpdate` | `[controller, trigger, mode, ...modeArguments]` |
| 2 | `RGBUpdate` | `[controller, red, green, blue, brightness]` |
| 3 | `PlayerLED` | legacy; parameters undocumented upstream, superseded by 6 |
| 4 | `TriggerThreshold` | `[controller, trigger, threshold]` |
| 5 | `MicLED` | `[controller, micMode]` |
| 6 | `PlayerLEDNewRevision` | `[controller, playerLayout]` |
| 7 | `ResetToUserSettings` | `[controller]` |

`controller` is a device `Index` from the status document, never assumed
`0`. `trigger` is `1` = left, `2` = right; `0` is invalid.

## TriggerUpdate (1)

```text
[controller, trigger, mode, ...modeArguments]
```

Replaces the trigger's current effect. Positions are discrete travel
regions, not percentages. Keep an end above its start: the sources publish
per-argument ranges only, never a combined constraint.

### DSX v3 modes

| Mode | ID | Arguments, in order |
| --- | --: | --- |
| `OFF` | 20 | none |
| `FEEDBACK` | 21 | start `1–9`, strength `1–8` |
| `WEAPON` | 22 | start `2–7`, end `3–8`, strength `1–8` |
| `VIBRATION` | 23 | start `1–9`, amplitude `1–8`, frequency `1–40` |
| `SLOPE_FEEDBACK` | 24 | start `1–8`, end `2–9`, start strength `1–8`, end strength `1–8` |
| `MULTIPLE_POSITION_FEEDBACK` | 25 | ten region strengths, each `0–8` |
| `MULTIPLE_POSITION_VIBRATION` | 26 | frequency `1–40`, then ten region amplitudes, each `0–8` |

Right trigger, `FEEDBACK`, start 1, strength 4, on controller 0:

```json
{"instructions":[{"type":1,"parameters":[0,2,21,1,4]}]}
```

### DSX v2 modes (legacy, upstream advises against)

No arguments: `Normal` 0, `GameCube` 1, `VerySoft` 2, `Soft` 3, `Hard` 4,
`VeryHard` 5, `Hardest` 6, `Rigid` 7, `Choppy` 9, `Medium` 10,
`VibrateTriggerPulse` 11, `VIBRATE_TRIGGER_10Hz` 19.

| Mode | ID | Arguments, in order |
| --- | --: | --- |
| `VibrateTrigger` | 8 | frequency `0–255` |
| `Resistance` | 13 | start `0–9`, force `0–8` |
| `Bow` | 14 | start `0–8`, end `0–8`, force `0–8`, snap force `0–8` |
| `Galloping` | 15 | start `0–8`, end `0–9`, first foot `0–6`, second foot `0–7`, frequency `0–255` |
| `SemiAutomaticGun` | 16 | start `2–7`, end `0–8`, force `0–8` |
| `AutomaticGun` | 17 | start `0–9`, strength `0–8`, frequency `0–255` |
| `Machine` | 18 | start `0–8`, end `0–9`, strength A `0–7`, strength B `0–7`, frequency `0–255`, period `0–2` |

Two upstream copy-paste errors, resolved above: the `Bow` example passes
`TriggerMode.Resistance` in both sources — `Bow` is `14`; and the README
repeats SemiAutomaticGun's ranges for `AutomaticGun`, contradicting its own
`{0, 8, 10}` example, so Program.cs's ranges are used.

### CustomTriggerValue (12)

```text
[controller, trigger, 12, valueMode, v1, v2, v3, v4, v5, v6, v7]
```

`valueMode`: `OFF` 0, `Rigid` 1, `RigidA` 2, `RigidB` 3, `RigidAB` 4,
`Pulse` 5, `PulseA` 6, `PulseB` 7, `PulseAB` 8, `VibrateResistance` 9,
`VibrateResistanceA` 10, `VibrateResistanceB` 11, `VibrateResistanceAB` 12,
`VibratePulse` 13, `VibratePulseA` 14, `VibratePulsB` 15 (upstream
spelling), `VibratePulseAB` 16.

Upstream's helper writes its raw values from index 3, overwriting
`valueMode`; the layout above is what the packet should contain.

## Other requests

```json
{"instructions":[{"type":0,"parameters":[]}]}
```

`GetDSXStatus` discovers controllers and their capabilities, and doubles as
a liveness check.

`TriggerThreshold` `[controller, trigger, threshold]` — `threshold` `0–255`,
how far the trigger travels before the emulated controller reports it
pressed.

`RGBUpdate` `[controller, red, green, blue, brightness]` — all `0–255`,
lightbar; needs `IsSupportLightBar`.

`PlayerLEDNewRevision` `[controller, playerLayout]` — needs
`IsSupportPlayerLED`.

| `playerLayout` | ID | LEDs |
| --- | --: | --- |
| `One` | 0 | `- -x- -` |
| `Two` | 1 | `- x-x -` |
| `Three` | 2 | `x -x- x` |
| `Four` | 3 | `x x-x x` |
| `Five` | 4 | `x xxx x` |
| `AllOff` | 5 | none |

`MicLED` `[controller, micMode]` — `On` 0, `Pulse` 1, `Off` 2; needs
`IsSupportMicLED`.

`ResetToUserSettings` `[controller]` discards every UDP modification and
re-applies the controller's DSX profile — triggers, lightbar and LEDs
together. This is how a client hands the controller back; `OFF` only
disables trigger effects.

## Status document

```json
{
  "Status": "DSX Received UDP Instructions",
  "TimeReceived": "13.09.2026 12:57:11",
  "isControllerConnected": true,
  "BatteryLevel": 70,
  "Devices": [{
    "Index": 0,
    "MacAddress": "E8:47:3A:25:66:48",
    "DeviceType": 0,
    "ConnectionType": 1,
    "BatteryLevel": 70,
    "IsSupportAT": true,
    "IsSupportLightBar": true,
    "IsSupportPlayerLED": true,
    "IsSupportMicLED": true,
    "IsSupportLegacyPlayerLED": true
  }]
}
```

`Status` is a fixed acknowledgement string, not an error indicator.
`TimeReceived` is DSX's local clock in the machine's locale format.
`BatteryLevel` is the primary controller's, in percent.
`IsSupportLegacyPlayerLED` appears in replies but not in the official
schema.

Per device: `Index` is the `controller` value for every request,
`MacAddress` is stable across reconnects, and the `IsSupport*` flags gate
the features above.

| Field | Values |
| --- | --- |
| `DeviceType` | `0` DualSense, `1` DualSense Edge, `2` DualShock v1, `3` DualShock v2, `4` DualShock dongle, `5` PSVR2 left, `6` PSVR2 right, `7` Access controller |
| `ConnectionType` | `0` USB, `1` Bluetooth, `2` dongle |

A reply only proves DSX is listening. With no controller attached it still
answers, with `isControllerConnected` `false`, `BatteryLevel` `0` and
`Devices` `[]`, so read `Devices` before deriving a `controller` index.

## Flows

Pseudo-code; `send` writes one datagram, `receive` reads one reply.

### Discover, apply, release

```text
port = read %LOCALAPPDATA%\DSX\DSX_UDP_PortNumber.txt, else 6969
sock = udp socket to 127.0.0.1:port

send {"instructions":[{"type":0,"parameters":[]}]}
status = receive (wait up to ~1 s; no reply means DSX is not listening)

pad = first status.Devices where IsSupportAT, else stop

send {"instructions":[{"type":1,"parameters":[pad.Index, 2, 21, 1, 4]}]}
receive                       # acknowledgement; discard

... play ...

send {"instructions":[{"type":7,"parameters":[pad.Index]}]}
close sock                    # the controller keeps its profile settings
```

### Update both triggers at once

```text
send {"instructions":[
    {"type":1,"parameters":[pad, 1, 23, 1, 6, 20]},    # left: VIBRATION
    {"type":1,"parameters":[pad, 2, 22, 2, 6, 4]}      # right: WEAPON
]}
```

### Inside a game loop

```text
on start: send status request; pad = nil

each tick:
    if pad is nil:
        reply = receive (nonblocking)
        if reply: pad = first reply.Devices where IsSupportAT
        return
    if event: send effect for pad     # never wait for the acknowledgement
```

### Check DSX is still there

```text
drain: receive (nonblocking) until nothing is queued   # old acknowledgements
send status request
status = receive (wait up to ~1 s)
if no status: DSX is gone; go back to discovery
if pad.Index not in status.Devices: controller disconnected; rediscover
```

## Sources

[example]: https://github.com/Paliverse/DSX/blob/main/Mod%20System%20%28DSX%20v3%29/Mod%20System%20%28DSX%20v3.1%2B%29/DSX_UDP_Example/Program.cs
[types]: https://github.com/Paliverse/DSX/blob/main/Mod%20System%20%28DSX%20v3%29/Mod%20System%20%28DSX%20v3.1%2B%29/DSX_UDP_Example/Resources.cs
[modsystem]: https://github.com/Paliverse/DSX/blob/main/Mod%20System%20%28DSX%20v3%29/README.md
