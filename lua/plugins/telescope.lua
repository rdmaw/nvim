return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } },
    config = function()
      require('telescope').setup({
        pickers = {
          find_files = {
            theme = 'ivy',
          },
        },
        extensions = {
          fzf = {},
        },
      })

      -- Open telescope help tags (fh:find help)
      vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
      -- Find inside current directory (fd:find dir)
      vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files)
      -- Find config directory from anywhere (en:find nvim)
      vim.keymap.set('n', '<leader>fn', function()
        require('telescope.builtin').find_files({
          cwd = vim.fn.stdpath('config'),
        })
      end)

      vim.keymap.set('n', '<space>fi', function()
        require('telescope.builtin').find_files({
          cwd = vim.fs.joinpath(vim.fn.stdpath('data'), 'lazy'),
        })
      end)
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        extensions = {
          require('telescope.themes').get_dropdown({}),
        },
      })
      require('telescope').load_extension('ui-select')
    end,
  },
}
