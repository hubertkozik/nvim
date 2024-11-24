return {
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            local button = dashboard.button

            dashboard.section.header.val = {
                [[                                           ]],
                [[   ▄█    █▄    ███    █▄  ▀█████████▄   ▄█ ]],
                [[  ███    ███   ███    ███   ███    ███ ███ ]],
                [[  ███    ███   ███    ███   ███    ███ ███▌]],
                [[ ▄███▄▄▄▄███▄▄ ███    ███  ▄███▄▄▄██▀  ███▌]],
                [[▀▀███▀▀▀▀███▀  ███    ███ ▀▀███▀▀▀██▄  ███▌]],
                [[  ███    ███   ███    ███   ███    ██▄ ███ ]],
                [[  ███    ███   ███    ███   ███    ███ ███ ]],
                [[  ███    █▀    ████████▀  ▄█████████▀  █▀  ]],
                [[                                           ]],
            }

            dashboard.section.buttons.val = {
                button("f", "󰈞  Find file", "<cmd> FzfLua files <CR>"),
                button("n", "  New file", "<cmd>ene <CR>"),
                button("q", "  Quit", "<cmd>q <CR>"),
            }

            alpha.setup(dashboard.opts)
        end,
    },
}
