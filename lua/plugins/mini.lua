return {
  { 'echasnovski/mini.icons', version = false, opts = {} },
  { 'echasnovski/mini.surround', version = false, opts = {} },
  {
    'echasnovski/mini.trailspace',
    version = false,
    opts = {},
    keys = {
      { '<leader>cw', function() require('mini.trailspace').trim() end, desc = 'Clear whitespace' }
    }
  },
  {
    'echasnovski/mini.files',
    version = false,
    opts = {
      mappings = {
        synchronize = ':w',
        reveal_cwd = '<Enter>',
      }
    },
    keys = {
      {
        '<leader>e',
        function()
          local MiniFiles = require('mini.files')
          if not MiniFiles.close() then
            MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
          end
        end,
        desc = 'Toggle mini.files',
      }
    }
  }
}
