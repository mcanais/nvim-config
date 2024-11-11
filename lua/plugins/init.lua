-- PLUGINS
require("lazy").setup({
	require("plugins.treesitter"),       -- Better syntax highlighting
	require("plugins.lsp"),              -- Language Server Protocol
	require("plugins.telescope"),        -- Fuzzy Finder
	require("plugins.autopairs"),        -- Auto pairs () {} []
	require("plugins.nvim-tree"),        -- File Explorer
	require("plugins.kanagawa"),         -- Colorscheme
	require("plugins.cmp"),              -- Auto completion
	require("plugins.statusbar"),        -- Status bar diplay
	require("plugins.dashboard"),        -- Startup dashboard
	require("plugins.multicursor"),      -- Multicursor
	require("plugins.indent-blankline"), -- Visual indentation delimiter
	require("plugins.surround"),         -- Surround selection () "" {}
	require("plugins.move"),             -- Move selection
})
