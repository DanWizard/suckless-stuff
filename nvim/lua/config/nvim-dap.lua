local dap = require("dap")
local job = require("config.jobtest")

local function debugger_terminate()
	local dap = require("dap")

	local session_to_activate = nil
	local sessions = dap.sessions()

	for _, s in pairs(sessions) do
		session_to_activate = s
		break
	end

	if session_to_activate ~= nil then
		dap.set_session(session)
	end

	dap.terminate()
end

local function debugger_start()
	if dap.session() then
		dap.run_last()
	else
		dap.continue()
	end
end

-- Set keymaps to control the debugger
vim.keymap.set("n", "<leader>db", function()
	debugger_start()
end)

vim.keymap.set("n", "<leader>dc", function()
	local sesh = dap.session()
	sesh:_step("continue")
end)

vim.keymap.set("n", "<leader>dso", dap.step_over)
vim.keymap.set("n", "<leader>dsi", dap.step_into)
vim.keymap.set("n", "<leader>dst", dap.step_out)
vim.keymap.set("n", "<leader>dt", function()
	debugger_terminate()
	-- debugger_terminate()
	job.kill()
	--	vim.fn.system(
	--		"pid=$(sudo netstat -tulpn | sed -n \"/3001/p\" | sed -rn 's/.*s([0-9]*)/node.*/\1/gp';) && kill ${pid}"
	--	)
	--	vim.fn.system(
	--		"pid=$(sudo netstat -tulpn | sed -n \"/3000/p\" | sed -rn 's/.*s([0-9]*)/node.*/\1/gp';) && kill ${pid}"
	--	)
end)
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>B", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
