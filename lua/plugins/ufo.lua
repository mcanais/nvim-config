return {
	"kevinhwang91/nvim-ufo",
	dependencies = {"kevinhwang91/promise-async"},
	config = function()
		ufo = require("ufo")
		ufo.setup({
			provide_selector = function(bufnr, filetype, buftype)
				return {"lsp", "indent"}
			end
		})

		vim.keymap.set("n", "zR", ufo.openAllFolds)
		vim.keymap.set("n", "zM", ufo.closeAllFolds)
		vim.keymap.set("n", "<Leader>z", "za")
	end
}
