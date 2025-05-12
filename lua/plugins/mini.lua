return {
  { 'echasnovski/mini.surround', version = false, opts = {}, },
  { 'echasnovski/mini.splitjoin', version = false, opts = { mappings = { toggle = 'sv', }, }, },
  {
    'echasnovski/mini.trailspace',
    version = false,
    opts = {},
    keys = {
      {
        '<leader>cw',
        function() require('mini.trailspace').trim() end,
        desc = 'Clear whitespace',
      },
    },
  },
  {
    'echasnovski/mini.files',
    version = false,
    opts = {
      mappings = {
        synchronize = ':w',
        reveal_cwd = '<Enter>',
      },
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
      },
    },
  },
  -- {
  --   'echasnovski/mini.nvim',
  --   config = function()
  --     local hipatterns = require('mini.hipatterns')
  --     hipatterns.setup({
  --       highlighters = {
  --         fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
  --         hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
  --         todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
  --         note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
  --         hex_color = hipatterns.gen_highlighter.hex_color(),
  --       },
  --     })
  --   end,
  -- },
}
