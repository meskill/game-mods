# Downloads the UE4SS type files for the [ue4ss] revision in helpers/lux.toml
# into types/, overwriting them, and prints their sha256.
let root = $env.FILE_PWD | path dirname
let upstream = open ($root | path join helpers lux.toml) | get ue4ss
let repo = $upstream.repository | url parse | get path | str trim --char '/'

let files = [
    [name source];
    [Types.lua assets/Mods/shared/Types.lua]
    [UEHelpers.lua assets/Mods/shared/UEHelpers/UEHelpers.lua]
]

print $"($upstream.repository) ($upstream.version) ($upstream.commit)"
for file in $files {
    let url = $"https://raw.githubusercontent.com/($repo)/($upstream.commit)/($file.source)"
    let target = $root | path join types $file.name
    http get --raw $url | save --force --raw $target
    print $"($file.name)  sha256 (open --raw $target | hash sha256)"
}
