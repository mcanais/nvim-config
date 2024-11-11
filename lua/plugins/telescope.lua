return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
    	
		require("telescope").setup({})

		vim.keymap.set("n", "<Leader>ff", builtin.find_files, { desc = "Find Files", noremap = true, silent = true })

		vim.keymap.set("n", "<Leader>fh",
			function()
				builtin.find_files({hidden = true})
			end,
			{desc = "Find Files (Hidden included)", noremap = true, silent = true }
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
