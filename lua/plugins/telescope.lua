return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzy-native.nvim', build = 'make' },
        },
        config = function(opts)
            local telescope = require('telescope');
            telescope.setup {
                defaults = {
                    vimgrep_arguments = {
                        "rg",
                        "-L",
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                    }
                },
                extensions = {
                    fzy_native = {
                        override_generic_sorter = false,
                        override_file_sorter = true
                    },
                    fzf = {
                        fuzzy = true,
                        case_mode = "smart_case",
                    }
                }
            }
            telescope.load_extension('fzy_native')

            vim.keymap.set("n", "<leader>ff", "<cmd> FzfLua files <CR>", { desc = "Find files" })
            vim.keymap.set("n", "<leader>fg", "<cmd> Telescope git_files <CR>", { desc = "Find git files" })
            vim.keymap.set("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Find symbols in the current document" })
            vim.keymap.set("n", "<leader>fS", "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", { desc = "Find symbols in the workspace" })
            vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", { desc = "Find all" })
            vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc = "Live grep" })
            vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers <CR>", { desc = "Find buffers" })
            vim.keymap.set("n", "<leader>fh", "<cmd> Telescope help_tags <CR>", { desc = "Help page" })
            vim.keymap.set("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>", { desc = "Find oldfiles" })
            vim.keymap.set("n", "<leader>fz", "<cmd> Telescope current_buffer_fuzzy_find <CR>", { desc = "Find in current buffer" })

            vim.keymap.set("n", "<leader>cm", "<cmd> Telescope git_commits <CR>", { desc = "Git commits" })
            vim.keymap.set("n", "<leader>gt", "<cmd> Telescope git_status <CR>", { desc = "Git status" })

            vim.keymap.set("n", "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "telescope bookmarks" })
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
              extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

