return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  cmd = { 'LazyGit', 'LazyGitConfig', 'LazyGitCurrentFile', 'LazyGitFilter', 'LazyGitFilterCurrentFile' },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<CR>', desc =  'Open LazyGit' }
  }
}
