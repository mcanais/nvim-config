-- KEYMAPS
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })

local function move_tab_to_index()
	local position = vim.fn.input("Tab index: ")
	
	if position ~= '$' then
		position = tonumber(position)
		if not position or position < 0 or position > vim.fn.tabpagenr('$') then return end
		if position == 1 then position = 0 end
	end
	
	vim.cmd("tabmove " .. position)
end

vim.keymap.set("n", "<Leader>tn", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tw", ":tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader><Right>", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader><Left>", ":tabprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ti", move_tab_to_index, { noremap = true, silent = true })
