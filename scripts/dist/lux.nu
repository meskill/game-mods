# Lux build step, reused by the build type modules beside this file. Like every
# step, it works inside the build's temp directory `tmp` (dist/.tmp/<build>),
# writes only its own subdirectories and returns the one holding its result.

# Builds the Lux package in `dir` (named by its lux.toml `package`) and collects
# its Lua modules into <tmp>/lux-out, which is returned:
#   <tmp>/archive     `lx dist flat-archive` output
#   <tmp>/unarchived  the archive unpacked
#   <tmp>/lux-out     src/ (pure Lua) and lib/ (native) merged, plus the Lua
#                     runtime DLLs when native modules are present
# Runs `lx` in the caller's directory, which must be the workspace root.
#
# Lua comes from dist/.lua. `lx dist` installs into a fresh temp tree, so
# without --lua-dir it compiles Lua on every run, and that build is not
# reproducible: lua54.dll would change each time and could not be replaced
# while the game holds it. With --lua-dir, lx builds Lua there once and
# reuses it afterwards; delete dist/.lua to rebuild it.
export def build [dir: path, tmp: path]: nothing -> path {
    let manifest = $dir | path join lux.toml
    if not ($manifest | path exists) {
        error make --unspanned { msg: $"($dir): Lux build needs a lux.toml beside mod.toml" }
    }
    let package = open $manifest | get -o package
    if $package == null {
        error make --unspanned { msg: $"($manifest): missing `package`" }
    }

    let lua_dir = $env.PWD | path join dist .lua
    let archive = $tmp | path join archive archive.zip
    mkdir ($archive | path dirname)
    ^lx --lua-dir $lua_dir dist flat-archive $package --destination $archive

    # lx only produces a zip and Nushell cannot unpack one, so use tar: on
    # Windows it is System32's bsdtar, which reads zip. A GNU tar earlier on
    # PATH (e.g. Git Bash's /usr/bin/tar) cannot read zip and fails here.
    let unarchived = $tmp | path join unarchived
    mkdir $unarchived
    ^tar -xf $archive -C $unarchived

    let out = $tmp | path join lux-out
    mkdir $out
    cd $unarchived
    let modules = glob '{src,lib}/*'
    if ($modules | is-empty) {
        error make --unspanned { msg: $"($package): archive has no src/ or lib/ modules" }
    }
    cp -r ...$modules $out

    # Native modules link against the Lua DLL, which the game does not ship.
    if (glob lib/**/*.dll | is-not-empty) {
        let runtime = glob ($lua_dir | path join bin '*.dll' | str replace --all '\' '/')
        if ($runtime | is-empty) {
            error make --unspanned { msg: $"($package): native modules found but no Lua DLL in ($lua_dir)/bin" }
        }
        cp ...$runtime $out
    }
    $out
}
