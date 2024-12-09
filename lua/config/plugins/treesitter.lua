return {
  -- Configure treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
	ensure_installed = { "bash", "c", "css", "dockerfile", "gitignore", "graphql", "html", "htmldjango", "http", "java", "javascript", "json", "lua", "markdown", "markdown_inline", "php", "prisma", "python", "scss", "sql", "svelte", "tmux", "tsx", "typescript", "vim", "vimdoc", "query", "yaml" },
	auto_install = false,
	highlight = {
	  enable = true,
	  disable = function(lang, buf)
	    local max_filesize = 100 * 1024 -- 100 KB
	    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
	    if ok and stats and stats.size > max_filesize then
	      return true
	    end
	  end,

	  additional_vim_regex_highlighting = false,
	},
      }
    end,
  },

  -- Auto close html tags with treesitter
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
