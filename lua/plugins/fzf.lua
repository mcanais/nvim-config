return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		fzf = require("fzf-lua")
		fzf.setup({})

		vim.keymap.set("n", "<Leader>ff", 
			function()
				fzf.files()
			end,
			{ desc = "Find Files", noremap = true, silent = true }
		)

		-- Live grep
		vim.keymap.set("n", "<Leader>fg", 
			function()
				fzf.live_grep()
			end,
			{ desc = "Live grep", noremap = true, silent = true }
		)
		
		-- Buffers
		vim.keymap.set("n", "<Leader>fb", 
			function()
				fzf.buffers()
			end,
			{ desc = "Find buffers", noremap = true, silent = true }
		)

		-- Tresitter
		vim.keymap.set("n", "<Leader>ft", 
			function()
				fzf.treesitter()
			end,
			{ desc = "Find treesitter references", noremap = true, silent = true }
		)

		-- Colorschemes
		vim.keymap.set("n", "<Leader>fc", 
			function()
				fzf.colorschemes()
			end,
			{ desc = "Find Colorschemes", noremap = true, silent = true }
		)
	end
}
