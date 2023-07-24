-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.gopls.setup {}
lspconfig.tsserver.setup {}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>l', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<Enter>', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<Tab>', vim.lsp.buf.hover, opts)
  end,
})

vim.api.nvim_create_user_command('LspLocList', function(opts)
    vim.diagnostic.setloclist()
  end, {})

vim.api.nvim_create_user_command('LspRename', function(opts)
    vim.lsp.buf.rename()
  end, {})

vim.api.nvim_create_user_command('LspFormat', function(opts)
    vim.lsp.buf.format({async=true})
  end, {})

