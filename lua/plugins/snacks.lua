return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {enabled = true},
    picker = {enabled = true}
  },
  keys = {
    {'<leader>fd', function() Snacks.picker.files() end, desc = '[F]ind [D]ir'}
  }
}
