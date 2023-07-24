vim.g.mapleader = ' '

-- Omni complete
vim.keymap.set('i', '<Tab>', '<C-x><C-o>')
-- Save file on exit insert mode
vim.keymap.set('i', '<C-c>', '<Esc>:wa<CR>')
-- Save file on exit normal mode
vim.keymap.set('n', '<C-c>', '<Esc>:wa<CR>')
-- Show keymaps
vim.keymap.set('n', '<leader>?', vim.cmd.map)
-- Replace
vim.keymap.set('n', '<leader>r', ':%s/<C-r><C-w>//g<Left><Left>')
-- Show command history
vim.keymap.set('n', '<leader>x', 'q:')
-- Show search history
vim.keymap.set('n', '<leader>h', 'q/')
-- Find file
vim.keymap.set('n', '<leader>f', ':find ')
-- Netrw File Explorer
vim.keymap.set('n', '<leader>e', ':Lex 30<CR>')
-- Toggle list
vim.keymap.set('n', '<F3>', ':set list!<CR>')
-- Toggle highlight search
vim.keymap.set('n', '<F4>', ':set hls!<CR>')

-- VISUAL MODE
-- Replace
vim.keymap.set('v', '<leader>r', ':s/')
-- Yank selection to clipboard
vim.keymap.set('v', '<leader>y', '"+y')
-- Delete selection to void register
vim.keymap.set('v', '<leader>d', '"_d')
-- Delete selection into the void register and then paste over it
vim.keymap.set('v', '<leader>p', '_dP')

-- MOVEMENT
-- Join next line keeping cursor position
vim.keymap.set('n', 'J', 'mzJ`z')
-- Scroll half page up keeping cursor in the middle
vim.keymap.set('n', '<C-u>', '<C-u>M')
-- Scroll half page down keeping cursor in the middle
vim.keymap.set('n', '<C-d>', '<C-d>M')
-- Search forwards keeping cursor in the middle
vim.keymap.set('n', 'n', 'nzzzv')
-- Search backwards keeping cursor in the middle
vim.keymap.set('n', 'N', 'Nzzzv')
-- Search word under cursor keeping cursor in the middle
vim.keymap.set('n', '*', '*zzzv')

-- TABS
-- Open new tab
vim.keymap.set('n', '<C-t>', vim.cmd.tabnew)
-- Close tab
vim.keymap.set('n', '<C-w>', vim.cmd.tabclose)
-- Switch to previous tab
vim.keymap.set('n', '<C-p>', vim.cmd.tabprevious)
-- Switch to next tab
vim.keymap.set('n', '<C-n>', vim.cmd.tabnext)

-- WINDOWS
-- Vertical split
vim.keymap.set('n', '<leader>+', vim.cmd.vs)
-- Horizontal split
vim.keymap.set('n', '<leader>-', vim.cmd.split)
-- Move to window above
vim.keymap.set('n', '<C-k>', '<C-w>k')
-- Move to window below
vim.keymap.set('n', '<C-j>', '<C-w>j')
-- Move to left window
vim.keymap.set('n', '<C-h>', '<C-w>h')
-- Move to right window
vim.keymap.set('n', '<C-l>', '<C-w>l')
-- Decrease current window height
vim.keymap.set('n', '<C-Up>', [[<cmd>horizontal resize +5<cr>]])
-- Increase current window height
vim.keymap.set('n', '<C-Down>', [[<cmd>horizontal resize -5<cr>]])
-- Decrease current window width
vim.keymap.set('n', '<C-Left>', [[<cmd>vertical resize +5<cr>]])
-- Increase current window width
vim.keymap.set('n', '<C-Right>', [[<cmd>vertical resize -5<cr>]])
-- Close window
vim.keymap.set('n', '<C-q>', vim.cmd.quit)

-- BUFFERS
-- Previous buffer
vim.keymap.set('n', '<S-Left>', vim.cmd.bprevious)
-- Next buffer
vim.keymap.set('n', '<S-Right>', vim.cmd.bnext)
-- List buffers
vim.keymap.set('n', '<S-Down>', vim.cmd.buffers)
-- Go to buffer
vim.keymap.set('n', '<S-Up>', ':buffer ')
-- Delete buffer
vim.keymap.set('n', '<S-Del>', vim.cmd.bdelete)

-- LOCATION LIST
-- Navigate through location list
vim.keymap.set('n', '<C-PageUp>', vim.cmd.lprev)
vim.keymap.set('n', '<C-PageDown>', vim.cmd.lnext)

-- DISABLE arrow keys
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
vim.keymap.set('n', '<PageUp>', '<Nop>')
vim.keymap.set('n', '<PageDown>', '<Nop>')
