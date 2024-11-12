-- KEYMAPS
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })

local function move_tab_to_index()
	local position = vim.fn.input("Tab index: ")
	
	if position ~= '$' then
		position = tonumber(position)
		if not position or position < 0 or position > vim.fn.tabpagenr('$') then return end
	end
	
	vim.cmd("tabnext " .. position)
end

vim.keymap.set("n", "<Leader>tn"      , ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tw"      , ":tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>t<Right>", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>t<Left>" , ":tabprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ti"      , move_tab_to_index, { noremap = true, silent = true })

vim.keymap.set("n", "<Leader><Left>" , "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader><Down>" , "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader><Up>"   , "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader><Right>", "<C-w>l", { noremap = true, silent = true })
