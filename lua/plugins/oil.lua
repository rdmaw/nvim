return {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
  dependencies = { { 'nvim-web-devicons', opts = {} } },
  config = function()
    require('oil').setup({
      default_file_explorer = true,
      columns = { 'icon' },
      keymaps = {
        ['q'] = { 'actions.parent', mode = 'n' },
      },
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set('n', '<leader>e', require('oil').toggle_float, {})
  end,
}
