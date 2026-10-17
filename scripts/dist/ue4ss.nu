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
