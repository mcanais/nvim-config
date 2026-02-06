-- KEYMAPS

default_options = {noremap = true, silent = true}

-- General
vim.keymap.set("i", "<C-BS>", "<C-w>", default_options)
vim.keymap.set({"n","v","o"}, "ç", "$", default_options) 
vim.keymap.set("n", "<Leader><Esc>", ":noh<CR>", default_options) -- Remove highlight
vim.keymap.set("n", "<Leader>p", ":b#<CR>", defult_options) -- Move to previous buffer
vim.keymap.set("n", "ya", ":%y<CR>", {noremap = true})
vim.keymap.set("n", "gG", "ggVG", { desc = "Select all" })
vim.keymap.set("n", "yc", "yy<cmd>normal gcc<CR>p", default_options)

vim.keymap.set("n", "<Leader>r", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]]) -- Replace all occurences of a word
vim.keymap.set("n", "<Leader>fw", "/<C-r><C-w><CR>", {noremap = true}) -- Find all occurences of a word

-- Stop x from overriding clipboard
vim.keymap.set("n","x", '"_x', default_options)
vim.keymap.set("n","X", '"_X', default_options)


-- Move between windows
vim.keymap.set("n", "<Leader><Left>" , "<C-w>h", default_options)
vim.keymap.set("n", "<Leader><Down>" , "<C-w>j", default_options)
vim.keymap.set("n", "<Leader><Up>"   , "<C-w>k", default_options)
vim.keymap.set("n", "<Leader><Right>", "<C-w>l", default_options)


-- Tabs
vim.keymap.set("n", "<Tab>"   , ">>", default_options)
vim.keymap.set("n", "<S-Tab>" , "<<", default_options)
vim.keymap.set("v", "<Tab>"   , ">",  default_options)
vim.keymap.set("v", "<S-Tab>" , "<",  default_options)

-- Go to symbol definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, default_options)
