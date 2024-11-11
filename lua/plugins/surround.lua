return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
        surround = require("nvim-surround")

        surround.setup({
            keymaps = {
                insert = nil,
                insert_line = nil,
                normal = "ys",
                normal_cur = "yss",
                normal_line = nil,
                normal_cur_line = nil,
                visual = "<Leader>s",
                visual_line = nil,
                delete = "ds",
                change = "cs",
                change_line = nil,
            },    

            surrounds = {
                ["("] = {
                    add = { "(", ")" },
                    delete = "^(.)().-(.)()$",
                },
                [")"] = {
                    add = {"( ", " )"},
                    delete = "^(. ?)().-( ?.)()$",
                },

                ["{"] = {
                    add = { "{", "}" },
                    delete = "^(.)().-(.)()$",
                },
                ["}"] = {
                    add = { "{ ", " }" },
                    delete = "^(. ?)().-( ?.)()$",
                },

                ["<"] = {
                    add = { "<", ">" },
                    delete = "^(.)().-(.)()$",
                },
                [">"] = {
                    add = { "< ", " >" },
                    delete = "^(. ?)().-( ?.)()$",
                },

                ["["] = {
                    add = { "[", "]" },
                    delete = "^(.)().-(.)()$",
                },
                ["]"] = {
                    add = { "[ ", " ]" },
                    delete = "^(. ?)().-( ?.)()$",
                },
            },
        })
    end
}