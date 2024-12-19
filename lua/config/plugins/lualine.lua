return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local transparent = require("lualine.themes.auto")
			transparent.normal.c.bg = "NONE"

			require("lualine").setup({

				options = {
					icons_enabled = true,
					theme = transparent,
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = {
						{ "mode" },
					},
					lualine_b = {
						{ "branch", "diff", "diagnostics" },
					},
					lualine_c = {
						{ "filename" },
					},
					lualine_x = {
						{
							"harpoon2",
							icon = " ",
							indicators = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" },
							active_indicators = {
								"[1]",
								"[2]",
								"[3]",
								"[4]",
								"[5]",
								"[6]",
								"[7]",
								"[8]",
								"[9]",
								"[10]",
							},
							color_active = { fg = "#87afaf" },
						},
						{ "filetype" },
					},
					lualine_y = {
						{ "progress" },
					},
					lualine_z = {
						{
							"location",
						},
					},
				},
			})
		end,
	},

	{
		"letieu/harpoon-lualine",
		dependencies = {
			{
				"ThePrimeagen/harpoon",
				branch = "harpoon2",
			},
		},
	},
}
