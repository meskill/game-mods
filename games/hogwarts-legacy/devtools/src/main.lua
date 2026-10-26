-- Development mod: runs the local experiment-local.lua, which starts devtools
-- with its options and runs experiments/. See engines/ue4ss/devtools/README.md.
-- Never ship it.
local ok, err = xpcall(require, debug.traceback, "experiment-local")
if not ok then
	print(("[hogwarts-devtools] experiment-local.lua failed or is missing: %s\n"):format(err))
end
