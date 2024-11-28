-- KEYMAPS

default_options = {noremap = true, silent = true}

-- General
vim.keymap.set("i", "<C-BS>", "<C-w>", default_options)
vim.keymap.set({"n","v","o"}, "ç", "$", default_options) 
vim.keymap.set("n", "<Leader><Esc>", ":noh<CR>", default_options) -- Remove highlight
vim.keymap.set("n", "<Leader>p", ":b#<CR>", default_options) -- Move to previous buffer
vim.keymap.set("n", "º", "/", {noremap = true})

-- Move between windows
vim.keymap.set("n", "<Leader><Left>" , "<C-w>h", default_options)
vim.keymap.set("n", "<Leader><Down>" , "<C-w>j", default_options)
vim.keymap.set("n", "<Leader><Up>"   , "<C-w>k", default_options)
vim.keymap.set("n", "<Leader><Right>", "<C-w>l", default_options)

-- Tabs
local function move_tab_to_index()
	local position = vim.fn.input("Tab index: ")
	
	if position ~= '$' then
		position = tonumber(position)
		if not position or position < 0 or position > vim.fn.tabpagenr('$') then return end
	end
	
	vim.cmd("tabnext " .. position)
end

vim.keymap.set("n", "<Leader>tn"      , ":tabnew<CR>", default_options)
vim.keymap.set("n", "<Leader>tw"      , ":tabclose<CR>", default_options)
vim.keymap.set("n", "<Leader>t<Right>", ":tabnext<CR>", default_options)
vim.keymap.set("n", "<Leader>t<Left>" , ":tabprev<CR>", default_options)
vim.keymap.set("n", "<Leader>ti"      , move_tab_to_index, default_options)

