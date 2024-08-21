require("lspconfig").rust_analyzer.setup({})
require("lspconfig").lua_ls.setup({})
-- require("lspconfig").eslint.setup({
--	filetype = {
--		"javascript",
--		"javascriptreact",
--		"javascript.jsx",
--		"typescript",
--		"typescriptreact",
--		"typescript.tsx",
--		"vue",
--		"svelte",
--		"astro",
--	},
--	on_attach = function(_client, bufnr)
--		vim.api.nvim_create_autocmd("BufWritePre", {
--			buffer = bufnr,
--			command = "EslintFixAll",
--		})
--	end,
--})

require("lspconfig").tsserver.setup({})
require("lspconfig").cssls.setup({})
