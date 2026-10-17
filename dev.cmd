@echo off
rem nu shell with the MSVC build tools and the `dist` command. `dist` runs
rem scripts/dist.nu in a new nu process on every call, so edits to the script
rem apply without restarting the shell.
call "C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\VC\Auxiliary\Build\vcvars64.bat" >NUL || exit /b 1
nu --execute "def --wrapped dist [...args] { ^nu '%~dp0scripts\dist.nu' ...$args }"
