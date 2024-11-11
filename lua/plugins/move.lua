return {
	"hinell/move.nvim",
	config = function()
		local opts = { noremap = true, silent = true }

		-- Move line
		vim.keymap.set("n", "<A-Down>"   , ":MoveLine 1<CR>", opts)
		vim.keymap.set("n", "<A-Up>"     , ":MoveLine -1<CR>", opts)

		-- Move selection
		vim.keymap.set("v", "<A-Down>" , ":MoveBlock 1<CR>", opts)
		vim.keymap.set("v", "<A-Up>"   , ":MoveBlock -1<CR>", opts)
		vim.keymap.set("v", "<A-Left>" , ":MoveHBlock -1<CR>", opts)
		vim.keymap.set("v", "<A-Right>", ":MoveHBlock 1<CR>", opts)
	end
}
