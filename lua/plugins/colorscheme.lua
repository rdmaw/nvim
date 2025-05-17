return {
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = {
      filetypes = {'css'},
      mode = 'background'
    }
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').setup({
        bright_border = true
      })
      -- require('nordic').load()
      -- vim.o.background = 'light'
    end
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup()
      vim.cmd('colo gruvbox')
      vim.o.background = 'dark'
    end
  },
  {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        styles = {
          bold = false,
          italic = false,
        }
      })
      vim.o.background = 'light'
      -- vim.cmd('colo rose-pine')
    end
  }
}
