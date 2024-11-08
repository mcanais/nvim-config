return { -- Treesitter
	"nvim-treesitter/nvim-treesitter",
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
