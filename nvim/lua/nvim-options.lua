-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
local o = vim.opt
-- Editor options
o.background = "dark"
o.syntax = "on" -- When this option is set, the syntax with this name is loaded.
o.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.
o.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("set expandtab")
vim.cmd("set cursorline")
vim.cmd("set autoindent")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set ruler")
vim.cmd("set title")
vim.cmd("set showcmd")
vim.cmd("set showmatch")
vim.cmd("set termguicolors")
vim.cmd("set clipboard+=unnamedplus")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
