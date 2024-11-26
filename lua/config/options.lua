vim.cmd("language en_US")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd('set colorcolumn=80')
vim.cmd('set termguicolors')
vim.g.mapleader = ' '

vim.wo.number = true

vim.keymap.set('i', 'kj', '<esc>')
vim.api.nvim_set_option("clipboard", "unnamed")
vim.keymap.set('n', '<leader>bd', function() Snacks.bufdelete() end, { desc = "Delete Buffer" })
