return {
  "stevearc/oil.nvim",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    local oil = require("oil")
    oil.setup()
    vim.keymap.set("n", "e", oil.toggle_float, {})
  end,
}
