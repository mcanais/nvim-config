return {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
        surround = require("nvim-surround")

        surround.setup({
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
