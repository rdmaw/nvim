return {

  -- Catppuccin Gruvbox
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        background = {
          light = "latte",
          dark = "mocha",
        },
      })

      vim.api.nvim_command("colorscheme catppuccin")
    end,
  },
}
