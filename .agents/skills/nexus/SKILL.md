---
name: nexus
description: Use when preparing or updating a mod page on Nexus Mods for a mod in this repo: collecting the mod's README, changelog and installation info, writing the player-facing description in Nexus BBCode, and the upload form's summary and changelog.
---

# Nexus Mods page for a mod

Nexus mod descriptions render BBCode only; Markdown shows up as literal `**`/`#` characters.
The skill takes a game and a mod, turns the author's README and CHANGELOG into a Nexus page,
adds the shared installation and requirement info, and builds the archive to upload.

## 1. Collect and prepare the information

### Game and mod

The mod is `games/<game>/<mod>/`, where `<mod>` is `name` in its `mod.toml`. Inside a mod
directory, that mod is the one to use. Otherwise, if the user didn't name one, list the mods
(`fd mod.toml games`) and ask. Mods without players, such as `devtools`, are never published.

The version is `version` in the mod's `lux.toml`. If `CHANGELOG.md` exists, its latest entry
must have the same version. If it doesn't, ask the user before going on.

### Sources

| Source | Gives |
| --- | --- |
| `games/<game>/<mod>/README.md` | what the mod does, controls, configuration, compatibility, known issues |
| `games/<game>/<mod>/CHANGELOG.md` | the version's changes, and the full feature list of the first release |
| `games/<game>/<mod>/mod.toml` | `name` (the mod folder name in the game), `build.type` (decides installation) |
| `games/<game>/<mod>/lux.toml` | `version`, dependencies (decide requirements) |
| [Shared installation info](#shared-installation-info) | installation steps and requirements for the build type |

Dependencies in `lux.toml` add requirements:

- `engines/ue4ss/helpers`: UE4SS, see below.
- `backends/dsx`: the DSX app with its UDP server enabled (`backends/dsx/README.md`).

### Shared installation info

Installation depends on `build.type` in `mod.toml`. Every mod of a type shares the steps; a
mod only adds its own setup after them.

**`ue4ss`** (UE4SS Lua mod; the build output is `<name>/Scripts/...`):

- Requirement: UE4SS v3.0.1 Beta #0, Git SHA `fbebf039`, or newer: the build the
  [Ultra+ Manager](https://theultraplace.com) installs, from the `Dumper:` line of
  `games/<game>/shared/lux.toml`. On the page, name both the version and the Git SHA, and
  say the mods are tested with it. If that line names another build, update this section
  first.
- Steps:
  1. Install [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS/releases) for the game, or let the
     Ultra+ Manager install it.
  2. Extract the archive into `<Game>/<Project>/Binaries/Win64/ue4ss/Mods/`.
  3. Run the game. The archive from `dist -a` ships `<name>/enabled.txt`, which makes UE4SS
     start the mod, so there is no `mods.txt` step.
- Uninstall steps, in their own **Uninstall** section after Installation:
  - disable: delete `<name>/enabled.txt` (create an empty one to enable it again);
    `<name> : 0` in `mods.txt` doesn't stop it;
  - remove: delete the `<name>` folder;
  - if the player added `<name> : 1` to `mods.txt`, they remove that line too, or the mod
    still starts;
  - restart the game after either change.

| Game directory | Game name | `<Project>` |
| --- | --- | --- |
| `hogwarts-legacy` | Hogwarts Legacy | `Phoenix` |

For a game or build type not listed here, find the values in the repo (`scripts/dist/`) or ask
the user, then add them to this section.

### Ask the user

Ask for anything the sources don't contain, and never make it up:

- credits for the shout outs,
- Nexus links to required mods,
- screenshots and videos.

### Prepare

The page text comes from the author, as [AI use](../../../CONTRIBUTING.md#ai-use) requires:

- Use the README's and CHANGELOG's text as written, sentence for sentence, under the
  [page](#2-output)'s sections. Don't rewrite, summarize or add claims.
- Report spelling, grammar and wording errors as a table (line, problem, suggested fix), and
  fix them in the README only when the user agrees; then regenerate the page from it.
- Leave out what can't be shown on Nexus, such as Mermaid diagrams, and say so.
- Write only the sections the sources lack: installation, uninstall and requirements from
  [Shared installation info](#shared-installation-info), in the README's style (for example,
  lowercase list items). For any other missing content, ask the user to write it.

## 2. Output

Write the page to `dist/nexus/<game>/<mod>.bbcode`. `dist/` is ignored by git and is
regenerated for each release, so fix the content in the sources, not in the output. It is
the upload form's Description field: the sections of the Nexus template, in this order, each
with a `[size=4][b]…[/b][/size]` heading. Leave out a section that has no content, except
Installation instructions and Requirements:

1. **Description**: what the mod changes in the game, in a few sentences.
2. **Main features**: a list of what the player gets. Controls go in a table.
3. **Installation instructions**: a numbered list: the
   [shared steps](#shared-installation-info) of the build type, then the mod's own setup
   (for example, enabling UDP in DSX before starting the game).
4. **Requirements**: a list: the game, the build type's requirement, then the dependencies'.
5. **Compatibility** and **Known issues**: only those that affect players.
6. **Changelog**: every `CHANGELOG.md` version, newest first: `[b]<version>[/b] (<date>)`,
   then its entries as a `[list]`. Keep the entries' wording; drop the Added/Changed/Fixed
   headings unless a version has more than one of them.
7. **Source code and other mods**: always, exactly:
   `Can be found in the repo [url=https://github.com/meskill/game-mods]github.com/meskill/game-mods[/url]`
8. **Shout outs**: only names the user gave.

Build it as described in [Building the BBCode](#3-building-the-bbcode). In the reply, also
give a one- or two-sentence plain-text summary for the form's Summary field.

The file to upload is built with `dist -g <game> -m <mod> -a`:
`dist/<game>/<game>-<mod>-<version>.zip`. Its version must match the page's changelog.

## 3. Building the BBCode

### Tags

A rendered test article ([Markdown to Nexus Mods BBCode](https://www.nexusmods.com/site/articles/261),
checked November 2026) showed that all of these render:

| Markdown | BBCode |
| --- | --- |
| `## Section` | `[size=4][b]Section[/b][/size]` |
| `### Subsection` | `[size=3][b]Subsection[/b][/size]` |
| `**bold**`, `*italic*`, `~~strike~~` | `[b]…[/b]`, `[i]…[/i]`, `[s]…[/s]` |
| `` `code` `` | `[font=Courier New]code[/font]` |
| `[text](https://…)` | `[url=https://…]text[/url]` |
| `<https://…>` | `[url]https://…[/url]` |
| `![alt](https://…)` | `[img]https://…[/img]` (absolute URLs only) |
| YouTube link meant as a video | `[youtube]VIDEO_ID[/youtube]` |
| `- item` | `[list]` + `[*]item` per line + `[/list]` |
| `1. item` | `[list=1]` + `[*]item` per line + `[/list]` |
| `> quote` | `[quote]…[/quote]` |
| fenced code block | `[code]…[/code]` |
| `---` | `[line]` |
| table | `[table][tr][th]…[/th][/tr][tr][td]…[/td][/tr][/table]` |

### Pitfalls

- **Every newline renders as a line break.** The repo's Markdown wraps lines at about 80
  columns, so join each paragraph and each list item onto one line. Use one blank line between
  paragraphs and blocks.
- Lists: put `[list]`, each `[*]` item and `[/list]` on their own lines, with no blank lines
  between them. Nexus spaces list items apart; that's the site's style, keep it. A `[code]`
  block goes on the line after its item. Same for `[table]`: each `[tr]` on its own line.
- Nested lists: put a whole `[list]…[/list]` inside the parent `[*]` item.
- Relative links and images (`../devtools`, `docs/x.png`) don't work on Nexus. Use absolute
  URLs or drop them.
- Use `[`, `]` only for tags. A literal `[text]` usually stays literal, but `[*]`, `[b]` and
  other real tag names in normal text become formatting.
- Don't copy the template's gray placeholder `[color=#D4D4D8]` and `[size=3]` wrappers, so the
  text uses the site's default style.
- Don't use online Markdown-to-BBCode converters built from regexes (such as
  githubmd-to-nexusmodsbbcode): they turn `snake_case` into italics, break lists after the
  first item, and keep the wrapped newlines.

### Check

Count opening and closing tags; any row in the output means a tag is unbalanced:

```nu
let text = open --raw dist/nexus/<game>/<mod>.bbcode
let opens = $text | parse --regex '\[(?<tag>[a-z]+)(?:=[^\]]*)?\]' | get tag | where $it not-in [line] | uniq --count
let closes = $text | parse --regex '\[/(?<tag>[a-z]+)\]' | get tag | uniq --count
$opens | join --outer $closes value | where $it.count != $it.count_
```

Then search the output for leftover Markdown: `**`, `` ` ``, `](`, and lines starting with
`#`, `- ` or `> ` (outside `[code]`). Last, ask the user to paste the file into the
description editor's BBCode mode and preview it before publishing.
