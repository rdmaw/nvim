return {
  {'echasnovski/mini.surround', version = false, event = {'BufReadPre', 'BufNewFile'}, opts = {}},
  {
    'echasnovski/mini.trailspace',
    version = false,
    opts = {},
    keys = {
      {'<leader>cw', function() require('mini.trailspace').trim() end, desc = 'Clear whitespace'}
    }
  },
  {
    'echasnovski/mini.files',
    dependencies = {'echasnovski/mini.icons', opts = {}},
    version = false,
    opts = {
      mappings = {
        synchronize = ':w',
        reveal_cwd = '<CR>',
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
        desc = 'Toggle mini.files'
      }
    }
  }
}
