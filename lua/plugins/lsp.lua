return {
	{
		'mason-org/mason.nvim',
		config = function()
			require('mason').setup()
		end,
	},
	{
		'mason-org/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup {}
		end,
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{
				'saghen/blink.cmp',
				'folke/lazydev.nvim',
				ft = 'lua',
				opts = {
					library = {
						{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
					},
				},
			},
		},
	},
}
