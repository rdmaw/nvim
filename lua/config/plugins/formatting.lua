return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters = {
        stylua = {
          args = { "--indent-width", "2", "--indent-type", "Spaces", "-" },
        },
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        -- javascript = { "eslint_d", "prettierd" },
        -- typescript = { "eslint_d", "prettierd" },
        -- javascriptreact = { "eslint_d", "prettierd", "rustywind" },
        -- typescriptreact = { "eslint_d", "prettierd", "rustywind" },
        -- html = { "prettierd", "rustywind" },
        -- css = { "prettierd" },
        -- json = { "prettierd" },
        -- yaml = { "prettierd" },
        -- markdown = { "markdownlint", "prettierd" },
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
