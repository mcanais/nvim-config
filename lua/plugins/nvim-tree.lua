local function tree_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
    	return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

  	-- Default mappings
	api.config.mappings.default_on_attach(bufnr)

  	-- Custom mappings
  	vim.keymap.set("n", "t", api.tree.change_root_to_node, opts("CD"))
end

return {
	"nvim-tree/nvim-tree.lua",
	requires = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			on_attach = tree_on_attach,
			view = {
				width = 25,
			},
		})

		vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeOpen<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<Leader>c", ":NvimTreeClose<CR>", { noremap = true, silent = true })
	end
}
