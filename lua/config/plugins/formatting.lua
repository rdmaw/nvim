return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters = {
				prettierd = { args = { "--tab-width", "2", "--use-tabs", "false" } },
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "eslint_d", "prettierd" },
				typescript = { "eslint_d", "prettierd" },
				javascriptreact = { "eslint_d", "prettierd", "rustywind" },
				typescriptreact = { "eslint_d", "prettierd", "rustywind" },
				html = { "prettierd", "rustywind" },
				css = { "stylelint", "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "markdownlint", "prettierd" },
				sql = { "sqlfluff", "sql-formatter" },
			},

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			}),
		})
	end,
}
