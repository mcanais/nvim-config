return {
	"nvim-lualine/lualine.nvim",
	dependencies = {"nvim-tree/nvim-web-devicons"},
	event = "UIEnter",

	config = function()
		require("lualine").setup({
			options = {
				theme = "nightfly",
				section_separators = { left = '', right = '' },
				component_separators = { left = '', right = '' }
			},
		})
	end
}
