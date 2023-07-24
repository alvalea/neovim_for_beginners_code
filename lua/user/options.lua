vim.opt.complete="."                  -- Only use current buffer for autocomplete
-- Show menu even with one entry only, do not select nor insert, and show preview
vim.opt.completeopt="menuone,noselect,noinsert,preview"
vim.opt.pumheight=10                  -- Menu height (number of lines)
vim.opt.cursorline=true               -- Show cursor line
vim.opt.splitbelow=true               -- Split horizontal windows to the bottom
vim.opt.splitright=true               -- Split vertical windows to the right
vim.opt.wrap=false                    -- Do not wrap text
vim.opt.autoindent=true               -- Auto indent
vim.opt.smartindent=true              -- Smart indent
vim.opt.hlsearch=true                 -- Highlight search
vim.opt.incsearch=true                -- Incremental search
vim.opt.number=true                   -- Show line numbers
vim.opt.undofile=true                 -- Enable undo files
vim.opt.exrc=true                     -- Add support for local .vimrc
vim.opt.shortmess="I"                 -- Remove splash screen
vim.opt.tabstop=2                     -- Show tab as two spaces
vim.opt.shiftwidth=2                  -- Indent using two columns
vim.opt.expandtab=true                -- Uses spaces instead of tabs
vim.opt.relativenumber=true           -- Show relative numbers
vim.opt.mouse=""                      -- Disable mouse
-- Set path to the current working directory and nested folders
vim.opt.path=""..vim.fn.getcwd()..", "..vim.fn.getcwd().."/**"
