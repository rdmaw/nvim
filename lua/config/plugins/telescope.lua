return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
  },
  config = function()
    require("telescope").setup {
      pickers = {
	find_files = {
	  theme = "ivy"
	}
      },
      extensions = {
	fzf = {}
      }
    }

    -- Open telescope help tags
    vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags)
    -- Find inside current directory
    vim.keymap.set("n", "<space>fd", require("telescope.builtin").find_files)
    -- Search config directory from anywhere::edit neovim
    vim.keymap.set("n", "<space>en", function()
      require("telescope.builtin").find_files {
      cwd = vim.fn.stdpath("config")
    }
  end)
end
}
}
