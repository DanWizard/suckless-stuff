require("nvim-options")
require("config.lazy")
require("config.mason")
require("config.mason-lspconfig")
require("config.lspconfig")
require("config.rust-tools")
require("nvim-diagnostics")
require("config.cmp")
require("config.conform")
require("config.mason-conform")
require("config.telescope")
require("telescope-options")
require("config.which-key")
require("config.treesitter")
require("config.nvim-surround")
require("config.ctrlsf")
require("config.nvim-dap")
require("config.nvim-dap-vscodejs")
require("config.dapui")
require("config.raz")
vim.colorscheme = "candle-grey"
vim.opt.number = true
vim.api.nvim_set_hl(0, "LineNr", { fg = "#c0c0c0", bg = nil })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#b0b0b0", bg = nil })
vim.api.nvim_set_hl(0, "Comment", { fg = "#c0c0c0", bg = nil })

-- Ensure it persists after colorscheme reload
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = "#c0c0c0", bg = nil })
		vim.api.nvim_set_hl(0, "Comment", { fg = "#c0c0c0", bg = nil })
	end,
})
