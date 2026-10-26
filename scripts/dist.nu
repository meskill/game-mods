# Builds mods declared by games/**/mod.toml into dist/<game>/<name>, or into the
# game's installation when .dist-overrides.toml maps the game to it.
#
#   dist                                          # the mod containing the cwd
#   dist -g hogwarts-legacy                      # every mod of the game
#   dist -g hogwarts-legacy -m dualsense-support  # one mod
#
# mod.toml, in the mod's directory:
#   name = "dualsense-support"   # -m; output dist/<game>/<name>
#   game = "hogwarts-legacy"     # -g
#   [build]
#   type = "ue4ss"               # build type: a key of BUILD_TYPES

use dist/ue4ss.nu

# Workspace root, independent of the directory dist is run from.
const ROOT = path self | path dirname | path dirname

# Build directories in dist/.tmp older than this are removed at the next build.
const TMP_MAX_AGE = 1day

# Local file mapping games to their installation directories.
const OVERRIDES_FILE = '.dist-overrides.toml'

# Build types by mod.toml `build.type`, each backed by its module in
# scripts/dist/:
#   build:    called with (mod, tmp); fills <tmp>/out with the mod's layout and
#             returns paths (relative to out) to remove from the output unless
#             it produced them this time
#   mods_dir: called with a game installation directory; returns the directory
#             that receives this type's mods there, or null if none is found
let BUILD_TYPES = {
    ue4ss: {
        build: {|mod, tmp| ue4ss build $mod $tmp }
        mods_dir: {|game_dir| ue4ss mods-dir $game_dir }
    }
}

# Builds mods into dist/<game>/<name>. Without flags, builds the mod whose
# directory (the one holding mod.toml) contains the current directory.
def main [
    --game (-g): string # Game directory name under games/, as in mod.toml `game`
    --mod (-m): string # Mod name (mod.toml `name`); every mod of the game when omitted
] {
    let root = $ROOT
    let all = discover-mods $root

    let selected = if $game == null {
        let current = if $mod == null { $all | where {|m| is-child-dir $env.PWD $m.dir } } else { [] }
        if ($current | is-empty) {
            error make --unspanned { msg: $"Usage: dist -g <game> [-m <mod>], or dist inside a mod directory\n(print-mods $all)" }
        }
        $current
    } else {
        let candidates = $all | where game == $game
        if ($candidates | is-empty) {
            error make --unspanned { msg: $"Unknown game `($game)`.\n(print-mods $all)" }
        }
        if $mod == null { $candidates } else {
            let matched = $candidates | where name == $mod
            if ($matched | is-empty) {
                error make --unspanned { msg: $"Unknown mod for ($game): ($mod).\n(print-mods $candidates)" }
            }
            $matched
        }
    }

    cd $root
    for mod in $selected {
        print ""
        block $"(ansi cyan_bold) ($mod.game)/($mod.name) (ansi reset)(ansi cyan)\(($mod.build.type)\)(ansi reset)" cyan
        let output = output-dir $root $mod
        print $"(ansi blue)→ deploying to ($output)(ansi reset)"
        rule dark_gray
        let written = build $root $mod $output
        rule dark_gray
        if ($written | is-empty) {
            print $"(ansi green)✓ up to date(ansi reset) ($output)"
        } else {
            print $"(ansi green)✓ updated ($written | length) files(ansi reset) in ($output)"
            $written | each { print $"  (ansi dark_gray)•(ansi reset) ($in)" } | ignore
        }
        rule cyan
    }
}

# Prints `content` between two horizontal lines in `color`.
def block [content: string, color: string] {
    rule $color
    print $content
    rule $color
}

# Prints a horizontal line across the terminal in `color`.
def rule [color: string] {
    let width = (term size).columns | default 80
    print $"(ansi $color)('─' | fill --character '─' --width $width)(ansi reset)"
}

# Where `mod` is deployed: dist/<game>/<name>, or <mods dir>/<name> when
# OVERRIDES_FILE maps its game to an installation (relative paths resolve from
# the workspace root). An override whose installation or mods directory is not
# found is an error, so the mod is never silently built elsewhere.
def output-dir [root: path, mod: record]: nothing -> path {
    let fallback = $root | path join dist $mod.game $mod.name
    let file = $root | path join $OVERRIDES_FILE
    if not ($file | path exists) { return $fallback }
    let game_dir = open $file | get -o $mod.game
    if $game_dir == null { return $fallback }
    let game_dir = $root | path join $game_dir | path expand
    if not ($game_dir | path exists) {
        error make --unspanned { msg: $"($OVERRIDES_FILE): ($mod.game) directory not found: ($game_dir)" }
    }
    let mods_dir = do ($BUILD_TYPES | get $mod.build.type).mods_dir $game_dir
    if $mods_dir == null {
        error make --unspanned { msg: $"($OVERRIDES_FILE): no ($mod.build.type) mods directory found in ($game_dir) for ($mod.game)" }
    }
    print $"(ansi blue)→ ($OVERRIDES_FILE): ($mod.game) installation ($game_dir), ($mod.build.type) mods in ($mods_dir)(ansi reset)"
    $mods_dir | path join $mod.name
}

# Runs the mod's build type in a fresh dist/.tmp/<build> directory, then copies
# its <tmp>/out into `output`, changed files only, and removes the paths the
# build type returned that it did not produce. Returns the paths (relative to
# `output`) that were written or removed. Build directories are kept for
# inspection; ones last modified more than TMP_MAX_AGE ago are removed first.
def build [root: path, mod: record, output: path]: nothing -> list<string> {
    let tmp_root = $root | path join dist .tmp
    mkdir $tmp_root
    ls $tmp_root
    | where type == dir and modified < ((date now) - $TMP_MAX_AGE)
    | each { rm --recursive --force $in.name }
    | ignore
    let tmp = mktemp --directory --tmpdir-path $tmp_root $"($mod.game)-($mod.name)-XXXXXX"

    let stale = do ($BUILD_TYPES | get $mod.build.type).build $mod $tmp
    let out = $tmp | path join out

    let written = sync $out $output
    let removed = $stale
    | where {|file| not ($out | path join $file | path exists) and ($output | path join $file | path exists) }
    | each {|file|
        rm ($output | path join $file)
        $"($file) \(removed\)"
    }
    $written | append $removed
}

# Copies files from `source` into `target` whose content differs or that are
# missing there. Identical files are left untouched; files only in `target` are
# kept. Returns the copied paths relative to `source`.
def sync [source: path, target: path]: nothing -> list<string> {
    cd $source
    glob ** --no-dir
    | each {|file| { source: $file, target: ($target | path join ($file | path relative-to $source)) } }
    | where {|f| not (same-content $f.source $f.target) }
    | each {|f|
        mkdir ($f.target | path dirname)
        cp $f.source $f.target
        $f.source | path relative-to $source
    }
}

def same-content [a: path, b: path]: nothing -> bool {
    if not ($b | path exists) { return false }
    if ((ls $a).0.size != (ls $b).0.size) { return false }
    (open --raw $a | hash sha256) == (open --raw $b | hash sha256)
}

# Whether `path` is `dir` or below it (Windows paths: case-insensitive).
def is-child-dir [path: path, dir: path]: nothing -> bool {
    let path = $path | path expand | str lowercase
    let dir = $dir | path expand | str lowercase
    $path == $dir or ($path | str starts-with ($dir | path join ''))
}

# Mod record from games/<game>/<mod>/mod.toml.
# Nushell (0.116) has no type aliases yet; replace `record` with `Mod` in
# signatures once `type` is available:
#
#   type Mod = record<
#       name: string,             # mod.toml `name`; output dist/<game>/<name>
#       game: string,             # mod.toml `game`
#       build: record<type: string>, # mod.toml [build]; `type` names the build type module
#       dir: path,                # directory holding mod.toml
#   >
def load [file: path]: nothing -> record {
    let config = open $file
    for key in [$.name $.game $.build.type] {
        if ($config | get -o $key) == null {
            error make --unspanned { msg: $"($file): missing `($key)`" }
        }
    }
    let types = $BUILD_TYPES | columns
    if $config.build.type not-in $types {
        error make --unspanned { msg: $"($file): unknown build type `($config.build.type)`, expected one of: ($types | str join ', ')" }
    }
    $config | insert dir ($file | path dirname)
}

# Every mod declared by a mod.toml under <root>/games, as a table of Mod.
def discover-mods [root: path]: nothing -> table {
    cd $root
    let mods = glob games/**/mod.toml | each {|file| load $file }
    let duplicates = $mods | group-by game name --to-table | where ($it.items | length) > 1
    if ($duplicates | is-not-empty) {
        let names = $duplicates | each {|d| $"($d.game)/($d.name): ($d.items.dir | str join ', ')" }
        error make --unspanned { msg: $"Duplicate mods:\n($names | str join "\n")" }
    }
    $mods
}

def print-mods [mods: table]: nothing -> string {
    let lines = $mods | each {|m| $"  -g ($m.game) -m ($m.name)" }
    $"Available mods:\n($lines | str join "\n")"
}

