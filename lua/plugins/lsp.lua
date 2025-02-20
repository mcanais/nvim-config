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
				ensure_installed = {"rust_analyzer"},
        		automatic_installation = true,
			})

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end
	}
}
