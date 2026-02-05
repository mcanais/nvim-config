-- PLUGINS
require("lazy").setup({
	require("plugins.treesitter"),       -- Better syntax highlighting
	require("plugins.treesitter-context"),
	require("plugins.lsp"),              -- Language Server Protocol
	require("plugins.fzf"),              -- Fuzzy Finder
	require("plugins.autopairs"),        -- Auto pairs () {} []
	require("plugins.nvim-tree"),        -- File Explorer
	require("plugins.colorscheme"),      -- Colorscheme
	require("plugins.cmp"),              -- Auto completion
	require("plugins.statusbar"),        -- Status bar diplay
	require("plugins.dashboard"),        -- Startup dashboard
	require("plugins.multicursor"),      -- Multicursor
	require("plugins.indent-blankline"), -- Visual indentation delimiter
	require("plugins.surround"),         -- Surround selection () "" {}
	require("plugins.move"),             -- Move selection
	require("plugins.ufo"),              -- Code Folding
	require("plugins.todo-comments"),    -- Hightlight keywords (TODO, FIX)
	require("plugins.gitsigns"),         -- Sign column for git changes
})
