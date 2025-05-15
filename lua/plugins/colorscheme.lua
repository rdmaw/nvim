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
      vim.cmd('colo rose-pine')
    end
  }
}
