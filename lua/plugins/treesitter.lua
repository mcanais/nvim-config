return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		treesitter = require("nvim-treesitter")

		treesitter.install({"c", "odin", "lua", "java"})

		vim.api.nvim_create_autocmd({"FileType"}, {
			pattern = "*",
			callback = function(event)
				pcall(function() vim.treesitter.start(event.buf) end)
			end,
		})
	end,
}
