# Build type `ue4ss`: UE4SS Lua mod built from the Lux package (lux.toml) beside
# mod.toml. UE4SS runs Mods/<ModName>/Scripts/main.lua and resolves require()
# from Scripts, so every Lua module goes to <tmp>/out/Scripts.

use lux.nu

# `mod` is a Mod (see scripts/dist.nu); `tmp` is the build's temp directory.
# Returns the paths (relative to out) to remove from the deployed mod.
export def build [mod: record, tmp: path]: nothing -> list<string> {
    let modules = lux build $mod.dir $tmp
    let scripts = $tmp | path join out Scripts
    mkdir $scripts
    cd $modules
    cp -r ...(glob *) $scripts
    # A devtools mod's experiment-local.lua is ignored by the VCS, so lx leaves
    # it out of the archive; copy it with ${EXPERIMENT_DATA_DIR} replaced by the
    # mod's experiment-data/, where devtools writes its log and screenshots, as
    # Lua cannot create or list directories. Every build deletes shots/;
    # debug.log stays (the running game holds it) and is emptied on load.
    # It is returned for removal, which applies when it was not built: without
    # the local file, an earlier deploy's copy would keep running an experiment
    # that no longer exists.
    let experiment = $mod.dir | path join src experiment-local.lua
    if ($experiment | path exists) {
        let data = $mod.dir | path join experiment-data
        rm --recursive --force ($data | path join shots)
        mkdir $data
        let dir = $data | path expand | str replace --all '\' '/'
        open --raw $experiment
        | str replace --all '${EXPERIMENT_DATA_DIR}' $dir
        | save --force ($scripts | path join experiment-local.lua)
    }
    [Scripts/experiment-local.lua]
}

# Mods directory of the UE4SS installed in the game installation `game_dir`,
# or null. UE4SS sits beside the game executable in <Project>/Binaries/Win64
# (the project folder is game-specific, e.g. Phoenix), with its mods in
# ue4ss/Mods (UE4SS 3.x) or directly in Mods (older releases).
export def mods-dir [game_dir: path]: nothing -> any {
    cd $game_dir
    glob '*/Binaries/Win64/ue4ss/Mods' --no-file
    | append (glob '*/Binaries/Win64/Mods' --no-file)
    | get -o 0
}
