local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>j', builtin.git_files, {})
