require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/Documents/projects/",
                    notes = "~/Documents/norg",
                    gtd = "~/Documents/gtd",
                },
            },
        },
        ["core.integrations.nvim-compe"] = {},
        ["core.integrations.treesitter"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-compe",
            }
        },
        ["core.presenter"] = {
            config = {
                zen_mode = "truezen",
            }
        },
    }
}

