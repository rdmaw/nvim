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
				"saghen/blink.cmp",
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
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local servers = {
				lua_ls = {},
				html = {},
				cssls = {},
				css_variables = {},
				tailwindcss = {},
				ts_ls = {},
				jsonls = {},
				pyright = {},
				emmet_language_server = {
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
				},
			}

			for server, config in pairs(servers) do
				config.capabilities = capabilities
				lspconfig[server].setup(config)
			end

			-- code action
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			-- experimental, might delete; gotodefinition, gotoreferences, rename
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
