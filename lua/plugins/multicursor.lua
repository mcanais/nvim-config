return {
    "jake-stewart/multicursor.nvim",
    config = function()
        local mc = require("multicursor-nvim")

        mc.setup({})

        -- Add/skip cursor above/below the main cursor
        vim.keymap.set({"n", "v"}, "<C-Up>", function() mc.lineAddCursor(-1) end)
        vim.keymap.set({"n", "v"}, "<C-Down>", function() mc.lineAddCursor(1) end)
        vim.keymap.set({"n", "v"}, "<C-S-Up>", function() mc.lineSkipCursor(-1) end)
        vim.keymap.set({"n", "v"}, "<C-S-Down>", function() mc.lineSkipCursor(1) end)

		-- Add/remove cursors with mouse left click
        vim.keymap.set("n", "<c-leftmouse>", mc.handleMouse)

        -- Move to next/previous cursor
        vim.keymap.set({"n", "v"}, "<C-Left>", mc.nextCursor)
        vim.keymap.set({"n", "v"}, "<C-Right>", mc.prevCursor)

        -- Adding/skipping a new cursor by matching word/selection
        vim.keymap.set({"n", "v"}, "<Leader>mn", function() mc.matchAddCursor(1) end)
        vim.keymap.set({"n", "v"}, "<Leader>ms", function() mc.matchSkipCursor(1) end)
        vim.keymap.set({"n", "v"}, "<Leader>mN", function() mc.matchAddCursor(-1) end)
        vim.keymap.set({"n", "v"}, "<Leader>mS", function() mc.matchSkipCursor(-1) end)
        vim.keymap.set({"n", "v"}, "<Leader>ma", mc.matchAllAddCursors) -- Add all matches in the document
        vim.keymap.set("v", "m", mc.matchCursors) -- Match all occurences of given expression in a visual selection

        -- Delete the selected cursor
        vim.keymap.set({"n", "v"}, "<Leader>x", mc.deleteCursor)

        -- Restore Cursors
        vim.keymap.set("n", "<Leader>mr", mc.restoreCursors)

        -- Align cursor columns
        vim.keymap.set("n", "<Leader>a", mc.alignCursors)

        -- Split visual selection by identifier
        vim.keymap.set("v", "S", mc.splitCursors)

        -- Append/insert for each line of visual selections
		vim.keymap.set("v", "<Leader>c", mc.addCursorOperator)
        vim.keymap.set("v", "<Leader>i", mc.insertVisual)
        vim.keymap.set("v", "<Leader>a", mc.appendVisual)

        -- Rotate visual selection contents
        vim.keymap.set("v", "<Leader>t", function() mc.transposeCursors(1) end)
        vim.keymap.set("v", "<Leader>T", function() mc.transposeCursors(-1) end)


		vim.keymap.set("n", "<esc>", function()
            if not mc.cursorsEnabled() then
                mc.enableCursors()
            elseif mc.hasCursors() then
                mc.clearCursors()
            else
                -- Default <esc> handler.
            end
        end)

        -- Jumplist support
        vim.keymap.set({"v", "n"}, "<c-i>", mc.jumpForward)
        vim.keymap.set({"v", "n"}, "<c-o>", mc.jumpBackward)

        -- Customize how cursors look
        local hl = vim.api.nvim_set_hl
        hl(0, "MultiCursorCursor", { link = "Cursor" })
        hl(0, "MultiCursorVisual", { link = "Visual" })
        hl(0, "MultiCursorSign", { link = "SignColumn"})
        hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
        hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
        hl(0, "MultiCursorDisabledSign", { link = "SignColumn"})
    end
}
