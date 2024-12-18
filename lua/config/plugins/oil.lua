return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = { "icon" },
      view_options = {
        show_hidden = true
      },
      keymaps = {
        ["q"] = { "actions.parent", mode = "n" },
      },
    })
    vim.keymap.set("n", "<leader>e", require("oil").toggle_float, {})
  end,
}
