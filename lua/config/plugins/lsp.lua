return {

	-- Mason
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	-- Mason LSPConfig
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"cssls",
					"css_variables",
					"tailwindcss",
					"emmet_language_server",
					"html",
					"lua_ls",
					"pyright",
					"ts_ls",
					"jsonls",
				},
			})
		end,
	},

	-- LSPConfig
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.cssls.setup({})
			lspconfig.css_variables.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.emmet_language_server.setup({
				filetypes = {
					"css",
					"eruby",
					"html",
					"htmldjango",
					"javascript",
					"javascriptreact",
					"less",
					"sass",
					"scss",
					"svelte",
					"pug",
					"typescript",
					"typescriptreact",
				},
			})
			lspconfig.html.setup({})
			lspconfig.pyright.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.jsonls.setup({})

			-- code action
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			-- experimental, might delete; gotodefinition, gotoreferences, rename
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
