return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",        -- LSP completion source
		"hrsh7th/cmp-buffer",          -- Buffer completion source
		"hrsh7th/cmp-path",            -- Path completion source
		"hrsh7th/cmp-cmdline",         -- Command line completion
		"L3MON4D3/LuaSnip",            -- Snippet engine
		"saadparwaiz1/cmp_luasnip",    -- Snippet completion source
	},
	config = function()
		local cmp = require("cmp")
		local lspconfig = require("lspconfig")

		cmp.setup({
			snippet = {
			expand = function(args)
				require("LuaSnip").lsp_expand(args.body) 
			end,
			},

			mapping = {
				["<S-Tab>"] = cmp.mapping.select_prev_item(),      -- Previous item
				["<Tab>"] = cmp.mapping.select_next_item(),        -- Next item
				["<C-Space>"] = cmp.mapping.complete(),            -- Trigger completion
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selected item
				["<Esc>"] = cmp.mapping.abort(),                   -- Abort completion
			},

			sources = {
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "luasnip" },
			},
		})
	end
}
