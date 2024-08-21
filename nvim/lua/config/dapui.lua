require("dapui").setup({
	layouts = {
		{
			-- You can change the order of elements in the sidebar
			elements = {
				-- Provide IDs as strings or tables with "id" and "size" keys
				{ id = "breakpoints", size = 0.50 },
				{ id = "console", size = 0.50 },
			},
			size = 30,
			position = "left", -- Can be "left" or "right"
		},
		{
			elements = {
				"watches",
			},
			size = 12,
			position = "bottom", -- Can be "bottom" or "top"
		},
	},
})

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close({})
end

vim.keymap.set("n", "<leader>ui", require("dapui").toggle)
