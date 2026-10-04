# Run after dev.cmd to inherit the Windows build environment.
cd ($env.FILE_PWD | path join ../../.. | path expand)

let output = $env.PWD | path join dist hogwarts-legacy-dualsense-support
let archive = $env.PWD | path join dist hogwarts-legacy-dualsense-support.zip
let scripts = $output | path join Scripts

rm --force $archive
rm --recursive --force $output
mkdir $scripts

lx dist flat-archive hogwarts-legacy-dualsense-support --destination $archive
^tar -xf $archive -C $scripts --strip-components 1 src lib
^tar -xf $archive -C $scripts --strip-components 2 .lua/bin/lua54.dll

print $"Mod directory: ($output)"
