return {
	"nvim-treesitter/nvim-treesitter",
	event = "UIEnter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {"c","cpp","rust","lua","vim","vimdoc","query"},

			auto_install = true,

			highlight = {
				enable = true
			}
		})
	end
}
