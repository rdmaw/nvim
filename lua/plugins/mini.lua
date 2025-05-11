return {
  {
    'echasnovski/mini.files',
    version = false,
    opts = {
      mappings = {
        synchronize = ':w'
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
  --
  --     local surround = require('mini.surround')
  --     surround.setup({
  --       mappings = {
  --         add = 'sa',
  --         delete = 'sd',
  --         find = 'sf',
  --         find_left = 'sF',
  --         highlight = 'sh',
  --         replace = 'sr',
  --         update_n_lines = 'sn',
  --       },
  --
  --       search_method = 'cover_or_next',
  --     })
  --     require('mini.files').setup()
  --   end,
  -- },
}
