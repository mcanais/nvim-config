return {
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				transparent = true,
			})

			vim.cmd.colorscheme("kanagawa-wave")
		end
	},
	{
		"catppuccin/nvim",
		name = "catpuccin",
		opts = {
			term_colors = true,
			transparent_background = true,
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
		end
	},
	"folke/tokyonight.nvim",
}
