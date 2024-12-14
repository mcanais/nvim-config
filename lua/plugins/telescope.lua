return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "UIEnter",
	config = function()
		local builtin = require("telescope.builtin")
    	
		require("telescope").setup({})

		vim.keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Find Files", noremap = true, silent = true })

		vim.keymap.set("n", "<Leader>fh",
			function()
				builtin.find_files({hidden = true, no_ignore=true})
			end,
			{desc = "Find Files (Hidden included)", noremap = true, silent = true }
		)

		vim.keymap.set("n", "<Leader>fb", builtin.buffers, {desc = "Find Buffers", noremap = true, silent = true })

		vim.keymap.set("n", "<Leader>fc", builtin.colorscheme, {desc = "Find Buffers", noremap = true, silent = true })

		vim.keymap.set("n", "<Leader>ft", builtin.treesitter, {desc = "Find Buffers", noremap = true, silent = true })
		
		vim.keymap.set("n", "<Leader>fd", 
			function()
				builtin.find_files({
					find_command = {"fd", "-t", "d"},
					cwd = "..",
					prompt_title = "Find Directories",
				})
			end,
			{desc = "Find Directories", noremap = true, silent = true }
		)

		vim.keymap.set("n", "<Leader>fg",
			function()
				s = vim.fn.input("Find string: ")
				if (s == "") then 
					vim.cmd("echo ''")
					return 
				end
				builtin.grep_string({search = s})	
			end,
			{ desc = "Find String in files", silent = true, noremap = true}
		)
	end,
}
