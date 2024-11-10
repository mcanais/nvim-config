return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		require("ibl").setup({
			indent = {
				char = '▏',
			},
			scope = {
				show_start = false,
				show_end = false,
			},
			exclude = {
				filetypes = {"help","git","markdown","text","dashboard"},
			},
		})
	end
}
