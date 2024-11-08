return {
  	"nvimdev/dashboard-nvim",
  	dependencies = {"nvim-tree/nvim-web-devicons"},
  	event = "VimEnter",
  	config = function()
    	require("dashboard").setup({
			shortcut_type = "number",
			theme = "hyper",
			config = {
				header = {"","",""},
				footer = {""},
			  	shortcut = {
					{ 
						desc = "Lazy",
						icon = "󰧟 ",
						--group = "@property",
						action = "Lazy",
						key = "l" 
					},
					{
				  		desc = "Files",
				  		icon = "󰧟 ",
				  		--group = "Label",
				  		action = "Telescope find_files",
				  		key = "f",
					},
					{
				  		desc = "Dotfiles",
						icon = " ",
				  		--group = "Number",
				  		action = function()
							require('telescope.builtin').find_files({ cwd = "$HOME/.config/" })
						end,
				  		key = "d",
					},
			  	},
			},
		})

		
		vim.keymap.set("n", "<Leader>d", ":Dashboard<CR>", { desc = "Open Dashboard" })
  	end,
} 
