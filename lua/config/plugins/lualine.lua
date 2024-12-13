return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local auto_theme_custom = require("lualine.themes.auto")
			auto_theme_custom.normal.c.bg = "none"
			auto_theme_custom.insert.c.bg = "none"
			auto_theme_custom.visual.c.bg = "none"
			auto_theme_custom.command.c.bg = "none"
			auto_theme_custom.replace.c.bg = "none"

			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = auto_theme_custom,
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
						{ "filename", path = 1 },
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
							color_active = { fg = "#ea9a97" },
						},
						{ "filetype" },
					},
					lualine_y = {
						{ "progress" },
					},
					lualine_z = {
						{ "location" },
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
