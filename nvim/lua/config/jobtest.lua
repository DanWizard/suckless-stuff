local M = {}

local function kill_frontend_processes()
	os.execute("~/.config/nvim/shell_scripts/kill_frontends")
end

M.kill = kill_frontend_processes

return M
