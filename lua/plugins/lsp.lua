return {
	{
		"neovim/nvim-lspconfig",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {"mason.nvim"},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {"ols", "clangd"},
			})
		end
	}
}
