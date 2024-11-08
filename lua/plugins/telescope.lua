return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
    	
		require("telescope").setup({})

		vim.keymap.set("n", "<Leader>f", builtin.find_files, { desc = "Find Files" })

		vim.keymap.set("n", "<Leader>g",
			function()
				s = vim.fn.input("Find string: ")
				if (s == "") then
					vim.cmd('echo ""')
					return
				end
				builtin.grep_string({search = s})	
			end,
			{ desc = "Find String in files" }
		)
	end,
}
