return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  enabled = true,
  opts = {
    bigfile = {},
    indent = {
      scope = {enabled = false}
    },
    quickfile = {}
  },
  keys = {
    -- Search
    {'<leader>fi', function() Snacks.picker.icons() end, desc = 'Search Icons' },
    -- Buffer
    {'<leader>rn', function() Snacks.rename.rename_file() end, desc = 'Rename file' },
    {'<leader>bd', function() Snacks.bufdelete() end, desc = 'Delete buffer' },
    {'<leader>ba', function() Snacks.bufdelete.other() end, desc = 'Delete buffers except current' },
    -- Git
    {'<leader>go', function() Snacks.gitbrowse() end, desc = 'Open repo'},
    {'<leader>lg', function() Snacks.lazygit.open() end, desc = 'Open lazygit'},
    {'<leader>gl', function() Snacks.lazygit.log() end, desc = 'Open git log'},
  }
}
