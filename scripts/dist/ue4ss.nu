# Build type `ue4ss`: UE4SS Lua mod built from the Lux package (lux.toml) beside
# mod.toml. UE4SS runs Mods/<ModName>/Scripts/main.lua and resolves require()
# from Scripts, so every Lua module goes to <tmp>/out/Scripts.

use lux.nu

# `mod` is a Mod (see scripts/dist.nu); `tmp` is the build's temp directory.
export def build [mod: record, tmp: path] {
    let modules = lux build $mod.dir $tmp
    let scripts = $tmp | path join out Scripts
    mkdir $scripts
    cd $modules
    cp -r ...(glob *) $scripts
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
